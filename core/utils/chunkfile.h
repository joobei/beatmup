/*
    Utilities to access chunkfiles: files containing small identifiable pieces of data
*/

#pragma once
#include "lockable_object.h"
#include "../exception.h"
#include <fstream>
#include <map>
#include <stdint.h>


namespace Beatmup {
    /**
        Chunkfile is a sequence of chunks.
        A chunk is a tuple: (idLength[1], id[idLength], size[sizeof(chunksize)], data[size])
    */
    class ChunkFile : public LockableObject {
    public:
        typedef uint32_t chunksize;
    private:
        typedef struct {
            chunksize size;
            chunksize pos;
        } ChunkDesc;

        const std::string filename;
        std::fstream stream;
        std::map<std::string, ChunkDesc> map;

    public:
        class ChunkFileAccessError : public Exception {
        public:
            ChunkFileAccessError(const std::string& filename, const bool reading = true):
                Exception("Cannot %s chunkfile %s", reading ? "read" : "write to", filename.c_str())
            {}
        };

        class ChunkIdTooLong : public Exception {
        public:
            ChunkIdTooLong(const std::string& id) :
                Exception("Chunk id exceeds max allowed length (255 chars): %s", id.c_str())
            {}

            static void check(const std::string& id);
        };

        /**
            Chunkfile writer
        */
        class Writer {
        private:
            std::fstream stream;
        public:
            Writer(const std::string& filename, bool append = false);
            ~Writer();

            void operator()(const std::string& id, const void* data, const chunksize size);

            template<typename datatype> void operator()(const std::string& id, datatype something) {
                (*this)(id, &something, sizeof(something));
            }
        };

        /**
            Returns `true` if a given file is readable
        */
        static bool readable(const std::string& filename);

        /**
            Instantiates a chunkfile accessor without actually opening the file.
            \param[in] filename    The name of the chunkfile
        */
        ChunkFile(const std::string& filename);
        ~ChunkFile();

        inline bool isOpened() const { return stream.is_open(); }

        /**
            (Re)opens the chunkfile for reading.
        */
        void open();

        /**
            Closes the chunkfile.
        */
        void close();

        /**
            Returns the number of chunks available in the file after it is opened.
        */
        inline size_t chunkCount() const { return map.size(); }

        inline bool chunkExists(const std::string& id) const { return map.find(id) != map.end(); }
        chunksize chunkSize(const std::string& id) const;

        /**
            Reads a chunk.
            The chunkfile must be opened.
            \param[in] id       Wanted chunk id.
            \param[out] data    A buffer to write out the wanted chunk content.
            \param[in] limit    The bufer capacity in bytes.
            \return number of bytes written out to the buffer:
                * if the chunk is found and small enough, the chunk size is returned;
                * if the chunk is found and too big, \p limit is returned (number of bytes actually written);
                * if no chunk found, 0 is returned.
        */
        chunksize fetch(const std::string& id, void* data, const chunksize limit);

        /**
            Reads a chunk and casts it into a given type.
            \param[in] id       Wanted chunk id.
        */
        template<typename datatype> datatype fetch(const std::string& id) {
            datatype result;
            fetch(id, &result, sizeof(result));
            return result;
        }
    };


    /**
        Chunk: just a piece of data of a given size.
    */
    class Chunk {
    private:
        const size_t chunkSize;
        void* data;
    public:
        /**
            Allocates a chunk of a given size.
            \param[in] size    Chunk size in bytes
        */
        Chunk(size_t size);

        /**
            Reads a chunk from file by its id.
            \param[in] file    The file to read from
            \param[in] id      The chunk id to find in the file
        */
        Chunk(ChunkFile& file, const std::string& id);

        ~Chunk();

        /**
            Writes a chunk out to a file.
            \param[in] file    The file to write to
            \param[in] id      The chunk id
        */
        void writeTo(ChunkFile::Writer& file, const std::string& id) const;

        inline size_t size() const { return chunkSize; }
        inline void* operator()() { return data; }

        template<typename datatype> inline datatype* at(size_t offset) const {
            return (datatype*)(data) + offset;
        }
    };
}
