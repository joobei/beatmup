STRINGIFY(
        uniform sampler2D images[3];
        varying highp vec2 texCoord;
        uniform highp vec2 d1;

        lowp vec4 fetch(sampler2D image, highp float x, highp float y) {
            return texture2D(image, vec2(x, y));
        }

        void main() {
            
        highp float
            x0 = texCoord.x - d1.x,
            x1 = texCoord.x,
            x2 = texCoord.x + d1.x,

            y0 = texCoord.y - d1.y,
            y1 = texCoord.y,
            y2 = texCoord.y + d1.y;
            
        lowp vec4 i0, i1, i2, i3, i4, i5, i6, i7, i8;
        mediump vec4 sum;
    
            i0 = fetch(images[0], x0, y0);
            i1 = fetch(images[0], x1, y0);
            i2 = fetch(images[0], x2, y0);
            i3 = fetch(images[0], x0, y1);
            i4 = fetch(images[0], x1, y1);
            i5 = fetch(images[0], x2, y1);
            i6 = fetch(images[0], x0, y2);
            i7 = fetch(images[0], x1, y2);
            i8 = fetch(images[0], x2, y2);
        
            sum = vec4(
                dot(vec4(0.035164, -0.126044, 0.306247, -0.020975), i0)
                + dot(vec4(-0.043287, 0.380852, 0.031705, 0.263060), i1)
                + dot(vec4(0.141175, -0.048084, -0.192772, -0.263793), i2)
                + dot(vec4(0.025624, 0.096276, 0.009039, -0.153035), i3)
                + dot(vec4(0.029359, -0.214177, 0.187752, 0.262370), i4)
                + dot(vec4(-0.055016, -0.052587, 0.064756, 0.217296), i5)
                + dot(vec4(0.028963, -0.054523, 0.071110, 0.077940), i6)
                + dot(vec4(0.065452, 0.025588, -0.033564, -0.262775), i7)
                + dot(vec4(-0.031544, 0.185361, -0.186832, 0.023778), i8),
                dot(vec4(0.008651, -0.102880, 0.165452, 0.008128), i0)
                + dot(vec4(-0.009134, -0.042685, 0.316808, 0.347829), i1)
                + dot(vec4(-0.008491, -0.065021, 0.045922, 0.165664), i2)
                + dot(vec4(0.095388, 0.183920, -0.222008, -0.203751), i3)
                + dot(vec4(0.140358, 0.346065, -0.325047, -0.167762), i4)
                + dot(vec4(0.080117, -0.053022, 0.125507, 0.161587), i5)
                + dot(vec4(-0.037172, -0.017184, 0.015492, 0.232760), i6)
                + dot(vec4(-0.018237, -0.072037, 0.130431, -0.036305), i7)
                + dot(vec4(-0.031275, 0.001898, -0.024391, -0.132020), i8),
                dot(vec4(0.020368, -0.020748, 0.092708, -0.211305), i0)
                + dot(vec4(-0.019456, -0.183253, 0.481328, 0.566262), i1)
                + dot(vec4(-0.020781, -0.004873, 0.106467, 0.389385), i2)
                + dot(vec4(-0.063525, 0.004045, -0.199692, 0.040882), i3)
                + dot(vec4(0.322493, 0.436761, -0.297136, -0.374501), i4)
                + dot(vec4(0.114958, 0.300932, -0.286404, 0.128447), i5)
                + dot(vec4(0.095362, 0.015674, 0.043443, 0.181387), i6)
                + dot(vec4(-0.211080, -0.181096, 0.170073, 0.177308), i7)
                + dot(vec4(-0.001338, 0.040893, -0.023587, -0.287800), i8),
                dot(vec4(-0.069120, -0.013332, -0.234855, 0.074216), i0)
                + dot(vec4(0.113044, -0.039659, -0.177768, -0.207589), i1)
                + dot(vec4(0.009148, 0.001713, 0.131573, -0.085266), i2)
                + dot(vec4(0.042872, 0.065426, -0.259526, 0.010945), i3)
                + dot(vec4(-0.219645, -0.108786, 0.189373, 0.445261), i4)
                + dot(vec4(-0.083336, -0.056149, 0.207646, -0.102752), i5)
                + dot(vec4(-0.073090, 0.037140, 0.049680, -0.221842), i6)
                + dot(vec4(0.131997, -0.038139, 0.066348, -0.065907), i7)
                + dot(vec4(0.001771, 0.071923, 0.019754, 0.065545), i8)
            );
        
            i0 = fetch(images[1], x0, y0);
            i1 = fetch(images[1], x1, y0);
            i2 = fetch(images[1], x2, y0);
            i3 = fetch(images[1], x0, y1);
            i4 = fetch(images[1], x1, y1);
            i5 = fetch(images[1], x2, y1);
            i6 = fetch(images[1], x0, y2);
            i7 = fetch(images[1], x1, y2);
            i8 = fetch(images[1], x2, y2);
        
            sum += vec4(
                dot(vec4(-0.054312, 0.167312, -0.037796, 0.111891), i0)
                + dot(vec4(0.205051, -0.319895, 0.193024, -0.084060), i1)
                + dot(vec4(0.108982, -0.053594, 0.070066, -0.031548), i2)
                + dot(vec4(0.244009, -0.218862, 0.088248, 0.035799), i3)
                + dot(vec4(-0.093559, 0.129908, -0.035892, -0.101669), i4)
                + dot(vec4(-0.019303, -0.002550, -0.023203, -0.027245), i5)
                + dot(vec4(-0.069599, 0.002250, 0.081387, -0.064500), i6)
                + dot(vec4(-0.098466, 0.062443, 0.125147, -0.165598), i7)
                + dot(vec4(0.181576, -0.008580, 0.114230, 0.183111), i8),
                dot(vec4(0.093337, -0.230367, 0.042169, 0.063231), i0)
                + dot(vec4(-0.141947, 0.089322, 0.132459, 0.168399), i1)
                + dot(vec4(-0.052344, -0.127398, 0.142515, 0.158419), i2)
                + dot(vec4(-0.290938, -0.386461, 0.087856, 0.202544), i3)
                + dot(vec4(0.122579, 0.018894, -0.037708, 0.036594), i4)
                + dot(vec4(0.068349, 0.093787, 0.137498, -0.079305), i5)
                + dot(vec4(0.083709, -0.006354, 0.007134, -0.043003), i6)
                + dot(vec4(-0.150933, 0.112204, 0.059027, -0.080195), i7)
                + dot(vec4(0.009518, -0.059353, 0.049137, 0.066591), i8),
                dot(vec4(0.042451, -0.047725, 0.096961, -0.015124), i0)
                + dot(vec4(-0.102369, -0.168341, 0.271651, -0.166995), i1)
                + dot(vec4(-0.128721, -0.105908, 0.146913, 0.020876), i2)
                + dot(vec4(-0.309270, -0.019464, 0.032953, -0.039277), i3)
                + dot(vec4(-0.332382, -0.447015, 0.281942, 0.034574), i4)
                + dot(vec4(0.405143, 0.143105, -0.073761, 0.025984), i5)
                + dot(vec4(0.070774, 0.024639, 0.070064, -0.038566), i6)
                + dot(vec4(-0.136484, 0.135397, 0.019158, -0.037053), i7)
                + dot(vec4(-0.089056, -0.034990, 0.073197, -0.067768), i8),
                dot(vec4(0.030100, 0.005392, 0.133192, 0.021621), i0)
                + dot(vec4(-0.122155, -0.322708, 0.136326, 0.181842), i1)
                + dot(vec4(0.104160, 0.042794, -0.043339, -0.053180), i2)
                + dot(vec4(-0.214367, 0.167687, -0.143074, -0.037743), i3)
                + dot(vec4(-0.063184, -0.019035, -0.057034, 0.147417), i4)
                + dot(vec4(-0.048500, -0.020923, -0.047035, 0.033583), i5)
                + dot(vec4(0.127781, 0.066636, 0.017213, -0.160924), i6)
                + dot(vec4(0.090687, 0.054055, -0.003289, -0.153013), i7)
                + dot(vec4(-0.016647, 0.102098, 0.032281, 0.115433), i8)
            );
        
            i0 = fetch(images[2], x0, y0);
            i1 = fetch(images[2], x1, y0);
            i2 = fetch(images[2], x2, y0);
            i3 = fetch(images[2], x0, y1);
            i4 = fetch(images[2], x1, y1);
            i5 = fetch(images[2], x2, y1);
            i6 = fetch(images[2], x0, y2);
            i7 = fetch(images[2], x1, y2);
            i8 = fetch(images[2], x2, y2);
        
            sum += vec4(
                dot(vec4(-0.067721, -0.032800, -0.185772, 0.136260), i0)
                + dot(vec4(0.050185, -0.091665, 0.115327, -0.243951), i1)
                + dot(vec4(-0.078373, 0.270400, 0.106669, 0.033815), i2)
                + dot(vec4(-0.149508, -0.099795, -0.222621, -0.047418), i3)
                + dot(vec4(0.060714, 0.176358, -0.059834, 0.183309), i4)
                + dot(vec4(-0.024046, 0.005058, 0.022242, 0.055744), i5)
                + dot(vec4(-0.090965, 0.002666, 0.008557, 0.043988), i6)
                + dot(vec4(0.046327, -0.013840, -0.068646, 0.019797), i7)
                + dot(vec4(-0.046695, -0.015225, -0.015904, 0.013817), i8),
                dot(vec4(-0.076517, 0.075182, -0.004909, -0.349440), i0)
                + dot(vec4(-0.022138, 0.393455, 0.089916, -0.175770), i1)
                + dot(vec4(0.008543, -0.089803, -0.042360, -0.017916), i2)
                + dot(vec4(0.115586, -0.108030, 0.259720, 0.280342), i3)
                + dot(vec4(-0.113193, 0.303816, -0.502958, -0.433913), i4)
                + dot(vec4(0.169162, -0.029165, -0.008332, -0.205492), i5)
                + dot(vec4(-0.031867, 0.021832, -0.027858, 0.076126), i6)
                + dot(vec4(0.125692, -0.049271, -0.079590, 0.223983), i7)
                + dot(vec4(-0.068985, 0.013235, -0.004993, 0.232737), i8),
                dot(vec4(-0.013093, 0.001465, -0.032385, 0.075421), i0)
                + dot(vec4(0.022696, 0.554947, 0.035196, -0.353601), i1)
                + dot(vec4(-0.051440, 0.021380, 0.037251, -0.247591), i2)
                + dot(vec4(0.077044, 0.021065, 0.214607, 0.188938), i3)
                + dot(vec4(0.099709, 0.124617, -0.372197, -0.226263), i4)
                + dot(vec4(0.070157, 0.179074, -0.181536, -0.645466), i5)
                + dot(vec4(0.000583, 0.016164, -0.092791, 0.109320), i6)
                + dot(vec4(0.092305, 0.026644, -0.091640, 0.205245), i7)
                + dot(vec4(0.060862, -0.023925, -0.044233, 0.464997), i8),
                dot(vec4(0.107425, 0.032947, 0.213659, -0.029509), i0)
                + dot(vec4(0.141665, 0.299927, -0.020296, -0.132560), i1)
                + dot(vec4(0.014389, 0.028487, 0.008058, -0.030939), i2)
                + dot(vec4(0.252969, 0.064854, 0.347824, 0.033705), i3)
                + dot(vec4(-0.188045, 0.047451, 0.006351, 0.259704), i4)
                + dot(vec4(-0.053830, -0.064592, 0.031336, 0.031387), i5)
                + dot(vec4(0.133515, -0.011332, -0.100362, 0.004497), i6)
                + dot(vec4(0.074090, -0.079061, 0.019573, 0.046472), i7)
                + dot(vec4(0.191544, -0.020248, -0.116377, -0.070529), i8)
            );
        
        gl_FragColor = sum + vec4(0.093010, 0.000015, -0.020620, 0.051080);
    
        }
    )
