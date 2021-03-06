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
                dot(vec4(-0.088302, -0.129165, 0.125743, 0.112819), i0)
                + dot(vec4(0.154777, -0.180147, 0.101379, 0.028543), i1)
                + dot(vec4(0.256924, -0.055917, -0.012846, -0.105168), i2)
                + dot(vec4(0.007011, 0.012471, 0.029208, 0.142502), i3)
                + dot(vec4(0.000904, 0.384291, -0.025687, 0.184800), i4)
                + dot(vec4(0.167395, -0.178654, -0.417388, 0.024459), i5)
                + dot(vec4(0.017936, 0.120635, 0.086691, 0.157768), i6)
                + dot(vec4(0.211484, 0.265498, -0.049509, 0.092047), i7)
                + dot(vec4(0.055454, -0.108370, 0.261213, 0.110845), i8),
                dot(vec4(-0.248438, 0.000637, 0.135215, 0.213098), i0)
                + dot(vec4(-0.241048, -0.052820, 0.082973, -0.054512), i1)
                + dot(vec4(-0.239433, 0.200549, -0.038325, -0.105303), i2)
                + dot(vec4(-0.121059, 0.042643, 0.140401, 0.223244), i3)
                + dot(vec4(-0.370892, 0.123078, -0.025971, -0.206882), i4)
                + dot(vec4(0.024157, 0.060579, -0.120787, 0.171466), i5)
                + dot(vec4(-0.188829, 0.014991, 0.048126, 0.049347), i6)
                + dot(vec4(0.086480, -0.044341, 0.076141, 0.104079), i7)
                + dot(vec4(-0.128811, 0.038457, -0.146290, -0.033033), i8),
                dot(vec4(-0.291969, -0.120031, -0.022244, 0.085847), i0)
                + dot(vec4(-0.082193, 0.120099, -0.107902, 0.059232), i1)
                + dot(vec4(-0.069620, 0.001279, 0.067689, 0.052180), i2)
                + dot(vec4(-0.339010, 0.300364, 0.164986, 0.107139), i3)
                + dot(vec4(-0.144993, -0.086256, 0.031046, -0.075388), i4)
                + dot(vec4(0.152870, 0.044552, 0.152937, 0.034463), i5)
                + dot(vec4(-0.009275, 0.236048, -0.183628, 0.074404), i6)
                + dot(vec4(0.230172, -0.126631, -0.005547, 0.149466), i7)
                + dot(vec4(-0.046406, -0.038206, -0.049229, 0.028725), i8),
                dot(vec4(0.074871, 0.241095, -0.078005, 0.100706), i0)
                + dot(vec4(0.290178, 0.000451, -0.150633, -0.291780), i1)
                + dot(vec4(0.089577, -0.119555, 0.092580, -0.167199), i2)
                + dot(vec4(0.177500, 0.037918, -0.023324, -0.296267), i3)
                + dot(vec4(-0.389947, 0.133624, -0.046936, -0.285017), i4)
                + dot(vec4(0.150933, 0.031310, 0.115417, -0.057564), i5)
                + dot(vec4(-0.055686, 0.035751, -0.025313, -0.021739), i6)
                + dot(vec4(0.026336, -0.015743, 0.031576, -0.067538), i7)
                + dot(vec4(0.022116, 0.144016, 0.140165, -0.030599), i8)
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
                dot(vec4(0.091940, 0.081711, 0.096370, 0.091084), i0)
                + dot(vec4(-0.003816, 0.093118, 0.094565, 0.524779), i1)
                + dot(vec4(-0.092106, 0.088437, 0.227159, 0.211467), i2)
                + dot(vec4(0.129559, 0.044009, -0.084700, 0.216282), i3)
                + dot(vec4(0.216688, -0.000912, -0.094510, 0.363408), i4)
                + dot(vec4(0.268804, -0.006782, -0.038434, 0.092042), i5)
                + dot(vec4(-0.048266, 0.035091, -0.156968, 0.114631), i6)
                + dot(vec4(-0.153599, -0.423314, 0.161058, 0.089614), i7)
                + dot(vec4(-0.134906, 0.139522, -0.068960, -0.000737), i8),
                dot(vec4(-0.121372, -0.041460, 0.041787, -0.080664), i0)
                + dot(vec4(0.203500, 0.012765, -0.075371, -0.123308), i1)
                + dot(vec4(-0.061778, 0.063264, 0.018035, -0.304414), i2)
                + dot(vec4(-0.011337, 0.055383, -0.003346, -0.118295), i3)
                + dot(vec4(-0.193046, 0.129883, -0.262814, -0.060076), i4)
                + dot(vec4(-0.140739, -0.047225, 0.036176, 0.248080), i5)
                + dot(vec4(0.103804, 0.307072, -0.016687, -0.030576), i6)
                + dot(vec4(0.043617, -0.351184, -0.123096, 0.153709), i7)
                + dot(vec4(-0.161424, -0.062491, 0.089589, 0.010153), i8),
                dot(vec4(-0.142502, 0.062920, -0.013943, -0.083815), i0)
                + dot(vec4(0.253296, 0.148790, 0.157276, 0.456326), i1)
                + dot(vec4(0.059765, 0.069912, 0.051443, -0.157958), i2)
                + dot(vec4(0.078232, -0.194984, 0.049502, -0.050091), i3)
                + dot(vec4(-0.087488, -0.092684, -0.187822, 0.041658), i4)
                + dot(vec4(0.135669, -0.044905, -0.074649, 0.067018), i5)
                + dot(vec4(0.151985, -0.064963, 0.161490, 0.079656), i6)
                + dot(vec4(-0.098757, -0.269562, 0.213480, 0.054018), i7)
                + dot(vec4(0.215665, 0.143098, 0.058880, -0.059309), i8),
                dot(vec4(0.024473, -0.013132, -0.045254, 0.061002), i0)
                + dot(vec4(0.061330, -0.067376, -0.094721, -0.044935), i1)
                + dot(vec4(0.132518, 0.021041, 0.026594, -0.228210), i2)
                + dot(vec4(-0.316377, -0.057140, 0.042685, 0.221942), i3)
                + dot(vec4(0.085480, -0.117530, 0.094501, -0.058037), i4)
                + dot(vec4(-0.090463, -0.013142, 0.218815, -0.002474), i5)
                + dot(vec4(0.062281, -0.010048, -0.041314, 0.182840), i6)
                + dot(vec4(-0.112348, 0.291734, -0.022304, 0.193469), i7)
                + dot(vec4(0.426959, -0.016130, 0.046541, 0.100881), i8)
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
                dot(vec4(0.369036, -0.188577, -0.156822, -0.466285), i0)
                + dot(vec4(0.018590, 0.095618, -0.013271, 0.127948), i1)
                + dot(vec4(-0.153496, -0.101507, -0.015320, 0.222097), i2)
                + dot(vec4(0.152551, -0.121926, -0.003246, -0.121033), i3)
                + dot(vec4(-0.229590, 0.063704, -0.056960, -0.200616), i4)
                + dot(vec4(0.062114, -0.092374, -0.067257, -0.025257), i5)
                + dot(vec4(0.514800, -0.044423, -0.112733, 0.091864), i6)
                + dot(vec4(-0.112519, 0.136511, -0.310520, 0.611551), i7)
                + dot(vec4(-0.158352, -0.289160, -0.005076, -0.312632), i8),
                dot(vec4(0.057211, -0.107274, -0.070607, -0.071678), i0)
                + dot(vec4(0.127262, 0.074692, 0.025553, -0.045897), i1)
                + dot(vec4(0.044701, -0.221968, 0.066035, 0.034264), i2)
                + dot(vec4(0.247417, -0.016340, 0.191528, -0.150592), i3)
                + dot(vec4(0.128398, 0.140400, 0.424790, 0.267753), i4)
                + dot(vec4(0.034694, 0.151108, -0.211450, -0.112934), i5)
                + dot(vec4(-0.141566, 0.036550, 0.038595, 0.076790), i6)
                + dot(vec4(0.118873, 0.159079, -0.055881, 0.071356), i7)
                + dot(vec4(0.042991, 0.100862, -0.099555, -0.100958), i8),
                dot(vec4(0.009138, -0.186469, 0.015215, 0.218106), i0)
                + dot(vec4(0.067676, 0.053309, -0.087184, -0.014037), i1)
                + dot(vec4(0.025292, -0.229608, 0.184537, -0.120972), i2)
                + dot(vec4(0.278313, -0.010194, -0.144211, -0.175801), i3)
                + dot(vec4(0.071689, 0.208607, -0.008306, 0.203333), i4)
                + dot(vec4(-0.081072, -0.009766, -0.276343, 0.267480), i5)
                + dot(vec4(0.156870, 0.119612, 0.040541, -0.053959), i6)
                + dot(vec4(-0.274558, 0.226879, -0.034186, -0.155033), i7)
                + dot(vec4(0.321924, -0.282956, -0.032628, 0.037954), i8),
                dot(vec4(-0.054087, 0.147423, 0.016219, -0.172360), i0)
                + dot(vec4(-0.106327, 0.312858, -0.018396, 0.308489), i1)
                + dot(vec4(0.033545, 0.052327, 0.018209, 0.104135), i2)
                + dot(vec4(-0.087202, 0.279387, -0.114841, -0.169907), i3)
                + dot(vec4(0.199792, 0.254839, -0.122329, -0.221107), i4)
                + dot(vec4(0.111020, 0.334598, 0.023172, -0.072286), i5)
                + dot(vec4(0.286987, 0.020208, 0.036481, 0.260893), i6)
                + dot(vec4(0.102155, 0.235916, -0.054672, 0.047657), i7)
                + dot(vec4(-0.148873, 0.009972, 0.194073, 0.158218), i8)
            );
        
        gl_FragColor = sum + vec4(0.044748, -0.000532, 0.053758, 0.057078);
    
        }
    )
