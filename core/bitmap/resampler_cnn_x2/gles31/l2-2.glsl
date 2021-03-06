STRINGIFY(
            uniform sampler2D[3] inFeatures;
            layout(binding = 0, std430) writeonly buffer outFeatures_ { highp uint data[][8]; } outFeatures;
            void main() {
                highp ivec2
                    p0 = ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, -1),
                    p1 = ivec2(gl_GlobalInvocationID.xy) + ivec2( 0, -1),
                    p2 = ivec2(gl_GlobalInvocationID.xy) + ivec2(+1, -1),
                    p3 = ivec2(gl_GlobalInvocationID.xy) + ivec2(-1,  0),
                    p4 = ivec2(gl_GlobalInvocationID.xy) + ivec2( 0,  0),
                    p5 = ivec2(gl_GlobalInvocationID.xy) + ivec2(+1,  0),
                    p6 = ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, +1),
                    p7 = ivec2(gl_GlobalInvocationID.xy) + ivec2( 0, +1),
                    p8 = ivec2(gl_GlobalInvocationID.xy) + ivec2(+1, +1);
                lowp vec4 i0, i1, i2, i3, i4, i5, i6, i7, i8;
                mediump vec4 sum1 = vec4(0.016442,0.005887,0.099937,0.045040), sum2 = vec4(-0.022083,0.130310,-0.114636,0.03059);
                i0 = texelFetch(inFeatures[0], p0, 0);
                i1 = texelFetch(inFeatures[0], p1, 0);
                i2 = texelFetch(inFeatures[0], p2, 0);
                i3 = texelFetch(inFeatures[0], p3, 0);
                i4 = texelFetch(inFeatures[0], p4, 0);
                i5 = texelFetch(inFeatures[0], p5, 0);
                i6 = texelFetch(inFeatures[0], p6, 0);
                i7 = texelFetch(inFeatures[0], p7, 0);
                i8 = texelFetch(inFeatures[0], p8, 0);
                sum1 += vec4(
                    dot(vec4(0.081481,-0.048220,-0.166954,-0.044684), i0) + dot(vec4(-0.093642,0.037253,0.244072,-0.101678), i1) + dot(vec4(0.184680,0.049299,0.099349,0.087873), i2) + dot(vec4(-0.149203,0.039440,-0.014329,-0.157486), i3) + dot(vec4(-0.100836,0.129547,-0.127509,-0.113345), i4) + dot(vec4(-0.088165,-0.021057,0.081527,0.049354), i5) + dot(vec4(0.024699,-0.150017,-0.015982,0.033799), i6) + dot(vec4(-0.012376,-0.021176,-0.021099,-0.015001), i7) + dot(vec4(0.031427,0.121658,-0.007433,0.091231), i8),
                    dot(vec4(-0.033476,0.003665,-0.044105,0.077333), i0) + dot(vec4(0.058603,0.004837,-0.086579,0.050585), i1) + dot(vec4(-0.101886,0.071642,0.144190,-0.028123), i2) + dot(vec4(0.088471,0.053732,-0.051591,-0.035599), i3) + dot(vec4(-0.167223,0.158765,0.077285,0.028940), i4) + dot(vec4(0.198164,-0.031960,0.054201,-0.091513), i5) + dot(vec4(0.000671,-0.082852,0.031492,0.129873), i6) + dot(vec4(0.168753,0.184523,0.062219,0.048425), i7) + dot(vec4(-0.180094,0.249324,-0.047442,0.011601), i8),
                    dot(vec4(0.019261,-0.071415,-0.285890,-0.025627), i0) + dot(vec4(-0.302710,0.054149,-0.325352,0.394031), i1) + dot(vec4(0.146364,0.019797,0.081373,0.209237), i2) + dot(vec4(0.031049,-0.034202,0.088716,0.017314), i3) + dot(vec4(0.318756,-0.106587,0.385432,-0.464374), i4) + dot(vec4(-0.070671,0.079775,0.092106,-0.093569), i5) + dot(vec4(-0.027464,0.149303,-0.016291,0.032346), i6) + dot(vec4(0.195555,0.058443,-0.016421,-0.237687), i7) + dot(vec4(-0.072062,-0.226953,0.311410,0.061387), i8),
                    dot(vec4(0.020789,-0.064666,0.097040,-0.078226), i0) + dot(vec4(-0.006612,0.089338,-0.145080,-0.038083), i1) + dot(vec4(0.106844,-0.095287,-0.091843,0.037120), i2) + dot(vec4(0.059234,0.097801,0.033086,0.074226), i3) + dot(vec4(0.089425,0.127616,-0.014481,0.659242), i4) + dot(vec4(-0.061887,0.146592,0.091448,-0.281444), i5) + dot(vec4(0.066854,0.035215,0.132059,0.228503), i6) + dot(vec4(-0.077943,0.203871,0.118008,-0.125550), i7) + dot(vec4(-0.181806,0.160462,0.034216,-0.090929), i8)
                );
                sum2 += vec4(
                    dot(vec4(0.037721,-0.189928,0.080699,-0.135937), i0) + dot(vec4(-0.111442,-0.139167,-0.234687,0.128234), i1) + dot(vec4(0.105587,-0.024194,-0.015468,-0.194529), i2) + dot(vec4(-0.131963,0.051468,0.104293,0.072030), i3) + dot(vec4(-0.186151,0.066437,-0.229832,-0.008626), i4) + dot(vec4(0.014370,-0.100692,-0.008843,-0.101912), i5) + dot(vec4(0.101255,-0.159723,-0.023162,0.160206), i6) + dot(vec4(-0.054776,0.060149,-0.006977,-0.039779), i7) + dot(vec4(-0.056363,-0.138087,0.080826,0.024266), i8),
                    dot(vec4(-0.089317,-0.032517,0.171229,-0.000612), i0) + dot(vec4(0.150555,-0.144625,-0.193187,0.023849), i1) + dot(vec4(-0.143499,-0.097843,-0.047557,-0.143758), i2) + dot(vec4(-0.065988,0.258819,0.241395,0.028672), i3) + dot(vec4(0.039558,-0.079518,-0.014998,-0.084659), i4) + dot(vec4(0.046230,-0.324474,0.067140,-0.117688), i5) + dot(vec4(0.010424,0.123058,0.170420,0.108490), i6) + dot(vec4(0.045655,0.240505,0.105707,0.254706), i7) + dot(vec4(-0.029028,-0.048838,0.082971,0.037361), i8),
                    dot(vec4(0.087576,-0.087991,-0.108246,0.072007), i0) + dot(vec4(-0.043141,-0.092915,0.485033,0.086147), i1) + dot(vec4(0.073664,-0.138165,-0.146024,0.035274), i2) + dot(vec4(0.123976,0.116004,0.075237,-0.012385), i3) + dot(vec4(-0.109544,0.066629,-0.109237,-0.388335), i4) + dot(vec4(0.154001,0.004183,-0.136092,0.161572), i5) + dot(vec4(0.140874,0.019176,-0.318311,0.013866), i6) + dot(vec4(-0.394678,0.056996,0.459538,-0.143752), i7) + dot(vec4(0.108003,0.144678,-0.077040,-0.007270), i8),
                    dot(vec4(-0.077591,-0.004808,0.213622,-0.088459), i0) + dot(vec4(0.087278,-0.008029,0.131686,-0.084979), i1) + dot(vec4(-0.114346,0.103266,0.209561,-0.054848), i2) + dot(vec4(0.009350,-0.015647,0.079195,0.009781), i3) + dot(vec4(-0.090647,-0.176967,-0.161113,0.452945), i4) + dot(vec4(0.112676,-0.233017,-0.188665,-0.517553), i5) + dot(vec4(-0.141285,0.138638,0.106766,0.013164), i6) + dot(vec4(-0.103488,0.050510,0.157605,-0.171940), i7) + dot(vec4(0.217823,-0.297556,0.139365,-0.120002), i8)
                );
                i0 = texelFetch(inFeatures[1], p0, 0);
                i1 = texelFetch(inFeatures[1], p1, 0);
                i2 = texelFetch(inFeatures[1], p2, 0);
                i3 = texelFetch(inFeatures[1], p3, 0);
                i4 = texelFetch(inFeatures[1], p4, 0);
                i5 = texelFetch(inFeatures[1], p5, 0);
                i6 = texelFetch(inFeatures[1], p6, 0);
                i7 = texelFetch(inFeatures[1], p7, 0);
                i8 = texelFetch(inFeatures[1], p8, 0);
                sum1 += vec4(
                    dot(vec4(0.067661,0.106654,-0.346868,-0.029397), i0) + dot(vec4(0.005794,0.180614,-0.175845,-0.119345), i1) + dot(vec4(-0.107975,0.093622,0.080632,-0.001696), i2) + dot(vec4(0.114172,0.101427,-0.032701,0.030193), i3) + dot(vec4(0.181484,0.147962,0.088164,0.194187), i4) + dot(vec4(0.129672,-0.024861,0.102455,0.173598), i5) + dot(vec4(0.128836,0.122886,-0.012981,0.021975), i6) + dot(vec4(0.090494,0.096182,-0.029375,0.207827), i7) + dot(vec4(0.179150,-0.011166,-0.054461,0.132832), i8),
                    dot(vec4(-0.112124,-0.038106,0.132795,0.034871), i0) + dot(vec4(-0.048312,0.019883,-0.030422,-0.007050), i1) + dot(vec4(-0.026178,-0.058559,-0.083419,-0.134706), i2) + dot(vec4(-0.050650,-0.199273,0.147162,0.187357), i3) + dot(vec4(-0.086957,-0.097120,0.029290,0.248173), i4) + dot(vec4(0.011457,0.009011,0.013382,-0.055421), i5) + dot(vec4(-0.018054,-0.058278,-0.004193,0.074928), i6) + dot(vec4(-0.044919,-0.064952,-0.007282,0.149853), i7) + dot(vec4(-0.027578,-0.018543,-0.016641,0.118591), i8),
                    dot(vec4(-0.158383,0.348302,0.870982,-0.065935), i0) + dot(vec4(-0.110916,0.187891,0.246219,-0.235085), i1) + dot(vec4(-0.188544,0.156970,0.075429,0.052589), i2) + dot(vec4(-0.060657,-0.153042,0.308478,-0.036892), i3) + dot(vec4(0.181859,-0.239835,0.014044,0.122514), i4) + dot(vec4(0.050220,-0.060645,0.026941,0.006089), i5) + dot(vec4(0.189977,-0.095400,0.001510,0.023420), i6) + dot(vec4(0.080997,0.084060,0.016502,0.052419), i7) + dot(vec4(0.217160,-0.013256,0.010517,-0.020019), i8),
                    dot(vec4(-0.094113,0.128973,0.367736,0.033257), i0) + dot(vec4(0.033356,0.130655,0.129198,-0.010758), i1) + dot(vec4(-0.071448,0.045425,-0.071222,0.021937), i2) + dot(vec4(-0.058751,-0.231469,0.442844,-0.025595), i3) + dot(vec4(-0.105203,-0.200304,0.067367,-0.033936), i4) + dot(vec4(0.011231,-0.089077,0.042576,0.140426), i5) + dot(vec4(0.007203,-0.053511,0.009248,0.080204), i6) + dot(vec4(-0.014362,-0.142440,0.037834,-0.027280), i7) + dot(vec4(0.080850,-0.028769,-0.001051,-0.103908), i8)
                );
                sum2 += vec4(
                    dot(vec4(-0.048250,-0.107577,-0.060258,0.103599), i0) + dot(vec4(0.029475,0.026406,-0.190433,-0.178843), i1) + dot(vec4(0.083033,-0.045322,-0.232626,-0.121490), i2) + dot(vec4(0.167546,0.136926,-0.123596,-0.149378), i3) + dot(vec4(-0.053634,0.084631,0.057026,-0.159986), i4) + dot(vec4(-0.039079,-0.163727,-0.208957,0.094772), i5) + dot(vec4(0.001591,0.138518,0.064232,0.067497), i6) + dot(vec4(-0.077507,-0.199004,-0.084665,0.126785), i7) + dot(vec4(0.164892,0.037179,-0.224468,0.136489), i8),
                    dot(vec4(0.061959,-0.212713,-0.281365,-0.008849), i0) + dot(vec4(0.010928,-0.068013,-0.084326,-0.087622), i1) + dot(vec4(0.021541,0.022897,0.013478,-0.067902), i2) + dot(vec4(0.145408,0.239292,-0.203649,-0.093272), i3) + dot(vec4(0.235815,0.009035,0.116572,0.191067), i4) + dot(vec4(0.019651,0.034926,0.009645,0.082763), i5) + dot(vec4(0.082138,0.132445,-0.020112,0.020709), i6) + dot(vec4(0.087599,0.001303,-0.099929,-0.116464), i7) + dot(vec4(0.068885,-0.012313,-0.045582,0.100735), i8),
                    dot(vec4(0.217855,-0.249556,0.160873,0.024152), i0) + dot(vec4(0.107459,-0.116962,0.107549,0.053535), i1) + dot(vec4(0.321198,-0.051199,-0.009760,-0.022125), i2) + dot(vec4(0.237238,0.350263,-0.152327,0.003316), i3) + dot(vec4(0.175379,0.185310,0.101405,-0.202762), i4) + dot(vec4(0.429149,0.056582,-0.022705,-0.066525), i5) + dot(vec4(0.107142,-0.079751,0.050131,0.003474), i6) + dot(vec4(-0.024369,-0.000678,0.007582,0.139616), i7) + dot(vec4(0.168046,-0.052555,0.023054,0.106531), i8),
                    dot(vec4(-0.003107,0.474437,0.834059,-0.108702), i0) + dot(vec4(-0.052455,0.348514,0.820517,0.106149), i1) + dot(vec4(0.033442,0.153114,0.100587,0.011341), i2) + dot(vec4(0.076723,0.208101,0.370908,0.096712), i3) + dot(vec4(0.113347,-0.325573,0.227922,-0.037044), i4) + dot(vec4(0.272053,-0.139193,0.071074,0.017861), i5) + dot(vec4(0.168558,-0.040913,0.009341,0.078849), i6) + dot(vec4(0.076310,0.020667,0.033729,-0.145311), i7) + dot(vec4(0.447834,-0.019966,0.002707,0.069171), i8)
                );
                i0 = texelFetch(inFeatures[2], p0, 0);
                i1 = texelFetch(inFeatures[2], p1, 0);
                i2 = texelFetch(inFeatures[2], p2, 0);
                i3 = texelFetch(inFeatures[2], p3, 0);
                i4 = texelFetch(inFeatures[2], p4, 0);
                i5 = texelFetch(inFeatures[2], p5, 0);
                i6 = texelFetch(inFeatures[2], p6, 0);
                i7 = texelFetch(inFeatures[2], p7, 0);
                i8 = texelFetch(inFeatures[2], p8, 0);
                sum1 += vec4(
                    dot(vec4(-0.121072,0.067748,0.073873,0.002645), i0) + dot(vec4(-0.019479,0.070378,-0.017686,0.124333), i1) + dot(vec4(0.057891,-0.020229,-0.185148,0.049022), i2) + dot(vec4(-0.051389,0.060234,-0.055919,0.004711), i3) + dot(vec4(0.095851,0.076892,-0.152891,0.312376), i4) + dot(vec4(-0.049233,0.022821,0.140662,-0.024592), i5) + dot(vec4(-0.073710,0.091729,0.081668,0.093230), i6) + dot(vec4(0.049146,0.100351,0.064407,0.182016), i7) + dot(vec4(0.149563,0.117956,0.140461,0.086808), i8),
                    dot(vec4(0.032594,0.019754,-0.003681,-0.005631), i0) + dot(vec4(0.052937,-0.023264,0.038592,-0.063270), i1) + dot(vec4(0.039585,0.011868,0.004756,-0.024194), i2) + dot(vec4(0.028045,-0.080646,0.042263,-0.131163), i3) + dot(vec4(-0.145868,-0.085393,-0.203278,-0.086231), i4) + dot(vec4(-0.070937,0.059199,-0.056143,0.035254), i5) + dot(vec4(0.040369,-0.084914,0.044373,-0.017594), i6) + dot(vec4(-0.080927,-0.048625,0.127471,-0.067062), i7) + dot(vec4(-0.005312,-0.031914,0.050351,-0.029937), i8),
                    dot(vec4(-0.142623,-0.120137,-0.220214,0.170556), i0) + dot(vec4(-0.541811,-0.104829,-1.207205,0.014749), i1) + dot(vec4(-0.138705,-0.100479,-0.208176,-0.056370), i2) + dot(vec4(-0.203636,-0.126183,-0.050579,-0.121025), i3) + dot(vec4(-0.168876,0.178304,0.633636,-0.232490), i4) + dot(vec4(0.164872,-0.011377,0.162969,0.154618), i5) + dot(vec4(-0.070441,-0.115503,0.158659,-0.037455), i6) + dot(vec4(-0.069465,-0.190653,0.102816,0.105591), i7) + dot(vec4(-0.155478,-0.085693,0.112515,-0.090016), i8),
                    dot(vec4(0.014590,-0.023782,0.355657,0.044607), i0) + dot(vec4(0.224894,-0.028989,0.051882,0.117796), i1) + dot(vec4(-0.004557,0.074537,0.072419,0.055204), i2) + dot(vec4(-0.038613,0.034893,-0.139449,-0.169562), i3) + dot(vec4(0.112400,0.148395,-0.217268,-0.116739), i4) + dot(vec4(-0.090221,0.019627,-0.245100,-0.009099), i5) + dot(vec4(0.051193,-0.060278,0.126521,-0.048313), i6) + dot(vec4(0.162735,-0.074814,0.197875,-0.187863), i7) + dot(vec4(-0.066509,-0.108496,-0.011558,-0.206753), i8)
                );
                sum2 += vec4(
                    dot(vec4(-0.172802,0.063090,-0.134139,-0.096242), i0) + dot(vec4(-0.185444,0.027037,0.038703,-0.057025), i1) + dot(vec4(-0.055654,0.082064,0.037425,0.108187), i2) + dot(vec4(-0.104739,0.014284,-0.070818,0.007574), i3) + dot(vec4(-0.207032,-0.054126,-0.103277,0.030230), i4) + dot(vec4(-0.013096,-0.127813,-0.030693,-0.189734), i5) + dot(vec4(-0.123618,-0.167771,-0.034045,-0.053667), i6) + dot(vec4(0.053320,-0.061704,-0.177032,-0.015498), i7) + dot(vec4(-0.197056,0.220435,-0.010431,-0.181018), i8),
                    dot(vec4(-0.093405,0.028352,-0.011906,0.090493), i0) + dot(vec4(-0.066696,0.119336,-0.026139,-0.126566), i1) + dot(vec4(0.033886,0.105098,-0.078220,0.061228), i2) + dot(vec4(-0.224673,0.021724,0.125189,0.263647), i3) + dot(vec4(-0.073839,-0.032305,-0.134092,0.294642), i4) + dot(vec4(0.128242,-0.099416,0.124815,0.074102), i5) + dot(vec4(-0.036154,0.010297,0.114304,0.137622), i6) + dot(vec4(0.184306,0.177455,0.129644,0.176956), i7) + dot(vec4(-0.013711,0.242404,0.058345,0.179742), i8),
                    dot(vec4(-0.169314,-0.307693,-0.044737,-0.049431), i0) + dot(vec4(-0.152202,-0.178283,-0.104237,0.026748), i1) + dot(vec4(-0.152230,-0.395206,0.117819,0.000865), i2) + dot(vec4(-0.374780,-0.394215,0.446384,0.110987), i3) + dot(vec4(-0.216538,-0.060265,0.265299,0.082536), i4) + dot(vec4(-0.158905,-0.370711,-0.104042,0.187532), i5) + dot(vec4(0.012912,-0.395766,-0.264643,-0.035281), i6) + dot(vec4(0.154311,-0.159507,0.171938,-0.000998), i7) + dot(vec4(0.036960,-0.337452,0.053336,0.056660), i8),
                    dot(vec4(-0.060379,-0.208174,0.137319,0.121572), i0) + dot(vec4(0.011939,-0.040502,0.232505,0.028663), i1) + dot(vec4(0.025171,-0.096955,-0.556900,0.201668), i2) + dot(vec4(0.125137,0.117909,-0.317945,0.153719), i3) + dot(vec4(0.184033,0.339607,-0.122245,-0.127714), i4) + dot(vec4(-0.046983,0.111641,-0.150648,-0.128187), i5) + dot(vec4(0.103816,-0.012758,0.243073,0.126332), i6) + dot(vec4(-0.081578,-0.306807,0.061931,0.010277), i7) + dot(vec4(-0.002159,0.003038,0.056581,-0.052704), i8)
                );
                highp uint bufIdx = gl_GlobalInvocationID.y * gl_NumWorkGroups.x * gl_WorkGroupSize.x + gl_GlobalInvocationID.x;
                outFeatures.data[bufIdx][4] = packUnorm4x8(sum1);
                outFeatures.data[bufIdx][5] = packUnorm4x8(sum2);
            }
        )
