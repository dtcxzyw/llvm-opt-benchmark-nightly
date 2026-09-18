Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ilbcdec?download=true
inline.NumInlined: 150
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"ilbc\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"iLBC (Internet Low Bitrate Codec)\00", align 1
@ff_ilbc_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86075, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 3568, ptr null, ptr null, ptr null, ptr @ilbc_decode_init, %union.anon { ptr @ilbc_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@lsf_codebook = internal unnamed_addr constant [1088 x i16] [i16 1273, i16 2238, i16 3696, i16 3199, i16 5309, i16 8209, i16 3606, i16 5671, i16 7829, i16 2815, i16 5262, i16 8778, i16 2608, i16 4027, i16 5493, i16 1582, i16 3076, i16 5945, i16 2983, i16 4181, i16 5396, i16 2437, i16 4322, i16 6902, i16 1861, i16 2998, i16 4613, i16 2007, i16 3250, i16 5214, i16 1388, i16 2459, i16 4262, i16 2563, i16 3805, i16 5269, i16 2036, i16 3522, i16 5129, i16 1935, i16 4025, i16 6694, i16 2744, i16 5121, i16 7338, i16 2810, i16 4248, i16 5723, i16 3054, i16 5405, i16 7745, i16 1449, i16 2593, i16 4763, i16 3411, i16 5128, i16 6596, i16 2484, i16 4659, i16 7496, i16 1668, i16 2879, i16 4818, i16 1812, i16 3072, i16 5036, i16 1638, i16 2649, i16 3900, i16 2464, i16 3550, i16 4644, i16 1853, i16 2900, i16 4158, i16 2458, i16 4163, i16 5830, i16 2556, i16 4036, i16 6254, i16 2703, i16 4432, i16 6519, i16 3062, i16 4953, i16 7609, i16 1725, i16 3703, i16 6187, i16 2221, i16 3877, i16 5427, i16 2339, i16 3579, i16 5197, i16 2021, i16 4633, i16 7037, i16 2216, i16 3328, i16 4535, i16 2961, i16 4739, i16 6667, i16 2807, i16 3955, i16 5099, i16 2788, i16 4501, i16 6088, i16 1642, i16 2755, i16 4431, i16 3341, i16 5282, i16 7333, i16 2414, i16 3726, i16 5727, i16 1582, i16 2822, i16 5269, i16 2259, i16 3447, i16 4905, i16 3117, i16 4986, i16 7054, i16 1825, i16 3491, i16 5542, i16 3338, i16 5736, i16 8627, i16 1789, i16 3090, i16 5488, i16 2566, i16 3720, i16 4923, i16 2846, i16 4682, i16 7161, i16 1950, i16 3321, i16 5976, i16 1834, i16 3383, i16 6734, i16 3238, i16 4769, i16 6094, i16 2031, i16 3978, i16 5903, i16 1877, i16 4068, i16 7436, i16 2131, i16 4644, i16 8296, i16 2764, i16 5010, i16 8013, i16 2194, i16 3667, i16 6302, i16 2053, i16 3127, i16 4342, i16 3523, i16 6595, i16 10010, i16 3134, i16 4457, i16 5748, i16 3142, i16 5819, i16 9414, i16 2223, i16 4334, i16 6353, i16 2022, i16 3224, i16 4822, i16 2186, i16 3458, i16 5544, i16 2552, i16 4757, i16 6870, i16 10905, i16 12917, i16 14578, i16 9503, i16 11485, i16 14485, i16 9518, i16 12494, i16 14052, i16 6222, i16 7487, i16 9174, i16 7759, i16 9186, i16 10506, i16 8315, i16 12755, i16 14786, i16 9609, i16 11486, i16 13866, i16 8909, i16 12077, i16 13643, i16 7369, i16 9054, i16 11520, i16 9408, i16 12163, i16 14715, i16 6436, i16 9911, i16 12843, i16 7109, i16 9556, i16 11884, i16 7557, i16 10075, i16 11640, i16 6482, i16 9202, i16 11547, i16 6463, i16 7914, i16 10980, i16 8611, i16 10427, i16 12752, i16 7101, i16 9676, i16 12606, i16 7428, i16 11252, i16 13172, i16 10197, i16 12955, i16 15842, i16 7487, i16 10955, i16 12613, i16 5575, i16 7858, i16 13621, i16 7268, i16 11719, i16 14752, i16 7476, i16 11744, i16 13795, i16 7049, i16 8686, i16 11922, i16 8234, i16 11314, i16 13983, i16 6560, i16 11173, i16 14984, i16 6405, i16 9211, i16 12337, i16 8222, i16 12054, i16 13801, i16 8039, i16 10728, i16 13255, i16 10066, i16 12733, i16 14389, i16 6016, i16 7338, i16 10040, i16 6896, i16 8648, i16 10234, i16 7538, i16 9170, i16 12175, i16 7327, i16 12608, i16 14983, i16 10516, i16 12643, i16 15223, i16 5538, i16 7644, i16 12213, i16 6728, i16 12221, i16 14253, i16 7563, i16 9377, i16 12948, i16 8661, i16 11023, i16 13401, i16 7280, i16 8806, i16 11085, i16 7723, i16 9793, i16 12333, i16 12225, i16 14648, i16 16709, i16 8768, i16 13389, i16 15245, i16 10267, i16 12197, i16 13812, i16 5301, i16 7078, i16 11484, i16 7100, i16 10280, i16 11906, i16 8716, i16 12555, i16 14183, i16 9567, i16 12464, i16 15434, i16 7832, i16 12305, i16 14300, i16 7608, i16 10556, i16 12121, i16 8913, i16 11311, i16 12868, i16 7414, i16 9722, i16 11239, i16 8666, i16 11641, i16 13250, i16 9079, i16 10752, i16 12300, i16 8024, i16 11608, i16 13306, i16 10453, i16 13607, i16 16449, i16 8135, i16 9573, i16 10909, i16 6375, i16 7741, i16 10125, i16 10025, i16 12217, i16 14874, i16 6985, i16 11063, i16 14109, i16 9296, i16 13051, i16 14642, i16 8613, i16 10975, i16 12542, i16 6583, i16 10414, i16 13534, i16 6191, i16 9368, i16 13430, i16 5742, i16 6859, i16 9260, i16 7723, i16 9813, i16 13679, i16 8137, i16 11291, i16 12833, i16 6562, i16 8973, i16 10641, i16 6062, i16 8462, i16 11335, i16 6928, i16 8784, i16 12647, i16 7501, i16 8784, i16 10031, i16 8372, i16 10045, i16 12135, i16 8191, i16 9864, i16 12746, i16 5917, i16 7487, i16 10979, i16 5516, i16 6848, i16 10318, i16 6819, i16 9899, i16 11421, i16 7882, i16 12912, i16 15670, i16 9558, i16 11230, i16 12753, i16 7752, i16 9327, i16 11472, i16 8479, i16 9980, i16 11358, i16 11418, i16 14072, i16 16386, i16 7968, i16 10330, i16 14423, i16 8423, i16 10555, i16 12162, i16 6337, i16 10306, i16 14391, i16 8850, i16 10879, i16 14276, i16 6750, i16 11885, i16 15710, i16 7037, i16 8328, i16 9764, i16 6914, i16 9266, i16 13476, i16 9746, i16 13949, i16 15519, i16 11032, i16 14444, i16 16925, i16 8032, i16 10271, i16 11810, i16 10962, i16 13451, i16 15833, i16 10021, i16 11667, i16 13324, i16 6273, i16 8226, i16 12936, i16 8543, i16 10397, i16 13496, i16 7936, i16 10302, i16 12745, i16 6769, i16 8138, i16 10446, i16 6081, i16 7786, i16 11719, i16 8637, i16 11795, i16 14975, i16 8790, i16 10336, i16 11812, i16 7040, i16 8490, i16 10771, i16 7338, i16 10381, i16 13153, i16 6598, i16 7888, i16 9358, i16 6518, i16 8237, i16 12030, i16 9055, i16 10763, i16 12983, i16 6490, i16 10009, i16 12007, i16 9589, i16 12023, i16 13632, i16 6867, i16 9447, i16 10995, i16 7930, i16 9816, i16 11397, i16 10241, i16 13300, i16 14939, i16 5830, i16 8670, i16 12387, i16 9870, i16 11915, i16 14247, i16 9318, i16 11647, i16 13272, i16 6721, i16 10836, i16 12929, i16 6543, i16 8233, i16 9944, i16 8034, i16 10854, i16 12394, i16 9112, i16 11787, i16 14218, i16 9302, i16 11114, i16 13400, i16 9022, i16 11366, i16 13816, i16 6962, i16 10461, i16 12480, i16 11288, i16 13333, i16 15222, i16 7249, i16 8974, i16 10547, i16 10566, i16 12336, i16 14390, i16 6697, i16 11339, i16 13521, i16 11851, i16 13944, i16 15826, i16 6847, i16 8381, i16 11349, i16 7509, i16 9331, i16 10939, i16 8029, i16 9618, i16 11909, i16 13973, i16 17644, i16 19647, i16 22474, i16 14722, i16 16522, i16 20035, i16 22134, i16 16305, i16 18179, i16 21106, i16 23048, i16 15150, i16 17948, i16 21394, i16 23225, i16 13582, i16 15191, i16 17687, i16 22333, i16 11778, i16 15546, i16 18458, i16 21753, i16 16619, i16 18410, i16 20827, i16 23559, i16 14229, i16 15746, i16 17907, i16 22474, i16 12465, i16 15327, i16 20700, i16 22831, i16 15085, i16 16799, i16 20182, i16 23410, i16 13026, i16 16935, i16 19890, i16 22892, i16 14310, i16 16854, i16 19007, i16 22944, i16 14210, i16 15897, i16 18891, i16 23154, i16 14633, i16 18059, i16 20132, i16 22899, i16 15246, i16 17781, i16 19780, i16 22640, i16 16396, i16 18904, i16 20912, i16 23035, i16 14618, i16 17401, i16 19510, i16 21672, i16 15473, i16 17497, i16 19813, i16 23439, i16 18851, i16 20736, i16 22323, i16 23864, i16 15055, i16 16804, i16 18530, i16 20916, i16 16490, i16 18196, i16 19990, i16 21939, i16 11711, i16 15223, i16 21154, i16 23312, i16 13294, i16 15546, i16 19393, i16 21472, i16 12956, i16 16060, i16 20610, i16 22417, i16 11628, i16 15843, i16 19617, i16 22501, i16 14106, i16 16872, i16 19839, i16 22689, i16 15655, i16 18192, i16 20161, i16 22452, i16 12953, i16 15244, i16 20619, i16 23549, i16 15322, i16 17193, i16 19926, i16 21762, i16 16873, i16 18676, i16 20444, i16 22359, i16 14874, i16 17871, i16 20083, i16 21959, i16 11534, i16 14486, i16 19194, i16 21857, i16 17766, i16 19617, i16 21338, i16 23178, i16 13404, i16 15284, i16 19080, i16 23136, i16 15392, i16 17527, i16 19470, i16 21953, i16 14462, i16 16153, i16 17985, i16 21192, i16 17734, i16 19750, i16 21903, i16 23783, i16 16973, i16 19096, i16 21675, i16 23815, i16 16597, i16 18936, i16 21257, i16 23461, i16 15966, i16 17865, i16 20602, i16 22920, i16 15416, i16 17456, i16 20301, i16 22972, i16 18335, i16 20093, i16 21732, i16 23497, i16 15548, i16 17217, i16 20679, i16 23594, i16 15208, i16 16995, i16 20816, i16 22870, i16 13890, i16 18015, i16 20531, i16 22468, i16 13211, i16 15377, i16 19951, i16 22388, i16 12852, i16 14635, i16 17978, i16 22680, i16 16002, i16 17732, i16 20373, i16 23544, i16 11373, i16 14134, i16 19534, i16 22707, i16 17329, i16 19151, i16 21241, i16 23462, i16 15612, i16 17296, i16 19362, i16 22850, i16 15422, i16 19104, i16 21285, i16 23164, i16 13792, i16 17111, i16 19349, i16 21370, i16 15352, i16 17876, i16 20776, i16 22667, i16 15253, i16 16961, i16 18921, i16 22123, i16 14108, i16 17264, i16 20294, i16 23246, i16 15785, i16 17897, i16 20010, i16 21822, i16 17399, i16 19147, i16 20915, i16 22753, i16 13010, i16 15659, i16 18127, i16 20840, i16 16826, i16 19422, i16 22218, i16 24084, i16 18108, i16 20641, i16 22695, i16 24237, i16 18018, i16 20273, i16 22268, i16 23920, i16 16057, i16 17821, i16 21365, i16 23665, i16 16005, i16 17901, i16 19892, i16 23016, i16 13232, i16 16683, i16 21107, i16 23221, i16 13280, i16 16615, i16 19915, i16 21829, i16 14950, i16 18575, i16 20599, i16 22511, i16 16337, i16 18261, i16 20277, i16 23216, i16 14306, i16 16477, i16 21203, i16 23158, i16 12803, i16 17498, i16 20248, i16 22014, i16 14327, i16 17068, i16 20160, i16 22006, i16 14402, i16 17461, i16 21599, i16 23688, i16 16968, i16 18834, i16 20896, i16 23055, i16 15070, i16 17157, i16 20451, i16 22315, i16 15419, i16 17107, i16 21601, i16 23946, i16 16039, i16 17639, i16 19533, i16 21424, i16 16326, i16 19261, i16 21745, i16 23673, i16 16489, i16 18534, i16 21658, i16 23782, i16 16594, i16 18471, i16 20549, i16 22807, i16 18973, i16 21212, i16 22890, i16 24278, i16 14264, i16 18674, i16 21123, i16 23071, i16 15117, i16 16841, i16 19239, i16 23118, i16 13762, i16 15782, i16 20478, i16 23230, i16 14111, i16 15949, i16 20058, i16 22354, i16 14990, i16 16738, i16 21139, i16 23492, i16 13735, i16 16971, i16 19026, i16 22158, i16 14676, i16 17314, i16 20232, i16 22807, i16 16196, i16 18146, i16 20459, i16 22339, i16 14747, i16 17258, i16 19315, i16 22437, i16 14973, i16 17778, i16 20692, i16 23367, i16 15715, i16 17472, i16 20385, i16 22349, i16 15702, i16 18228, i16 20829, i16 23410, i16 14428, i16 16188, i16 20541, i16 23630, i16 16824, i16 19394, i16 21365, i16 23246, i16 13069, i16 16392, i16 18900, i16 21121, i16 12047, i16 16640, i16 19463, i16 21689, i16 14757, i16 17433, i16 19659, i16 23125, i16 15185, i16 16930, i16 19900, i16 22540, i16 16026, i16 17725, i16 19618, i16 22399, i16 16086, i16 18643, i16 21179, i16 23472, i16 15462, i16 17248, i16 19102, i16 21196, i16 17368, i16 20016, i16 22396, i16 24096, i16 12340, i16 14475, i16 19665, i16 23362, i16 13636, i16 16229, i16 19462, i16 22728, i16 14096, i16 16211, i16 19591, i16 21635, i16 12152, i16 14867, i16 19943, i16 22301, i16 14492, i16 17503, i16 21002, i16 22728, i16 14834, i16 16788, i16 19447, i16 21411, i16 14650, i16 16433, i16 19326, i16 22308, i16 14624, i16 16328, i16 19659, i16 23204, i16 13888, i16 16572, i16 20665, i16 22488, i16 12977, i16 16102, i16 18841, i16 22246, i16 15523, i16 18431, i16 21757, i16 23738, i16 14095, i16 16349, i16 18837, i16 20947, i16 13266, i16 17809, i16 21088, i16 22839, i16 15427, i16 18190, i16 20270, i16 23143, i16 11859, i16 16753, i16 20935, i16 22486, i16 12310, i16 17667, i16 21736, i16 23319, i16 14021, i16 15926, i16 18702, i16 22002, i16 12286, i16 15299, i16 19178, i16 21126, i16 15703, i16 17491, i16 21039, i16 23151, i16 12272, i16 14018, i16 18213, i16 22570, i16 14817, i16 16364, i16 18485, i16 22598, i16 17109, i16 19683, i16 21851, i16 23677, i16 12657, i16 14903, i16 19039, i16 22061, i16 14713, i16 16487, i16 20527, i16 22814, i16 14635, i16 16726, i16 18763, i16 21715, i16 15878, i16 18550, i16 20718, i16 22906], align 16
@lsf_weight_20ms = internal unnamed_addr constant [4 x i16] [i16 12288, i16 8192, i16 4096, i16 0], align 2
@cos_derivative_tbl = internal unnamed_addr constant [64 x i16] [i16 -632, i16 -1893, i16 -3150, i16 -4399, i16 -5638, i16 -6863, i16 -8072, i16 -9261, i16 -10428, i16 -11570, i16 -12684, i16 -13767, i16 -14817, i16 -15832, i16 -16808, i16 -17744, i16 -18637, i16 -19486, i16 -20287, i16 -21039, i16 -21741, i16 -22390, i16 -22986, i16 -23526, i16 -24009, i16 -24435, i16 -24801, i16 -25108, i16 -25354, i16 -25540, i16 -25664, i16 -25726, i16 -25726, i16 -25664, i16 -25540, i16 -25354, i16 -25108, i16 -24801, i16 -24435, i16 -24009, i16 -23526, i16 -22986, i16 -22390, i16 -21741, i16 -21039, i16 -20287, i16 -19486, i16 -18637, i16 -17744, i16 -16808, i16 -15832, i16 -14817, i16 -13767, i16 -12684, i16 -11570, i16 -10428, i16 -9261, i16 -8072, i16 -6863, i16 -5638, i16 -4399, i16 -3150, i16 -1893, i16 -632], align 16
@cos_tbl = internal unnamed_addr constant [64 x i16] [i16 32767, i16 32729, i16 32610, i16 32413, i16 32138, i16 31786, i16 31357, i16 30853, i16 30274, i16 29622, i16 28899, i16 28106, i16 27246, i16 26320, i16 25330, i16 24279, i16 23170, i16 22006, i16 20788, i16 19520, i16 18205, i16 16846, i16 15447, i16 14010, i16 12540, i16 11039, i16 9512, i16 7962, i16 6393, i16 4808, i16 3212, i16 1608, i16 0, i16 -1608, i16 -3212, i16 -4808, i16 -6393, i16 -7962, i16 -9512, i16 -11039, i16 -12540, i16 -14010, i16 -15447, i16 -16846, i16 -18205, i16 -19520, i16 -20788, i16 -22006, i16 -23170, i16 -24279, i16 -25330, i16 -26320, i16 -27246, i16 -28106, i16 -28899, i16 -29622, i16 -30274, i16 -30853, i16 -31357, i16 -31786, i16 -32138, i16 -32413, i16 -32610, i16 -32729], align 16
@frg_quant_mod = internal unnamed_addr constant [64 x i16] [i16 569, i16 671, i16 786, i16 916, i16 1077, i16 1278, i16 1529, i16 1802, i16 2109, i16 2481, i16 2898, i16 3440, i16 3943, i16 4535, i16 5149, i16 5778, i16 6464, i16 7208, i16 7904, i16 8682, i16 9397, i16 10285, i16 11240, i16 12246, i16 13313, i16 14382, i16 15492, i16 16735, i16 18131, i16 19693, i16 21280, i16 22912, i16 24624, i16 26544, i16 28432, i16 30488, i16 32720, i16 4383, i16 4684, i16 5012, i16 5363, i16 5739, i16 6146, i16 6603, i16 7113, i16 7679, i16 8285, i16 9040, i16 9850, i16 10838, i16 11882, i16 13103, i16 14467, i16 15950, i16 17669, i16 19712, i16 22016, i16 24800, i16 28576, i16 8240, i16 9792, i16 12040, i16 15440, i16 22472], align 16
@ilbc_state = internal unnamed_addr constant [8 x i16] [i16 -30473, i16 -17838, i16 -9257, i16 -2537, i16 3639, i16 10893, i16 19958, i16 32636], align 16
@gain5 = internal unnamed_addr constant [33 x i16] [i16 614, i16 1229, i16 1843, i16 2458, i16 3072, i16 3686, i16 4301, i16 4915, i16 5530, i16 6144, i16 6758, i16 7373, i16 7987, i16 8602, i16 9216, i16 9830, i16 10445, i16 11059, i16 11674, i16 12288, i16 12902, i16 13517, i16 14131, i16 14746, i16 15360, i16 15974, i16 16589, i16 17203, i16 17818, i16 18432, i16 19046, i16 19661, i16 32767], align 16
@gain4 = internal unnamed_addr constant [17 x i16] [i16 -17203, i16 -14746, i16 -12288, i16 -9830, i16 -7373, i16 -4915, i16 -2458, i16 0, i16 2458, i16 4915, i16 7373, i16 9830, i16 12288, i16 14746, i16 17203, i16 19661, i16 32767], align 16
@gain3 = internal unnamed_addr constant [9 x i16] [i16 -16384, i16 -10813, i16 -5407, i16 0, i16 4096, i16 8192, i16 12288, i16 16384, i16 32767], align 16
@alpha = internal unnamed_addr constant [4 x i16] [i16 6554, i16 13107, i16 19661, i16 26214], align 2

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @ilbc_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  switch i32 %i.d, label %bb.c [
    i32 38, label %.sink.split
    i32 50, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.f, 14001
  %i.i = select i1 %i.h, i32 30, i32 20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b, %bb.d
  %.sink = phi i32 [ 30, %bb.b ], [ %i.i, %bb.d ], [ 20, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sink, ptr %i.j, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.k) #11
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <4 x i32> <i32 8000, i32 1, i32 1, i32 1>, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32
  %i.o = icmp eq i32 %i.n, 30                     ; 5 uses
  %. = select i1 %i.o, i32 240, i32 160
  %.37 = select i1 %i.o, i16 6, i16 4
  %.38 = select i1 %i.o, i16 4, i16 2
  %.39 = select i1 %i.o, i32 2, i32 1
  %.40 = select i1 %i.o, i32 58, i32 57
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  store i32 %., ptr %i.p, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 234
  store i16 %.37, ptr %i.q, align 2, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i16 %.38, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  store i32 %.39, ptr %i.s, align 4, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i32 %.40, ptr %i.t, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ -1094995529, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ilbc_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [126 x i16], align 16             ; 5 uses
  %i.b = alloca [126 x i16], align 16             ; 3 uses
  %i.c = alloca [11 x i16], align 16              ; 29 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 197 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 3002 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3022 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(196) %i.j, i8 0, i64 196, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 112 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73   ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.n, 268435455
  %i.o = shl nuw nsw i32 %i.n, 3
  %i.p = select i1 %or.cond.i.i, i32 -8, i32 %i.o ; 4 uses
  %or.cond.i.i.i = icmp ult i32 %i.p, 2147483135
  %i.q = icmp ne ptr %i.l, null
  %or.cond3.i.i.i = and i1 %i.q, %or.cond.i.i.i
  %i.r = add nuw nsw i32 %i.p, 8                  ; 110 uses
  br i1 %or.cond3.i.i.i, label %bb.b, label %unpack_frame.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.l, align 1, !tbaa !33
  %i.t = trunc i32 %i.s to i16
  %i.u = lshr i16 %i.t, 2
  %i.v = and i16 %i.u, 63
  store i16 %i.v, ptr %i.j, align 8, !tbaa !39
  %i.w = load i32, ptr %i.l, align 1, !tbaa !33
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = lshr i32 %i.x, 19
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.r, i32 13) ; 2 uses
  %i.aa = trunc nuw nsw i32 %i.y to i16
  %i.ab = and i16 %i.aa, 127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !33
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = and i32 %i.z, 5
  %i.ah = shl i32 %i.af, %i.ag
  %i.ai = lshr i32 %i.ah, 25
  %i.aj = add nuw nsw i32 %i.z, 7
  %i.ak = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.aj) ; 4 uses
  %i.al = trunc nuw nsw i32 %i.ai to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  store i16 %i.al, ptr %i.am, align 4, !tbaa !39
  %i.an = icmp eq i32 %i.g, 20                    ; 3 uses
  %i.ao = lshr i32 %i.ak, 3
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !33
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.at = and i32 %i.ak, 7
  %i.au = shl i32 %i.as, %i.at                    ; 2 uses
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = lshr i32 %i.au, 30
  %i.aw = add nuw nsw i32 %i.ak, 2                ; 2 uses
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.aw) ; 3 uses
  %i.ay = trunc nuw nsw i32 %i.av to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 210
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !74
  %i.ba = lshr i32 %i.ax, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !33
  %i.be = icmp samesign ult i32 %i.aw, %i.r
  %i.bf = zext i1 %i.be to i32
  %spec.select.i.i = add nuw nsw i32 %i.ax, %i.bf ; 3 uses
  %i.bg = zext i8 %i.bd to i32
  %i.bh = and i32 %i.ax, 7
  %i.bi = shl nuw nsw i32 %i.bg, %i.bh
  %i.bj = trunc nuw nsw i32 %i.bi to i16
  %i.bk = lshr i16 %i.bj, 7
  %i.bl = and i16 %i.bk, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !75
  %i.bn = lshr i32 %spec.select.i.i, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 1, !tbaa !33
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = and i32 %spec.select.i.i, 7
  %i.bt = shl i32 %i.br, %i.bs
  %i.bu = lshr i32 %i.bt, 26
  %i.bv = add nuw nsw i32 %spec.select.i.i, 6
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.bv) ; 3 uses
  %i.bx = trunc nuw nsw i32 %i.bu to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i16 %i.bx, ptr %i.by, align 8, !tbaa !76
  %i.bz = lshr i32 %i.bw, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !33
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  %i.ce = and i32 %i.bw, 7
  %i.cf = shl i32 %i.cd, %i.ce
  %i.cg = add nuw nsw i32 %i.bw, 6
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.cg) ; 3 uses
  %sh.diff655.i = lshr i32 %i.cf, 25
  %tr.sh.diff656.i = trunc nuw nsw i32 %sh.diff655.i to i16
  %i.ci = and i16 %tr.sh.diff656.i, 126
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i16 %i.ci, ptr %i.cj, align 4, !tbaa !39
  %i.ck = lshr i32 %i.ch, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !33
  %i.co = tail call i32 @llvm.bswap.i32(i32 %i.cn)
  %i.cp = and i32 %i.ch, 7
  %i.cq = shl i32 %i.co, %i.cp
  %i.cr = add nuw nsw i32 %i.ch, 2                ; 2 uses
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.cr) ; 3 uses
  %sh.diff657.i = lshr i32 %i.cq, 27
  %tr.sh.diff658.i = trunc nuw nsw i32 %sh.diff657.i to i16
  %i.ct = and i16 %tr.sh.diff658.i, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !39
  %i.cv = lshr i32 %i.cs, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !33
  %i.cz = icmp samesign ult i32 %i.cr, %i.r
  %i.da = zext i1 %i.cz to i32
  %spec.select.i288.i = add nuw nsw i32 %i.cs, %i.da ; 3 uses
  %i.db = zext i8 %i.cy to i32
  %i.dc = and i32 %i.cs, 7
  %i.dd = shl nuw nsw i32 %i.db, %i.dc
  %i.de = trunc nuw nsw i32 %i.dd to i16
  %i.df = lshr i16 %i.de, 4
  %i.dg = and i16 %i.df, 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i16 %i.dg, ptr %i.dh, align 4, !tbaa !39
  %i.di = lshr i32 %spec.select.i288.i, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !33
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = and i32 %spec.select.i288.i, 7
  %i.do = shl i32 %i.dm, %i.dn
  %i.dp = add nuw nsw i32 %spec.select.i288.i, 7  ; 2 uses
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.dp) ; 3 uses
  %sh.diff659.i = lshr i32 %i.do, 24
  %tr.sh.diff660.i = trunc nuw nsw i32 %sh.diff659.i to i16
  %i.dr = and i16 %tr.sh.diff660.i, 254
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !39
  %i.dt = lshr i32 %i.dq, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !33
  %i.dx = icmp samesign ult i32 %i.dp, %i.r
  %i.dy = zext i1 %i.dx to i32
  %spec.select.i289.i = add nuw nsw i32 %i.dq, %i.dy ; 2 uses
  %i.dz = zext i8 %i.dw to i32
  %i.ea = and i32 %i.dq, 7
  %i.eb = shl nuw nsw i32 %i.dz, %i.ea
  %i.ec = trunc nuw nsw i32 %i.eb to i16
  %i.ed = lshr i16 %i.ec, 3
  %i.ee = and i16 %i.ed, 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ef = lshr i32 %i.au, 26
  %i.eg = add nuw nsw i32 %i.ak, 6
  %i.eh = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.eg) ; 3 uses
  %i.ei = trunc nuw nsw i32 %i.ef to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !39
  %i.ek = lshr i32 %i.eh, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.el
  %i.en = load i32, ptr %i.em, align 1, !tbaa !33
  %i.eo = tail call i32 @llvm.bswap.i32(i32 %i.en)
  %i.ep = and i32 %i.eh, 7
  %i.eq = shl i32 %i.eo, %i.ep
  %i.er = lshr i32 %i.eq, 25
  %i.es = add nuw nsw i32 %i.eh, 7
  %i.et = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.es) ; 3 uses
  %i.eu = trunc nuw nsw i32 %i.er to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i16 %i.eu, ptr %i.ev, align 8, !tbaa !39
  %i.ew = lshr i32 %i.et, 3
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 1, !tbaa !33
  %i.fa = tail call i32 @llvm.bswap.i32(i32 %i.ez)
  %i.fb = and i32 %i.et, 7
  %i.fc = shl i32 %i.fa, %i.fb
  %i.fd = lshr i32 %i.fc, 25
  %i.fe = add nuw nsw i32 %i.et, 7
  %i.ff = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.fe) ; 3 uses
  %i.fg = trunc nuw nsw i32 %i.fd to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !39
  %i.fi = lshr i32 %i.ff, 3
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 1, !tbaa !33
  %i.fm = tail call i32 @llvm.bswap.i32(i32 %i.fl)
  %i.fn = and i32 %i.ff, 7
  %i.fo = shl i32 %i.fm, %i.fn
  %i.fp = lshr i32 %i.fo, 29
  %i.fq = add nuw nsw i32 %i.ff, 3                ; 2 uses
  %i.fr = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.fq) ; 3 uses
  %i.fs = trunc nuw nsw i32 %i.fp to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 210
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !74
  %i.fu = lshr i32 %i.fr, 3
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !33
  %i.fy = icmp samesign ult i32 %i.fq, %i.r
  %i.fz = zext i1 %i.fy to i32
  %spec.select.i292.i = add nuw nsw i32 %i.fr, %i.fz ; 3 uses
  %i.ga = zext i8 %i.fx to i32
  %i.gb = and i32 %i.fr, 7
  %i.gc = shl nuw nsw i32 %i.ga, %i.gb
  %i.gd = trunc nuw nsw i32 %i.gc to i16
  %i.ge = lshr i16 %i.gd, 7
  %i.gf = and i16 %i.ge, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !75
  %i.gh = lshr i32 %spec.select.i292.i, 3
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 1, !tbaa !33
  %i.gl = tail call i32 @llvm.bswap.i32(i32 %i.gk)
  %i.gm = and i32 %spec.select.i292.i, 7
  %i.gn = shl i32 %i.gl, %i.gm
  %i.go = lshr i32 %i.gn, 26
  %i.gp = add nuw nsw i32 %spec.select.i292.i, 6
  %i.gq = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gp) ; 3 uses
  %i.gr = trunc nuw nsw i32 %i.go to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i16 %i.gr, ptr %i.gs, align 8, !tbaa !76
  %i.gt = lshr i32 %i.gq, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 1, !tbaa !33
  %i.gx = tail call i32 @llvm.bswap.i32(i32 %i.gw)
  %i.gy = and i32 %i.gq, 7
  %i.gz = shl i32 %i.gx, %i.gy
  %i.ha = add nuw nsw i32 %i.gq, 4                ; 2 uses
  %i.hb = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ha) ; 3 uses
  %sh.diff.i = lshr i32 %i.gz, 25
  %tr.sh.diff.i = trunc nuw nsw i32 %sh.diff.i to i16
  %i.hc = and i16 %tr.sh.diff.i, 120
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i16 %i.hc, ptr %i.hd, align 4, !tbaa !39
  %i.he = lshr i32 %i.hb, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !33
  %i.hi = icmp samesign ult i32 %i.ha, %i.r
  %i.hj = zext i1 %i.hi to i32
  %spec.select.i293.i = add nuw nsw i32 %i.hb, %i.hj ; 4 uses
  %i.hk = zext i8 %i.hh to i32
  %i.hl = and i32 %i.hb, 7
  %i.hm = shl nuw nsw i32 %i.hk, %i.hl
  %i.hn = trunc nuw nsw i32 %i.hm to i16
  %i.ho = lshr i16 %i.hn, 3
  %i.hp = and i16 %i.ho, 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !39
  %i.hr = lshr i32 %spec.select.i293.i, 3
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !33
  %i.hv = icmp samesign ult i32 %spec.select.i293.i, %i.r
  %i.hw = zext i1 %i.hv to i32
  %spec.select.i294.i = add nuw nsw i32 %spec.select.i293.i, %i.hw ; 3 uses
  %i.hx = zext i8 %i.hu to i32
  %i.hy = and i32 %spec.select.i293.i, 7
  %i.hz = shl nuw nsw i32 %i.hx, %i.hy
  %i.ia = trunc nuw nsw i32 %i.hz to i16
  %i.ib = lshr i16 %i.ia, 4
  %i.ic = and i16 %i.ib, 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i16 %i.ic, ptr %i.id, align 4, !tbaa !39
  %i.ie = lshr i32 %spec.select.i294.i, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 1, !tbaa !33
  %i.ii = tail call i32 @llvm.bswap.i32(i32 %i.ih)
  %i.ij = and i32 %spec.select.i294.i, 7
  %i.ik = shl i32 %i.ii, %i.ij
  %i.il = add nuw nsw i32 %spec.select.i294.i, 6  ; 2 uses
  %i.im = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.il)
  %sh.diff653.i = lshr i32 %i.ik, 24
  %tr.sh.diff654.i = trunc nuw nsw i32 %sh.diff653.i to i16
  %i.in = and i16 %tr.sh.diff654.i, 252
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink766.i = phi i64 [ 34, %bb.d ], [ 64, %bb.c ]
  %.sink764.i = phi i16 [ %i.in, %bb.d ], [ %i.ee, %bb.c ]
  %.sink763.i = phi i32 [ %i.im, %bb.d ], [ %spec.select.i289.i, %bb.c ] ; 3 uses
  %.sink759.i = phi i32 [ %i.il, %bb.d ], [ %spec.select.i289.i, %bb.c ]
  %.sink752.i = phi i16 [ 3, %bb.d ], [ 4, %bb.c ]
  %.sink751.i = phi i16 [ 16, %bb.d ], [ 8, %bb.c ]
  %.sink749.i = phi i64 [ 64, %bb.d ], [ 66, %bb.c ]
  %.sink739.i = phi i16 [ 4, %bb.d ], [ 3, %bb.c ]
  %.sink738.i = phi i16 [ 8, %bb.d ], [ 16, %bb.c ]
  %.sink736.i = phi i64 [ 66, %bb.d ], [ 70, %bb.c ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink766.i
  store i16 %.sink764.i, ptr %i.io, align 2, !tbaa !39
  %i.ip = lshr i32 %.sink763.i, 3
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !33
  %i.it = icmp samesign ult i32 %.sink759.i, %i.r
  %i.iu = zext i1 %i.it to i32
  %spec.select.i295.i = add nuw nsw i32 %.sink763.i, %i.iu ; 4 uses
  %i.iv = zext i8 %i.is to i32
  %i.iw = and i32 %.sink763.i, 7
  %i.ix = shl nuw nsw i32 %i.iv, %i.iw
  %i.iy = trunc nuw nsw i32 %i.ix to i16
  %i.iz = lshr i16 %i.iy, %.sink752.i
  %i.ja = and i16 %i.iz, %.sink751.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink749.i
  store i16 %i.ja, ptr %i.jb, align 2, !tbaa !39
  %i.jc = lshr i32 %spec.select.i295.i, 3
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !33
  %i.jg = icmp samesign ult i32 %spec.select.i295.i, %i.r
  %i.jh = zext i1 %i.jg to i32
  %spec.select.i296.i = add nuw nsw i32 %spec.select.i295.i, %i.jh
  %i.ji = zext i8 %i.jf to i32
  %i.jj = and i32 %spec.select.i295.i, 7
  %i.jk = shl nuw nsw i32 %i.ji, %i.jj
  %i.jl = trunc nuw nsw i32 %i.jk to i16
  %i.jm = lshr i16 %i.jl, %.sink739.i
  %i.jn = and i16 %i.jm, %.sink738.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink736.i
  store i16 %i.jn, ptr %i.jo, align 2, !tbaa !39
  %i.jp = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %.sroa.114.1698.i = phi i32 [ %spec.select.i296.i, %bb.e ], [ %spec.select.i297.i.1, %bb.f ] ; 4 uses
  %i.jq = lshr i32 %.sroa.114.1698.i, 3
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !33
  %i.ju = icmp slt i32 %.sroa.114.1698.i, %i.r
  %i.jv = zext i1 %i.ju to i32
  %spec.select.i297.i = add i32 %.sroa.114.1698.i, %i.jv ; 4 uses
  %i.jw = zext i8 %i.jt to i32
  %i.jx = and i32 %.sroa.114.1698.i, 7
  %i.jy = shl nuw nsw i32 %i.jw, %i.jx
  %i.jz = trunc nuw nsw i32 %i.jy to i16
  %i.ka = lshr i16 %i.jz, 5
  %i.kb = and i16 %i.ka, 4
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv.i
  store i16 %i.kb, ptr %i.kc, align 2, !tbaa !39
  %i.kd = lshr i32 %spec.select.i297.i, 3
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !33
  %i.kh = icmp slt i32 %spec.select.i297.i, %i.r
  %i.ki = zext i1 %i.kh to i32
  %spec.select.i297.i.1 = add i32 %spec.select.i297.i, %i.ki ; 5 uses
  %i.kj = zext i8 %i.kg to i32
  %i.kk = and i32 %spec.select.i297.i, 7
  %i.kl = shl nuw nsw i32 %i.kj, %i.kk
  %i.km = trunc nuw nsw i32 %i.kl to i16
  %i.kn = lshr i16 %i.km, 5
  %i.ko = and i16 %i.kn, 4
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  store i16 %i.ko, ptr %i.kq, align 2, !tbaa !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 48
  br i1 %exitcond.not.i.1, label %bb.g, label %bb.f, !llvm.loop !49

bb.g:                                             ; preds = %bb.f
  %i.kr = lshr i32 %spec.select.i297.i.1, 3
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !33
  %i.kv = icmp slt i32 %spec.select.i297.i.1, %i.r
  %i.kw = zext i1 %i.kv to i32
  %spec.select.i298.i = add i32 %spec.select.i297.i.1, %i.kw ; 4 uses
  %i.kx = zext i8 %i.ku to i32
  %i.ky = and i32 %spec.select.i297.i.1, 7
  %i.kz = shl nuw nsw i32 %i.kx, %i.ky
  %i.la = trunc nuw nsw i32 %i.kz to i16
  %i.lb = lshr i16 %i.la, 5
  %i.lc = and i16 %i.lb, 4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.e, i64 188
  store i16 %i.lc, ptr %i.ld, align 4, !tbaa !39
  %i.le = lshr i32 %spec.select.i298.i, 3
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !33
  %i.li = icmp slt i32 %spec.select.i298.i, %i.r
  %i.lj = zext i1 %i.li to i32
  %spec.select.i298.1.i = add i32 %spec.select.i298.i, %i.lj ; 4 uses
  %i.lk = zext i8 %i.lh to i32
  %i.ll = and i32 %spec.select.i298.i, 7
  %i.lm = shl nuw nsw i32 %i.lk, %i.ll
  %i.ln = trunc nuw nsw i32 %i.lm to i16
  %i.lo = lshr i16 %i.ln, 5
  %i.lp = and i16 %i.lo, 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 190
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !39
  %i.lr = lshr i32 %spec.select.i298.1.i, 3
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !33
  %i.lv = icmp slt i32 %spec.select.i298.1.i, %i.r
  %i.lw = zext i1 %i.lv to i32
  %spec.select.i298.2.i = add i32 %spec.select.i298.1.i, %i.lw ; 4 uses
  %i.lx = zext i8 %i.lu to i32
  %i.ly = and i32 %spec.select.i298.1.i, 7
  %i.lz = shl nuw nsw i32 %i.lx, %i.ly
  %i.ma = trunc nuw nsw i32 %i.lz to i16
  %i.mb = lshr i16 %i.ma, 5
  %i.mc = and i16 %i.mb, 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store i16 %i.mc, ptr %i.md, align 8, !tbaa !39
  %i.me = lshr i32 %spec.select.i298.2.i, 3
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !33
  %i.mi = icmp slt i32 %spec.select.i298.2.i, %i.r
  %i.mj = zext i1 %i.mi to i32
  %spec.select.i298.3.i = add i32 %spec.select.i298.2.i, %i.mj ; 4 uses
  %i.mk = zext i8 %i.mh to i32
  %i.ml = and i32 %spec.select.i298.2.i, 7
  %i.mm = shl nuw nsw i32 %i.mk, %i.ml
  %i.mn = trunc nuw nsw i32 %i.mm to i16
  %i.mo = lshr i16 %i.mn, 5
  %i.mp = and i16 %i.mo, 4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.e, i64 194
  store i16 %i.mp, ptr %i.mq, align 2, !tbaa !39
  %i.mr = lshr i32 %spec.select.i298.3.i, 3
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !33
  %i.mv = icmp slt i32 %spec.select.i298.3.i, %i.r
  %i.mw = zext i1 %i.mv to i32
  %spec.select.i298.4.i = add i32 %spec.select.i298.3.i, %i.mw ; 4 uses
  %i.mx = zext i8 %i.mu to i32
  %i.my = and i32 %spec.select.i298.3.i, 7
  %i.mz = shl nuw nsw i32 %i.mx, %i.my
  %i.na = trunc nuw nsw i32 %i.mz to i16
  %i.nb = lshr i16 %i.na, 5
  %i.nc = and i16 %i.nb, 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.e, i64 196
  store i16 %i.nc, ptr %i.nd, align 4, !tbaa !39
  %i.ne = lshr i32 %spec.select.i298.4.i, 3
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !33
  %i.ni = icmp slt i32 %spec.select.i298.4.i, %i.r
  %i.nj = zext i1 %i.ni to i32
  %spec.select.i298.5.i = add i32 %spec.select.i298.4.i, %i.nj ; 4 uses
  %i.nk = zext i8 %i.nh to i32
  %i.nl = and i32 %spec.select.i298.4.i, 7
  %i.nm = shl nuw nsw i32 %i.nk, %i.nl
  %i.nn = trunc nuw nsw i32 %i.nm to i16
  %i.no = lshr i16 %i.nn, 5
  %i.np = and i16 %i.no, 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.e, i64 198
  store i16 %i.np, ptr %i.nq, align 2, !tbaa !39
  %i.nr = lshr i32 %spec.select.i298.5.i, 3
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !33
  %i.nv = icmp slt i32 %spec.select.i298.5.i, %i.r
  %i.nw = zext i1 %i.nv to i32
  %spec.select.i298.6.i = add i32 %spec.select.i298.5.i, %i.nw ; 4 uses
  %i.nx = zext i8 %i.nu to i32
  %i.ny = and i32 %spec.select.i298.5.i, 7
  %i.nz = shl nuw nsw i32 %i.nx, %i.ny
  %i.oa = trunc nuw nsw i32 %i.nz to i16
  %i.ob = lshr i16 %i.oa, 5
  %i.oc = and i16 %i.ob, 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i16 %i.oc, ptr %i.od, align 8, !tbaa !39
  %i.oe = lshr i32 %spec.select.i298.6.i, 3
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !33
  %i.oi = icmp slt i32 %spec.select.i298.6.i, %i.r
  %i.oj = zext i1 %i.oi to i32
  %spec.select.i298.7.i = add i32 %spec.select.i298.6.i, %i.oj ; 7 uses
  %i.ok = zext i8 %i.oh to i32
  %i.ol = and i32 %spec.select.i298.6.i, 7
  %i.om = shl nuw nsw i32 %i.ok, %i.ol
  %i.on = trunc nuw nsw i32 %i.om to i16
  %i.oo = lshr i16 %i.on, 5
  %i.op = and i16 %i.oo, 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.e, i64 202
  store i16 %i.op, ptr %i.oq, align 2, !tbaa !39
  %i.or = lshr i32 %spec.select.i298.7.i, 3
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !33  ; 2 uses
  br i1 %i.an, label %._crit_edge705.i, label %._crit_edge.i

._crit_edge705.i:                                 ; preds = %bb.g
  %i.ov = zext i8 %i.ou to i32
  %i.ow = and i32 %spec.select.i298.7.i, 7
  %i.ox = shl nuw nsw i32 %i.ov, %i.ow
  %i.oy = trunc nuw nsw i32 %i.ox to i16
  %i.oz = lshr i16 %i.oy, 5
  %i.pa = and i16 %i.oz, 4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.e, i64 204
  store i16 %i.pa, ptr %i.pb, align 4, !tbaa !39
  %.phi.trans.insert733.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66 ; 2 uses
  %.pre734.i = load i16, ptr %.phi.trans.insert733.i, align 2, !tbaa !39
  %.phi.trans.insert731.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %.pre732.i = load i16, ptr %.phi.trans.insert731.i, align 8, !tbaa !39
  %.phi.trans.insert729.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  %.pre730.i = load i16, ptr %.phi.trans.insert729.i, align 4, !tbaa !39
  %i.pc = icmp slt i32 %spec.select.i298.7.i, %i.r
  %i.pd = zext i1 %i.pc to i32
  %spec.select.i298.8.i = add i32 %spec.select.i298.7.i, %i.pd ; 4 uses
  %i.pe = lshr i32 %spec.select.i298.8.i, 3
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !33
  %i.pi = icmp slt i32 %spec.select.i298.8.i, %i.r
  %i.pj = zext i1 %i.pi to i32
  %spec.select.i299.i = add i32 %spec.select.i298.8.i, %i.pj ; 3 uses
  %i.pk = zext i8 %i.ph to i32
  %i.pl = and i32 %spec.select.i298.8.i, 7
  %i.pm = shl nuw nsw i32 %i.pk, %i.pl
  %i.pn = trunc nuw nsw i32 %i.pm to i16
  %i.po = lshr i16 %i.pn, 5
  %i.pp = and i16 %i.po, 4
  %i.pq = or i16 %i.pp, %.pre730.i
  store i16 %i.pq, ptr %.phi.trans.insert729.i, align 4, !tbaa !39
  %i.pr = lshr i32 %spec.select.i299.i, 3
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 1, !tbaa !33
  %i.pv = tail call i32 @llvm.bswap.i32(i32 %i.pu)
  %i.pw = and i32 %spec.select.i299.i, 7
  %i.px = shl i32 %i.pv, %i.pw
  %i.py = add i32 %spec.select.i299.i, 2          ; 2 uses
  %i.pz = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.py) ; 3 uses
  %sh.diff679.i = lshr i32 %i.px, 28
  %tr.sh.diff680.i = trunc nuw nsw i32 %sh.diff679.i to i16
  %i.qa = and i16 %tr.sh.diff680.i, 12
  %i.qb = or i16 %i.qa, %.pre732.i
  store i16 %i.qb, ptr %.phi.trans.insert731.i, align 8, !tbaa !39
  %i.qc = lshr i32 %i.pz, 3
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !33
  %i.qg = icmp ult i32 %i.py, %i.r
  %i.qh = zext i1 %i.qg to i32
  %spec.select.i300.i = add nuw nsw i32 %i.pz, %i.qh ; 4 uses
  %i.qi = zext i8 %i.qf to i32
  %i.qj = and i32 %i.pz, 7
  %i.qk = shl nuw nsw i32 %i.qi, %i.qj
  %i.ql = trunc nuw nsw i32 %i.qk to i16
  %i.qm = lshr i16 %i.ql, 5
  %i.qn = and i16 %i.qm, 4
  %i.qo = or i16 %i.qn, %.pre734.i
  store i16 %i.qo, ptr %.phi.trans.insert733.i, align 2, !tbaa !39
  %i.qp = lshr i32 %spec.select.i300.i, 3
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !33
  %i.qt = icmp samesign ult i32 %spec.select.i300.i, %i.r
  %i.qu = zext i1 %i.qt to i32
  %spec.select.i301.i = add nuw nsw i32 %spec.select.i300.i, %i.qu ; 3 uses
  %i.qv = zext i8 %i.qs to i32
  %i.qw = and i32 %spec.select.i300.i, 7
  %i.qx = shl nuw nsw i32 %i.qv, %i.qw
end_hunk_0
begin_hunk_1_@ilbc_decode_frame:bb.a
  %i.ux = tail call i32 @llvm.bswap.i32(i32 %i.uw)
  %i.uy = and i32 %spec.select.i306.i, 7
  %i.uz = shl i32 %i.ux, %i.uy
  %i.va = add nuw nsw i32 %spec.select.i306.i, 6
  %i.vb = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.va) ; 3 uses
  %sh.diff663.i = lshr i32 %i.uz, 25
  %tr.sh.diff664.i = trunc nuw nsw i32 %sh.diff663.i to i16
  %i.vc = and i16 %tr.sh.diff664.i, 126
  %i.vd = or disjoint i16 %i.vc, %.tr259.i
  store i16 %i.vd, ptr %i.us, align 8, !tbaa !39
  %i.ve = lshr i32 %i.vb, 3
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 1, !tbaa !33
  %i.vi = tail call i32 @llvm.bswap.i32(i32 %i.vh)
  %i.vj = and i32 %i.vb, 7
  %i.vk = shl i32 %i.vi, %i.vj
  %i.vl = add nuw nsw i32 %i.vb, 7
  %i.vm = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.vl) ; 3 uses
  %sh.diff665.i = lshr i32 %i.vk, 24
  %tr.sh.diff666.i = trunc nuw nsw i32 %sh.diff665.i to i16
  %i.vn = and i16 %tr.sh.diff666.i, 254
  %i.vo = getelementptr inbounds nuw i8, ptr %i.e, i64 46
  store i16 %i.vn, ptr %i.vo, align 2, !tbaa !39
  %i.vp = lshr i32 %i.vm, 3
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 1, !tbaa !33
  %i.vt = tail call i32 @llvm.bswap.i32(i32 %i.vs)
  %i.vu = and i32 %i.vm, 7
  %i.vv = shl i32 %i.vt, %i.vu
  %i.vw = add nuw nsw i32 %i.vm, 3
  %i.vx = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.vw) ; 3 uses
  %sh.diff667.i = lshr i32 %i.vv, 24
  %tr.sh.diff668.i = trunc nuw nsw i32 %sh.diff667.i to i16
  %i.vy = and i16 %tr.sh.diff668.i, 224           ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  store i16 %i.vy, ptr %i.vz, align 4, !tbaa !39
  %i.wa = lshr i32 %i.vx, 3
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.wb
  %i.wd = load i32, ptr %i.wc, align 1, !tbaa !33
  %i.we = tail call i32 @llvm.bswap.i32(i32 %i.wd)
  %i.wf = and i32 %i.vx, 7
  %i.wg = shl i32 %i.we, %i.wf
  %i.wh = add nuw nsw i32 %i.vx, 4
  %i.wi = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.wh) ; 3 uses
  %sh.diff669.i = lshr i32 %i.wg, 27
  %tr.sh.diff670.i = trunc nuw nsw i32 %sh.diff669.i to i16
  %i.wj = and i16 %tr.sh.diff670.i, 30
  %i.wk = or disjoint i16 %i.wj, %i.vy
  store i16 %i.wk, ptr %i.vz, align 4, !tbaa !39
  %i.wl = lshr i32 %i.wi, 3
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.wm
  %i.wo = load i32, ptr %i.wn, align 1, !tbaa !33
  %i.wp = tail call i32 @llvm.bswap.i32(i32 %i.wo)
  %i.wq = and i32 %i.wi, 7
  %i.wr = shl i32 %i.wp, %i.wq
  %i.ws = add nuw nsw i32 %i.wi, 2
  %i.wt = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ws) ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.wv = load i16, ptr %i.wu, align 8, !tbaa !39
  %sh.diff671.i = lshr i32 %i.wr, 28
  %tr.sh.diff672.i = trunc nuw nsw i32 %sh.diff671.i to i16
  %i.ww = and i16 %tr.sh.diff672.i, 12
  %i.wx = or i16 %i.ww, %i.wv
  store i16 %i.wx, ptr %i.wu, align 8, !tbaa !39
  %i.wy = lshr i32 %i.wt, 3
  %i.wz = zext nneg i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 1, !tbaa !33
  %i.xc = tail call i32 @llvm.bswap.i32(i32 %i.xb)
  %i.xd = and i32 %i.wt, 7
  %i.xe = shl i32 %i.xc, %i.xd
  %i.xf = add nuw nsw i32 %i.wt, 2
  %i.xg = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.xf) ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.e, i64 66 ; 2 uses
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !39
  %sh.diff673.i = lshr i32 %i.xe, 29
  %tr.sh.diff674.i = trunc nuw nsw i32 %sh.diff673.i to i16
  %i.xj = and i16 %tr.sh.diff674.i, 6
  %i.xk = or i16 %i.xj, %i.xi
  store i16 %i.xk, ptr %i.xh, align 2, !tbaa !39
  %i.xl = lshr i32 %i.xg, 3
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 1, !tbaa !33
  %i.xp = tail call i32 @llvm.bswap.i32(i32 %i.xo)
  %i.xq = and i32 %i.xg, 7
  %i.xr = shl i32 %i.xp, %i.xq
  %i.xs = add nuw nsw i32 %i.xg, 2
  %i.xt = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.xs) ; 3 uses
  %sh.diff675.i = lshr i32 %i.xr, 27
  %tr.sh.diff676.i = trunc nuw nsw i32 %sh.diff675.i to i16
  %i.xu = and i16 %tr.sh.diff676.i, 24
  %i.xv = getelementptr inbounds nuw i8, ptr %i.e, i64 70
  store i16 %i.xu, ptr %i.xv, align 2, !tbaa !39
  %i.xw = lshr i32 %i.xt, 3
  %i.xx = zext nneg i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 1, !tbaa !33
  %i.ya = tail call i32 @llvm.bswap.i32(i32 %i.xz)
  %i.yb = and i32 %i.xt, 7
  %i.yc = shl i32 %i.ya, %i.yb
  %i.yd = add nuw nsw i32 %i.xt, 2                ; 2 uses
  %i.ye = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.yd) ; 3 uses
  %sh.diff677.i = lshr i32 %i.yc, 28
  %tr.sh.diff678.i = trunc nuw nsw i32 %sh.diff677.i to i16
  %i.yf = and i16 %tr.sh.diff678.i, 12
  %i.yg = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i16 %i.yf, ptr %i.yg, align 8, !tbaa !39
  %i.yh = lshr i32 %i.ye, 3
  %i.yi = zext nneg i32 %i.yh to i64
  %i.yj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !33
  %i.yl = icmp samesign ult i32 %i.yd, %i.r
  %i.ym = zext i1 %i.yl to i32
  %spec.select.i307.i = add nuw nsw i32 %i.ye, %i.ym ; 4 uses
  %i.yn = zext i8 %i.yk to i32
  %i.yo = and i32 %i.ye, 7
  %i.yp = shl nuw nsw i32 %i.yn, %i.yo
  %i.yq = trunc nuw nsw i32 %i.yp to i16
  %i.yr = lshr i16 %i.yq, 3
  %i.ys = and i16 %i.yr, 16
  %i.yt = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i16 %i.ys, ptr %i.yt, align 4, !tbaa !39
  %i.yu = lshr i32 %spec.select.i307.i, 3
  %i.yv = zext nneg i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.yv
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !33
  %i.yy = icmp samesign ult i32 %spec.select.i307.i, %i.r
  %i.yz = zext i1 %i.yy to i32
  %spec.select.i308.i = add nuw nsw i32 %spec.select.i307.i, %i.yz ; 4 uses
  %i.za = zext i8 %i.yx to i32
  %i.zb = and i32 %spec.select.i307.i, 7
  %i.zc = shl nuw nsw i32 %i.za, %i.zb
  %i.zd = trunc nuw nsw i32 %i.zc to i16
  %i.ze = lshr i16 %i.zd, 4
  %i.zf = and i16 %i.ze, 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.e, i64 78
  store i16 %i.zf, ptr %i.zg, align 2, !tbaa !39
  %i.zh = lshr i32 %spec.select.i308.i, 3
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.zi
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !33
  %i.zl = icmp samesign ult i32 %spec.select.i308.i, %i.r
  %i.zm = zext i1 %i.zl to i32
  %spec.select.i309.i = add nuw nsw i32 %spec.select.i308.i, %i.zm ; 4 uses
  %i.zn = zext i8 %i.zk to i32
  %i.zo = and i32 %spec.select.i308.i, 7
  %i.zp = shl nuw nsw i32 %i.zn, %i.zo
  %i.zq = trunc nuw nsw i32 %i.zp to i16
  %i.zr = lshr i16 %i.zq, 3
  %i.zs = and i16 %i.zr, 16
  %i.zt = getelementptr inbounds nuw i8, ptr %i.e, i64 82
  store i16 %i.zs, ptr %i.zt, align 2, !tbaa !39
  %i.zu = lshr i32 %spec.select.i309.i, 3
  %i.zv = zext nneg i32 %i.zu to i64
  %i.zw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.zv
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !33
  %i.zy = icmp samesign ult i32 %spec.select.i309.i, %i.r
  %i.zz = zext i1 %i.zy to i32
  %spec.select.i310.i = add nuw nsw i32 %spec.select.i309.i, %i.zz
  %i.aaa = zext i8 %i.zx to i32
  %i.aab = and i32 %spec.select.i309.i, 7
  %i.aac = shl nuw nsw i32 %i.aaa, %i.aab
  %i.aad = trunc nuw nsw i32 %i.aac to i16
  %i.aae = lshr i16 %i.aad, 4
  %i.aaf = and i16 %i.aae, 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %._crit_edge705.i
  %.sink769.i = phi i64 [ 84, %._crit_edge.i ], [ 72, %._crit_edge705.i ]
  %.sink767.i = phi i16 [ %i.aaf, %._crit_edge.i ], [ %i.rn, %._crit_edge705.i ]
  %.sroa.114.4.i = phi i32 [ %spec.select.i310.i, %._crit_edge.i ], [ %i.rm, %._crit_edge705.i ]
  %i.aag = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink769.i
  store i16 %.sink767.i, ptr %i.aag, align 2, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv719.i = phi i64 [ 0, %bb.h ], [ %indvars.iv.next720.i, %bb.i ] ; 2 uses
  %.sroa.114.5707.i = phi i32 [ %.sroa.114.4.i, %bb.h ], [ %i.aaq, %bb.i ] ; 3 uses
  %i.aah = lshr i32 %.sroa.114.5707.i, 3
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 1, !tbaa !33
  %i.aal = tail call i32 @llvm.bswap.i32(i32 %i.aak)
  %i.aam = and i32 %.sroa.114.5707.i, 7
  %i.aan = shl i32 %i.aal, %i.aam
  %i.aao = lshr i32 %i.aan, 30
  %i.aap = add i32 %.sroa.114.5707.i, 2
  %i.aaq = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.aap) ; 4 uses
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv719.i ; 2 uses
  %i.aas = load i16, ptr %i.aar, align 2, !tbaa !39
  %i.aat = trunc nuw nsw i32 %i.aao to i16
  %i.aau = or i16 %i.aas, %i.aat
  store i16 %i.aau, ptr %i.aar, align 2, !tbaa !39
  %indvars.iv.next720.i = add nuw nsw i64 %indvars.iv719.i, 1 ; 2 uses
  %exitcond722.not.i = icmp eq i64 %indvars.iv.next720.i, 56
  br i1 %exitcond722.not.i, label %bb.j, label %bb.i, !llvm.loop !50

bb.j:                                             ; preds = %bb.i
  %i.aav = lshr i32 %i.aaq, 3
  %i.aaw = zext nneg i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aaw
  %i.aay = load i32, ptr %i.aax, align 1, !tbaa !33
  %i.aaz = tail call i32 @llvm.bswap.i32(i32 %i.aay)
  %i.aba = and i32 %i.aaq, 7
  %i.abb = shl i32 %i.aaz, %i.aba
  %i.abc = lshr i32 %i.abb, 30
  %i.abd = add nuw nsw i32 %i.aaq, 2              ; 2 uses
  %i.abe = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.abd) ; 5 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.e, i64 204 ; 2 uses
  %i.abg = load i16, ptr %i.abf, align 4, !tbaa !39
  %i.abh = trunc nuw nsw i32 %i.abc to i16
  %i.abi = or i16 %i.abg, %i.abh
  store i16 %i.abi, ptr %i.abf, align 4, !tbaa !39
  %i.abj = lshr i32 %i.abe, 3
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.abk ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !33
  %i.abn = icmp samesign ult i32 %i.abd, %i.r
  %i.abo = zext i1 %i.abn to i32
  %spec.select.i311.i = add nuw nsw i32 %i.abe, %i.abo ; 3 uses
  %i.abp = zext i8 %i.abm to i32
  %i.abq = and i32 %i.abe, 7
  %i.abr = shl nuw nsw i32 %i.abp, %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 2 uses
  %i.abt = load i16, ptr %i.abs, align 4, !tbaa !39
  %i.abu = trunc nuw nsw i32 %i.abr to i16
  %i.abv = lshr i16 %i.abu, 7
  %i.abw = and i16 %i.abv, 1
  %i.abx = or i16 %i.abw, %i.abt
  store i16 %i.abx, ptr %i.abs, align 4, !tbaa !39
  %i.aby = lshr i32 %spec.select.i311.i, 3
  %i.abz = zext nneg i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 1, !tbaa !33
  %i.acc = tail call i32 @llvm.bswap.i32(i32 %i.acb)
  %i.acd = and i32 %spec.select.i311.i, 7
  %i.ace = shl i32 %i.acc, %i.acd
  %i.acf = lshr i32 %i.ace, 25
  %i.acg = add nuw nsw i32 %spec.select.i311.i, 7
  %i.ach = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.acg) ; 3 uses
  %i.aci = trunc nuw nsw i32 %i.acf to i16
  %i.acj = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  store i16 %i.aci, ptr %i.acj, align 2, !tbaa !39
  %i.ack = lshr i32 %i.ach, 3
  %i.acl = zext nneg i32 %i.ack to i64
  %i.acm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.acl
  %i.acn = load i32, ptr %i.acm, align 1, !tbaa !33
  %i.aco = tail call i32 @llvm.bswap.i32(i32 %i.acn)
  %i.acp = and i32 %i.ach, 7
  %i.acq = shl i32 %i.aco, %i.acp
  %i.acr = add nuw nsw i32 %i.ach, 6              ; 2 uses
  %i.acs = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.acr) ; 3 uses
  %sh.diff693.i = lshr i32 %i.acq, 25
  %tr.sh.diff694.i = trunc nuw nsw i32 %sh.diff693.i to i16
  %i.act = and i16 %tr.sh.diff694.i, 126          ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i16 %i.act, ptr %i.acu, align 8, !tbaa !39
  %i.acv = lshr i32 %i.acs, 3
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !33
  %i.acz = icmp samesign ult i32 %i.acr, %i.r
  %i.ada = zext i1 %i.acz to i32
  %spec.select.i312.i = add nuw nsw i32 %i.acs, %i.ada ; 3 uses
  %i.adb = zext i8 %i.acy to i32
  %i.adc = and i32 %i.acs, 7
  %i.add = shl nuw nsw i32 %i.adb, %i.adc
  %i.ade = trunc nuw nsw i32 %i.add to i16
  %i.adf = lshr i16 %i.ade, 7
  %i.adg = and i16 %i.adf, 1
  %i.adh = or disjoint i16 %i.adg, %i.act
  store i16 %i.adh, ptr %i.acu, align 8, !tbaa !39
  %i.adi = lshr i32 %spec.select.i312.i, 3
  %i.adj = zext nneg i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.adj
  %i.adl = load i32, ptr %i.adk, align 1, !tbaa !33
  %i.adm = tail call i32 @llvm.bswap.i32(i32 %i.adl)
  %i.adn = and i32 %spec.select.i312.i, 7
  %i.ado = shl i32 %i.adm, %i.adn
  %i.adp = lshr i32 %i.ado, 29
  %i.adq = add nuw nsw i32 %spec.select.i312.i, 3
  %i.adr = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.adq) ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.e, i64 58 ; 2 uses
  %i.adt = load i16, ptr %i.ads, align 2, !tbaa !39
  %i.adu = trunc nuw nsw i32 %i.adp to i16
  %i.adv = or i16 %i.adt, %i.adu
  store i16 %i.adv, ptr %i.ads, align 2, !tbaa !39
  %i.adw = lshr i32 %i.adr, 3
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 1, !tbaa !33
  %i.aea = tail call i32 @llvm.bswap.i32(i32 %i.adz)
  %i.aeb = and i32 %i.adr, 7
  %i.aec = shl i32 %i.aea, %i.aeb
  %i.aed = lshr i32 %i.aec, 30
  %i.aee = add nuw nsw i32 %i.adr, 2
  %i.aef = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.aee) ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  %i.aeh = load i16, ptr %i.aeg, align 4, !tbaa !39
  %i.aei = trunc nuw nsw i32 %i.aed to i16
  %i.aej = or i16 %i.aeh, %i.aei
  store i16 %i.aej, ptr %i.aeg, align 4, !tbaa !39
  %i.aek = lshr i32 %i.aef, 3
  %i.ael = zext nneg i32 %i.aek to i64
  %i.aem = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ael
  %i.aen = load i32, ptr %i.aem, align 1, !tbaa !33
  %i.aeo = tail call i32 @llvm.bswap.i32(i32 %i.aen)
  %i.aep = and i32 %i.aef, 7
  %i.aeq = shl i32 %i.aeo, %i.aep
  %i.aer = lshr i32 %i.aeq, 29
  %i.aes = add nuw nsw i32 %i.aef, 3              ; 2 uses
  %i.aet = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.aes) ; 3 uses
  %i.aeu = trunc nuw nsw i32 %i.aer to i16
  %i.aev = getelementptr inbounds nuw i8, ptr %i.e, i64 62
  store i16 %i.aeu, ptr %i.aev, align 2, !tbaa !39
  %i.aew = lshr i32 %i.aet, 3
  %i.aex = zext nneg i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aex
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !33
  %i.afa = icmp samesign ult i32 %i.aes, %i.r
  %i.afb = zext i1 %i.afa to i32
  %spec.select.i313.i = add nuw nsw i32 %i.aet, %i.afb ; 3 uses
  %i.afc = zext i8 %i.aez to i32
  %i.afd = and i32 %i.aet, 7
  %i.afe = shl nuw nsw i32 %i.afc, %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.e, i64 34 ; 2 uses
  %i.afg = load i16, ptr %i.aff, align 2, !tbaa !39
  %i.afh = trunc nuw nsw i32 %i.afe to i16
  %i.afi = lshr i16 %i.afh, 7
  %i.afj = and i16 %i.afi, 1
  %i.afk = or i16 %i.afj, %i.afg
  store i16 %i.afk, ptr %i.aff, align 2, !tbaa !39
  %i.afl = lshr i32 %spec.select.i313.i, 3
  %i.afm = zext nneg i32 %i.afl to i64
  %i.afn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 1, !tbaa !33
  %i.afp = tail call i32 @llvm.bswap.i32(i32 %i.afo)
  %i.afq = and i32 %spec.select.i313.i, 7
  %i.afr = shl i32 %i.afp, %i.afq
  %i.afs = add nuw nsw i32 %spec.select.i313.i, 6 ; 2 uses
  %i.aft = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.afs) ; 3 uses
  %sh.diff695.i = lshr i32 %i.afr, 25
  %tr.sh.diff696.i = trunc nuw nsw i32 %sh.diff695.i to i16
  %i.afu = and i16 %tr.sh.diff696.i, 126          ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 2 uses
  store i16 %i.afu, ptr %i.afv, align 4, !tbaa !39
  %i.afw = lshr i32 %i.aft, 3
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.afx
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !33
  %i.aga = icmp samesign ult i32 %i.afs, %i.r
  %i.agb = zext i1 %i.aga to i32
  %spec.select.i314.i = add nuw nsw i32 %i.aft, %i.agb ; 3 uses
  %i.agc = zext i8 %i.afz to i32
  %i.agd = and i32 %i.aft, 7
  %i.age = shl nuw nsw i32 %i.agc, %i.agd
  %i.agf = trunc nuw nsw i32 %i.age to i16
  %i.agg = lshr i16 %i.agf, 7
  %i.agh = and i16 %i.agg, 1
  %i.agi = or disjoint i16 %i.agh, %i.afu
  store i16 %i.agi, ptr %i.afv, align 4, !tbaa !39
  %i.agj = lshr i32 %spec.select.i314.i, 3
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.agk
  %i.agm = load i32, ptr %i.agl, align 1, !tbaa !33
  %i.agn = tail call i32 @llvm.bswap.i32(i32 %i.agm)
  %i.ago = and i32 %spec.select.i314.i, 7
  %i.agp = shl i32 %i.agn, %i.ago
  %i.agq = lshr i32 %i.agp, 25
  %i.agr = add nuw nsw i32 %spec.select.i314.i, 7
  %i.ags = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.agr) ; 3 uses
  %i.agt = trunc nuw nsw i32 %i.agq to i16
  %i.agu = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  store i16 %i.agt, ptr %i.agu, align 2, !tbaa !39
  %i.agv = lshr i32 %i.ags, 3
  %i.agw = zext nneg i32 %i.agv to i64
  %i.agx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.agw
  %i.agy = load i32, ptr %i.agx, align 1, !tbaa !33
  %i.agz = tail call i32 @llvm.bswap.i32(i32 %i.agy)
  %i.aha = and i32 %i.ags, 7
  %i.ahb = shl i32 %i.agz, %i.aha
  %i.ahc = lshr i32 %i.ahb, 24
  %i.ahd = add nuw nsw i32 %i.ags, 8
  %i.ahe = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ahd) ; 3 uses
  %i.ahf = trunc nuw nsw i32 %i.ahc to i16
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i16 %i.ahf, ptr %i.ahg, align 8, !tbaa !39
  %i.ahh = lshr i32 %i.ahe, 3
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ahi
  %i.ahk = load i32, ptr %i.ahj, align 1, !tbaa !33
  %i.ahl = tail call i32 @llvm.bswap.i32(i32 %i.ahk)
  %i.ahm = and i32 %i.ahe, 7
end_hunk_1
begin_hunk_2_@ilbc_decode_frame:bb.a
  %i.ave = add nuw nsw i32 %i.aut, 2              ; 2 uses
  %i.avf = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ave) ; 3 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.avh = load i16, ptr %i.avg, align 8, !tbaa !39
  %i.avi = trunc nuw nsw i32 %i.avd to i16
  %i.avj = or i16 %i.avh, %i.avi
  store i16 %i.avj, ptr %i.avg, align 8, !tbaa !39
  %i.avk = lshr i32 %i.avf, 3
  %i.avl = zext nneg i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.avl
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !33
  %i.avo = icmp samesign ult i32 %i.ave, %i.r
  %i.avp = zext i1 %i.avo to i32
  %spec.select.i320.i = add nuw nsw i32 %i.avf, %i.avp ; 3 uses
  %i.avq = zext i8 %i.avn to i32
  %i.avr = and i32 %i.avf, 7
  %i.avs = shl nuw nsw i32 %i.avq, %i.avr
  %i.avt = getelementptr inbounds nuw i8, ptr %i.e, i64 66 ; 2 uses
  %i.avu = load i16, ptr %i.avt, align 2, !tbaa !39
  %i.avv = trunc nuw nsw i32 %i.avs to i16
  %i.avw = lshr i16 %i.avv, 7
  %i.avx = and i16 %i.avw, 1
  %i.avy = or i16 %i.avx, %i.avu
  store i16 %i.avy, ptr %i.avt, align 2, !tbaa !39
  %i.avz = lshr i32 %spec.select.i320.i, 3
  %i.awa = zext nneg i32 %i.avz to i64
  %i.awb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.awa
  %i.awc = load i32, ptr %i.awb, align 1, !tbaa !33
  %i.awd = tail call i32 @llvm.bswap.i32(i32 %i.awc)
  %i.awe = and i32 %spec.select.i320.i, 7
  %i.awf = shl i32 %i.awd, %i.awe
  %i.awg = lshr i32 %i.awf, 29
  %i.awh = add nuw nsw i32 %spec.select.i320.i, 3
  %i.awi = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.awh) ; 3 uses
  %i.awj = trunc nuw nsw i32 %i.awg to i16
  %i.awk = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i16 %i.awj, ptr %i.awk, align 4, !tbaa !39
  %i.awl = lshr i32 %i.awi, 3
  %i.awm = zext nneg i32 %i.awl to i64
  %i.awn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.awm
  %i.awo = load i32, ptr %i.awn, align 1, !tbaa !33
  %i.awp = tail call i32 @llvm.bswap.i32(i32 %i.awo)
  %i.awq = and i32 %i.awi, 7
  %i.awr = shl i32 %i.awp, %i.awq
  %i.aws = lshr i32 %i.awr, 29
  %i.awt = add nuw nsw i32 %i.awi, 3
  %i.awu = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.awt) ; 3 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.e, i64 70 ; 2 uses
  %i.aww = load i16, ptr %i.awv, align 2, !tbaa !39
  %i.awx = trunc nuw nsw i32 %i.aws to i16
  %i.awy = or i16 %i.aww, %i.awx
  store i16 %i.awy, ptr %i.awv, align 2, !tbaa !39
  %i.awz = lshr i32 %i.awu, 3
  %i.axa = zext nneg i32 %i.awz to i64
  %i.axb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.axa
  %i.axc = load i32, ptr %i.axb, align 1, !tbaa !33
  %i.axd = tail call i32 @llvm.bswap.i32(i32 %i.axc)
  %i.axe = and i32 %i.awu, 7
  %i.axf = shl i32 %i.axd, %i.axe
  %i.axg = lshr i32 %i.axf, 30
  %i.axh = add nuw nsw i32 %i.awu, 2
  %i.axi = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.axh) ; 3 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.axk = load i16, ptr %i.axj, align 8, !tbaa !39
  %i.axl = trunc nuw nsw i32 %i.axg to i16
  %i.axm = or i16 %i.axk, %i.axl
  store i16 %i.axm, ptr %i.axj, align 8, !tbaa !39
  %i.axn = lshr i32 %i.axi, 3
  %i.axo = zext nneg i32 %i.axn to i64
  %i.axp = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.axo
  %i.axq = load i32, ptr %i.axp, align 1, !tbaa !33
  %i.axr = tail call i32 @llvm.bswap.i32(i32 %i.axq)
  %i.axs = and i32 %i.axi, 7
  %i.axt = shl i32 %i.axr, %i.axs
  %i.axu = lshr i32 %i.axt, 29
  %i.axv = add nuw nsw i32 %i.axi, 3
  %i.axw = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.axv) ; 3 uses
  %i.axx = trunc nuw nsw i32 %i.axu to i16
  %i.axy = getelementptr inbounds nuw i8, ptr %i.e, i64 74
  store i16 %i.axx, ptr %i.axy, align 2, !tbaa !39
  %i.axz = lshr i32 %i.axw, 3
  %i.aya = zext nneg i32 %i.axz to i64
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aya
  %i.ayc = load i32, ptr %i.ayb, align 1, !tbaa !33
  %i.ayd = tail call i32 @llvm.bswap.i32(i32 %i.ayc)
  %i.aye = and i32 %i.axw, 7
  %i.ayf = shl i32 %i.ayd, %i.aye
  %i.ayg = lshr i32 %i.ayf, 28
  %i.ayh = add nuw nsw i32 %i.axw, 4              ; 2 uses
  %i.ayi = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ayh) ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.ayk = load i16, ptr %i.ayj, align 4, !tbaa !39
  %i.ayl = trunc nuw nsw i32 %i.ayg to i16
  %i.aym = or i16 %i.ayk, %i.ayl
  store i16 %i.aym, ptr %i.ayj, align 4, !tbaa !39
  %i.ayn = lshr i32 %i.ayi, 3
  %i.ayo = zext nneg i32 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ayo
  %i.ayq = load i8, ptr %i.ayp, align 1, !tbaa !33
  %i.ayr = icmp samesign ult i32 %i.ayh, %i.r
  %i.ays = zext i1 %i.ayr to i32
  %spec.select.i321.i = add nuw nsw i32 %i.ayi, %i.ays ; 3 uses
  %i.ayt = zext i8 %i.ayq to i32
  %i.ayu = and i32 %i.ayi, 7
  %i.ayv = shl nuw nsw i32 %i.ayt, %i.ayu
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.e, i64 78 ; 3 uses
  %i.ayx = load i16, ptr %i.ayw, align 2, !tbaa !39
  %i.ayy = trunc nuw nsw i32 %i.ayv to i16
  %i.ayz = lshr i16 %i.ayy, 5
  %i.aza = and i16 %i.ayz, 4
  %i.azb = or i16 %i.aza, %i.ayx                  ; 2 uses
  store i16 %i.azb, ptr %i.ayw, align 2, !tbaa !39
  %i.azc = lshr i32 %spec.select.i321.i, 3
  %i.azd = zext nneg i32 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.azd
  %i.azf = load i32, ptr %i.aze, align 1, !tbaa !33
  %i.azg = tail call i32 @llvm.bswap.i32(i32 %i.azf)
  %i.azh = and i32 %spec.select.i321.i, 7
  %i.azi = shl i32 %i.azg, %i.azh
  %i.azj = lshr i32 %i.azi, 30
  %i.azk = add nuw nsw i32 %spec.select.i321.i, 2
  %i.azl = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.azk)
  %i.azm = trunc nuw nsw i32 %i.azj to i16
  %i.azn = or i16 %i.azb, %i.azm
  store i16 %i.azn, ptr %i.ayw, align 2, !tbaa !39
  br label %unpack_frame.exit

unpack_frame.exit:                                ; preds = %bb.k, %bb.l
  %.sink839.i = phi i32 [ %i.azl, %bb.l ], [ %i.ajc, %bb.k ] ; 3 uses
  %.sink827.i = phi i64 [ 80, %bb.l ], [ 68, %bb.k ]
  %.sink816.i = phi i32 [ 28, %bb.l ], [ 29, %bb.k ]
  %.sink814.i = phi i32 [ 4, %bb.l ], [ 3, %bb.k ]
  %.sink811.i = phi i64 [ 82, %bb.l ], [ 70, %bb.k ]
  %.sink796.i = phi i32 [ 29, %bb.l ], [ 30, %bb.k ]
  %.sink794.i = phi i32 [ 3, %bb.l ], [ 2, %bb.k ]
  %.sink791.i = phi i64 [ 84, %bb.l ], [ 72, %bb.k ]
  %.sink772.i = phi i64 [ 86, %bb.l ], [ 74, %bb.k ]
  %i.azo = lshr i32 %.sink839.i, 3
  %i.azp = zext nneg i32 %i.azo to i64
  %i.azq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.azp
  %i.azr = load i32, ptr %i.azq, align 1, !tbaa !33
  %i.azs = tail call i32 @llvm.bswap.i32(i32 %i.azr)
  %i.azt = and i32 %.sink839.i, 7
  %i.azu = shl i32 %i.azs, %i.azt
  %i.azv = lshr i32 %i.azu, 29
  %i.azw = add nuw nsw i32 %.sink839.i, 3
  %i.azx = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.azw) ; 3 uses
  %i.azy = trunc nuw nsw i32 %i.azv to i16
  %i.azz = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink827.i
  store i16 %i.azy, ptr %i.azz, align 2, !tbaa !39
  %i.baa = lshr i32 %i.azx, 3
  %i.bab = zext nneg i32 %i.baa to i64
  %i.bac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bab
  %i.bad = load i32, ptr %i.bac, align 1, !tbaa !33
  %i.bae = tail call i32 @llvm.bswap.i32(i32 %i.bad)
  %i.baf = and i32 %i.azx, 7
  %i.bag = shl i32 %i.bae, %i.baf
  %i.bah = lshr i32 %i.bag, %.sink816.i
  %i.bai = add nuw nsw i32 %.sink814.i, %i.azx
  %i.baj = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.bai) ; 3 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink811.i ; 2 uses
  %i.bal = load i16, ptr %i.bak, align 2, !tbaa !39
  %i.bam = trunc nuw nsw i32 %i.bah to i16
  %i.ban = or i16 %i.bal, %i.bam
  store i16 %i.ban, ptr %i.bak, align 2, !tbaa !39
  %i.bao = lshr i32 %i.baj, 3
  %i.bap = zext nneg i32 %i.bao to i64
  %i.baq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bap
  %i.bar = load i32, ptr %i.baq, align 1, !tbaa !33
  %i.bas = tail call i32 @llvm.bswap.i32(i32 %i.bar)
  %i.bat = and i32 %i.baj, 7
  %i.bau = shl i32 %i.bas, %i.bat
  %i.bav = lshr i32 %i.bau, %.sink796.i
  %i.baw = add nuw nsw i32 %.sink794.i, %i.baj
  %i.bax = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.baw) ; 3 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink791.i ; 2 uses
  %i.baz = load i16, ptr %i.bay, align 2, !tbaa !39
  %i.bba = trunc nuw nsw i32 %i.bav to i16
  %i.bbb = or i16 %i.baz, %i.bba
  store i16 %i.bbb, ptr %i.bay, align 2, !tbaa !39
  %i.bbc = lshr i32 %i.bax, 3
  %i.bbd = zext nneg i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bbd
  %i.bbf = load i32, ptr %i.bbe, align 1, !tbaa !33
  %i.bbg = tail call i32 @llvm.bswap.i32(i32 %i.bbf)
  %i.bbh = and i32 %i.bax, 7
  %i.bbi = shl i32 %i.bbg, %i.bbh
  %i.bbj = lshr i32 %i.bbi, 29
  %i.bbk = add nuw nsw i32 %i.bax, 3
  %i.bbl = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.bbk) ; 2 uses
  %i.bbm = trunc nuw nsw i32 %i.bbj to i16
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink772.i
  store i16 %i.bbm, ptr %i.bbn, align 2, !tbaa !39
  %i.bbo = lshr i32 %i.bbl, 3
  %i.bbp = zext nneg i32 %i.bbo to i64
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bbp
  %i.bbr = load i8, ptr %i.bbq, align 1, !tbaa !33
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.e, i64 236 ; 5 uses
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !35
  %i.bbu = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.bbt, ptr %i.bbu, align 8, !tbaa !81
  %i.bbv = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #11 ; 2 uses
  %i.bbw = icmp slt i32 %i.bbv, 0
  br i1 %i.bbw, label %unpack_frame.exit.thread, label %bb.m

bb.m:                                             ; preds = %unpack_frame.exit
  %i.bbx = and i32 %i.bbl, 7
  %i.bby = lshr exact i32 128, %i.bbx
  %i.bbz = zext i8 %i.bbr to i32
  %i.bca = and i32 %i.bby, %i.bbz
  %.not = icmp ne i32 %i.bca, 0
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.e, i64 210 ; 3 uses
  %i.bcc = load i16, ptr %i.bcb, align 2, !tbaa !82 ; 3 uses
  %i.bcd = add i16 %i.bcc, -6
  %or.cond = icmp ult i16 %i.bcd, -5
  %i.bce = select i1 %or.cond, i1 true, i1 %.not
  %.not94128 = icmp eq i32 %i.g, 0
  %.not94 = select i1 %i.bce, i1 true, i1 %.not94128 ; 2 uses
  br i1 %.not94, label %bb.ap, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 2 uses
  %i.bcg = load i16, ptr %i.bcf, align 4, !tbaa !39 ; 4 uses
  %i.bch = add i16 %i.bcg, -44
  %or.cond.i = icmp ult i16 %i.bch, 64
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bci = add nuw nsw i16 %i.bcg, 64
  br label %.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.bcj = add i16 %i.bcg, -108
  %or.cond15.i = icmp ult i16 %i.bcj, 20
  br i1 %or.cond15.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bck = or disjoint i16 %i.bcg, 128
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink.i = phi i16 [ %i.bci, %bb.o ], [ %i.bck, %bb.q ]
  store i16 %.sink.i, ptr %i.bcf, align 4, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.p
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.e, i64 38 ; 2 uses
  %i.bcm = load i16, ptr %i.bcl, align 2, !tbaa !39 ; 4 uses
  %i.bcn = add i16 %i.bcm, -44
  %or.cond.1.i = icmp ult i16 %i.bcn, 64
  br i1 %or.cond.1.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bco = add i16 %i.bcm, -108
  %or.cond15.1.i = icmp ult i16 %i.bco, 20
  br i1 %or.cond15.1.i, label %bb.t, label %index_conv.exit

bb.t:                                             ; preds = %bb.s
  %i.bcp = or disjoint i16 %i.bcm, 128
  br label %.sink.split18.i

bb.u:                                             ; preds = %bb.r
  %i.bcq = add nuw nsw i16 %i.bcm, 64
  br label %.sink.split18.i

.sink.split18.i:                                  ; preds = %bb.u, %bb.t
  %.sink19.i = phi i16 [ %i.bcq, %bb.u ], [ %i.bcp, %bb.t ]
  store i16 %.sink19.i, ptr %i.bcl, align 2, !tbaa !39
  br label %index_conv.exit

index_conv.exit:                                  ; preds = %bb.s, %.sink.split18.i
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.e, i64 244 ; 11 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.e, i64 228
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !37 ; 3 uses
  %i.bcu = trunc i32 %i.bct to i16
  %i.bcv = load i16, ptr %i.j, align 8, !tbaa !39
  %i.bcw = sext i16 %i.bcv to i64
  %.idx.i = mul nsw i64 %i.bcw, 6
  %i.bcx = getelementptr inbounds i8, ptr @lsf_codebook, i64 %.idx.i ; 2 uses
  %i.bcy = getelementptr i8, ptr %i.bcx, i64 4
  %i.bcz = load i16, ptr %i.bcy, align 2, !tbaa !39
  %i.bda = load i16, ptr %i.ac, align 2, !tbaa !39
  %i.bdb = sext i16 %i.bda to i64
  %.idx75.i = mul nsw i64 %i.bdb, 6
  %i.bdc = getelementptr i8, ptr @lsf_codebook, i64 %.idx75.i ; 2 uses
  %i.bdd = getelementptr i8, ptr %i.bdc, i64 384
  %i.bde = getelementptr i8, ptr %i.bdc, i64 388
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !39
  %i.bdg = load i16, ptr %i.am, align 4, !tbaa !39
  %i.bdh = sext i16 %i.bdg to i32
  %i.bdi = shl nsw i32 %i.bdh, 2
  %i.bdj = sext i32 %i.bdi to i64
  %i.bdk = getelementptr [2 x i8], ptr @lsf_codebook, i64 %i.bdj ; 2 uses
  %i.bdl = getelementptr i8, ptr %i.bdk, i64 1152
  %i.bdm = load <2 x i16>, ptr %i.bcx, align 2, !tbaa !39
  %i.bdn = load <2 x i16>, ptr %i.bdd, align 2, !tbaa !39
  %i.bdo = load <2 x i16>, ptr %i.bdl, align 8, !tbaa !39
  %i.bdp = shufflevector <2 x i16> %i.bdm, <2 x i16> %i.bdn, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.bdq = insertelement <8 x i16> %i.bdp, i16 %i.bcz, i64 2
  %i.bdr = insertelement <8 x i16> %i.bdq, i16 %i.bdf, i64 5
  %i.bds = shufflevector <2 x i16> %i.bdo, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdt = shufflevector <8 x i16> %i.bdr, <8 x i16> %i.bds, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  store <8 x i16> %i.bdt, ptr %i.bcr, align 4, !tbaa !39
  %i.bdu = getelementptr i8, ptr %i.bdk, i64 1156
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.e, i64 260
  %i.bdw = load <2 x i16>, ptr %i.bdu, align 4, !tbaa !39
  store <2 x i16> %i.bdw, ptr %i.bdv, align 4, !tbaa !39
  %i.bdx = icmp sgt i16 %i.bcu, 1
  br i1 %i.bdx, label %._crit_edge58.2.i, label %lsf_dequantization.exit

._crit_edge58.2.i:                                ; preds = %index_conv.exit
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.bdz = load i16, ptr %i.bdy, align 2, !tbaa !39
  %i.bea = sext i16 %i.bdz to i64
  %.idx78.i = mul nsw i64 %i.bea, 6
  %i.beb = getelementptr inbounds i8, ptr @lsf_codebook, i64 %.idx78.i ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.bed = getelementptr i8, ptr %i.beb, i64 4
  %i.bee = load i16, ptr %i.bed, align 2, !tbaa !39
  %i.bef = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.beg = load i16, ptr %i.bef, align 8, !tbaa !39
  %i.beh = sext i16 %i.beg to i64
  %.idx81.i = mul nsw i64 %i.beh, 6
  %i.bei = getelementptr i8, ptr @lsf_codebook, i64 %.idx81.i ; 2 uses
  %i.bej = getelementptr i8, ptr %i.bei, i64 384
  %i.bek = getelementptr i8, ptr %i.bei, i64 388
  %i.bel = load i16, ptr %i.bek, align 2, !tbaa !39
  %i.bem = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.ben = load i16, ptr %i.bem, align 2, !tbaa !39
  %i.beo = sext i16 %i.ben to i32
  %i.bep = shl nsw i32 %i.beo, 2
  %i.beq = sext i32 %i.bep to i64
  %i.ber = getelementptr [2 x i8], ptr @lsf_codebook, i64 %i.beq ; 2 uses
  %i.bes = getelementptr i8, ptr %i.ber, i64 1152
  %i.bet = load <2 x i16>, ptr %i.beb, align 2, !tbaa !39
  %i.beu = load <2 x i16>, ptr %i.bej, align 2, !tbaa !39
  %i.bev = load <2 x i16>, ptr %i.bes, align 8, !tbaa !39
  %i.bew = shufflevector <2 x i16> %i.bet, <2 x i16> %i.beu, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.bex = insertelement <8 x i16> %i.bew, i16 %i.bee, i64 2
  %i.bey = insertelement <8 x i16> %i.bex, i16 %i.bel, i64 5
  %i.bez = shufflevector <2 x i16> %i.bev, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfa = shufflevector <8 x i16> %i.bey, <8 x i16> %i.bez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  store <8 x i16> %i.bfa, ptr %i.bec, align 8, !tbaa !39
  %i.bfb = getelementptr i8, ptr %i.ber, i64 1156
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.bfd = load <2 x i16>, ptr %i.bfb, align 4, !tbaa !39
  store <2 x i16> %i.bfd, ptr %i.bfc, align 8, !tbaa !39
  br label %lsf_dequantization.exit

lsf_dequantization.exit:                          ; preds = %index_conv.exit, %._crit_edge58.2.i
  %i.bfe = icmp sgt i32 %i.bct, 0
  br i1 %i.bfe, label %.preheader37.preheader.i, label %lsf_check_stability.exit

.preheader37.preheader.i:                         ; preds = %lsf_dequantization.exit
  %wide.trip.count.i = zext nneg i32 %i.bct to i64
  br label %.preheader37.i

.preheader37.i:                                   ; preds = %._crit_edge.i100, %.preheader37.preheader.i
  %i.bff = phi i1 [ false, %._crit_edge.i100 ], [ true, %.preheader37.preheader.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ad, %.preheader37.i
  %indvars.iv.i97 = phi i64 [ 0, %.preheader37.i ], [ %indvars.iv.next.i98, %bb.ad ] ; 2 uses
  %.idx129 = mul nuw nsw i64 %indvars.iv.i97, 20
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bcr, i64 %.idx129 ; 11 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 2 ; 2 uses
  %i.bfi = load i16, ptr %i.bfh, align 2, !tbaa !39 ; 4 uses
  %i.bfj = sext i16 %i.bfi to i32                 ; 2 uses
  %i.bfk = load i16, ptr %i.bfg, align 2, !tbaa !39 ; 6 uses
  %i.bfl = sext i16 %i.bfk to i32
  %i.bfm = sub nsw i32 %i.bfj, %i.bfl
  %i.bfn = icmp slt i32 %i.bfm, 319
  br i1 %i.bfn, label %.sink.split.i101, label %bb.v

._crit_edge.i100:                                 ; preds = %bb.ad
  br i1 %i.bff, label %.preheader37.i, label %lsf_check_stability.exit, !llvm.loop !51

.sink.split.i101:                                 ; preds = %.preheader.i
  %i.bfo = icmp slt i16 %i.bfi, %i.bfk
  %i.bfp = add i16 %i.bfk, -160
  %.sink70.i = tail call i16 @llvm.smax.i16(i16 %i.bfi, i16 %i.bfk)
  %.ph.i = select i1 %i.bfo, i16 %i.bfk, i16 %i.bfp
  %i.bfq = add i16 %.sink70.i, 160                ; 2 uses
  %.pre186 = sext i16 %i.bfq to i32
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i101, %.preheader.i
  %.pre-phi187 = phi i32 [ %.pre186, %.sink.split.i101 ], [ %i.bfj, %.preheader.i ]
  %i.bfr = phi i16 [ %i.bfq, %.sink.split.i101 ], [ %i.bfi, %.preheader.i ] ; 5 uses
  %i.bfs = phi i16 [ %.ph.i, %.sink.split.i101 ], [ %i.bfk, %.preheader.i ]
  %i.bft = tail call i16 @llvm.smax.i16(i16 %i.bfs, i16 82)
  %i.bfu = tail call i16 @llvm.umin.i16(i16 %i.bft, i16 25723)
  store i16 %i.bfu, ptr %i.bfg, align 2, !tbaa !39
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfg, i64 4 ; 2 uses
  %i.bfw = load i16, ptr %i.bfv, align 2, !tbaa !39 ; 4 uses
  %i.bfx = sext i16 %i.bfw to i32                 ; 2 uses
  %i.bfy = sub nsw i32 %i.bfx, %.pre-phi187
  %i.bfz = icmp slt i32 %i.bfy, 319
  br i1 %i.bfz, label %.sink.split71.i, label %bb.w

.sink.split71.i:                                  ; preds = %bb.v
  %i.bga = icmp slt i16 %i.bfw, %i.bfr
  %i.bgb = add i16 %i.bfr, -160
  %.sink73.i = tail call i16 @llvm.smax.i16(i16 %i.bfw, i16 %i.bfr)
  %.ph72.i = select i1 %i.bga, i16 %i.bfr, i16 %i.bgb
  %i.bgc = add i16 %.sink73.i, 160                ; 2 uses
  %.pre188 = sext i16 %i.bgc to i32
  br label %bb.w

bb.w:                                             ; preds = %.sink.split71.i, %bb.v
  %.pre-phi189 = phi i32 [ %.pre188, %.sink.split71.i ], [ %i.bfx, %bb.v ]
  %i.bgd = phi i16 [ %i.bgc, %.sink.split71.i ], [ %i.bfw, %bb.v ] ; 5 uses
  %i.bge = phi i16 [ %.ph72.i, %.sink.split71.i ], [ %i.bfr, %bb.v ]
  %i.bgf = tail call i16 @llvm.smax.i16(i16 %i.bge, i16 82)
  %i.bgg = tail call i16 @llvm.umin.i16(i16 %i.bgf, i16 25723)
  store i16 %i.bgg, ptr %i.bfh, align 2, !tbaa !39
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 6 ; 2 uses
  %i.bgi = load i16, ptr %i.bgh, align 2, !tbaa !39 ; 4 uses
  %i.bgj = sext i16 %i.bgi to i32                 ; 2 uses
  %i.bgk = sub nsw i32 %i.bgj, %.pre-phi189
  %i.bgl = icmp slt i32 %i.bgk, 319
  br i1 %i.bgl, label %.sink.split74.i, label %bb.x

.sink.split74.i:                                  ; preds = %bb.w
  %i.bgm = icmp slt i16 %i.bgi, %i.bgd
  %i.bgn = add i16 %i.bgd, -160
  %.sink76.i = tail call i16 @llvm.smax.i16(i16 %i.bgi, i16 %i.bgd)
  %.ph75.i = select i1 %i.bgm, i16 %i.bgd, i16 %i.bgn
  %i.bgo = add i16 %.sink76.i, 160                ; 2 uses
  %.pre190 = sext i16 %i.bgo to i32
  br label %bb.x

bb.x:                                             ; preds = %.sink.split74.i, %bb.w
  %.pre-phi191 = phi i32 [ %.pre190, %.sink.split74.i ], [ %i.bgj, %bb.w ]
  %i.bgp = phi i16 [ %i.bgo, %.sink.split74.i ], [ %i.bgi, %bb.w ] ; 5 uses
  %i.bgq = phi i16 [ %.ph75.i, %.sink.split74.i ], [ %i.bgd, %bb.w ]
  %i.bgr = tail call i16 @llvm.smax.i16(i16 %i.bgq, i16 82)
  %i.bgs = tail call i16 @llvm.umin.i16(i16 %i.bgr, i16 25723)
  store i16 %i.bgs, ptr %i.bfv, align 2, !tbaa !39
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bfg, i64 8 ; 2 uses
  %i.bgu = load i16, ptr %i.bgt, align 2, !tbaa !39 ; 4 uses
  %i.bgv = sext i16 %i.bgu to i32                 ; 2 uses
  %i.bgw = sub nsw i32 %i.bgv, %.pre-phi191
  %i.bgx = icmp slt i32 %i.bgw, 319
  br i1 %i.bgx, label %.sink.split77.i, label %bb.y

.sink.split77.i:                                  ; preds = %bb.x
  %i.bgy = icmp slt i16 %i.bgu, %i.bgp
  %i.bgz = add i16 %i.bgp, -160
  %.sink79.i = tail call i16 @llvm.smax.i16(i16 %i.bgu, i16 %i.bgp)
  %.ph78.i = select i1 %i.bgy, i16 %i.bgp, i16 %i.bgz
  %i.bha = add i16 %.sink79.i, 160                ; 2 uses
  %.pre192 = sext i16 %i.bha to i32
  br label %bb.y

bb.y:                                             ; preds = %.sink.split77.i, %bb.x
  %.pre-phi193 = phi i32 [ %.pre192, %.sink.split77.i ], [ %i.bgv, %bb.x ]
  %i.bhb = phi i16 [ %i.bha, %.sink.split77.i ], [ %i.bgu, %bb.x ] ; 5 uses
  %i.bhc = phi i16 [ %.ph78.i, %.sink.split77.i ], [ %i.bgp, %bb.x ]
  %i.bhd = tail call i16 @llvm.smax.i16(i16 %i.bhc, i16 82)
  %i.bhe = tail call i16 @llvm.umin.i16(i16 %i.bhd, i16 25723)
  store i16 %i.bhe, ptr %i.bgh, align 2, !tbaa !39
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bfg, i64 10 ; 2 uses
  %i.bhg = load i16, ptr %i.bhf, align 2, !tbaa !39 ; 4 uses
  %i.bhh = sext i16 %i.bhg to i32                 ; 2 uses
  %i.bhi = sub nsw i32 %i.bhh, %.pre-phi193
  %i.bhj = icmp slt i32 %i.bhi, 319
  br i1 %i.bhj, label %.sink.split80.i, label %bb.z

.sink.split80.i:                                  ; preds = %bb.y
  %i.bhk = icmp slt i16 %i.bhg, %i.bhb
  %i.bhl = add i16 %i.bhb, -160
  %.sink82.i = tail call i16 @llvm.smax.i16(i16 %i.bhg, i16 %i.bhb)
  %.ph81.i = select i1 %i.bhk, i16 %i.bhb, i16 %i.bhl
  %i.bhm = add i16 %.sink82.i, 160                ; 2 uses
  %.pre194 = sext i16 %i.bhm to i32
  br label %bb.z

bb.z:                                             ; preds = %.sink.split80.i, %bb.y
  %.pre-phi195 = phi i32 [ %.pre194, %.sink.split80.i ], [ %i.bhh, %bb.y ]
  %i.bhn = phi i16 [ %i.bhm, %.sink.split80.i ], [ %i.bhg, %bb.y ] ; 5 uses
  %i.bho = phi i16 [ %.ph81.i, %.sink.split80.i ], [ %i.bhb, %bb.y ]
  %i.bhp = tail call i16 @llvm.smax.i16(i16 %i.bho, i16 82)
  %i.bhq = tail call i16 @llvm.umin.i16(i16 %i.bhp, i16 25723)
  store i16 %i.bhq, ptr %i.bgt, align 2, !tbaa !39
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bfg, i64 12 ; 2 uses
  %i.bhs = load i16, ptr %i.bhr, align 2, !tbaa !39 ; 4 uses
  %i.bht = sext i16 %i.bhs to i32                 ; 2 uses
  %i.bhu = sub nsw i32 %i.bht, %.pre-phi195
  %i.bhv = icmp slt i32 %i.bhu, 319
  br i1 %i.bhv, label %.sink.split83.i, label %bb.aa

.sink.split83.i:                                  ; preds = %bb.z
  %i.bhw = icmp slt i16 %i.bhs, %i.bhn
  %i.bhx = add i16 %i.bhn, -160
  %.sink85.i = tail call i16 @llvm.smax.i16(i16 %i.bhs, i16 %i.bhn)
  %.ph84.i = select i1 %i.bhw, i16 %i.bhn, i16 %i.bhx
  %i.bhy = add i16 %.sink85.i, 160                ; 2 uses
  %.pre196 = sext i16 %i.bhy to i32
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split83.i, %bb.z
  %.pre-phi197 = phi i32 [ %.pre196, %.sink.split83.i ], [ %i.bht, %bb.z ]
  %i.bhz = phi i16 [ %i.bhy, %.sink.split83.i ], [ %i.bhs, %bb.z ] ; 5 uses
  %i.bia = phi i16 [ %.ph84.i, %.sink.split83.i ], [ %i.bhn, %bb.z ]
  %i.bib = tail call i16 @llvm.smax.i16(i16 %i.bia, i16 82)
  %i.bic = tail call i16 @llvm.umin.i16(i16 %i.bib, i16 25723)
  store i16 %i.bic, ptr %i.bhf, align 2, !tbaa !39
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bfg, i64 14 ; 2 uses
  %i.bie = load i16, ptr %i.bid, align 2, !tbaa !39 ; 4 uses
  %i.bif = sext i16 %i.bie to i32                 ; 2 uses
  %i.big = sub nsw i32 %i.bif, %.pre-phi197
  %i.bih = icmp slt i32 %i.big, 319
  br i1 %i.bih, label %.sink.split86.i, label %bb.ab

.sink.split86.i:                                  ; preds = %bb.aa
  %i.bii = icmp slt i16 %i.bie, %i.bhz
  %i.bij = add i16 %i.bhz, -160
  %.sink88.i = tail call i16 @llvm.smax.i16(i16 %i.bie, i16 %i.bhz)
  %.ph87.i = select i1 %i.bii, i16 %i.bhz, i16 %i.bij
  %i.bik = add i16 %.sink88.i, 160                ; 2 uses
  %.pre198 = sext i16 %i.bik to i32
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split86.i, %bb.aa
  %.pre-phi199 = phi i32 [ %.pre198, %.sink.split86.i ], [ %i.bif, %bb.aa ]
  %i.bil = phi i16 [ %i.bik, %.sink.split86.i ], [ %i.bie, %bb.aa ] ; 5 uses
  %i.bim = phi i16 [ %.ph87.i, %.sink.split86.i ], [ %i.bhz, %bb.aa ]
  %i.bin = tail call i16 @llvm.smax.i16(i16 %i.bim, i16 82)
  %i.bio = tail call i16 @llvm.umin.i16(i16 %i.bin, i16 25723)
  store i16 %i.bio, ptr %i.bhr, align 2, !tbaa !39
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bfg, i64 16 ; 2 uses
  %i.biq = load i16, ptr %i.bip, align 2, !tbaa !39 ; 4 uses
  %i.bir = sext i16 %i.biq to i32                 ; 2 uses
  %i.bis = sub nsw i32 %i.bir, %.pre-phi199
  %i.bit = icmp slt i32 %i.bis, 319
  br i1 %i.bit, label %.sink.split89.i, label %bb.ac

.sink.split89.i:                                  ; preds = %bb.ab
  %i.biu = icmp slt i16 %i.biq, %i.bil
  %i.biv = add i16 %i.bil, -160
  %.sink91.i = tail call i16 @llvm.smax.i16(i16 %i.biq, i16 %i.bil)
  %.ph90.i = select i1 %i.biu, i16 %i.bil, i16 %i.biv
  %i.biw = add i16 %.sink91.i, 160                ; 2 uses
  %.pre200 = sext i16 %i.biw to i32
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split89.i, %bb.ab
  %.pre-phi201 = phi i32 [ %.pre200, %.sink.split89.i ], [ %i.bir, %bb.ab ]
  %i.bix = phi i16 [ %i.biw, %.sink.split89.i ], [ %i.biq, %bb.ab ] ; 5 uses
  %i.biy = phi i16 [ %.ph90.i, %.sink.split89.i ], [ %i.bil, %bb.ab ]
  %i.biz = tail call i16 @llvm.smax.i16(i16 %i.biy, i16 82)
  %i.bja = tail call i16 @llvm.umin.i16(i16 %i.biz, i16 25723)
  store i16 %i.bja, ptr %i.bid, align 2, !tbaa !39
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bfg, i64 18 ; 2 uses
  %i.bjc = load i16, ptr %i.bjb, align 2, !tbaa !39 ; 3 uses
  %i.bjd = sext i16 %i.bjc to i32
  %i.bje = sub nsw i32 %i.bjd, %.pre-phi201
  %i.bjf = icmp slt i32 %i.bje, 319
  br i1 %i.bjf, label %.sink.split92.i, label %bb.ad

.sink.split92.i:                                  ; preds = %bb.ac
  %i.bjg = icmp slt i16 %i.bjc, %i.bix
  %i.bjh = add i16 %i.bix, -160
  %.sink94.i = tail call i16 @llvm.smax.i16(i16 %i.bjc, i16 %i.bix)
  %.ph93.i = select i1 %i.bjg, i16 %i.bix, i16 %i.bjh
  %i.bji = add i16 %.sink94.i, 160
  store i16 %i.bji, ptr %i.bjb, align 2, !tbaa !39
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split92.i, %bb.ac
  %i.bjj = phi i16 [ %i.bix, %bb.ac ], [ %.ph93.i, %.sink.split92.i ]
  %i.bjk = tail call i16 @llvm.smax.i16(i16 %i.bjj, i16 82)
  %i.bjl = tail call i16 @llvm.umin.i16(i16 %i.bjk, i16 25723)
  store i16 %i.bjl, ptr %i.bip, align 2, !tbaa !39
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %indvars.iv.next.i98, %wide.trip.count.i
  br i1 %exitcond.not.i99, label %._crit_edge.i100, label %.preheader.i, !llvm.loop !52

lsf_check_stability.exit:                         ; preds = %._crit_edge.i100, %lsf_dequantization.exit
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.e, i64 476 ; 4 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.e, i64 344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 6 uses
  %i.bjp = load i32, ptr %i.f, align 4, !tbaa !32
  %i.bjq = icmp eq i32 %i.bjp, 30
  br i1 %i.bjq, label %lsp_interpolate.exit.loopexit, label %.preheader.i102

.preheader.i102:                                  ; preds = %lsf_check_stability.exit
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.e, i64 234
  %i.bjs = load i16, ptr %i.bjr, align 2, !tbaa !36 ; 2 uses
  %i.bjt = icmp sgt i16 %i.bjs, 0
  br i1 %i.bjt, label %.lr.ph.i, label %lsp_interpolate.exit

.lr.ph.i:                                         ; preds = %.preheader.i102
  %i.bju = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bjy = zext nneg i16 %i.bjs to i64
  br label %bb.ae

lsp_interpolate.exit.loopexit:                    ; preds = %lsf_check_stability.exit
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull %i.bjz, ptr noundef nonnull readonly %i.bcr, i32 noundef 8192)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.bjm, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bka = load i16, ptr %i.c, align 16, !tbaa !39
  store i16 %i.bka, ptr %i.bjn, align 8, !tbaa !39
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 6 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.e, i64 346
  %i.bkd = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !39
  %i.bke = sext <8 x i16> %i.bkd to <8 x i32>
  %i.bkf = mul nsw <8 x i32> %i.bke, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.bkg = add nsw <8 x i32> %i.bkf, splat (i32 16384)
  %i.bkh = lshr <8 x i32> %i.bkg, splat (i32 15)
  %i.bki = trunc <8 x i32> %i.bkh to <8 x i16>
  store <8 x i16> %i.bki, ptr %i.bkc, align 2, !tbaa !39
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 6 uses
  %i.bkk = load i16, ptr %i.bkj, align 2, !tbaa !39
  %i.bkl = sext i16 %i.bkk to i32
  %i.bkm = mul nsw i32 %i.bkl, 13016
  %i.bkn = add nsw i32 %i.bkm, 16384
  %i.bko = lshr i32 %i.bkn, 15
  %i.bkp = trunc i32 %i.bko to i16
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.e, i64 362
  store i16 %i.bkp, ptr %i.bkq, align 2, !tbaa !39
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 6 uses
  %i.bks = load i16, ptr %i.bkr, align 4, !tbaa !39
  %i.bkt = sext i16 %i.bks to i32
  %i.bku = mul nsw i32 %i.bkt, 11747
  %i.bkv = add nsw i32 %i.bku, 16384
  %i.bkw = lshr i32 %i.bkv, 15
  %i.bkx = trunc i32 %i.bkw to i16
  %i.bky = getelementptr inbounds nuw i8, ptr %i.e, i64 364
  store i16 %i.bkx, ptr %i.bky, align 4, !tbaa !39
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 16384)
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.e, i64 498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bkz, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bla = getelementptr inbounds nuw i8, ptr %i.e, i64 366
  %i.blb = load i16, ptr %i.c, align 16, !tbaa !39
  store i16 %i.blb, ptr %i.bla, align 2, !tbaa !39
  %i.blc = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.bld = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !39
  %i.ble = sext <8 x i16> %i.bld to <8 x i32>
  %i.blf = mul nsw <8 x i32> %i.ble, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.blg = add nsw <8 x i32> %i.blf, splat (i32 16384)
  %i.blh = lshr <8 x i32> %i.blg, splat (i32 15)
  %i.bli = trunc <8 x i32> %i.blh to <8 x i16>
  store <8 x i16> %i.bli, ptr %i.blc, align 8, !tbaa !39
  %i.blj = load i16, ptr %i.bkj, align 2, !tbaa !39
  %i.blk = sext i16 %i.blj to i32
  %i.bll = mul nsw i32 %i.blk, 13016
  %i.blm = add nsw i32 %i.bll, 16384
  %i.bln = lshr i32 %i.blm, 15
  %i.blo = trunc i32 %i.bln to i16
  %i.blp = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  store i16 %i.blo, ptr %i.blp, align 8, !tbaa !39
  %i.blq = load i16, ptr %i.bkr, align 4, !tbaa !39
  %i.blr = sext i16 %i.blq to i32
  %i.bls = mul nsw i32 %i.blr, 11747
  %i.blt = add nsw i32 %i.bls, 16384
  %i.blu = lshr i32 %i.blt, 15
  %i.blv = trunc i32 %i.blu to i16
  %i.blw = getelementptr inbounds nuw i8, ptr %i.e, i64 386
  store i16 %i.blv, ptr %i.blw, align 2, !tbaa !39
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 10923)
  %i.blx = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.blx, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bly = getelementptr inbounds nuw i8, ptr %i.e, i64 388
  %i.blz = load i16, ptr %i.c, align 16, !tbaa !39
  store i16 %i.blz, ptr %i.bly, align 4, !tbaa !39
  %i.bma = getelementptr inbounds nuw i8, ptr %i.e, i64 390
  %i.bmb = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !39
  %i.bmc = sext <8 x i16> %i.bmb to <8 x i32>
  %i.bmd = mul nsw <8 x i32> %i.bmc, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.bme = add nsw <8 x i32> %i.bmd, splat (i32 16384)
  %i.bmf = lshr <8 x i32> %i.bme, splat (i32 15)
  %i.bmg = trunc <8 x i32> %i.bmf to <8 x i16>
  store <8 x i16> %i.bmg, ptr %i.bma, align 2, !tbaa !39
  %i.bmh = load i16, ptr %i.bkj, align 2, !tbaa !39
  %i.bmi = sext i16 %i.bmh to i32
  %i.bmj = mul nsw i32 %i.bmi, 13016
  %i.bmk = add nsw i32 %i.bmj, 16384
  %i.bml = lshr i32 %i.bmk, 15
  %i.bmm = trunc i32 %i.bml to i16
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.e, i64 406
  store i16 %i.bmm, ptr %i.bmn, align 2, !tbaa !39
  %i.bmo = load i16, ptr %i.bkr, align 4, !tbaa !39
  %i.bmp = sext i16 %i.bmo to i32
  %i.bmq = mul nsw i32 %i.bmp, 11747
  %i.bmr = add nsw i32 %i.bmq, 16384
  %i.bms = lshr i32 %i.bmr, 15
  %i.bmt = trunc i32 %i.bms to i16
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  store i16 %i.bmt, ptr %i.bmu, align 8, !tbaa !39
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 5461)
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.e, i64 542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bmv, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.e, i64 410
  %i.bmx = load i16, ptr %i.c, align 16, !tbaa !39
  store i16 %i.bmx, ptr %i.bmw, align 2, !tbaa !39
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.e, i64 412
  %i.bmz = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !39
  %i.bna = sext <8 x i16> %i.bmz to <8 x i32>
  %i.bnb = mul nsw <8 x i32> %i.bna, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.bnc = add nsw <8 x i32> %i.bnb, splat (i32 16384)
  %i.bnd = lshr <8 x i32> %i.bnc, splat (i32 15)
  %i.bne = trunc <8 x i32> %i.bnd to <8 x i16>
  store <8 x i16> %i.bne, ptr %i.bmy, align 4, !tbaa !39
  %i.bnf = load i16, ptr %i.bkj, align 2, !tbaa !39
  %i.bng = sext i16 %i.bnf to i32
  %i.bnh = mul nsw i32 %i.bng, 13016
  %i.bni = add nsw i32 %i.bnh, 16384
  %i.bnj = lshr i32 %i.bni, 15
  %i.bnk = trunc i32 %i.bnj to i16
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  store i16 %i.bnk, ptr %i.bnl, align 4, !tbaa !39
  %i.bnm = load i16, ptr %i.bkr, align 4, !tbaa !39
  %i.bnn = sext i16 %i.bnm to i32
  %i.bno = mul nsw i32 %i.bnn, 11747
  %i.bnp = add nsw i32 %i.bno, 16384
  %i.bnq = lshr i32 %i.bnp, 15
  %i.bnr = trunc i32 %i.bnq to i16
  %i.bns = getelementptr inbounds nuw i8, ptr %i.e, i64 430
  store i16 %i.bnr, ptr %i.bns, align 2, !tbaa !39
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 0)
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.e, i64 564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.bnt, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.bnv = load i16, ptr %i.c, align 16, !tbaa !39
  store i16 %i.bnv, ptr %i.bnu, align 8, !tbaa !39
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.e, i64 434
  %i.bnx = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !39
  %i.bny = sext <8 x i16> %i.bnx to <8 x i32>
  %i.bnz = mul nsw <8 x i32> %i.bny, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.boa = add nsw <8 x i32> %i.bnz, splat (i32 16384)
  %i.bob = lshr <8 x i32> %i.boa, splat (i32 15)
  %i.boc = trunc <8 x i32> %i.bob to <8 x i16>
  store <8 x i16> %i.boc, ptr %i.bnw, align 2, !tbaa !39
  %i.bod = load i16, ptr %i.bkj, align 2, !tbaa !39
  %i.boe = sext i16 %i.bod to i32
  %i.bof = mul nsw i32 %i.boe, 13016
  %i.bog = add nsw i32 %i.bof, 16384
  %i.boh = lshr i32 %i.bog, 15
  %i.boi = trunc i32 %i.boh to i16
  %i.boj = getelementptr inbounds nuw i8, ptr %i.e, i64 450
  store i16 %i.boi, ptr %i.boj, align 2, !tbaa !39
  %i.bok = load i16, ptr %i.bkr, align 4, !tbaa !39
  %i.bol = sext i16 %i.bok to i32
  %i.bom = mul nsw i32 %i.bol, 11747
  %i.bon = add nsw i32 %i.bom, 16384
  %i.boo = lshr i32 %i.bon, 15
  %i.bop = trunc i32 %i.boo to i16
  %i.boq = getelementptr inbounds nuw i8, ptr %i.e, i64 452
  store i16 %i.bop, ptr %i.boq, align 4, !tbaa !39
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull readonly %i.bcr, ptr noundef nonnull readonly %i.bjo, i32 noundef 0)
  %i.bor = getelementptr inbounds nuw i8, ptr %i.e, i64 586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bor, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bos = getelementptr inbounds nuw i8, ptr %i.e, i64 454
  %i.bot = load i16, ptr %i.c, align 16, !tbaa !39
  store i16 %i.bot, ptr %i.bos, align 2, !tbaa !39
  %i.bou = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.bov = load <8 x i16>, ptr %i.bkb, align 2, !tbaa !39
  %i.bow = sext <8 x i16> %i.bov to <8 x i32>
  %i.box = mul nsw <8 x i32> %i.bow, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.boy = add nsw <8 x i32> %i.box, splat (i32 16384)
  %i.boz = lshr <8 x i32> %i.boy, splat (i32 15)
  %i.bpa = trunc <8 x i32> %i.boz to <8 x i16>
  store <8 x i16> %i.bpa, ptr %i.bou, align 8, !tbaa !39
  %i.bpb = load i16, ptr %i.bkj, align 2, !tbaa !39
  %i.bpc = sext i16 %i.bpb to i32
  %i.bpd = mul nsw i32 %i.bpc, 13016
  %i.bpe = add nsw i32 %i.bpd, 16384
  %i.bpf = lshr i32 %i.bpe, 15
  %i.bpg = trunc i32 %i.bpf to i16
  %i.bph = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  store i16 %i.bpg, ptr %i.bph, align 8, !tbaa !39
  %i.bpi = load i16, ptr %i.bkr, align 4, !tbaa !39
  %i.bpj = sext i16 %i.bpi to i32
  %i.bpk = mul nsw i32 %i.bpj, 11747
  %i.bpl = add nsw i32 %i.bpk, 16384
  %i.bpm = lshr i32 %i.bpl, 15
  %i.bpn = trunc i32 %i.bpm to i16
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.e, i64 474
  store i16 %i.bpn, ptr %i.bpo, align 2, !tbaa !39
  br label %lsp_interpolate.exit

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next56.i, %bb.ae ] ; 2 uses
  %indvars.iv.i103 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i104, %bb.ae ] ; 3 uses
  %i.bpp = getelementptr inbounds nuw [2 x i8], ptr @lsf_weight_20ms, i64 %indvars.iv55.i
  %i.bpq = load i16, ptr %i.bpp, align 2, !tbaa !39
  %i.bpr = sext i16 %i.bpq to i32
  call fastcc void @lsp_interpolate2polydec(ptr noundef %i.c, ptr noundef nonnull %i.bju, ptr noundef nonnull readonly %i.bcr, i32 noundef %i.bpr)
  %i.bps = getelementptr inbounds nuw [2 x i8], ptr %i.bjm, i64 %indvars.iv.i103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bps, ptr noundef nonnull align 16 dereferenceable(22) %i.c, i64 22, i1 false)
  %i.bpt = getelementptr inbounds nuw [2 x i8], ptr %i.bjn, i64 %indvars.iv.i103 ; 4 uses
  %i.bpu = load i16, ptr %i.c, align 16, !tbaa !39
  store i16 %i.bpu, ptr %i.bpt, align 2, !tbaa !39
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpt, i64 2
  %i.bpw = load <8 x i16>, ptr %i.bjv, align 2, !tbaa !39
  %i.bpx = sext <8 x i16> %i.bpw to <8 x i32>
  %i.bpy = mul nsw <8 x i32> %i.bpx, <i32 29573, i32 26690, i32 24087, i32 21739, i32 19619, i32 17707, i32 15980, i32 14422>
  %i.bpz = add nsw <8 x i32> %i.bpy, splat (i32 16384)
  %i.bqa = lshr <8 x i32> %i.bpz, splat (i32 15)
  %i.bqb = trunc <8 x i32> %i.bqa to <8 x i16>
  store <8 x i16> %i.bqb, ptr %i.bpv, align 2, !tbaa !39
  %i.bqc = load i16, ptr %i.bjw, align 2, !tbaa !39
  %i.bqd = sext i16 %i.bqc to i32
  %i.bqe = mul nsw i32 %i.bqd, 13016
  %i.bqf = add nsw i32 %i.bqe, 16384
  %i.bqg = lshr i32 %i.bqf, 15
  %i.bqh = trunc i32 %i.bqg to i16
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bpt, i64 18
  store i16 %i.bqh, ptr %i.bqi, align 2, !tbaa !39
  %i.bqj = load i16, ptr %i.bjx, align 4, !tbaa !39
  %i.bqk = sext i16 %i.bqj to i32
  %i.bql = mul nsw i32 %i.bqk, 11747
  %i.bqm = add nsw i32 %i.bql, 16384
  %i.bqn = lshr i32 %i.bqm, 15
  %i.bqo = trunc i32 %i.bqn to i16
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bpt, i64 20
  store i16 %i.bqo, ptr %i.bqp, align 2, !tbaa !39
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i103, 11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %i.bqq = icmp samesign ult i64 %indvars.iv.next56.i, %i.bjy
  br i1 %i.bqq, label %bb.ae, label %lsp_interpolate.exit, !llvm.loop !53

lsp_interpolate.exit:                             ; preds = %bb.ae, %lsp_interpolate.exit.loopexit, %.preheader.i102
  %..i = phi ptr [ %i.bcr, %.preheader.i102 ], [ %i.bjo, %lsp_interpolate.exit.loopexit ], [ %i.bcr, %bb.ae ]
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bqr, ptr noundef nonnull align 2 dereferenceable(20) %..i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.e, i64 2522 ; 9 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.e, i64 740 ; 5 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.e, i64 2050 ; 8 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.bqw = load i32, ptr %i.bqv, align 8, !tbaa !38 ; 11 uses
  %i.bqx = trunc i32 %i.bqw to i16                ; 6 uses
  %i.bqy = sub i16 80, %i.bqx                     ; 5 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.e, i64 90 ; 2 uses
  %i.bra = load i16, ptr %i.bqz, align 2, !tbaa !75 ; 2 uses
  %i.brb = icmp eq i16 %i.bra, 1
  %i.brc = mul nuw nsw i16 %i.bcc, 40             ; 2 uses
  %i.brd = add nsw i16 %i.brc, -40
  %reass.sub = sub i16 %i.brc, %i.bqx
  %i.bre = add i16 %reass.sub, 40
  %.0103.i = select i1 %i.brb, i16 %i.brd, i16 %i.bre ; 2 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.brg = load i16, ptr %i.brf, align 8, !tbaa !76 ; 3 uses
  %narrow = mul nuw nsw i16 %i.bcc, 22
  %.idx.i106 = zext nneg i16 %narrow to i64
  %i.brh = getelementptr i8, ptr %i.bjm, i64 %.idx.i106 ; 4 uses
  %i.bri = getelementptr i8, ptr %i.brh, i64 -22
  %i.brj = sext i16 %.0103.i to i64
  %i.brk = getelementptr [2 x i8], ptr %i.bqs, i64 %i.brj ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.brl = getelementptr i8, ptr %i.brh, i64 -16
  %i.brm = load <8 x i16>, ptr %i.brl, align 2, !tbaa !39 ; 9 uses
  %i.brn = getelementptr i8, ptr %i.brh, i64 -18
  %i.bro = load i16, ptr %i.brn, align 2, !tbaa !39 ; 2 uses
  %i.brp = getelementptr i8, ptr %i.brh, i64 -20
  %i.brq = load i16, ptr %i.brp, align 2, !tbaa !39 ; 2 uses
  %i.brr = load i16, ptr %i.bri, align 2, !tbaa !39 ; 2 uses
  %i.brs = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 12 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.bru = sext i16 %i.brg to i64
  %i.brv = getelementptr inbounds [2 x i8], ptr @frg_quant_mod, i64 %i.bru
  %i.brw = load i16, ptr %i.brv, align 2, !tbaa !39 ; 3 uses
  %sext132.i = shl i32 %i.bqw, 16                 ; 5 uses
  %i.brx = ashr exact i32 %sext132.i, 16          ; 12 uses
  %i.bry = add nsw i32 %i.brx, -1                 ; 3 uses
  %i.brz = sext i32 %i.bry to i64                 ; 2 uses
  %i.bsa = getelementptr inbounds [2 x i8], ptr %i.jp, i64 %i.brz ; 6 uses
  %i.bsb = icmp slt i16 %i.brg, 37
  br i1 %i.bsb, label %.preheader.i.i, label %bb.ag

.preheader.i.i:                                   ; preds = %lsp_interpolate.exit
  %i.bsc = icmp sgt i16 %i.bqx, 0
  br i1 %i.bsc, label %.lr.ph116.i.i, label %.loopexit.i.i

.lr.ph116.i.i:                                    ; preds = %.preheader.i.i
  %i.bsd = sext i16 %i.brw to i32                 ; 3 uses
  %xtraiter309 = and i32 %i.bqw, 1                ; 2 uses
  %i.bse = icmp eq i32 %i.bry, 0
  br i1 %i.bse, label %.epil.preheader308, label %.lr.ph116.i.i.new

.lr.ph116.i.i.new:                                ; preds = %.lr.ph116.i.i
  %unroll_iter312 = sub nsw i32 %i.brx, %xtraiter309
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph116.i.i.new
  %.0115.i.i = phi ptr [ %i.bsa, %.lr.ph116.i.i.new ], [ %i.bta, %bb.af ] ; 3 uses
  %.062114.i.i = phi ptr [ %i.brs, %.lr.ph116.i.i.new ], [ %i.bsz, %bb.af ] ; 3 uses
  %niter313 = phi i32 [ 0, %.lr.ph116.i.i.new ], [ %niter313.next.1, %bb.af ]
  %i.bsf = load i16, ptr %.0115.i.i, align 2, !tbaa !39
  %i.bsg = sext i16 %i.bsf to i64
  %i.bsh = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bsg
  %i.bsi = load i16, ptr %i.bsh, align 2, !tbaa !39
  %i.bsj = sext i16 %i.bsi to i32
  %i.bsk = mul nsw i32 %i.bsj, %i.bsd
  %i.bsl = add nsw i32 %i.bsk, 2097152
  %i.bsm = ashr i32 %i.bsl, 22
  %i.bsn = trunc nsw i32 %i.bsm to i16
  store i16 %i.bsn, ptr %.062114.i.i, align 2, !tbaa !39
  %i.bso = getelementptr inbounds nuw i8, ptr %.062114.i.i, i64 2
  %i.bsp = getelementptr inbounds i8, ptr %.0115.i.i, i64 -2
  %i.bsq = load i16, ptr %i.bsp, align 2, !tbaa !39
  %i.bsr = sext i16 %i.bsq to i64
  %i.bss = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bsr
  %i.bst = load i16, ptr %i.bss, align 2, !tbaa !39
  %i.bsu = sext i16 %i.bst to i32
  %i.bsv = mul nsw i32 %i.bsu, %i.bsd
  %i.bsw = add nsw i32 %i.bsv, 2097152
  %i.bsx = ashr i32 %i.bsw, 22
  %i.bsy = trunc nsw i32 %i.bsx to i16
  store i16 %i.bsy, ptr %i.bso, align 2, !tbaa !39
  %i.bsz = getelementptr inbounds nuw i8, ptr %.062114.i.i, i64 4 ; 2 uses
  %i.bta = getelementptr inbounds i8, ptr %.0115.i.i, i64 -4 ; 2 uses
  %niter313.next.1 = add i32 %niter313, 2         ; 2 uses
  %niter313.ncmp.1 = icmp eq i32 %niter313.next.1, %unroll_iter312
  br i1 %niter313.ncmp.1, label %.loopexit.i.i.loopexit.unr-lcssa, label %bb.af, !llvm.loop !54

bb.ag:                                            ; preds = %lsp_interpolate.exit
  %i.btb = icmp samesign ult i16 %i.brg, 59
  %i.btc = icmp sgt i16 %i.bqx, 0                 ; 2 uses
  br i1 %i.btb, label %.preheader101.i.i, label %.preheader103.i.i

.preheader103.i.i:                                ; preds = %bb.ag
  br i1 %i.btc, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader103.i.i
  %i.btd = sext i16 %i.brw to i32                 ; 3 uses
  %xtraiter = and i32 %i.bqw, 1                   ; 2 uses
  %i.bte = icmp eq i32 %sext132.i, 65536
  br i1 %i.bte, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = sub nsw i32 %i.brx, %xtraiter
  br label %bb.ai

.preheader101.i.i:                                ; preds = %bb.ag
  br i1 %i.btc, label %.lr.ph112.i.i, label %.loopexit.i.i

.lr.ph112.i.i:                                    ; preds = %.preheader101.i.i
  %i.btf = sext i16 %i.brw to i32                 ; 3 uses
  %xtraiter303 = and i32 %i.bqw, 1                ; 2 uses
  %i.btg = icmp eq i32 %i.bry, 0
  br i1 %i.btg, label %.epil.preheader302, label %.lr.ph112.i.i.new

.lr.ph112.i.i.new:                                ; preds = %.lr.ph112.i.i
  %unroll_iter306 = sub nsw i32 %i.brx, %xtraiter303
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph112.i.i.new
  %.1111.i.i = phi ptr [ %i.bsa, %.lr.ph112.i.i.new ], [ %i.buc, %bb.ah ] ; 3 uses
  %.163110.i.i = phi ptr [ %i.brs, %.lr.ph112.i.i.new ], [ %i.bub, %bb.ah ] ; 3 uses
  %niter307 = phi i32 [ 0, %.lr.ph112.i.i.new ], [ %niter307.next.1, %bb.ah ]
  %i.bth = load i16, ptr %.1111.i.i, align 2, !tbaa !39
  %i.bti = sext i16 %i.bth to i64
  %i.btj = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bti
  %i.btk = load i16, ptr %i.btj, align 2, !tbaa !39
  %i.btl = sext i16 %i.btk to i32
  %i.btm = mul nsw i32 %i.btl, %i.btf
  %i.btn = add nsw i32 %i.btm, 262144
  %i.bto = ashr i32 %i.btn, 19
  %i.btp = trunc nsw i32 %i.bto to i16
  store i16 %i.btp, ptr %.163110.i.i, align 2, !tbaa !39
  %i.btq = getelementptr inbounds nuw i8, ptr %.163110.i.i, i64 2
  %i.btr = getelementptr inbounds i8, ptr %.1111.i.i, i64 -2
  %i.bts = load i16, ptr %i.btr, align 2, !tbaa !39
  %i.btt = sext i16 %i.bts to i64
  %i.btu = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.btt
  %i.btv = load i16, ptr %i.btu, align 2, !tbaa !39
  %i.btw = sext i16 %i.btv to i32
  %i.btx = mul nsw i32 %i.btw, %i.btf
  %i.bty = add nsw i32 %i.btx, 262144
  %i.btz = ashr i32 %i.bty, 19
  %i.bua = trunc nsw i32 %i.btz to i16
  store i16 %i.bua, ptr %i.btq, align 2, !tbaa !39
  %i.bub = getelementptr inbounds nuw i8, ptr %.163110.i.i, i64 4 ; 2 uses
  %i.buc = getelementptr inbounds i8, ptr %.1111.i.i, i64 -4 ; 2 uses
  %niter307.next.1 = add i32 %niter307, 2         ; 2 uses
  %niter307.ncmp.1 = icmp eq i32 %niter307.next.1, %unroll_iter306
  br i1 %niter307.ncmp.1, label %.loopexit.i.i.loopexit297.unr-lcssa, label %bb.ah, !llvm.loop !55

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i.new
  %.2108.i.i = phi ptr [ %i.bsa, %.lr.ph.i.i.new ], [ %i.buy, %bb.ai ] ; 3 uses
  %.264107.i.i = phi ptr [ %i.brs, %.lr.ph.i.i.new ], [ %i.bux, %bb.ai ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.ai ]
  %i.bud = load i16, ptr %.2108.i.i, align 2, !tbaa !39
  %i.bue = sext i16 %i.bud to i64
  %i.buf = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bue
  %i.bug = load i16, ptr %i.buf, align 2, !tbaa !39
  %i.buh = sext i16 %i.bug to i32
  %i.bui = mul nsw i32 %i.buh, %i.btd
  %i.buj = add nsw i32 %i.bui, 65536
  %i.buk = ashr i32 %i.buj, 17
  %i.bul = trunc nsw i32 %i.buk to i16
  store i16 %i.bul, ptr %.264107.i.i, align 2, !tbaa !39
  %i.bum = getelementptr inbounds nuw i8, ptr %.264107.i.i, i64 2
  %i.bun = getelementptr inbounds i8, ptr %.2108.i.i, i64 -2
  %i.buo = load i16, ptr %i.bun, align 2, !tbaa !39
  %i.bup = sext i16 %i.buo to i64
  %i.buq = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bup
  %i.bur = load i16, ptr %i.buq, align 2, !tbaa !39
  %i.bus = sext i16 %i.bur to i32
  %i.but = mul nsw i32 %i.bus, %i.btd
  %i.buu = add nsw i32 %i.but, 65536
  %i.buv = ashr i32 %i.buu, 17
  %i.buw = trunc nsw i32 %i.buv to i16
  store i16 %i.buw, ptr %i.bum, align 2, !tbaa !39
  %i.bux = getelementptr inbounds nuw i8, ptr %.264107.i.i, i64 4 ; 2 uses
  %i.buy = getelementptr inbounds i8, ptr %.2108.i.i, i64 -4 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.loopexit298.unr-lcssa, label %bb.ai, !llvm.loop !56

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %bb.af
  %lcmp.mod310.not = icmp eq i32 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.loopexit.i.i, label %.epil.preheader308

.epil.preheader308:                               ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph116.i.i
  %.0115.i.i.epil.init = phi ptr [ %i.bsa, %.lr.ph116.i.i ], [ %i.bta, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.062114.i.i.epil.init = phi ptr [ %i.brs, %.lr.ph116.i.i ], [ %i.bsz, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod311 = trunc i32 %i.bqw to i1
  tail call void @llvm.assume(i1 %lcmp.mod311)
  %i.buz = load i16, ptr %.0115.i.i.epil.init, align 2, !tbaa !39
  %i.bva = sext i16 %i.buz to i64
  %i.bvb = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bva
  %i.bvc = load i16, ptr %i.bvb, align 2, !tbaa !39
  %i.bvd = sext i16 %i.bvc to i32
  %i.bve = mul nsw i32 %i.bvd, %i.bsd
  %i.bvf = add nsw i32 %i.bve, 2097152
  %i.bvg = ashr i32 %i.bvf, 22
  %i.bvh = trunc nsw i32 %i.bvg to i16
  store i16 %i.bvh, ptr %.062114.i.i.epil.init, align 2, !tbaa !39
  br label %.loopexit.i.i

.loopexit.i.i.loopexit297.unr-lcssa:              ; preds = %bb.ah
  %lcmp.mod304.not = icmp eq i32 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %.loopexit.i.i, label %.epil.preheader302

.epil.preheader302:                               ; preds = %.loopexit.i.i.loopexit297.unr-lcssa, %.lr.ph112.i.i
  %.1111.i.i.epil.init = phi ptr [ %i.bsa, %.lr.ph112.i.i ], [ %i.buc, %.loopexit.i.i.loopexit297.unr-lcssa ]
  %.163110.i.i.epil.init = phi ptr [ %i.brs, %.lr.ph112.i.i ], [ %i.bub, %.loopexit.i.i.loopexit297.unr-lcssa ]
  %lcmp.mod305 = trunc i32 %i.bqw to i1
  tail call void @llvm.assume(i1 %lcmp.mod305)
  %i.bvi = load i16, ptr %.1111.i.i.epil.init, align 2, !tbaa !39
  %i.bvj = sext i16 %i.bvi to i64
  %i.bvk = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bvj
  %i.bvl = load i16, ptr %i.bvk, align 2, !tbaa !39
  %i.bvm = sext i16 %i.bvl to i32
  %i.bvn = mul nsw i32 %i.bvm, %i.btf
  %i.bvo = add nsw i32 %i.bvn, 262144
  %i.bvp = ashr i32 %i.bvo, 19
  %i.bvq = trunc nsw i32 %i.bvp to i16
  store i16 %i.bvq, ptr %.163110.i.i.epil.init, align 2, !tbaa !39
  br label %.loopexit.i.i

.loopexit.i.i.loopexit298.unr-lcssa:              ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.loopexit298.unr-lcssa, %.lr.ph.i.i
  %.2108.i.i.epil.init = phi ptr [ %i.bsa, %.lr.ph.i.i ], [ %i.buy, %.loopexit.i.i.loopexit298.unr-lcssa ]
  %.264107.i.i.epil.init = phi ptr [ %i.brs, %.lr.ph.i.i ], [ %i.bux, %.loopexit.i.i.loopexit298.unr-lcssa ]
  %lcmp.mod301 = trunc i32 %i.bqw to i1
  tail call void @llvm.assume(i1 %lcmp.mod301)
  %i.bvr = load i16, ptr %.2108.i.i.epil.init, align 2, !tbaa !39
  %i.bvs = sext i16 %i.bvr to i64
  %i.bvt = getelementptr inbounds [2 x i8], ptr @ilbc_state, i64 %i.bvs
  %i.bvu = load i16, ptr %i.bvt, align 2, !tbaa !39
  %i.bvv = sext i16 %i.bvu to i32
  %i.bvw = mul nsw i32 %i.bvv, %i.btd
  %i.bvx = add nsw i32 %i.bvw, 65536
  %i.bvy = ashr i32 %i.bvx, 17
  %i.bvz = trunc nsw i32 %i.bvy to i16
  store i16 %i.bvz, ptr %.264107.i.i.epil.init, align 2, !tbaa !39
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.epil.preheader, %.loopexit.i.i.loopexit298.unr-lcssa, %.epil.preheader302, %.loopexit.i.i.loopexit297.unr-lcssa, %.epil.preheader308, %.loopexit.i.i.loopexit.unr-lcssa, %.preheader101.i.i, %.preheader103.i.i, %.preheader.i.i
  %i.bwa = sext i16 %i.bqx to i64
  %i.bwb = getelementptr inbounds [2 x i8], ptr %i.brs, i64 %i.bwa
  %i.bwc = ashr exact i32 %sext132.i, 15          ; 3 uses
  %i.bwd = sext i32 %i.bwc to i64                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bwb, i8 0, i64 %i.bwd, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.bwe = add nsw i32 %i.brx, 10                 ; 3 uses
  %i.bwf = trunc i32 %i.bwe to i16
  %i.bwg = icmp sgt i16 %i.bwf, 0
  br i1 %i.bwg, label %.lr.ph.i.i.i, label %filter_mafq12.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit.i.i
  %.mask.i.i = and i32 %i.bwe, 32767              ; 2 uses
  %wide.trip.count27.i.i.i = zext nneg i32 %.mask.i.i to i64 ; 3 uses
  %i.bwh = sext <8 x i16> %i.brm to <8 x i32>     ; 9 uses
  %i.bwi = sext i16 %i.bro to i32                 ; 2 uses
  %i.bwj = sext i16 %i.brq to i32                 ; 2 uses
  %i.bwk = sext i16 %i.brr to i32                 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.mask.i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count27.i.i.i, 32760 ; 3 uses
  %broadcast.splat = shufflevector <8 x i32> %i.bwh, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %broadcast.splat225 = shufflevector <8 x i32> %i.bwh, <8 x i32> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat227 = shufflevector <8 x i32> %i.bwh, <8 x i32> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat229 = shufflevector <8 x i32> %i.bwh, <8 x i32> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat231 = shufflevector <8 x i32> %i.bwh, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat233 = shufflevector <8 x i32> %i.bwh, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat235 = shufflevector <8 x i32> %i.bwh, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat237 = shufflevector <8 x i32> %i.bwh, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert238 = insertelement <8 x i32> poison, i32 %i.bwi, i64 0
  %broadcast.splat239 = shufflevector <8 x i32> %broadcast.splatinsert238, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert240 = insertelement <8 x i32> poison, i32 %i.bwj, i64 0
  %broadcast.splat241 = shufflevector <8 x i32> %broadcast.splatinsert240, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert242 = insertelement <8 x i32> poison, i32 %i.bwk, i64 0
  %broadcast.splat243 = shufflevector <8 x i32> %broadcast.splatinsert242, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bwl = getelementptr inbounds nuw [2 x i8], ptr %i.brs, i64 %index ; 11 uses
  %i.bwm = getelementptr inbounds i8, ptr %i.bwl, i64 -2
  %wide.load = load <8 x i16>, ptr %i.bwl, align 4, !tbaa !39
  %i.bwn = sext <8 x i16> %wide.load to <8 x i32>
  %i.bwo = mul nsw <8 x i32> %broadcast.splat, %i.bwn
  %i.bwp = getelementptr inbounds i8, ptr %i.bwl, i64 -4
  %wide.load244 = load <8 x i16>, ptr %i.bwm, align 2, !tbaa !39
  %i.bwq = sext <8 x i16> %wide.load244 to <8 x i32>
  %i.bwr = mul nsw <8 x i32> %broadcast.splat225, %i.bwq
  %i.bws = add nsw <8 x i32> %i.bwr, %i.bwo
  %i.bwt = getelementptr inbounds i8, ptr %i.bwl, i64 -6
  %wide.load245 = load <8 x i16>, ptr %i.bwp, align 16, !tbaa !39
  %i.bwu = sext <8 x i16> %wide.load245 to <8 x i32>
  %i.bwv = mul nsw <8 x i32> %broadcast.splat227, %i.bwu
  %i.bww = add nsw <8 x i32> %i.bws, %i.bwv
  %i.bwx = getelementptr inbounds i8, ptr %i.bwl, i64 -8
  %wide.load246 = load <8 x i16>, ptr %i.bwt, align 2, !tbaa !39
  %i.bwy = sext <8 x i16> %wide.load246 to <8 x i32>
  %i.bwz = mul nsw <8 x i32> %broadcast.splat229, %i.bwy
  %i.bxa = add nsw <8 x i32> %i.bww, %i.bwz
  %i.bxb = getelementptr inbounds i8, ptr %i.bwl, i64 -10
  %wide.load247 = load <8 x i16>, ptr %i.bwx, align 4, !tbaa !39
  %i.bxc = sext <8 x i16> %wide.load247 to <8 x i32>
  %i.bxd = mul nsw <8 x i32> %broadcast.splat231, %i.bxc
  %i.bxe = add nsw <8 x i32> %i.bxa, %i.bxd
  %i.bxf = getelementptr inbounds i8, ptr %i.bwl, i64 -12
  %wide.load248 = load <8 x i16>, ptr %i.bxb, align 2, !tbaa !39
  %i.bxg = sext <8 x i16> %wide.load248 to <8 x i32>
  %i.bxh = mul nsw <8 x i32> %broadcast.splat233, %i.bxg
  %i.bxi = add nsw <8 x i32> %i.bxe, %i.bxh
  %i.bxj = getelementptr inbounds i8, ptr %i.bwl, i64 -14
  %wide.load249 = load <8 x i16>, ptr %i.bxf, align 8, !tbaa !39
  %i.bxk = sext <8 x i16> %wide.load249 to <8 x i32>
  %i.bxl = mul nsw <8 x i32> %broadcast.splat235, %i.bxk
  %i.bxm = add nsw <8 x i32> %i.bxi, %i.bxl
  %i.bxn = getelementptr inbounds i8, ptr %i.bwl, i64 -16
  %wide.load250 = load <8 x i16>, ptr %i.bxj, align 2, !tbaa !39
  %i.bxo = sext <8 x i16> %wide.load250 to <8 x i32>
  %i.bxp = mul nsw <8 x i32> %broadcast.splat237, %i.bxo
  %i.bxq = add nsw <8 x i32> %i.bxm, %i.bxp
  %i.bxr = getelementptr inbounds i8, ptr %i.bwl, i64 -18
  %wide.load251 = load <8 x i16>, ptr %i.bxn, align 4, !tbaa !39
  %i.bxs = sext <8 x i16> %wide.load251 to <8 x i32>
  %i.bxt = mul nsw <8 x i32> %broadcast.splat239, %i.bxs
  %i.bxu = add nsw <8 x i32> %i.bxq, %i.bxt
  %i.bxv = getelementptr inbounds i8, ptr %i.bwl, i64 -20
  %wide.load252 = load <8 x i16>, ptr %i.bxr, align 2, !tbaa !39
  %i.bxw = sext <8 x i16> %wide.load252 to <8 x i32>
  %i.bxx = mul nsw <8 x i32> %broadcast.splat241, %i.bxw
  %i.bxy = add nsw <8 x i32> %i.bxu, %i.bxx
  %wide.load253 = load <8 x i16>, ptr %i.bxv, align 16, !tbaa !39
  %i.bxz = sext <8 x i16> %wide.load253 to <8 x i32>
  %i.bya = mul nsw <8 x i32> %broadcast.splat243, %i.bxz
  %i.byb = add nsw <8 x i32> %i.bxy, %i.bya
  %i.byc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.byb, <8 x i32> splat (i32 -134217728))
  %i.byd = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.byc, <8 x i32> splat (i32 134215679))
  %i.bye = add nsw <8 x i32> %i.byd, splat (i32 2048)
  %i.byf = lshr <8 x i32> %i.bye, splat (i32 12)
  %i.byg = trunc <8 x i32> %i.byf to <8 x i16>
  %i.byh = getelementptr inbounds nuw [2 x i8], ptr %i.brt, i64 %index
  store <8 x i16> %i.byg, ptr %i.byh, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.byi = icmp eq i64 %index.next, %n.vec
  br i1 %i.byi, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27.i.i.i
  br i1 %cmp.n, label %filter_mafq12.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv24.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv24.i.i.i = phi i64 [ %indvars.iv.next25.i.i.i, %scalar.ph ], [ %indvars.iv24.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.byj = getelementptr inbounds nuw [2 x i8], ptr %i.brs, i64 %indvars.iv24.i.i.i ; 4 uses
  %i.byk = getelementptr inbounds i8, ptr %i.byj, i64 -14
  %i.byl = getelementptr inbounds i8, ptr %i.byj, i64 -16
  %i.bym = load <8 x i16>, ptr %i.byk, align 2, !tbaa !39
  %i.byn = sext <8 x i16> %i.bym to <8 x i32>
  %i.byo = mul nsw <8 x i32> %i.byn, %i.bwh
  %i.byp = getelementptr inbounds i8, ptr %i.byj, i64 -18
  %i.byq = load i16, ptr %i.byl, align 2, !tbaa !39
  %i.byr = sext i16 %i.byq to i32
  %i.bys = mul nsw i32 %i.byr, %i.bwi
  %i.byt = getelementptr inbounds i8, ptr %i.byj, i64 -20
  %i.byu = load i16, ptr %i.byp, align 2, !tbaa !39
  %i.byv = sext i16 %i.byu to i32
  %i.byw = mul nsw i32 %i.byv, %i.bwj
  %i.byx = load i16, ptr %i.byt, align 2, !tbaa !39
  %i.byy = sext i16 %i.byx to i32
  %i.byz = mul nsw i32 %i.byy, %i.bwk
  %i.bza = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.byo)
  %op.rdx293 = add i32 %i.bza, %i.bys
  %op.rdx294 = add i32 %i.byw, %i.byz
  %op.rdx295 = add i32 %op.rdx293, %op.rdx294
  %i.bzb = tail call i32 @llvm.smax.i32(i32 %op.rdx295, i32 -134217728)
  %.0.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.bzb, i32 134215679)
  %i.bzc = add nsw i32 %.0.i.i.i.i, 2048
  %i.bzd = lshr i32 %i.bzc, 12
  %i.bze = trunc i32 %i.bzd to i16
  %i.bzf = getelementptr inbounds nuw [2 x i8], ptr %i.brt, i64 %indvars.iv24.i.i.i
  store i16 %i.bze, ptr %i.bzf, align 2, !tbaa !39
  %indvars.iv.next25.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i, 1 ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %indvars.iv.next25.i.i.i, %wide.trip.count27.i.i.i
  br i1 %exitcond28.not.i.i.i, label %filter_mafq12.exit.i.i, label %scalar.ph, !llvm.loop !58

filter_mafq12.exit.i.i:                           ; preds = %scalar.ph, %middle.block, %.loopexit.i.i
  %i.bzg = sext i32 %i.bwe to i64
  %i.bzh = getelementptr inbounds [2 x i8], ptr %i.brt, i64 %i.bzg
  %i.bzi = add nsw i32 %i.bwc, -20
  %i.bzj = sext i32 %i.bzi to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bzh, i8 0, i64 %i.bzj, i1 false)
  %i.bzk = icmp sgt i16 %i.bqx, 0
  br i1 %i.bzk, label %.preheader.preheader.i.i.i, label %state_construct.exit.i

.preheader.preheader.i.i.i:                       ; preds = %filter_mafq12.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bwc to i64
  %i.bzl = extractelement <8 x i16> %i.brm, i64 7
  %i.bzm = sext i16 %i.bzl to i32
  %i.bzn = extractelement <8 x i16> %i.brm, i64 6
  %i.bzo = sext i16 %i.bzn to i32
  %i.bzp = extractelement <8 x i16> %i.brm, i64 5
  %i.bzq = sext i16 %i.bzp to i32
  %i.bzr = extractelement <8 x i16> %i.brm, i64 4
  %i.bzs = sext i16 %i.bzr to i32
  %i.bzt = extractelement <8 x i16> %i.brm, i64 3
  %i.bzu = sext i16 %i.bzt to i32
  %i.bzv = extractelement <8 x i16> %i.brm, i64 2
  %i.bzw = sext i16 %i.bzv to i32
  %i.bzx = extractelement <8 x i16> %i.brm, i64 1
  %i.bzy = sext i16 %i.bzx to i32
  %i.bzz = extractelement <8 x i16> %i.brm, i64 0
  %i.caa = sext i16 %i.bzz to i32
  %i.cab = sext i16 %i.bro to i32
  %i.cac = sext i16 %i.brq to i32
  %i.cad = sext i16 %i.brr to i32
  %scevgep289 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %load_initial290 = load i16, ptr %scevgep289, align 2
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %store_forwarded291 = phi i16 [ %load_initial290, %.preheader.preheader.i.i.i ], [ %i.cbp, %.preheader.i.i.i ]
  %indvars.iv.i71.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %indvars.iv.next.i73.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.cae = getelementptr [2 x i8], ptr %i.brs, i64 %indvars.iv.i71.i.i ; 10 uses
  %i.caf = getelementptr i8, ptr %i.cae, i64 -20
  %i.cag = load i16, ptr %i.caf, align 2, !tbaa !39
  %i.cah = sext i16 %i.cag to i32
  %i.cai = getelementptr i8, ptr %i.cae, i64 -18
  %i.caj = load i16, ptr %i.cai, align 2, !tbaa !39
  %i.cak = sext i16 %i.caj to i32
  %i.cal = getelementptr i8, ptr %i.cae, i64 -16
  %i.cam = load i16, ptr %i.cal, align 2, !tbaa !39
  %i.can = sext i16 %i.cam to i32
  %i.cao = getelementptr i8, ptr %i.cae, i64 -14
  %i.cap = load i16, ptr %i.cao, align 2, !tbaa !39
  %i.caq = sext i16 %i.cap to i32
  %i.car = getelementptr i8, ptr %i.cae, i64 -12
  %i.cas = load i16, ptr %i.car, align 2, !tbaa !39
  %i.cat = sext i16 %i.cas to i32
  %i.cau = getelementptr i8, ptr %i.cae, i64 -10
  %i.cav = load i16, ptr %i.cau, align 2, !tbaa !39
  %i.caw = sext i16 %i.cav to i32
  %i.cax = getelementptr i8, ptr %i.cae, i64 -8
  %i.cay = load i16, ptr %i.cax, align 2, !tbaa !39
  %i.caz = sext i16 %i.cay to i32
  %i.cba = getelementptr i8, ptr %i.cae, i64 -6
  %i.cbb = load i16, ptr %i.cba, align 2, !tbaa !39
  %i.cbc = sext i16 %i.cbb to i32
  %i.cbd = getelementptr i8, ptr %i.cae, i64 -4
  %i.cbe = load i16, ptr %i.cbd, align 2, !tbaa !39
  %i.cbf = sext i16 %i.cbe to i32
  %i.cbg = sext i16 %store_forwarded291 to i32
  %i.cbh = getelementptr inbounds nuw [2 x i8], ptr %i.brt, i64 %indvars.iv.i71.i.i
  %i.cbi = load i16, ptr %i.cbh, align 2, !tbaa !39
  %i.cbj = sext i16 %i.cbi to i32
  %i.cbk = mul nsw i32 %i.cbj, %i.cad
  %.neg.i.neg.i.neg = mul nsw i32 %i.cah, %i.bzm
  %.neg75.i.neg.i.neg = mul nsw i32 %i.cak, %i.bzo
  %.neg77.i.neg.i.neg = mul nsw i32 %i.can, %i.bzq
  %.neg79.i.neg.i.neg = mul nsw i32 %i.caq, %i.bzs
  %.neg81.i.neg.i.neg = mul nsw i32 %i.cat, %i.bzu
  %.neg83.i.neg.i.neg = mul nsw i32 %i.caw, %i.bzw
  %.neg85.i.neg.i.neg = mul nsw i32 %i.caz, %i.bzy
  %.neg87.i.neg.i.neg = mul nsw i32 %i.cbc, %i.caa
  %.neg89.i.neg.i.neg = mul nsw i32 %i.cbf, %i.cab
  %.neg91.i.neg.i.neg = mul nsw i32 %i.cbg, %i.cac
  %reass.add = add i32 %.neg75.i.neg.i.neg, %.neg.i.neg.i.neg
  %reass.add130 = add i32 %reass.add, %.neg77.i.neg.i.neg
  %reass.add131 = add i32 %reass.add130, %.neg79.i.neg.i.neg
  %reass.add132 = add i32 %reass.add131, %.neg81.i.neg.i.neg
  %reass.add133 = add i32 %reass.add132, %.neg83.i.neg.i.neg
  %reass.add134 = add i32 %reass.add133, %.neg85.i.neg.i.neg
  %reass.add135 = add i32 %reass.add134, %.neg87.i.neg.i.neg
  %reass.add136 = add i32 %reass.add135, %.neg89.i.neg.i.neg
  %reass.add137 = add i32 %reass.add136, %.neg91.i.neg.i.neg
  %i.cbl = sub i32 %i.cbk, %reass.add137
  %i.cbm = tail call i32 @llvm.smax.i32(i32 %i.cbl, i32 -134217728)
  %.0.i.i72.i.i = tail call i32 @llvm.smin.i32(i32 %i.cbm, i32 134215679)
  %i.cbn = add nsw i32 %.0.i.i72.i.i, 2048
  %i.cbo = lshr i32 %i.cbn, 12
  %i.cbp = trunc i32 %i.cbo to i16                ; 2 uses
  store i16 %i.cbp, ptr %i.cae, align 2, !tbaa !39
  %indvars.iv.next.i73.i.i = add nuw nsw i64 %indvars.iv.i71.i.i, 1 ; 2 uses
  %exitcond.not.i74.i.i = icmp eq i64 %indvars.iv.next.i73.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i74.i.i, label %iter.check, label %.preheader.i.i.i, !llvm.loop !59

iter.check:                                       ; preds = %.preheader.i.i.i
  %i.cbq = getelementptr [2 x i8], ptr %i.brs, i64 %i.bwd ; 5 uses
  %i.cbr = getelementptr inbounds [2 x i8], ptr %i.brs, i64 %i.brz ; 5 uses
  %i.cbs = zext nneg i32 %i.brx to i64            ; 5 uses
  %min.iters.check255 = icmp ult i32 %i.brx, 4
  br i1 %min.iters.check255, label %.lr.ph121.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check256 = icmp ult i32 %i.brx, 16
  br i1 %min.iters.check256, label %vec.epilog.ph, label %vector.ph257

vector.ph257:                                     ; preds = %vector.main.loop.iter.check
  %i.cbt = and i64 %i.cbs, 12
  %n.vec258 = and i64 %i.cbs, 32752               ; 6 uses
  %i.cbu = mul nsw i64 %n.vec258, -2              ; 2 uses
  %i.cbv = getelementptr i8, ptr %i.cbq, i64 %i.cbu
  %i.cbw = shl nuw nsw i64 %n.vec258, 1
  %i.cbx = getelementptr i8, ptr %i.brk, i64 %i.cbw
  %i.cby = getelementptr i8, ptr %i.cbr, i64 %i.cbu
  %i.cbz = trunc nuw nsw i64 %n.vec258 to i32
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next268, %vector.body259 ] ; 3 uses
  %i.cca = mul i64 %index260, -2                  ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cbq, i64 %i.cca ; 2 uses
  %i.ccb = shl i64 %index260, 1
  %next.gep261 = getelementptr i8, ptr %i.brk, i64 %i.ccb ; 2 uses
  %next.gep262 = getelementptr i8, ptr %i.cbr, i64 %i.cca ; 2 uses
  %i.ccc = getelementptr i8, ptr %next.gep262, i64 -14
  %i.ccd = getelementptr i8, ptr %next.gep262, i64 -30
  %wide.load263 = load <8 x i16>, ptr %i.ccc, align 2, !tbaa !39
  %wide.load264 = load <8 x i16>, ptr %i.ccd, align 2, !tbaa !39
  %i.cce = getelementptr i8, ptr %next.gep, i64 -16
  %i.ccf = getelementptr i8, ptr %next.gep, i64 -32
  %wide.load265 = load <8 x i16>, ptr %i.cce, align 4, !tbaa !39
  %wide.load266 = load <8 x i16>, ptr %i.ccf, align 4, !tbaa !39
  %i.ccg = add <8 x i16> %wide.load265, %wide.load263
  %i.cch = add <8 x i16> %wide.load266, %wide.load264
  %reverse = shufflevector <8 x i16> %i.ccg, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse267 = shufflevector <8 x i16> %i.cch, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cci = getelementptr i8, ptr %next.gep261, i64 16
  store <8 x i16> %reverse, ptr %next.gep261, align 2, !tbaa !39
  store <8 x i16> %reverse267, ptr %i.cci, align 2, !tbaa !39
  %index.next268 = add nuw i64 %index260, 16      ; 2 uses
  %i.ccj = icmp eq i64 %index.next268, %n.vec258
  br i1 %i.ccj, label %middle.block269, label %vector.body259, !llvm.loop !60

middle.block269:                                  ; preds = %vector.body259
  %cmp.n270 = icmp eq i64 %n.vec258, %i.cbs
  br i1 %cmp.n270, label %state_construct.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block269
  %min.epilog.iters.check = icmp eq i64 %i.cbt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph121.i.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec258, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec275 = and i64 %i.cbs, 32764               ; 5 uses
  %i.cck = mul nsw i64 %n.vec275, -2              ; 2 uses
  %i.ccl = getelementptr i8, ptr %i.cbq, i64 %i.cck
  %i.ccm = shl nuw nsw i64 %n.vec275, 1
  %i.ccn = getelementptr i8, ptr %i.brk, i64 %i.ccm
  %i.cco = getelementptr i8, ptr %i.cbr, i64 %i.cck
  %i.ccp = trunc nuw nsw i64 %n.vec275 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index276 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next283, %vec.epilog.vector.body ] ; 3 uses
  %i.ccq = mul i64 %index276, -2                  ; 2 uses
  %next.gep277 = getelementptr i8, ptr %i.cbq, i64 %i.ccq
  %i.ccr = shl i64 %index276, 1
  %next.gep278 = getelementptr i8, ptr %i.brk, i64 %i.ccr
  %next.gep279 = getelementptr i8, ptr %i.cbr, i64 %i.ccq
  %i.ccs = getelementptr i8, ptr %next.gep279, i64 -6
  %wide.load280 = load <4 x i16>, ptr %i.ccs, align 2, !tbaa !39
  %i.cct = getelementptr i8, ptr %next.gep277, i64 -8
  %wide.load281 = load <4 x i16>, ptr %i.cct, align 4, !tbaa !39
  %i.ccu = add <4 x i16> %wide.load281, %wide.load280
  %reverse282 = shufflevector <4 x i16> %i.ccu, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse282, ptr %next.gep278, align 2, !tbaa !39
  %index.next283 = add nuw i64 %index276, 4       ; 2 uses
  %i.ccv = icmp eq i64 %index.next283, %n.vec275
  br i1 %i.ccv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n284 = icmp eq i64 %n.vec275, %i.cbs
  br i1 %cmp.n284, label %state_construct.exit.loopexit.i, label %.lr.ph121.i.i.preheader

.lr.ph121.i.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.pn120.i.i.ph = phi ptr [ %i.cbq, %iter.check ], [ %i.cbv, %vec.epilog.iter.check ], [ %i.ccl, %vec.epilog.middle.block ]
  %.061119.i.i.ph = phi ptr [ %i.brk, %iter.check ], [ %i.cbx, %vec.epilog.iter.check ], [ %i.ccn, %vec.epilog.middle.block ]
  %.365118.i.i.ph = phi ptr [ %i.cbr, %iter.check ], [ %i.cby, %vec.epilog.iter.check ], [ %i.cco, %vec.epilog.middle.block ]
  %.4117.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.cbz, %vec.epilog.iter.check ], [ %i.ccp, %vec.epilog.middle.block ]
  br label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %.lr.ph121.i.i.preheader, %.lr.ph121.i.i
  %.pn120.i.i = phi ptr [ %.3.i.i, %.lr.ph121.i.i ], [ %.pn120.i.i.ph, %.lr.ph121.i.i.preheader ]
  %.061119.i.i = phi ptr [ %i.cda, %.lr.ph121.i.i ], [ %.061119.i.i.ph, %.lr.ph121.i.i.preheader ] ; 2 uses
  %.365118.i.i = phi ptr [ %i.ccz, %.lr.ph121.i.i ], [ %.365118.i.i.ph, %.lr.ph121.i.i.preheader ] ; 2 uses
  %.4117.i.i = phi i32 [ %i.cdb, %.lr.ph121.i.i ], [ %.4117.i.i.ph, %.lr.ph121.i.i.preheader ]
  %.3.i.i = getelementptr i8, ptr %.pn120.i.i, i64 -2 ; 2 uses
  %i.ccw = load i16, ptr %.365118.i.i, align 2, !tbaa !39
  %i.ccx = load i16, ptr %.3.i.i, align 2, !tbaa !39
  %i.ccy = add i16 %i.ccx, %i.ccw
  store i16 %i.ccy, ptr %.061119.i.i, align 2, !tbaa !39
  %i.ccz = getelementptr inbounds i8, ptr %.365118.i.i, i64 -2
  %i.cda = getelementptr inbounds nuw i8, ptr %.061119.i.i, i64 2
  %i.cdb = add nuw nsw i32 %.4117.i.i, 1          ; 2 uses
  %exitcond127.not.i.i = icmp eq i32 %i.cdb, %i.brx
  br i1 %exitcond127.not.i.i, label %state_construct.exit.loopexit.i, label %.lr.ph121.i.i, !llvm.loop !62

state_construct.exit.loopexit.i:                  ; preds = %.lr.ph121.i.i, %vec.epilog.middle.block, %middle.block269
  %.pre.i112 = load i16, ptr %i.bqz, align 2, !tbaa !75
  br label %state_construct.exit.i

state_construct.exit.i:                           ; preds = %state_construct.exit.loopexit.i, %filter_mafq12.exit.i.i
  %i.cdc = phi i16 [ %.pre.i112, %state_construct.exit.loopexit.i ], [ %i.bra, %filter_mafq12.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not.i = icmp eq i16 %i.cdc, 0
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %state_construct.exit.i
  %sext109.i = sub i32 9633792, %sext132.i
  %i.cdd = ashr exact i32 %sext109.i, 15
  %i.cde = sext i32 %i.cdd to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bqu, i8 0, i64 %i.cde, i1 false)
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.e, i64 2344
  %i.cdg = sext i32 %i.bqw to i64
  %i.cdh = sub nsw i64 0, %i.cdg
  %i.cdi = getelementptr inbounds [2 x i8], ptr %i.cdf, i64 %i.cdh
  %i.cdj = sext i16 %.0103.i to i32
  %i.cdk = shl nsw i32 %i.bqw, 1
  %i.cdl = sext i32 %i.cdk to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cdi, ptr align 2 %i.brk, i64 %i.cdl, i1 false)
  %i.cdm = load i32, ptr %i.bqv, align 8, !tbaa !38
  %i.cdn = add nsw i32 %i.cdm, %i.cdj
  %i.cdo = sext i32 %i.cdn to i64
  %i.cdp = getelementptr inbounds [2 x i8], ptr %i.bqs, i64 %i.cdo
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cds = getelementptr inbounds nuw i8, ptr %i.e, i64 2174
  tail call fastcc void @construct_vector(ptr noundef nonnull %i.cdp, ptr noundef nonnull readonly %i.cdq, ptr noundef nonnull readonly %i.cdr, ptr noundef nonnull %i.cds, i16 noundef signext 85, i16 noundef signext %i.bqy)
  br label %reverse_memcpy.exit119.i

bb.ak:                                            ; preds = %state_construct.exit.i
  %i.cdt = icmp sgt i32 %i.brx, 0
  br i1 %i.cdt, label %.lr.ph.i112.preheader.i, label %reverse_memcpy.exit.i

.lr.ph.i112.preheader.i:                          ; preds = %bb.ak
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.e, i64 2342 ; 2 uses
  %xtraiter314 = and i32 %i.bqw, 7                ; 4 uses
  %i.cdv = icmp ult i32 %i.brx, 8
  br i1 %i.cdv, label %.lr.ph.i112.i.epil.preheader, label %.lr.ph.i112.preheader.i.new

.lr.ph.i112.preheader.i.new:                      ; preds = %.lr.ph.i112.preheader.i
  %unroll_iter317 = sub nuw nsw i32 %i.brx, %xtraiter314
  br label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %.lr.ph.i112.i, %.lr.ph.i112.preheader.i.new
  %.069.i.i = phi ptr [ %i.brk, %.lr.ph.i112.preheader.i.new ], [ %i.cer, %.lr.ph.i112.i ] ; 9 uses
  %.078.i.i = phi ptr [ %i.cdu, %.lr.ph.i112.preheader.i.new ], [ %i.cet, %.lr.ph.i112.i ] ; 9 uses
  %niter318 = phi i32 [ 0, %.lr.ph.i112.preheader.i.new ], [ %niter318.next.7, %.lr.ph.i112.i ]
  %i.cdw = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 2
  %i.cdx = load i16, ptr %.069.i.i, align 2, !tbaa !39
  %i.cdy = getelementptr inbounds i8, ptr %.078.i.i, i64 -2
  store i16 %i.cdx, ptr %.078.i.i, align 2, !tbaa !39
  %i.cdz = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 4
  %i.cea = load i16, ptr %i.cdw, align 2, !tbaa !39
  %i.ceb = getelementptr inbounds i8, ptr %.078.i.i, i64 -4
  store i16 %i.cea, ptr %i.cdy, align 2, !tbaa !39
  %i.cec = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 6
  %i.ced = load i16, ptr %i.cdz, align 2, !tbaa !39
  %i.cee = getelementptr inbounds i8, ptr %.078.i.i, i64 -6
  store i16 %i.ced, ptr %i.ceb, align 2, !tbaa !39
  %i.cef = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 8
  %i.ceg = load i16, ptr %i.cec, align 2, !tbaa !39
  %i.ceh = getelementptr inbounds i8, ptr %.078.i.i, i64 -8
  store i16 %i.ceg, ptr %i.cee, align 2, !tbaa !39
  %i.cei = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 10
  %i.cej = load i16, ptr %i.cef, align 2, !tbaa !39
  %i.cek = getelementptr inbounds i8, ptr %.078.i.i, i64 -10
  store i16 %i.cej, ptr %i.ceh, align 2, !tbaa !39
  %i.cel = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 12
  %i.cem = load i16, ptr %i.cei, align 2, !tbaa !39
  %i.cen = getelementptr inbounds i8, ptr %.078.i.i, i64 -12
  store i16 %i.cem, ptr %i.cek, align 2, !tbaa !39
  %i.ceo = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 14
  %i.cep = load i16, ptr %i.cel, align 2, !tbaa !39
  %i.ceq = getelementptr inbounds i8, ptr %.078.i.i, i64 -14
  store i16 %i.cep, ptr %i.cen, align 2, !tbaa !39
  %i.cer = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 16 ; 2 uses
  %i.ces = load i16, ptr %i.ceo, align 2, !tbaa !39
  %i.cet = getelementptr inbounds i8, ptr %.078.i.i, i64 -16 ; 2 uses
  store i16 %i.ces, ptr %i.ceq, align 2, !tbaa !39
  %niter318.next.7 = add i32 %niter318, 8         ; 2 uses
  %niter318.ncmp.7 = icmp eq i32 %niter318.next.7, %unroll_iter317
  br i1 %niter318.ncmp.7, label %reverse_memcpy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i112.i, !llvm.loop !63

reverse_memcpy.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i112.i
  %lcmp.mod315.not = icmp eq i32 %xtraiter314, 0
  br i1 %lcmp.mod315.not, label %reverse_memcpy.exit.i, label %.lr.ph.i112.i.epil.preheader

.lr.ph.i112.i.epil.preheader:                     ; preds = %reverse_memcpy.exit.i.loopexit.unr-lcssa, %.lr.ph.i112.preheader.i
  %.069.i.i.epil.init = phi ptr [ %i.brk, %.lr.ph.i112.preheader.i ], [ %i.cer, %reverse_memcpy.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.epil.init = phi ptr [ %i.cdu, %.lr.ph.i112.preheader.i ], [ %i.cet, %reverse_memcpy.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod316 = icmp ne i32 %xtraiter314, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph.i112.i.epil

.lr.ph.i112.i.epil:                               ; preds = %.lr.ph.i112.i.epil, %.lr.ph.i112.i.epil.preheader
  %.069.i.i.epil = phi ptr [ %i.ceu, %.lr.ph.i112.i.epil ], [ %.069.i.i.epil.init, %.lr.ph.i112.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi ptr [ %i.cew, %.lr.ph.i112.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i112.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i112.i.epil ], [ 0, %.lr.ph.i112.i.epil.preheader ]
  %i.ceu = getelementptr inbounds nuw i8, ptr %.069.i.i.epil, i64 2
  %i.cev = load i16, ptr %.069.i.i.epil, align 2, !tbaa !39
  %i.cew = getelementptr inbounds i8, ptr %.078.i.i.epil, i64 -2
  store i16 %i.cev, ptr %.078.i.i.epil, align 2, !tbaa !39
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter314
  br i1 %epil.iter.cmp.not, label %reverse_memcpy.exit.i, label %.lr.ph.i112.i.epil, !llvm.loop !64

reverse_memcpy.exit.i:                            ; preds = %reverse_memcpy.exit.i.loopexit.unr-lcssa, %.lr.ph.i112.i.epil, %bb.ak
  %sext108.i = sub i32 9633792, %sext132.i
  %i.cex = ashr exact i32 %sext108.i, 15
  %i.cey = sext i32 %i.cex to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bqu, i8 0, i64 %i.cey, i1 false)
  %i.cez = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.e, i64 2174
  tail call fastcc void @construct_vector(ptr noundef nonnull %i.bqt, ptr noundef nonnull readonly %i.cez, ptr noundef nonnull readonly %i.cfa, ptr noundef nonnull %i.cfb, i16 noundef signext 85, i16 noundef signext %i.bqy)
  %i.cfc = zext i16 %i.bqy to i32                 ; 2 uses
  %i.cfd = icmp sgt i16 %i.bqy, 0
  br i1 %i.cfd, label %.lr.ph.i114.i.preheader, label %reverse_memcpy.exit119.i

.lr.ph.i114.i.preheader:                          ; preds = %reverse_memcpy.exit.i
  %xtraiter319 = and i32 %i.cfc, 7                ; 3 uses
  %i.cfe = icmp ult i16 %i.bqy, 8
  br i1 %i.cfe, label %.lr.ph.i114.i.epil.preheader, label %.lr.ph.i114.i.preheader.new

.lr.ph.i114.i.preheader.new:                      ; preds = %.lr.ph.i114.i.preheader
  %unroll_iter323 = and i32 %i.cfc, 32760
  br label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i, %.lr.ph.i114.i.preheader.new
  %.069.i116.i = phi ptr [ %i.bqt, %.lr.ph.i114.i.preheader.new ], [ %i.cft, %.lr.ph.i114.i ] ; 9 uses
  %.078.i117.pn.i = phi ptr [ %i.brk, %.lr.ph.i114.i.preheader.new ], [ %.078.i117.i.7, %.lr.ph.i114.i ] ; 8 uses
  %niter324 = phi i32 [ 0, %.lr.ph.i114.i.preheader.new ], [ %niter324.next.7, %.lr.ph.i114.i ]
  %.078.i117.i = getelementptr i8, ptr %.078.i117.pn.i, i64 -2
  %i.cff = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 2
  %i.cfg = load i16, ptr %.069.i116.i, align 2, !tbaa !39
  store i16 %i.cfg, ptr %.078.i117.i, align 2, !tbaa !39
  %.078.i117.i.1 = getelementptr i8, ptr %.078.i117.pn.i, i64 -4
  %i.cfh = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 4
  %i.cfi = load i16, ptr %i.cff, align 2, !tbaa !39
  store i16 %i.cfi, ptr %.078.i117.i.1, align 2, !tbaa !39
  %.078.i117.i.2 = getelementptr i8, ptr %.078.i117.pn.i, i64 -6
  %i.cfj = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 6
  %i.cfk = load i16, ptr %i.cfh, align 2, !tbaa !39
  store i16 %i.cfk, ptr %.078.i117.i.2, align 2, !tbaa !39
  %.078.i117.i.3 = getelementptr i8, ptr %.078.i117.pn.i, i64 -8
  %i.cfl = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 8
  %i.cfm = load i16, ptr %i.cfj, align 2, !tbaa !39
  store i16 %i.cfm, ptr %.078.i117.i.3, align 2, !tbaa !39
  %.078.i117.i.4 = getelementptr i8, ptr %.078.i117.pn.i, i64 -10
  %i.cfn = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 10
  %i.cfo = load i16, ptr %i.cfl, align 2, !tbaa !39
  store i16 %i.cfo, ptr %.078.i117.i.4, align 2, !tbaa !39
  %.078.i117.i.5 = getelementptr i8, ptr %.078.i117.pn.i, i64 -12
  %i.cfp = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 12
  %i.cfq = load i16, ptr %i.cfn, align 2, !tbaa !39
  store i16 %i.cfq, ptr %.078.i117.i.5, align 2, !tbaa !39
  %.078.i117.i.6 = getelementptr i8, ptr %.078.i117.pn.i, i64 -14
  %i.cfr = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 14
  %i.cfs = load i16, ptr %i.cfp, align 2, !tbaa !39
  store i16 %i.cfs, ptr %.078.i117.i.6, align 2, !tbaa !39
  %.078.i117.i.7 = getelementptr i8, ptr %.078.i117.pn.i, i64 -16 ; 3 uses
  %i.cft = getelementptr inbounds nuw i8, ptr %.069.i116.i, i64 16 ; 2 uses
  %i.cfu = load i16, ptr %i.cfr, align 2, !tbaa !39
  store i16 %i.cfu, ptr %.078.i117.i.7, align 2, !tbaa !39
  %niter324.next.7 = add i32 %niter324, 8         ; 2 uses
  %niter324.ncmp.7 = icmp eq i32 %niter324.next.7, %unroll_iter323
  br i1 %niter324.ncmp.7, label %reverse_memcpy.exit119.i.loopexit.unr-lcssa, label %.lr.ph.i114.i, !llvm.loop !63

reverse_memcpy.exit119.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i114.i
  %lcmp.mod321.not = icmp eq i32 %xtraiter319, 0
  br i1 %lcmp.mod321.not, label %reverse_memcpy.exit119.i, label %.lr.ph.i114.i.epil.preheader

.lr.ph.i114.i.epil.preheader:                     ; preds = %reverse_memcpy.exit119.i.loopexit.unr-lcssa, %.lr.ph.i114.i.preheader
  %.069.i116.i.epil.init = phi ptr [ %i.bqt, %.lr.ph.i114.i.preheader ], [ %i.cft, %reverse_memcpy.exit119.i.loopexit.unr-lcssa ]
  %.078.i117.pn.i.epil.init = phi ptr [ %i.brk, %.lr.ph.i114.i.preheader ], [ %.078.i117.i.7, %reverse_memcpy.exit119.i.loopexit.unr-lcssa ]
  %lcmp.mod322 = icmp ne i32 %xtraiter319, 0
  tail call void @llvm.assume(i1 %lcmp.mod322)
  br label %.lr.ph.i114.i.epil

.lr.ph.i114.i.epil:                               ; preds = %.lr.ph.i114.i.epil, %.lr.ph.i114.i.epil.preheader
  %.069.i116.i.epil = phi ptr [ %i.cfv, %.lr.ph.i114.i.epil ], [ %.069.i116.i.epil.init, %.lr.ph.i114.i.epil.preheader ] ; 2 uses
  %.078.i117.pn.i.epil = phi ptr [ %.078.i117.i.epil, %.lr.ph.i114.i.epil ], [ %.078.i117.pn.i.epil.init, %.lr.ph.i114.i.epil.preheader ]
  %epil.iter320 = phi i32 [ %epil.iter320.next, %.lr.ph.i114.i.epil ], [ 0, %.lr.ph.i114.i.epil.preheader ]
  %.078.i117.i.epil = getelementptr i8, ptr %.078.i117.pn.i.epil, i64 -2 ; 2 uses
  %i.cfv = getelementptr inbounds nuw i8, ptr %.069.i116.i.epil, i64 2
  %i.cfw = load i16, ptr %.069.i116.i.epil, align 2, !tbaa !39
  store i16 %i.cfw, ptr %.078.i117.i.epil, align 2, !tbaa !39
  %epil.iter320.next = add i32 %epil.iter320, 1   ; 2 uses
  %epil.iter320.cmp.not = icmp eq i32 %epil.iter320.next, %xtraiter319
  br i1 %epil.iter320.cmp.not, label %reverse_memcpy.exit119.i, label %.lr.ph.i114.i.epil, !llvm.loop !65

reverse_memcpy.exit119.i:                         ; preds = %reverse_memcpy.exit119.i.loopexit.unr-lcssa, %.lr.ph.i114.i.epil, %reverse_memcpy.exit.i, %bb.aj
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.e, i64 234 ; 3 uses
  %i.cfy = load i16, ptr %i.cfx, align 2, !tbaa !36 ; 2 uses
  %i.cfz = load i16, ptr %i.bcb, align 2, !tbaa !74 ; 5 uses
  %i.cga = xor i16 %i.cfz, -1
  %i.cgb = add i16 %i.cfy, %i.cga                 ; 2 uses
  %i.cgc = icmp sgt i16 %i.cgb, 0
  br i1 %i.cgc, label %bb.al, label %reverse_memcpy.exit119.i..loopexit.i_crit_edge

reverse_memcpy.exit119.i..loopexit.i_crit_edge:   ; preds = %reverse_memcpy.exit119.i
  %.pre202 = sext i16 %i.cfz to i32
  br label %.loopexit.i

bb.al:                                            ; preds = %reverse_memcpy.exit119.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(134) %i.bqu, i8 0, i64 134, i1 false)
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.e, i64 2184
  %i.cge = sext i16 %i.cfz to i64
  %.idx110.i = mul nsw i64 %i.cge, 80
  %i.cgf = getelementptr i8, ptr %i.bqs, i64 %.idx110.i
  %i.cgg = getelementptr i8, ptr %i.cgf, i64 -80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.cgd, ptr noundef nonnull align 2 dereferenceable(160) %i.cgg, i64 160, i1 false)
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.e, i64 2130
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.e, i64 2264
  %wide.trip.count.i109 = zext nneg i16 %i.cgb to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %i.cgl = phi i16 [ %i.cfz, %bb.al ], [ %i.cgv, %bb.am ]
  %indvars.iv151.i = phi i64 [ 1, %bb.al ], [ %indvars.iv.next152.i, %bb.am ] ; 2 uses
  %indvars.iv.i110 = phi i32 [ 0, %bb.al ], [ %i.cgn, %bb.am ]
  %i.cgm = sext i16 %i.cgl to i32
  %i.cgn = add nuw nsw i32 %indvars.iv.i110, 1    ; 4 uses
  %i.cgo = add nsw i32 %i.cgn, %i.cgm
  %i.cgp = mul nsw i32 %i.cgo, 40
  %i.cgq = sext i32 %i.cgp to i64
  %i.cgr = getelementptr inbounds [2 x i8], ptr %i.bqs, i64 %i.cgq
  %i.cgs = mul nuw nsw i64 %indvars.iv151.i, 3    ; 2 uses
  %i.cgt = getelementptr inbounds nuw [2 x i8], ptr %i.cgh, i64 %i.cgs
  %i.cgu = getelementptr inbounds nuw [2 x i8], ptr %i.cgi, i64 %i.cgs
  tail call fastcc void @construct_vector(ptr noundef nonnull %i.cgr, ptr noundef nonnull readonly %i.cgt, ptr noundef nonnull readonly %i.cgu, ptr noundef nonnull %i.bqu, i16 noundef signext 147, i16 noundef signext 40)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(214) %i.bqu, ptr noundef nonnull align 2 dereferenceable(214) %i.cgj, i64 214, i1 false)
  %i.cgv = load i16, ptr %i.bcb, align 2, !tbaa !74 ; 3 uses
  %i.cgw = sext i16 %i.cgv to i32                 ; 2 uses
  %i.cgx = add nsw i32 %i.cgn, %i.cgw
  %i.cgy = mul nsw i32 %i.cgx, 40
  %i.cgz = sext i32 %i.cgy to i64
  %i.cha = getelementptr inbounds [2 x i8], ptr %i.bqs, i64 %i.cgz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cgk, ptr noundef nonnull align 2 dereferenceable(80) %i.cha, i64 80, i1 false)
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %exitcond.not.i111 = icmp eq i32 %i.cgn, %wide.trip.count.i109
  br i1 %exitcond.not.i111, label %.loopexit.loopexit.i, label %bb.am, !llvm.loop !66

.loopexit.loopexit.i:                             ; preds = %bb.am
  %i.chb = trunc nuw i64 %indvars.iv.next152.i to i16
  %.pre179.pre = load i16, ptr %i.cfx, align 2, !tbaa !36
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %reverse_memcpy.exit119.i..loopexit.i_crit_edge, %.loopexit.loopexit.i
  %.pre-phi203 = phi i32 [ %.pre202, %reverse_memcpy.exit119.i..loopexit.i_crit_edge ], [ %i.cgw, %.loopexit.loopexit.i ]
  %.pre179 = phi i16 [ %i.cfy, %reverse_memcpy.exit119.i..loopexit.i_crit_edge ], [ %.pre179.pre, %.loopexit.loopexit.i ] ; 2 uses
  %i.chc = phi i16 [ %i.cfz, %reverse_memcpy.exit119.i..loopexit.i_crit_edge ], [ %i.cgv, %.loopexit.loopexit.i ]
  %.1102.i = phi i16 [ 1, %reverse_memcpy.exit119.i..loopexit.i_crit_edge ], [ %i.chb, %.loopexit.loopexit.i ]
  %i.chd = add nsw i32 %.pre-phi203, -1           ; 2 uses
  %sext111.i = shl i32 %i.chd, 16
  %i.che = ashr exact i32 %sext111.i, 16          ; 3 uses
  %i.chf = icmp sgt i32 %i.che, 0
  br i1 %i.chf, label %bb.an, label %decode_residual.exit

bb.an:                                            ; preds = %.loopexit.i
  %reass.sub148.i = sub i16 %.pre179, %i.chc
  %i.chg = mul i16 %reass.sub148.i, 40
  %i.chh = add i16 %i.chg, 40                     ; 3 uses
  %spec.store.select.i = tail call i16 @llvm.smin.i16(i16 %i.chh, i16 147) ; 4 uses
  %i.chi = sext i16 %spec.store.select.i to i32   ; 2 uses
  %i.chj = icmp sgt i16 %i.chh, 0
  br i1 %i.chj, label %.lr.ph.i120.preheader.i, label %.lr.ph.i107

.lr.ph.i120.preheader.i:                          ; preds = %bb.an
  %i.chk = mul nsw i32 %i.chd, 40
  %i.chl = sext i32 %i.chk to i64
  %i.chm = getelementptr inbounds [2 x i8], ptr %i.bqs, i64 %i.chl ; 2 uses
  %i.chn = getelementptr inbounds nuw i8, ptr %i.e, i64 2342 ; 2 uses
  %xtraiter325 = and i32 %i.chi, 3
  %i.cho = icmp slt i16 %i.chh, 8
  br i1 %i.cho, label %.lr.ph.i120.i.epil.preheader, label %.lr.ph.i120.preheader.i.new

.lr.ph.i120.preheader.i.new:                      ; preds = %.lr.ph.i120.preheader.i
  %unroll_iter329 = and i32 %i.chi, 248
  br label %.lr.ph.i120.i

.lr.ph.i120.i:                                    ; preds = %.lr.ph.i120.i, %.lr.ph.i120.preheader.i.new
  %.069.i122.i = phi ptr [ %i.chm, %.lr.ph.i120.preheader.i.new ], [ %i.cik, %.lr.ph.i120.i ] ; 9 uses
  %.078.i123.i = phi ptr [ %i.chn, %.lr.ph.i120.preheader.i.new ], [ %i.cim, %.lr.ph.i120.i ] ; 9 uses
  %niter330 = phi i32 [ 0, %.lr.ph.i120.preheader.i.new ], [ %niter330.next.7, %.lr.ph.i120.i ]
  %i.chp = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 2
  %i.chq = load i16, ptr %.069.i122.i, align 2, !tbaa !39
  %i.chr = getelementptr inbounds i8, ptr %.078.i123.i, i64 -2
  store i16 %i.chq, ptr %.078.i123.i, align 2, !tbaa !39
  %i.chs = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 4
  %i.cht = load i16, ptr %i.chp, align 2, !tbaa !39
  %i.chu = getelementptr inbounds i8, ptr %.078.i123.i, i64 -4
  store i16 %i.cht, ptr %i.chr, align 2, !tbaa !39
  %i.chv = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 6
  %i.chw = load i16, ptr %i.chs, align 2, !tbaa !39
  %i.chx = getelementptr inbounds i8, ptr %.078.i123.i, i64 -6
  store i16 %i.chw, ptr %i.chu, align 2, !tbaa !39
  %i.chy = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 8
  %i.chz = load i16, ptr %i.chv, align 2, !tbaa !39
  %i.cia = getelementptr inbounds i8, ptr %.078.i123.i, i64 -8
  store i16 %i.chz, ptr %i.chx, align 2, !tbaa !39
  %i.cib = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 10
  %i.cic = load i16, ptr %i.chy, align 2, !tbaa !39
  %i.cid = getelementptr inbounds i8, ptr %.078.i123.i, i64 -10
  store i16 %i.cic, ptr %i.cia, align 2, !tbaa !39
  %i.cie = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 12
  %i.cif = load i16, ptr %i.cib, align 2, !tbaa !39
  %i.cig = getelementptr inbounds i8, ptr %.078.i123.i, i64 -12
  store i16 %i.cif, ptr %i.cid, align 2, !tbaa !39
  %i.cih = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 14
  %i.cii = load i16, ptr %i.cie, align 2, !tbaa !39
  %i.cij = getelementptr inbounds i8, ptr %.078.i123.i, i64 -14
  store i16 %i.cii, ptr %i.cig, align 2, !tbaa !39
  %i.cik = getelementptr inbounds nuw i8, ptr %.069.i122.i, i64 16 ; 2 uses
  %i.cil = load i16, ptr %i.cih, align 2, !tbaa !39
  %i.cim = getelementptr inbounds i8, ptr %.078.i123.i, i64 -16 ; 2 uses
  store i16 %i.cil, ptr %i.cij, align 2, !tbaa !39
  %niter330.next.7 = add nuw nsw i32 %niter330, 8 ; 2 uses
  %niter330.ncmp.7 = icmp eq i32 %niter330.next.7, %unroll_iter329
  br i1 %niter330.ncmp.7, label %.lr.ph.i107.loopexit.unr-lcssa, label %.lr.ph.i120.i, !llvm.loop !63

.lr.ph.i107.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i120.i
  %i.cin = and i16 %spec.store.select.i, 3
  %lcmp.mod327.not = icmp eq i16 %i.cin, 0
  br i1 %lcmp.mod327.not, label %.lr.ph.i107, label %.lr.ph.i120.i.epil.preheader

.lr.ph.i120.i.epil.preheader:                     ; preds = %.lr.ph.i107.loopexit.unr-lcssa, %.lr.ph.i120.preheader.i
  %.069.i122.i.epil.init = phi ptr [ %i.chm, %.lr.ph.i120.preheader.i ], [ %i.cik, %.lr.ph.i107.loopexit.unr-lcssa ]
  %.078.i123.i.epil.init = phi ptr [ %i.chn, %.lr.ph.i120.preheader.i ], [ %i.cim, %.lr.ph.i107.loopexit.unr-lcssa ]
  %i.cio = and i16 %spec.store.select.i, 3
  %lcmp.mod328 = icmp ne i16 %i.cio, 0
  tail call void @llvm.assume(i1 %lcmp.mod328)
  br label %.lr.ph.i120.i.epil

.lr.ph.i120.i.epil:                               ; preds = %.lr.ph.i120.i.epil, %.lr.ph.i120.i.epil.preheader
  %.069.i122.i.epil = phi ptr [ %i.cip, %.lr.ph.i120.i.epil ], [ %.069.i122.i.epil.init, %.lr.ph.i120.i.epil.preheader ] ; 2 uses
  %.078.i123.i.epil = phi ptr [ %i.cir, %.lr.ph.i120.i.epil ], [ %.078.i123.i.epil.init, %.lr.ph.i120.i.epil.preheader ] ; 2 uses
  %epil.iter326 = phi i32 [ %epil.iter326.next, %.lr.ph.i120.i.epil ], [ 0, %.lr.ph.i120.i.epil.preheader ]
  %i.cip = getelementptr inbounds nuw i8, ptr %.069.i122.i.epil, i64 2
  %i.ciq = load i16, ptr %.069.i122.i.epil, align 2, !tbaa !39
  %i.cir = getelementptr inbounds i8, ptr %.078.i123.i.epil, i64 -2
  store i16 %i.ciq, ptr %.078.i123.i.epil, align 2, !tbaa !39
  %epil.iter326.next = add i32 %epil.iter326, 1   ; 2 uses
  %epil.iter326.cmp.not = icmp eq i32 %epil.iter326.next, %xtraiter325
  br i1 %epil.iter326.cmp.not, label %.lr.ph.i107, label %.lr.ph.i120.i.epil, !llvm.loop !67

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.loopexit.unr-lcssa, %.lr.ph.i120.i.epil, %bb.an
  %i.cis = sub i16 147, %spec.store.select.i
  %i.cit = sext i16 %i.cis to i32
  %i.ciu = shl nsw i32 %i.cit, 1
  %i.civ = sext i32 %i.ciu to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bqu, i8 0, i64 %i.civ, i1 false)
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cix = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.e, i64 2130
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.e, i64 2264
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i107
  %i.cja = phi i32 [ 0, %.lr.ph.i107 ], [ %i.cjk, %bb.ao ]
  %.1147.i = phi i16 [ 0, %.lr.ph.i107 ], [ %i.cjj, %bb.ao ]
  %.2146.i = phi i16 [ %.1102.i, %.lr.ph.i107 ], [ %i.cji, %bb.ao ] ; 2 uses
  %i.cjb = mul nsw i32 %i.cja, 40
  %i.cjc = sext i32 %i.cjb to i64
  %i.cjd = getelementptr inbounds [2 x i8], ptr %i.bqt, i64 %i.cjc ; 2 uses
  %i.cje = sext i16 %.2146.i to i64
  %i.cjf = mul nsw i64 %i.cje, 3                  ; 2 uses
  %i.cjg = getelementptr inbounds [2 x i8], ptr %i.ciw, i64 %i.cjf
  %i.cjh = getelementptr inbounds [2 x i8], ptr %i.cix, i64 %i.cjf
  tail call fastcc void @construct_vector(ptr noundef nonnull %i.cjd, ptr noundef nonnull readonly %i.cjg, ptr noundef nonnull readonly %i.cjh, ptr noundef nonnull %i.bqu, i16 noundef signext 147, i16 noundef signext 40)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(214) %i.bqu, ptr noundef nonnull align 2 dereferenceable(214) %i.ciy, i64 214, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ciz, ptr noundef nonnull align 2 dereferenceable(80) %i.cjd, i64 80, i1 false)
  %i.cji = add i16 %.2146.i, 1
  %i.cjj = add i16 %.1147.i, 1                    ; 2 uses
  %i.cjk = sext i16 %i.cjj to i32                 ; 2 uses
  %i.cjl = icmp sgt i32 %i.che, %i.cjk
  br i1 %i.cjl, label %bb.ao, label %._crit_edge.i108, !llvm.loop !68

._crit_edge.i108:                                 ; preds = %bb.ao
  %i.cjm = mul nuw nsw i32 %i.che, 40             ; 2 uses
  %i.cjn = zext nneg i32 %i.cjm to i64
  %i.cjo = getelementptr inbounds nuw [2 x i8], ptr %i.bqs, i64 %i.cjn
  br label %.lr.ph.i126.i

.lr.ph.i126.i:                                    ; preds = %.lr.ph.i126.i, %._crit_edge.i108
  %.010.i127.i = phi i32 [ 0, %._crit_edge.i108 ], [ %i.ckf, %.lr.ph.i126.i ]
  %.069.i128.i = phi ptr [ %i.bqt, %._crit_edge.i108 ], [ %i.ckd, %.lr.ph.i126.i ] ; 9 uses
  %.078.i129.pn.i = phi ptr [ %i.cjo, %._crit_edge.i108 ], [ %.078.i129.i.7, %.lr.ph.i126.i ] ; 8 uses
  %.078.i129.i = getelementptr inbounds i8, ptr %.078.i129.pn.i, i64 -2
  %i.cjp = getelementptr inbounds nuw i8, ptr %.069.i128.i, i64 2
  %i.cjq = load i16, ptr %.069.i128.i, align 2, !tbaa !39
  store i16 %i.cjq, ptr %.078.i129.i, align 2, !tbaa !39
  %.078.i129.i.1 = getelementptr inbounds i8, ptr %.078.i129.pn.i, i64 -4
  %i.cjr = getelementptr inbounds nuw i8, ptr %.069.i128.i, i64 4
  %i.cjs = load i16, ptr %i.cjp, align 2, !tbaa !39
  store i16 %i.cjs, ptr %.078.i129.i.1, align 2, !tbaa !39
  %.078.i129.i.2 = getelementptr inbounds i8, ptr %.078.i129.pn.i, i64 -6
  %i.cjt = getelementptr inbounds nuw i8, ptr %.069.i128.i, i64 6
  %i.cju = load i16, ptr %i.cjr, align 2, !tbaa !39
  store i16 %i.cju, ptr %.078.i129.i.2, align 2, !tbaa !39
  %.078.i129.i.3 = getelementptr inbounds i8, ptr %.078.i129.pn.i, i64 -8
  %i.cjv = getelementptr inbounds nuw i8, ptr %.069.i128.i, i64 8
  %i.cjw = load i16, ptr %i.cjt, align 2, !tbaa !39
  store i16 %i.cjw, ptr %.078.i129.i.3, align 2, !tbaa !39
  %.078.i129.i.4 = getelementptr inbounds i8, ptr %.078.i129.pn.i, i64 -10
  %i.cjx = getelementptr inbounds nuw i8, ptr %.069.i128.i, i64 10
  %i.cjy = load i16, ptr %i.cjv, align 2, !tbaa !39
  store i16 %i.cjy, ptr %.078.i129.i.4, align 2, !tbaa !39
  %.078.i129.i.5 = getelementptr inbounds i8, ptr %.078.i129.pn.i, i64 -12
  %i.cjz = getelementptr inbounds nuw i8, ptr %.069.i128.i, i64 12
  %i.cka = load i16, ptr %i.cjx, align 2, !tbaa !39
  store i16 %i.cka, ptr %.078.i129.i.5, align 2, !tbaa !39
  %.078.i129.i.6 = getelementptr inbounds i8, ptr %.078.i129.pn.i, i64 -14
  %i.ckb = getelementptr inbounds nuw i8, ptr %.069.i128.i, i64 14
  %i.ckc = load i16, ptr %i.cjz, align 2, !tbaa !39
  store i16 %i.ckc, ptr %.078.i129.i.6, align 2, !tbaa !39
  %.078.i129.i.7 = getelementptr inbounds i8, ptr %.078.i129.pn.i, i64 -16 ; 2 uses
  %i.ckd = getelementptr inbounds nuw i8, ptr %.069.i128.i, i64 16
  %i.cke = load i16, ptr %i.ckb, align 2, !tbaa !39
  store i16 %i.cke, ptr %.078.i129.i.7, align 2, !tbaa !39
  %i.ckf = add nuw nsw i32 %.010.i127.i, 8        ; 2 uses
  %exitcond.not.i130.i.7 = icmp eq i32 %i.ckf, %i.cjm
  br i1 %exitcond.not.i130.i.7, label %decode_residual.exit.loopexit, label %.lr.ph.i126.i, !llvm.loop !63

decode_residual.exit.loopexit:                    ; preds = %.lr.ph.i126.i
  %.pre = load i16, ptr %i.cfx, align 2, !tbaa !36
  br label %decode_residual.exit

decode_residual.exit:                             ; preds = %decode_residual.exit.loopexit, %.loopexit.i
  %i.ckg = phi i16 [ %.pre, %decode_residual.exit.loopexit ], [ %.pre179, %.loopexit.i ]
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.e, i64 3534 ; 2 uses
  %i.cki = sext i16 %i.ckg to i64
  %.idx = mul nsw i64 %i.cki, 22
  %i.ckj = getelementptr i8, ptr %i.bjm, i64 %.idx
  %i.ckk = getelementptr i8, ptr %i.ckj, i64 -22
  %i.ckl = load i32, ptr %i.bbs, align 4, !tbaa !35
  %i.ckm = shl nsw i32 %i.ckl, 1
  %i.ckn = sext i32 %i.ckm to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.h, ptr nonnull readonly align 2 %i.bqs, i64 %i.ckn, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.ckh, ptr noundef nonnull readonly align 2 dereferenceable(22) %i.ckk, i64 22, i1 false)
  %i.cko = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store i32 0, ptr %i.cko, align 8, !tbaa !83
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.e, i64 3504
  store i16 0, ptr %i.ckp, align 8, !tbaa !84
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.e, i64 3512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.ckq, ptr noundef nonnull align 2 dereferenceable(22) %i.ckh, i64 22, i1 false)
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.e, i64 2042
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ckr, ptr nonnull align 2 %i.h, i64 %i.ckn, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bqs, ptr nonnull align 2 %i.h, i64 %i.ckn, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %decode_residual.exit, %bb.m
  %i.cks = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ckt = load i32, ptr %i.cks, align 8, !tbaa !85
  %.not95 = icmp eq i32 %i.ckt, 0
  br i1 %.not95, label %bb.aq, label %._crit_edge180

._crit_edge180:                                   ; preds = %bb.ap
  %.pre181 = load i32, ptr %i.bbs, align 4, !tbaa !35
  %.pre183 = shl nsw i32 %.pre181, 1
  %.pre184 = sext i32 %.pre183 to i64
  br label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.cku = load i32, ptr %i.f, align 4, !tbaa !32
  %i.ckv = icmp eq i32 %i.cku, 20
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.e, i64 2522
  %i.ckx = load i32, ptr %i.bbs, align 4, !tbaa !35 ; 3 uses
  %i.cky = sext i32 %i.ckx to i64
  %i.ckz = getelementptr [2 x i8], ptr %i.ckw, i64 %i.cky ; 4 uses
  br i1 %i.ckv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cla = getelementptr i8, ptr %i.ckz, i64 -120
  %i.clb = getelementptr i8, ptr %i.ckz, i64 -160
  %i.clc = tail call fastcc i32 @xcorr_coeff(ptr noundef %i.cla, ptr noundef %i.clb, i16 noundef signext 60, i16 noundef signext 80)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.cld = getelementptr i8, ptr %i.ckz, i64 -160
  %i.cle = getelementptr i8, ptr %i.ckz, i64 -200
  %i.clf = tail call fastcc i32 @xcorr_coeff(ptr noundef nonnull %i.cld, ptr noundef %i.cle, i16 noundef signext 80, i16 noundef signext 100)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.086.in = phi i32 [ %i.clc, %bb.ar ], [ %i.clf, %bb.as ]
  %sext = shl i32 %.086.in, 16
  %i.clg = ashr exact i32 %sext, 16
  %i.clh = getelementptr inbounds nuw i8, ptr %i.e, i64 220
  store i32 %i.clg, ptr %i.clh, align 4, !tbaa !86
  %i.cli = getelementptr inbounds nuw i8, ptr %i.e, i64 2522
  %i.clj = shl nsw i32 %i.ckx, 1
  %i.clk = sext i32 %i.clj to i64                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.i, ptr nonnull align 2 %i.cli, i64 %i.clk, i1 false)
  %i.cll = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.h, ptr noundef nonnull align 8 dereferenceable(20) %i.cll, i64 20, i1 false)
  %i.clm = getelementptr inbounds nuw i8, ptr %i.e, i64 234 ; 2 uses
  %i.cln = load i16, ptr %i.clm, align 2, !tbaa !36
  %i.clo = icmp sgt i16 %i.cln, 0
  br i1 %i.clo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.at
  %i.clp = getelementptr inbounds nuw i8, ptr %i.e, i64 476
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %filter_arfq12.exit
  %indvars.iv176 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next177, %filter_arfq12.exit ] ; 4 uses
  %i.clq = mul nuw nsw i64 %indvars.iv176, 80
  %i.clr = getelementptr i8, ptr %i.e, i64 %i.clq
  %scevgep = getelementptr i8, ptr %i.clr, i64 3020
  %.idx212 = mul nuw nsw i64 %indvars.iv176, 80
  %i.cls = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx212
  %.idx213 = mul nuw nsw i64 %indvars.iv176, 22
  %i.clt = getelementptr inbounds nuw i8, ptr %i.clp, i64 %.idx213 ; 4 uses
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clt, i64 6
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clt, i64 4
  %i.clw = getelementptr inbounds nuw i8, ptr %i.clt, i64 2
  %load_initial = load i16, ptr %scevgep, align 2
  br label %.preheader.i113

.preheader.i113:                                  ; preds = %.preheader.i113, %bb.au
  %store_forwarded = phi i16 [ %load_initial, %bb.au ], [ %i.cmx, %.preheader.i113 ]
  %indvars.iv.i114 = phi i64 [ 0, %bb.au ], [ %indvars.iv.next.i115, %.preheader.i113 ] ; 2 uses
  %i.clx = getelementptr [2 x i8], ptr %i.cls, i64 %indvars.iv.i114 ; 4 uses
  %i.cly = getelementptr i8, ptr %i.clx, i64 -20
  %i.clz = load i16, ptr %i.clv, align 2, !tbaa !39
  %i.cma = sext i16 %i.clz to i32
  %i.cmb = getelementptr i8, ptr %i.clx, i64 -4
  %i.cmc = load i16, ptr %i.cmb, align 2, !tbaa !39
  %i.cmd = sext i16 %i.cmc to i32
  %i.cme = load i16, ptr %i.clw, align 2, !tbaa !39
  %i.cmf = sext i16 %i.cme to i32
  %i.cmg = sext i16 %store_forwarded to i32
  %i.cmh = load i16, ptr %i.clt, align 2, !tbaa !39
  %i.cmi = sext i16 %i.cmh to i32
  %i.cmj = load i16, ptr %i.clx, align 2, !tbaa !39
  %i.cmk = sext i16 %i.cmj to i32
  %i.cml = mul nsw i32 %i.cmk, %i.cmi
  %i.cmm = load <8 x i16>, ptr %i.clu, align 2, !tbaa !39
  %i.cmn = shufflevector <8 x i16> %i.cmm, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cmo = sext <8 x i16> %i.cmn to <8 x i32>
  %i.cmp = load <8 x i16>, ptr %i.cly, align 2, !tbaa !39
  %i.cmq = sext <8 x i16> %i.cmp to <8 x i32>
  %i.cmr = mul nsw <8 x i32> %i.cmq, %i.cmo
  %.neg153 = mul nsw i32 %i.cmd, %i.cma
  %.neg155 = mul nsw i32 %i.cmg, %i.cmf
  %i.cms = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.cmr)
  %op.rdx = add i32 %i.cms, %.neg153
  %op.rdx292 = add i32 %op.rdx, %.neg155
  %i.cmt = sub i32 %i.cml, %op.rdx292
  %i.cmu = tail call i32 @llvm.smax.i32(i32 %i.cmt, i32 -134217728)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.cmu, i32 134215679)
  %i.cmv = add nsw i32 %.0.i.i, 2048
  %i.cmw = lshr i32 %i.cmv, 12
  %i.cmx = trunc i32 %i.cmw to i16                ; 2 uses
  store i16 %i.cmx, ptr %i.clx, align 2, !tbaa !39
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i115, 40
  br i1 %exitcond.not.i116, label %filter_arfq12.exit, label %.preheader.i113, !llvm.loop !59

filter_arfq12.exit:                               ; preds = %.preheader.i113
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.cmy = load i16, ptr %i.clm, align 2, !tbaa !36
  %i.cmz = sext i16 %i.cmy to i64
  %i.cna = icmp slt i64 %indvars.iv.next177, %i.cmz
  br i1 %i.cna, label %bb.au, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %filter_arfq12.exit, %bb.at
  %i.cnb = sext i32 %i.ckx to i64
  %i.cnc = getelementptr [2 x i8], ptr %i.i, i64 %i.cnb
  %i.cnd = getelementptr i8, ptr %i.cnc, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cll, ptr noundef nonnull align 2 dereferenceable(20) %i.cnd, i64 20, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge180, %._crit_edge
  %.pre-phi185 = phi i64 [ %.pre184, %._crit_edge180 ], [ %i.clk, %._crit_edge ]
  %i.cne = load ptr, ptr %1, align 8, !tbaa !87
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cne, ptr nonnull align 2 %i.i, i64 %.pre-phi185, i1 false)
  %i.cnf = load ptr, ptr %1, align 8, !tbaa !87
  %i.cng = getelementptr inbounds nuw i8, ptr %i.e, i64 3560 ; 3 uses
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.e, i64 3556 ; 2 uses
  %i.cni = load i32, ptr %i.bbs, align 4, !tbaa !35 ; 2 uses
  %i.cnj = trunc i32 %i.cni to i16
  %i.cnk = icmp sgt i16 %i.cnj, 0
  br i1 %i.cnk, label %.lr.ph.i119, label %hp_output.exit

.lr.ph.i119:                                      ; preds = %bb.av
  %.mask = and i32 %i.cni, 32767
  %wide.trip.count.i120 = zext nneg i32 %.mask to i64
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.e, i64 3562 ; 3 uses
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.e, i64 3566 ; 2 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.e, i64 3564 ; 2 uses
  %i.cno = getelementptr inbounds nuw i8, ptr %i.e, i64 3558 ; 2 uses
  %.pre.i121 = load i16, ptr %i.cnl, align 2, !tbaa !39
  %.pre3.i = load i16, ptr %i.cnm, align 2, !tbaa !39
  %.pre4.i = load i16, ptr %i.cng, align 8, !tbaa !39
  %.pre5.i = load i16, ptr %i.cnn, align 4, !tbaa !39
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i119
  %i.cnp = phi i16 [ %.pre5.i, %.lr.ph.i119 ], [ %i.coy, %bb.aw ]
  %i.cnq = phi i16 [ %.pre4.i, %.lr.ph.i119 ], [ %i.cpd, %bb.aw ]
  %i.cnr = phi i16 [ %.pre3.i, %.lr.ph.i119 ], [ %i.coz, %bb.aw ]
  %i.cns = phi i16 [ %.pre.i121, %.lr.ph.i119 ], [ %i.cpf, %bb.aw ]
  %indvars.iv.i122 = phi i64 [ 0, %.lr.ph.i119 ], [ %indvars.iv.next.i125, %bb.aw ] ; 2 uses
  %i.cnt = sext i16 %i.cns to i32
  %i.cnu = mul nsw i32 %i.cnt, 7918
  %i.cnv = sext i16 %i.cnr to i32
  %i.cnw = mul nsw i32 %i.cnv, -3833
  %i.cnx = add nsw i32 %i.cnu, %i.cnw
  %i.cny = ashr i32 %i.cnx, 15
  %i.cnz = sext i16 %i.cnq to i32
  %i.coa = mul nsw i32 %i.cnz, 7918
  %i.cob = sext i16 %i.cnp to i32
  %i.coc = mul nsw i32 %i.cob, -3833
  %i.cod = add nsw i32 %i.coa, %i.coc
  %i.coe = add nsw i32 %i.cod, %i.cny
  %i.cof = shl nsw i32 %i.coe, 1
  %i.cog = getelementptr inbounds nuw [2 x i8], ptr %i.cnf, i64 %indvars.iv.i122 ; 3 uses
  %i.coh = load i16, ptr %i.cog, align 2, !tbaa !39
  %i.coi = sext i16 %i.coh to i32
  %i.coj = load i16, ptr %i.cnh, align 4, !tbaa !39 ; 2 uses
  %i.cok = sext i16 %i.coj to i32
  %i.col = mul nsw i32 %i.cok, -7699
  %i.com = load i16, ptr %i.cno, align 2, !tbaa !39
  %i.con = sext i16 %i.com to i32
  %reass.add.i123 = add nsw i32 %i.con, %i.coi
  %reass.mul.i = mul nsw i32 %reass.add.i123, 3849
  %i.coo = add nsw i32 %i.cof, %i.col
  %i.cop = add nsw i32 %i.coo, %reass.mul.i       ; 5 uses
  store i16 %i.coj, ptr %i.cno, align 2, !tbaa !39
  %i.coq = load i16, ptr %i.cog, align 2, !tbaa !39
  store i16 %i.coq, ptr %i.cnh, align 4, !tbaa !39
  %i.cor = add nsw i32 %i.cop, 1024
  %i.cos = add nsw i32 %i.cop, -67107840
  %i.cot = icmp ult i32 %i.cos, -134217728
  %i.cou = icmp sgt i32 %i.cop, -1025
  %i.cov = select i1 %i.cou, i32 67106816, i32 67108864
  %.0.i.i124 = select i1 %i.cot, i32 %i.cov, i32 %i.cor
  %i.cow = lshr i32 %.0.i.i124, 11
  %i.cox = trunc i32 %i.cow to i16
  store i16 %i.cox, ptr %i.cog, align 2, !tbaa !39
  %i.coy = load i16, ptr %i.cng, align 8, !tbaa !39 ; 2 uses
  store i16 %i.coy, ptr %i.cnn, align 4, !tbaa !39
  %i.coz = load i16, ptr %i.cnl, align 2, !tbaa !39 ; 2 uses
  store i16 %i.coz, ptr %i.cnm, align 2, !tbaa !39
  %i.cpa = icmp sgt i32 %i.cop, 268435455
  %i.cpb = tail call i32 @llvm.smax.i32(i32 %i.cop, i32 -268435456)
  %spec.select.i = shl i32 %i.cpb, 3
  %.045.i = select i1 %i.cpa, i32 2147483647, i32 %spec.select.i ; 2 uses
  %i.cpc = lshr i32 %.045.i, 16
  %i.cpd = trunc nuw i32 %i.cpc to i16            ; 2 uses
  store i16 %i.cpd, ptr %i.cng, align 8, !tbaa !39
  %i.cpe = trunc i32 %.045.i to i16
  %i.cpf = lshr i16 %i.cpe, 1                     ; 2 uses
  store i16 %i.cpf, ptr %i.cnl, align 2, !tbaa !39
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %exitcond.not.i126 = icmp eq i64 %indvars.iv.next.i125, %wide.trip.count.i120
  br i1 %exitcond.not.i126, label %hp_output.exit, label %bb.aw, !llvm.loop !70

hp_output.exit:                                   ; preds = %bb.aw, %bb.av
  %i.cpg = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  %i.cph = getelementptr inbounds nuw i8, ptr %i.e, i64 476
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.e, i64 234
  %i.cpj = load i16, ptr %i.cpi, align 2, !tbaa !36
  %i.cpk = sext i16 %i.cpj to i64
  %i.cpl = mul nsw i64 %i.cpk, 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cpg, ptr nonnull align 4 %i.cph, i64 %i.cpl, i1 false)
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %spec.select96 = zext i1 %.not94 to i32
  store i32 %spec.select96, ptr %i.cpm, align 4, !tbaa !88
  store i32 1, ptr %2, align 4, !tbaa !34
  %i.cpn = load i32, ptr %i.m, align 8, !tbaa !73
  br label %unpack_frame.exit.thread

unpack_frame.exit.thread:                         ; preds = %bb.a, %unpack_frame.exit, %hp_output.exit
  %.088 = phi i32 [ %i.cpn, %hp_output.exit ], [ -1094995529, %bb.a ], [ %i.bbv, %unpack_frame.exit ]
  ret i32 %.088
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -32748, 32788) i32 @xcorr_coeff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef signext range(i16 60, 81) %2, i16 noundef signext range(i16 80, 101) %3) unnamed_addr #5 {
vector.ph:
  %i.a = zext nneg i16 %3 to i32                  ; 2 uses
  %i.b = sub nsw i32 0, %i.a
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %1, i64 %i.c ; 3 uses
  %i.e = add nsw i16 %2, -1
  %i.f = add nuw nsw i16 %i.e, %3
  %wide.trip.count.i = zext nneg i16 %i.f to i64  ; 6 uses
  %4 = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 32752      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi2 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !39
  %wide.load3 = load <8 x i16>, ptr %i.h, align 2, !tbaa !39
  %5 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load, i1 false)
  %6 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load3, i1 false)
  %7 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi, <8 x i16> %5) ; 2 uses
  %8 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi2, <8 x i16> %6) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %7, <8 x i16> %8)
  %9 = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %max_abs_value_w16.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %n.vec4 = and i64 %wide.trip.count.i, 32764     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %9, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %middle.block.a

middle.block.a:                                   ; preds = %middle.block.a, %vec.epilog.ph
  %index5 = phi i64 [ %n.vec, %vec.epilog.ph ], [ %index.next8, %middle.block.a ] ; 2 uses
  %vec.phi6 = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %12, %middle.block.a ]
  %10 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index5
  %wide.load7 = load <4 x i16>, ptr %10, align 2, !tbaa !39
  %11 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load7, i1 false)
  %12 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi6, <4 x i16> %11) ; 2 uses
  %index.next8 = add nuw i64 %index5, 4           ; 2 uses
  %cmp.n.a = icmp eq i64 %index.next8, %n.vec4
  br i1 %cmp.n.a, label %vec.epilog.middle.block, label %middle.block.a, !llvm.loop !90

vec.epilog.middle.block:                          ; preds = %middle.block.a
  %13 = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %12) ; 2 uses
  %cmp.n9 = icmp eq i64 %n.vec4, %wide.trip.count.i
  br i1 %cmp.n9, label %max_abs_value_w16.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec4, %vec.epilog.middle.block ]
  %.025.i.ph = phi i16 [ %9, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.025.i = phi i16 [ %.1.i, %.preheader.i ], [ %.025.i.ph, %.preheader.i.preheader ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !39
  %i.l = tail call i16 @llvm.abs.i16(i16 %i.k, i1 false)
  %.1.i = tail call i16 @llvm.umax.i16(i16 %.025.i, i16 %i.l) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %max_abs_value_w16.exit, label %.preheader.i, !llvm.loop !91

max_abs_value_w16.exit:                           ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.1.i.lcssa = phi i16 [ %13, %vec.epilog.middle.block ], [ %9, %middle.block ], [ %.1.i, %.preheader.i ]
  %i.m = icmp ugt i16 %.1.i.lcssa, 5000
  %.084 = select i1 %i.m, i32 2, i32 0            ; 5 uses
  %wide.trip.count.i111 = zext nneg i16 %2 to i64 ; 7 uses
  %n.vec6 = and i64 %wide.trip.count.i111, 124    ; 3 uses
  %broadcast.splatinsert.a = insertelement <2 x i32> poison, i32 %.084, i64 0
  %broadcast.splat.a = shufflevector <2 x i32> %broadcast.splatinsert.a, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %max_abs_value_w16.exit
  %index8 = phi i64 [ 0, %max_abs_value_w16.exit ], [ %index.next13, %vector.body7 ] ; 2 uses
  %vec.phi9 = phi <2 x i64> [ zeroinitializer, %max_abs_value_w16.exit ], [ %i.x, %vector.body7 ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %max_abs_value_w16.exit ], [ %i.y, %vector.body7 ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %wide.load11 = load <2 x i16>, ptr %i.n, align 2, !tbaa !39
  %wide.load12 = load <2 x i16>, ptr %i.o, align 2, !tbaa !39
  %i.p = sext <2 x i16> %wide.load11 to <2 x i32> ; 2 uses
  %i.q = sext <2 x i16> %wide.load12 to <2 x i32> ; 2 uses
  %i.r = mul nsw <2 x i32> %i.p, %i.p
  %i.s = mul nsw <2 x i32> %i.q, %i.q
  %i.t = lshr <2 x i32> %i.r, %broadcast.splat.a
  %i.u = lshr <2 x i32> %i.s, %broadcast.splat.a
  %i.v = zext nneg <2 x i32> %i.t to <2 x i64>
  %i.w = zext nneg <2 x i32> %i.u to <2 x i64>
  %i.x = add <2 x i64> %vec.phi9, %i.v            ; 2 uses
  %i.y = add <2 x i64> %vec.phi10, %i.w           ; 2 uses
  %index.next13 = add nuw i64 %index8, 4          ; 2 uses
  %i.z = icmp eq i64 %index.next13, %n.vec6
  br i1 %i.z, label %middle.block14, label %vector.body7, !llvm.loop !92

middle.block14:                                   ; preds = %vector.body7
  %bin.rdx = add <2 x i64> %i.y, %i.x
  %i.aa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n15 = icmp eq i64 %n.vec6, %wide.trip.count.i111
  br i1 %cmp.n15, label %scale_dot_product.exit, label %scalar.ph4

scalar.ph4:                                       ; preds = %middle.block14, %scalar.ph4
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %scalar.ph4 ], [ %n.vec6, %middle.block14 ] ; 2 uses
  %.0910.i = phi i64 [ %i.ah, %scalar.ph4 ], [ %i.aa, %middle.block14 ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i112
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !39
  %i.ad = sext i16 %i.ac to i32                   ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.ad
  %i.af = lshr i32 %i.ae, %.084
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nuw nsw i64 %.0910.i, %i.ag         ; 2 uses
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i111
  br i1 %exitcond.not.i114, label %scale_dot_product.exit, label %scalar.ph4, !llvm.loop !93

scale_dot_product.exit:                           ; preds = %scalar.ph4, %middle.block14
  %.lcssa1 = phi i64 [ %i.aa, %middle.block14 ], [ %i.ah, %scalar.ph4 ]
  %i.ai = getelementptr [2 x i8], ptr %1, i64 %wide.trip.count.i111
  %i.aj = tail call i64 @llvm.smin.i64(i64 %.lcssa1, i64 2147483647)
  %.0.i.i = trunc nuw nsw i64 %i.aj to i32
  %n.vec18 = and i64 %wide.trip.count.i111, 124   ; 3 uses
  %broadcast.splatinsert19 = insertelement <2 x i32> poison, i32 %.084, i64 0
  %broadcast.splat20 = shufflevector <2 x i32> %broadcast.splatinsert19, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n32 = icmp eq i64 %n.vec18, %wide.trip.count.i111
  br label %vector.ph17

vector.ph17:                                      ; preds = %scale_dot_product.exit, %bb.f
  %indvars.iv = phi i64 [ 0, %scale_dot_product.exit ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %1, %scale_dot_product.exit ], [ %.191133, %bb.f ]
  %.pn134 = phi ptr [ %i.ai, %scale_dot_product.exit ], [ %.189132, %bb.f ]
  %.0131 = phi i32 [ 0, %scale_dot_product.exit ], [ %i.do, %bb.f ] ; 2 uses
  %.087130 = phi i16 [ -500, %scale_dot_product.exit ], [ %.1, %bb.f ] ; 3 uses
  %.092129 = phi i16 [ 32767, %scale_dot_product.exit ], [ %.193, %bb.f ] ; 3 uses
  %.094128 = phi i32 [ %.0.i.i, %scale_dot_product.exit ], [ %i.dn, %bb.f ] ; 6 uses
  %.095127 = phi i16 [ 0, %scale_dot_product.exit ], [ %.196, %bb.f ] ; 4 uses
  %.099125 = phi i16 [ 0, %scale_dot_product.exit ], [ %.1100, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph17
  %index22 = phi i64 [ 0, %vector.ph17 ], [ %index.next29, %vector.body21 ] ; 3 uses
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %vector.ph17 ], [ %i.az, %vector.body21 ]
  %vec.phi24 = phi <2 x i64> [ zeroinitializer, %vector.ph17 ], [ %i.ba, %vector.body21 ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index22 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %wide.load25 = load <2 x i16>, ptr %i.al, align 2, !tbaa !39
  %wide.load26 = load <2 x i16>, ptr %i.am, align 2, !tbaa !39
  %i.an = sext <2 x i16> %wide.load25 to <2 x i32>
  %i.ao = sext <2 x i16> %wide.load26 to <2 x i32>
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index22 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %wide.load27 = load <2 x i16>, ptr %i.ap, align 2, !tbaa !39
  %wide.load28 = load <2 x i16>, ptr %i.aq, align 2, !tbaa !39
  %i.ar = sext <2 x i16> %wide.load27 to <2 x i32>
  %i.as = sext <2 x i16> %wide.load28 to <2 x i32>
  %i.at = mul nsw <2 x i32> %i.ar, %i.an
  %i.au = mul nsw <2 x i32> %i.as, %i.ao
  %i.av = ashr <2 x i32> %i.at, %broadcast.splat20
  %i.aw = ashr <2 x i32> %i.au, %broadcast.splat20
  %i.ax = sext <2 x i32> %i.av to <2 x i64>
  %i.ay = sext <2 x i32> %i.aw to <2 x i64>
  %i.az = add <2 x i64> %vec.phi23, %i.ax         ; 2 uses
  %i.ba = add <2 x i64> %vec.phi24, %i.ay         ; 2 uses
  %index.next29 = add nuw i64 %index22, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next29, %n.vec18
  br i1 %i.bb, label %middle.block30, label %vector.body21, !llvm.loop !94

middle.block30:                                   ; preds = %vector.body21
  %bin.rdx31 = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx31) ; 2 uses
  br i1 %cmp.n32, label %scale_dot_product.exit121, label %scalar.ph16

scalar.ph16:                                      ; preds = %middle.block30, %scalar.ph16
  %indvars.iv.i116 = phi i64 [ %indvars.iv.next.i118, %scalar.ph16 ], [ %n.vec18, %middle.block30 ] ; 3 uses
  %.0910.i117 = phi i64 [ %i.bm, %scalar.ph16 ], [ %i.bc, %middle.block30 ]
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i116
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !39
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.i116
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !39
  %i.bi = sext i16 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.bf
  %i.bk = ashr i32 %i.bj, %.084
  %i.bl = sext i32 %i.bk to i64
  %i.bm = add nsw i64 %.0910.i117, %i.bl          ; 2 uses
  %indvars.iv.next.i118 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i119 = icmp eq i64 %indvars.iv.next.i118, %wide.trip.count.i111
  br i1 %exitcond.not.i119, label %scale_dot_product.exit121, label %scalar.ph16, !llvm.loop !95

scale_dot_product.exit121:                        ; preds = %scalar.ph16, %middle.block30
  %.lcssa = phi i64 [ %i.bc, %middle.block30 ], [ %i.bm, %scalar.ph16 ] ; 3 uses
  %.189132 = getelementptr i8, ptr %.pn134, i64 -2 ; 2 uses
  %.191133 = getelementptr inbounds i8, ptr %.pn, i64 -2 ; 2 uses
  %i.bn = icmp sgt i32 %.094128, 0
  %i.bo = icmp sgt i64 %.lcssa, 0
  %or.cond = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.a, label %bb.f

bb.a:                                             ; preds = %scale_dot_product.exit121
  %i.bp = tail call i64 @llvm.umin.i64(i64 %.lcssa, i64 2147483647)
  %.0.i.i120 = trunc nuw nsw i64 %i.bp to i32     ; 3 uses
  %i.bq = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, -2147483648) %.0.i.i120, i1 true)
  %i.br = trunc nuw nsw i32 %i.bq to i16
  %i.bs = add nsw i16 %i.br, -16                  ; 2 uses
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = icmp samesign ult i64 %.lcssa, 65536
  %i.bv = shl i32 %.0.i.i120, %i.bt
  %i.bw = sub nsw i32 0, %i.bt
  %i.bx = lshr i32 %.0.i.i120, %i.bw
  %i.by = select i1 %i.bu, i32 %i.bv, i32 %i.bx
  %i.bz = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, -2147483648) %.094128, i1 true)
  %i.ca = trunc nuw nsw i32 %i.bz to i16
  %i.cb = add nsw i16 %i.ca, -16                  ; 2 uses
  %i.cc = sext i16 %i.cb to i32                   ; 2 uses
  %i.cd = icmp samesign ult i32 %.094128, 65536
  %i.ce = shl i32 %.094128, %i.cc
  %i.cf = sub nsw i32 0, %i.cc
  %i.cg = lshr i32 %.094128, %i.cf
  %i.ch = select i1 %i.cd, i32 %i.ce, i32 %i.cg   ; 3 uses
  %i.ci = trunc i32 %i.ch to i16
  %sext = shl i32 %i.by, 16
  %i.cj = ashr exact i32 %sext, 16                ; 2 uses
  %i.ck = mul nsw i32 %i.cj, %i.cj
  %i.cl = lshr i32 %i.ck, 16                      ; 2 uses
  %i.cm = trunc nuw nsw i32 %i.cl to i16
  %i.cn = shl nsw i16 %i.bs, 1
  %i.co = sub nsw i16 %i.cb, %i.cn                ; 2 uses
  %i.cp = sub nsw i16 %i.co, %.087130             ; 2 uses
  %i.cq = tail call i16 @llvm.smax.i16(i16 %i.cp, i16 -31)
  %i.cr = tail call i16 @llvm.smin.i16(i16 %i.cq, i16 31)
  %i.cs = sext i16 %i.cr to i32                   ; 2 uses
  %i.ct = icmp slt i16 %i.cp, 0
  %i.cu = sext i16 %.092129 to i32
  %i.cv = mul nsw i32 %i.cl, %i.cu                ; 2 uses
  br i1 %i.ct, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cw = sub nsw i32 0, %i.cs
  %i.cx = ashr i32 %i.cv, %i.cw
  %i.cy = sext i16 %.095127 to i32
  %sext109 = shl i32 %i.ch, 16
  %i.cz = ashr exact i32 %sext109, 16
  %i.da = mul nsw i32 %i.cz, %i.cy
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.db = sext i16 %.095127 to i32
  %sext108 = shl i32 %i.ch, 16
  %i.dc = ashr exact i32 %sext108, 16
  %i.dd = mul nsw i32 %i.dc, %i.db
  %i.de = ashr i32 %i.dd, %i.cs
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.086 = phi i32 [ %i.cx, %bb.b ], [ %i.cv, %bb.c ]
  %.085 = phi i32 [ %i.da, %bb.b ], [ %i.de, %bb.c ]
  %i.df = icmp sgt i32 %.086, %.085
  br i1 %i.df, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dg = trunc i32 %.0131 to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %scale_dot_product.exit121
  %.1100 = phi i16 [ %i.dg, %bb.e ], [ %.099125, %bb.d ], [ %.099125, %scale_dot_product.exit121 ] ; 2 uses
  %.196 = phi i16 [ %i.cm, %bb.e ], [ %.095127, %bb.d ], [ %.095127, %scale_dot_product.exit121 ]
  %.193 = phi i16 [ %i.ci, %bb.e ], [ %.092129, %bb.d ], [ %.092129, %scale_dot_product.exit121 ]
  %.1 = phi i16 [ %i.co, %bb.e ], [ %.087130, %bb.d ], [ %.087130, %scale_dot_product.exit121 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dh = load i16, ptr %.189132, align 2, !tbaa !39
  %i.di = sext i16 %i.dh to i32                   ; 2 uses
  %i.dj = load i16, ptr %.191133, align 2, !tbaa !39
  %i.dk = sext i16 %i.dj to i32                   ; 2 uses
  %add = add nsw i32 %i.dk, %i.di
  %sub = sub nsw i32 %i.di, %i.dk
  %i.dl = mul nsw i32 %add, %sub
  %i.dm = ashr i32 %i.dl, %.084
  %i.dn = sub i32 %.094128, %i.dm
  %i.do = add nuw nsw i32 %.0131, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.do, %i.a
  br i1 %exitcond.not, label %bb.g, label %vector.ph17, !llvm.loop !96

bb.g:                                             ; preds = %bb.f
  %i.dp = sext i16 %.1100 to i32
  %i.dq = add nsw i32 %i.dp, 20
  ret i32 %i.dq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lsp_interpolate2polydec(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 22)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -32768, 32768) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [2 x [6 x i32]], align 16         ; 9 uses
  %i.b = alloca [10 x i16], align 16              ; 7 uses
  %i.c = sub nsw i32 16384, %3                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i16, ptr %i.d, align 2, !tbaa !39
  %i.f = sext i16 %i.e to i32
  %i.g = mul nsw i32 %3, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39
  %i.j = sext i16 %i.i to i32
  %i.k = mul nsw i32 %i.c, %i.j
  %i.l = add nsw i32 %i.g, 8192
  %i.m = add i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.o = load i16, ptr %i.n, align 2, !tbaa !39
  %i.p = sext i16 %i.o to i32
  %i.q = mul nsw i32 %3, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.s = load i16, ptr %i.r, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = mul nsw i32 %i.c, %i.t
  %i.v = add nsw i32 %i.q, 8192
  %i.w = add i32 %i.v, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.y = load <8 x i16>, ptr %1, align 2, !tbaa !39
  %i.z = sext <8 x i16> %i.y to <8 x i32>
  %i.aa = insertelement <8 x i32> poison, i32 %3, i64 0
  %i.ab = shufflevector <8 x i32> %i.aa, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ac = mul nsw <8 x i32> %i.ab, %i.z
  %i.ad = load <8 x i16>, ptr %2, align 2, !tbaa !39
  %i.ae = sext <8 x i16> %i.ad to <8 x i32>
  %i.af = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %i.ag = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ah = mul nsw <8 x i32> %i.ag, %i.ae
  %i.ai = add nsw <8 x i32> %i.ac, splat (i32 8192)
  %i.aj = add <8 x i32> %i.ai, %i.ah
  %i.ak = shl <8 x i32> %i.aj, splat (i32 2)
  %i.al = ashr <8 x i32> %i.ak, splat (i32 16)
  %i.am = mul nsw <8 x i32> %i.al, splat (i32 41722) ; 5 uses
  %i.an = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ao = ashr <2 x i32> %i.an, splat (i32 24)
  %i.ap = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ao, <2 x i32> splat (i32 63)) ; 2 uses
  %i.aq = extractelement <2 x i32> %i.ap, i64 0
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !39
  %i.au = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.ar
  %i.av = load i16, ptr %i.au, align 2, !tbaa !39
  %i.aw = extractelement <2 x i32> %i.ap, i64 1
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !39
  %i.ba = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.ax
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !39
  %i.bc = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.bd = ashr <2 x i32> %i.bc, splat (i32 24)
  %i.be = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bd, <2 x i32> splat (i32 63)) ; 2 uses
  %i.bf = extractelement <2 x i32> %i.be, i64 0
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !39
  %i.bj = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bg
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !39
  %i.bl = extractelement <2 x i32> %i.be, i64 1
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !39
  %i.bp = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bm
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !39
  %i.br = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %i.bs = ashr <2 x i32> %i.br, splat (i32 24)
  %i.bt = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bs, <2 x i32> splat (i32 63)) ; 2 uses
  %i.bu = extractelement <2 x i32> %i.bt, i64 0
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !39
  %i.by = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !39
  %i.ca = extractelement <2 x i32> %i.bt, i64 1
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !39
  %i.ce = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.cb
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !39
  %i.cg = lshr <8 x i32> %i.am, splat (i32 16)
  %i.ch = and <8 x i32> %i.cg, splat (i32 255)
  %i.ci = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 6, i32 7>
  %i.cj = ashr <2 x i32> %i.ci, splat (i32 24)
  %i.ck = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cj, <2 x i32> splat (i32 63)) ; 2 uses
  %i.cl = extractelement <2 x i32> %i.ck, i64 0
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !39
  %i.cp = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !39
  %i.cr = extractelement <2 x i32> %i.ck, i64 1
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !39
  %i.cv = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.az, i64 1
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.bi, i64 2
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.bo, i64 3
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.bx, i64 4
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cd, i64 5
  %i.db = insertelement <8 x i16> %i.da, i16 %i.co, i64 6
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 7
  %i.dd = sext <8 x i16> %i.dc to <8 x i32>
  %i.de = mul nsw <8 x i32> %i.ch, %i.dd
  %i.df = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.cs
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !39
  %i.dh = lshr <8 x i32> %i.de, splat (i32 12)
  %i.di = trunc <8 x i32> %i.dh to <8 x i16>
  %i.dj = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.bb, i64 1
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.bk, i64 2
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.bq, i64 3
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.bz, i64 4
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.cf, i64 5
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.cq, i64 6
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.dg, i64 7
  %i.dr = add <8 x i16> %i.dq, %i.di
  store <8 x i16> %i.dr, ptr %i.b, align 16, !tbaa !39
  %i.ds = shl i32 %i.m, 2
  %i.dt = ashr i32 %i.ds, 16
  %i.du = mul nsw i32 %i.dt, 41722                ; 2 uses
  %i.dv = lshr i32 %i.du, 16
  %i.dw = ashr i32 %i.du, 24
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 63)
  %i.dy = and i32 %i.dv, 255
  %i.dz = sext i32 %i.dx to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !39
  %i.ec = sext i16 %i.eb to i32
  %i.ed = mul nsw i32 %i.dy, %i.ec
  %i.ee = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.dz
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !39
  %i.eg = lshr i32 %i.ed, 12
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = add i16 %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.ei, ptr %i.ej, align 16, !tbaa !39
  %i.ek = shl i32 %i.w, 2
  %i.el = ashr i32 %i.ek, 16
  %i.em = mul nsw i32 %i.el, 41722                ; 2 uses
  %i.en = lshr i32 %i.em, 16
  %i.eo = ashr i32 %i.em, 24
  %i.ep = tail call i32 @llvm.smin.i32(i32 %i.eo, i32 63)
  %i.eq = and i32 %i.en, 255
  %i.er = sext i32 %i.ep to i64                   ; 2 uses
  %i.es = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !39
  %i.eu = sext i16 %i.et to i32
  %i.ev = mul nsw i32 %i.eq, %i.eu
  %i.ew = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.er
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !39
  %i.ey = lshr i32 %i.ev, 12
  %i.ez = trunc i32 %i.ey to i16
  %i.fa = add i16 %i.ex, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !39
  call fastcc void @get_lsp_poly(ptr noundef %i.b, ptr noundef %i.a)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call fastcc void @get_lsp_poly(ptr noundef %i.x, ptr noundef %i.fc)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fh = load i32, ptr %i.a, align 16, !tbaa !34
  %i.fi = load i32, ptr %i.fc, align 8, !tbaa !34
  store i16 4096, ptr %0, align 2, !tbaa !39
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fm = load <2 x i32>, ptr %i.fe, align 8, !tbaa !34
  %i.fn = load <4 x i32>, ptr %i.ff, align 4, !tbaa !34 ; 2 uses
  %i.fo = load i32, ptr %i.ff, align 4, !tbaa !34
  %i.fp = load <5 x i32>, ptr %i.fd, align 4, !tbaa !34 ; 3 uses
  %i.fq = shufflevector <5 x i32> %i.fp, <5 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fr = load i32, ptr %i.fg, align 4, !tbaa !34
  %i.fs = sub i32 %i.fr, %i.fi                    ; 2 uses
  %i.ft = add i32 %i.fo, 4096
  %i.fu = add i32 %i.ft, %i.fh                    ; 2 uses
  %i.fv = add i32 %i.fs, %i.fu
  %i.fw = lshr i32 %i.fv, 13
  %i.fx = trunc i32 %i.fw to i16
  store i16 %i.fx, ptr %i.fj, align 2, !tbaa !39
  %i.fy = sub i32 %i.fu, %i.fs
end_hunk_2
begin_hunk_3_@get_lsp_poly:bb.a
  %i.ac = add i32 %.neg41.1, %.reass.1
  %i.ad = sub i32 %i.ac, %i.ab                    ; 3 uses
  %i.ae = ashr i32 %i.r, 16
  %i.af = lshr exact i32 %i.r, 1
  %i.ag = and i32 %i.af, 32256
  %i.ah = mul nsw i32 %i.ag, %i.v
  %i.ai = ashr i32 %i.ah, 13
  %i.aj = and i32 %i.ai, -4
  %.reass.1.1 = mul nsw i32 %i.ae, %factor.op.mul.1
  %.neg41.1.1 = add i32 %i.p, 16777216
  %i.ak = add i32 %.neg41.1.1, %.reass.1.1
  %i.al = sub i32 %i.ak, %i.aj                    ; 4 uses
  %i.am = shl nsw i32 %i.v, 10
  %i.an = sub nsw i32 %i.r, %i.am                 ; 4 uses
  %i.ao = getelementptr i8, ptr %1, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32                   ; 5 uses
  %factor.op.mul.2 = mul nsw i32 %i.ar, -4        ; 3 uses
  %i.as = ashr i32 %i.ad, 16
  %i.at = lshr exact i32 %i.ad, 1
  %i.au = and i32 %i.at, 32767
  %i.av = mul nsw i32 %i.au, %i.ar
  %i.aw = ashr i32 %i.av, 13
  %i.ax = and i32 %i.aw, -4
  %.reass.2 = mul i32 %i.as, %factor.op.mul.2
  %.neg41.2 = shl i32 %i.al, 1
  %i.ay = add i32 %.neg41.2, %.reass.2
  %i.az = sub i32 %i.ay, %i.ax                    ; 3 uses
  %i.ba = ashr i32 %i.al, 16
  %i.bb = lshr i32 %i.al, 1
  %i.bc = and i32 %i.bb, 32767
  %i.bd = mul nsw i32 %i.bc, %i.ar
  %i.be = ashr i32 %i.bd, 13
  %i.bf = and i32 %i.be, -4
  %.reass.2.1 = mul i32 %i.ba, %factor.op.mul.2
  %.neg41.2.1 = add i32 %i.ad, %i.an
  %i.bg = add i32 %.neg41.2.1, %.reass.2.1
  %i.bh = sub i32 %i.bg, %i.bf                    ; 4 uses
  %i.bi = ashr i32 %i.an, 16
  %i.bj = lshr exact i32 %i.an, 1
  %i.bk = and i32 %i.bj, 32256
  %i.bl = mul nsw i32 %i.bk, %i.ar
  %i.bm = ashr i32 %i.bl, 13
  %i.bn = and i32 %i.bm, -4
  %.reass.2.2 = mul nsw i32 %i.bi, %factor.op.mul.2
  %.neg41.2.2 = add i32 %i.al, 16777216
  %i.bo = add i32 %.neg41.2.2, %.reass.2.2
  %i.bp = sub i32 %i.bo, %i.bn                    ; 4 uses
  %i.bq = shl nsw i32 %i.ar, 10
  %i.br = sub nsw i32 %i.an, %i.bq                ; 4 uses
  %i.bs = getelementptr i8, ptr %1, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !39
  %i.bv = sext i16 %i.bu to i32                   ; 6 uses
  %factor.op.mul.3 = mul nsw i32 %i.bv, -4        ; 4 uses
  %i.bw = ashr i32 %i.az, 16
  %i.bx = lshr exact i32 %i.az, 1
  %i.by = and i32 %i.bx, 32767
  %i.bz = mul nsw i32 %i.by, %i.bv
  %i.ca = ashr i32 %i.bz, 13
  %i.cb = and i32 %i.ca, -4
  %.reass.3 = mul i32 %i.bw, %factor.op.mul.3
  %.neg41.3 = shl i32 %i.bh, 1
  %i.cc = add i32 %.neg41.3, %.reass.3
  %i.cd = sub i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %i.bs, align 4, !tbaa !34
  %i.ce = ashr i32 %i.bh, 16
  %i.cf = lshr i32 %i.bh, 1
  %i.cg = and i32 %i.cf, 32767
  %i.ch = mul nsw i32 %i.cg, %i.bv
  %i.ci = ashr i32 %i.ch, 13
  %i.cj = and i32 %i.ci, -4
  %.reass.3.1 = mul i32 %i.ce, %factor.op.mul.3
  %.neg41.3.1 = add i32 %i.az, %i.bp
  %i.ck = add i32 %.neg41.3.1, %.reass.3.1
  %i.cl = sub i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.ao, align 4, !tbaa !34
  %i.cm = ashr i32 %i.bp, 16
  %i.cn = lshr i32 %i.bp, 1
  %i.co = and i32 %i.cn, 32767
  %i.cp = mul nsw i32 %i.co, %i.bv
  %i.cq = ashr i32 %i.cp, 13
  %i.cr = and i32 %i.cq, -4
  %.reass.3.2 = mul i32 %i.cm, %factor.op.mul.3
  %.neg41.3.2 = add i32 %i.bh, %i.br
  %i.cs = add i32 %.neg41.3.2, %.reass.3.2
  %i.ct = sub i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %i.s, align 4, !tbaa !34
  %i.cu = ashr i32 %i.br, 16
  %i.cv = lshr exact i32 %i.br, 1
  %i.cw = and i32 %i.cv, 32256
  %i.cx = mul nsw i32 %i.cw, %i.bv
  %i.cy = ashr i32 %i.cx, 13
  %i.cz = and i32 %i.cy, -4
  %i.da = load i32, ptr %1, align 4, !tbaa !34
  %.reass.3.3 = mul nsw i32 %i.cu, %factor.op.mul.3
  %.neg41.3.3 = add i32 %i.bp, %i.da
  %i.db = add i32 %.neg41.3.3, %.reass.3.3
  %i.dc = sub i32 %i.db, %i.cz
  store i32 %i.dc, ptr %i.e, align 4, !tbaa !34
  %i.dd = shl nsw i32 %i.bv, 10
  %i.de = sub nsw i32 %i.br, %i.dd
  store i32 %i.de, ptr %i.d, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @construct_vector(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i16 noundef signext range(i16 85, 148) %4, i16 noundef signext %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [40 x i16], align 16              ; 5 uses
  %i.b = alloca [40 x i16], align 16              ; 5 uses
  %i.c = alloca [40 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = load i16, ptr %2, align 2, !tbaa !39
  %i.e = sext i16 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr @gain5, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39
  %i.j = sext i16 %i.g to i32                     ; 3 uses
  %i.k = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32768) %i.j, i1 true) ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 1638
  %sext.i = shl nuw i32 %i.k, 16
  %i.m = ashr exact i32 %sext.i, 16
  %i.n = select i1 %i.l, i32 1638, i32 %i.m
  %i.o = sext i16 %i.i to i64
  %i.p = getelementptr inbounds [2 x i8], ptr @gain4, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !39
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !39
  %i.u = shl nsw i32 %i.r, 2
  %i.v = mul i32 %i.u, %i.n
  %i.w = add i32 %i.v, 32768
  %i.x = ashr i32 %i.w, 16                        ; 3 uses
  %i.y = sext i16 %i.t to i64
  %i.z = getelementptr inbounds [2 x i8], ptr @gain3, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = load i16, ptr %1, align 2, !tbaa !39
  call fastcc void @get_codebook(ptr noundef %i.a, ptr noundef %3, i16 noundef signext %i.ab, i16 noundef signext %4, i16 noundef signext %5)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !39
  call fastcc void @get_codebook(ptr noundef %i.b, ptr noundef %3, i16 noundef signext %i.ad, i16 noundef signext %4, i16 noundef signext %5)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !39
  call fastcc void @get_codebook(ptr noundef %i.c, ptr noundef %3, i16 noundef signext %i.af, i16 noundef signext %4, i16 noundef signext %5)
  %i.ag = icmp sgt i16 %5, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i16 %5 to i64      ; 3 uses
  %i.ah = sext i16 %i.aa to i32
  %i.ai = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32768) %i.x, i1 true) ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 1638
  %sext.i30 = shl nuw i32 %i.ai, 16
  %i.ak = ashr exact i32 %sext.i30, 16
  %i.al = select i1 %i.aj, i32 1638, i32 %i.ak
  %factor.op.mul = mul nsw i32 %i.al, %i.ah
  %.reass = shl i32 %factor.op.mul, 2
  %i.am = add i32 %.reass, 32768
  %i.an = ashr i32 %i.am, 16                      ; 2 uses
  %min.iters.check = icmp ult i16 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 32760        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat34 = shufflevector <8 x i32> %broadcast.splatinsert33, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert35 = insertelement <8 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat36 = shufflevector <8 x i32> %broadcast.splatinsert35, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ao, align 16, !tbaa !39
  %i.ap = sext <8 x i16> %wide.load to <8 x i32>
  %i.aq = mul nsw <8 x i32> %broadcast.splat34, %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load37 = load <8 x i16>, ptr %i.ar, align 16, !tbaa !39
  %i.as = sext <8 x i16> %wide.load37 to <8 x i32>
  %i.at = mul nsw <8 x i32> %broadcast.splat36, %i.as
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index
  %wide.load38 = load <8 x i16>, ptr %i.au, align 16, !tbaa !39
  %i.av = sext <8 x i16> %wide.load38 to <8 x i32>
  %i.aw = mul nsw <8 x i32> %broadcast.splat, %i.av
  %i.ax = add nsw <8 x i32> %i.aq, splat (i32 8192)
  %i.ay = add <8 x i32> %i.ax, %i.at
  %i.az = add <8 x i32> %i.ay, %i.aw
  %i.ba = lshr <8 x i32> %i.az, splat (i32 14)
  %i.bb = trunc <8 x i32> %i.ba to <8 x i16>
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !39
  %i.bg = sext i16 %i.bf to i32
  %i.bh = mul nsw i32 %i.bg, %i.j
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !39
  %i.bk = sext i16 %i.bj to i32
  %i.bl = mul nsw i32 %i.x, %i.bk
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !39
  %i.bo = sext i16 %i.bn to i32
  %i.bp = mul nsw i32 %i.an, %i.bo
  %i.bq = add nsw i32 %i.bh, 8192
  %i.br = add i32 %i.bq, %i.bl
  %i.bs = add i32 %i.br, %i.bp
  %i.bt = lshr i32 %i.bs, 14
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @get_codebook(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i16 noundef signext %2, i16 noundef signext range(i16 85, 148) %3, i16 noundef signext %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [4 x i16], align 2                ; 10 uses
  %i.b = alloca [4 x i16], align 2                ; 5 uses
  %i.c = alloca [45 x i16], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(90) %i.c, i8 0, i64 90, i1 false)
  %i.d = zext nneg i16 %3 to i32                  ; 2 uses
  %i.e = sext i16 %4 to i32                       ; 4 uses
  %i.f = sub nsw i32 %i.d, %i.e                   ; 5 uses
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  %i.h = icmp eq i16 %4, 40
  %i.i = add nsw i32 %i.f, 21
  %spec.select = select i1 %i.h, i32 %i.i, i32 %i.g ; 2 uses
  %i.j = sext i16 %2 to i32                       ; 4 uses
  %.not = icmp slt i32 %i.f, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i16 %4, %2
  %i.l = zext nneg i16 %3 to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l
  %i.n = sext i16 %i.k to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.o
  %i.q = shl nsw i32 %i.e, 1
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull align 2 %i.p, i64 %i.r, i1 false)
  br label %filter_mafq12.exit

bb.c:                                             ; preds = %bb.a
  %sext = shl i32 %spec.select, 16
  %i.s = ashr exact i32 %sext, 16                 ; 2 uses
  %i.t = icmp sgt i32 %i.s, %i.j
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = shl nsw i32 %i.e, 1
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %0, i8 0, i64 %i.v, i1 false)
  %i.w = trunc nsw i32 %i.g to i16
  %i.x = sub i16 %2, %i.w
  %i.y = shl i16 %i.x, 1
  %i.z = add i16 %i.y, %4                         ; 4 uses
  %i.aa = sdiv i16 %i.z, 2                        ; 2 uses
  %i.ab = sext i16 %i.aa to i32                   ; 5 uses
  %i.ac = zext nneg i16 %3 to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 4) ; 4 uses
  %i.af = sub i32 %i.ab, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = sext i16 %i.aa to i64                   ; 2 uses
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ai ; 3 uses
  %i.ak = shl nsw i32 %i.ab, 1
  %i.al = sext i32 %i.ak to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull readonly align 2 %i.aj, i64 %i.al, i1 false)
  %sext.i = shl i64 %i.ag, 48
  %i.am = ashr exact i64 %sext.i, 47
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am ; 5 uses
  %i.ao = sext i32 %i.ae to i64                   ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i16 %i.z, 1
  br i1 %i.ar, label %.lr.ph.preheader.i.i, label %create_augmented_vector.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.ae to i64 ; 6 uses
  %xtraiter182 = and i64 %wide.trip.count.i.i, 1
  %i.as = and i16 %i.z, 32766
  %i.at = icmp eq i16 %i.as, 2
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter186 = and i64 %wide.trip.count.i.i, 6
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 5 uses
  %niter187 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter187.next.1, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  %i.av = load i16, ptr %i.au, align 2, !tbaa !39
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.i.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !39
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.aw
  %i.bb = lshr i32 %i.ba, 15
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !39
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !39
  %i.bg = sext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.next.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !39
  %i.bj = sext i16 %i.bi to i32
  %i.bk = mul nsw i32 %i.bj, %i.bg
  %i.bl = lshr i32 %i.bk, 15
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.next.i.i
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !39
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %.lr.ph.preheader.i30.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !99

.lr.ph.preheader.i30.i.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod184.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.preheader.i30.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i30.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph.preheader.i30.i.unr-lcssa ] ; 3 uses
  %lcmp.mod185 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i.epil.init
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !39
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.i.i.epil.init
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !39
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.bq
  %i.bv = lshr i32 %i.bu, 15
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i.epil.init
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !39
  br label %.lr.ph.preheader.i30.i

.lr.ph.preheader.i30.i:                           ; preds = %.lr.ph.preheader.i30.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.by = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ap
  %i.bz = getelementptr [2 x i8], ptr @alpha, i64 %i.ao
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.preheader.i30.i, %.lr.ph.i32.i
  %indvars.iv.i33.i = phi i64 [ 0, %.lr.ph.preheader.i30.i ], [ %indvars.iv.next.i34.i, %.lr.ph.i32.i ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.i33.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !39
  %i.cd = sext i16 %i.cc to i32
  %i.ce = sub nsw i64 0, %indvars.iv.i33.i
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !39
  %i.ch = sext i16 %i.cg to i32
  %i.ci = mul nsw i32 %i.ch, %i.cd
  %i.cj = lshr i32 %i.ci, 15
  %i.ck = trunc i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i33.i
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !39
  %indvars.iv.next.i34.i = add nuw nsw i64 %indvars.iv.i33.i, 1 ; 2 uses
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i34.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i35.i, label %iter.check, label %.lr.ph.i32.i, !llvm.loop !100

iter.check:                                       ; preds = %.lr.ph.i32.i
  %min.iters.check156 = icmp slt i16 %i.z, 8
  br i1 %min.iters.check156, label %.lr.ph.i38.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec169 = and i64 %wide.trip.count.i.i, 4     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index170 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index170 ; 2 uses
  %wide.load171 = load <4 x i16>, ptr %i.cm, align 2, !tbaa !39
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index170
  %wide.load172 = load <4 x i16>, ptr %i.cn, align 2, !tbaa !39
  %i.co = add <4 x i16> %wide.load172, %wide.load171
  store <4 x i16> %i.co, ptr %i.cm, align 2, !tbaa !39
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n174 = icmp eq i64 %n.vec169, %wide.trip.count.i.i
  br i1 %cmp.n174, label %create_augmented_vector.exit, label %.lr.ph.i38.i.preheader

.lr.ph.i38.i.preheader:                           ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv.i39.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec169, %vec.epilog.middle.block ]
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader, %.lr.ph.i38.i
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph.i38.i ], [ %indvars.iv.i39.i.ph, %.lr.ph.i38.i.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i39.i ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !39
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i39.i
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !39
  %i.cu = add i16 %i.ct, %i.cr
  store i16 %i.cu, ptr %i.cq, align 2, !tbaa !39
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %indvars.iv.next.i40.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i41.i, label %create_augmented_vector.exit, label %.lr.ph.i38.i, !llvm.loop !102

create_augmented_vector.exit:                     ; preds = %.lr.ph.i38.i, %vec.epilog.middle.block, %bb.d
  %i.cv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ah
  %i.cw = sub nsw i32 40, %i.ab
  %i.cx = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 range(i32 -32768, 32768) %i.ab)
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cv, ptr nonnull readonly align 2 %i.aj, i64 %i.cz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %filter_mafq12.exit

bb.e:                                             ; preds = %bb.c
  %i.da = sub nsw i32 %i.j, %i.s                  ; 2 uses
  %.not62 = icmp sgt i32 %i.da, %i.f
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.db = trunc i32 %i.da to i16
  %i.dc = add i16 %4, %i.db
  %i.dd = sub i16 %3, %i.dc
  %i.de = getelementptr inbounds i8, ptr %1, i64 -8
  store i64 0, ptr %i.de, align 2
  %i.df = zext nneg i16 %3 to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.df
  store i64 0, ptr %i.dg, align 2
  %i.dh = sext i16 %i.dd to i64                   ; 2 uses
  %i.di = getelementptr [2 x i8], ptr %1, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 8      ; 2 uses
  %i.dk = icmp sgt i16 %4, 0
  br i1 %i.dk, label %.lr.ph.i, label %filter_mafq12.exit

.lr.ph.i:                                         ; preds = %bb.f
  %wide.trip.count27.i = zext nneg i16 %4 to i64  ; 4 uses
  %min.iters.check = icmp ult i16 %4, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dl = shl nuw nsw i64 %wide.trip.count27.i, 1 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.dl
  %i.dm = shl nsw i64 %i.dh, 1                    ; 2 uses
  %i.dn = getelementptr i8, ptr %1, i64 %i.dm
  %scevgep103 = getelementptr i8, ptr %i.dn, i64 -6
  %i.do = getelementptr i8, ptr %1, i64 %i.dm
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.dl
  %scevgep104 = getelementptr i8, ptr %i.dp, i64 8
  %bound0 = icmp ult ptr %0, %scevgep104
  %bound1 = icmp ult ptr %scevgep103, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count27.i, 32760    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index ; 8 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -2
  %wide.load = load <8 x i16>, ptr %i.dq, align 2, !tbaa !39, !alias.scope !113
  %i.ds = sext <8 x i16> %wide.load to <8 x i32>
  %i.dt = mul nsw <8 x i32> %i.ds, splat (i32 -140)
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %wide.load105 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !39, !alias.scope !113
  %i.dv = sext <8 x i16> %wide.load105 to <8 x i32>
  %i.dw = mul nsw <8 x i32> %i.dv, splat (i32 446)
  %i.dx = add nsw <8 x i32> %i.dw, %i.dt
  %i.dy = getelementptr inbounds i8, ptr %i.dq, i64 -6
  %wide.load106 = load <8 x i16>, ptr %i.du, align 2, !tbaa !39, !alias.scope !113
  %i.dz = sext <8 x i16> %wide.load106 to <8 x i32>
  %i.ea = mul nsw <8 x i32> %i.dz, splat (i32 -755)
  %i.eb = add nsw <8 x i32> %i.ea, %i.dx
  %i.ec = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %wide.load107 = load <8 x i16>, ptr %i.dy, align 2, !tbaa !39, !alias.scope !113
  %i.ed = sext <8 x i16> %wide.load107 to <8 x i32>
  %i.ee = mul nsw <8 x i32> %i.ed, splat (i32 3302)
  %i.ef = add nsw <8 x i32> %i.ee, %i.eb
  %i.eg = getelementptr inbounds i8, ptr %i.dq, i64 -10
  %wide.load108 = load <8 x i16>, ptr %i.ec, align 2, !tbaa !39, !alias.scope !113
  %i.eh = sext <8 x i16> %wide.load108 to <8 x i32>
  %i.ei = mul nsw <8 x i32> %i.eh, splat (i32 2922)
  %i.ej = add nsw <8 x i32> %i.ei, %i.ef
  %i.ek = getelementptr inbounds i8, ptr %i.dq, i64 -12
  %wide.load109 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !39, !alias.scope !113
  %i.el = sext <8 x i16> %wide.load109 to <8 x i32>
  %i.em = mul nsw <8 x i32> %i.el, splat (i32 -590)
  %i.en = add nsw <8 x i32> %i.em, %i.ej
  %i.eo = getelementptr inbounds i8, ptr %i.dq, i64 -14
  %wide.load110 = load <8 x i16>, ptr %i.ek, align 2, !tbaa !39, !alias.scope !113
  %i.ep = sext <8 x i16> %wide.load110 to <8 x i32>
  %i.eq = mul nsw <8 x i32> %i.ep, splat (i32 343)
  %i.er = add nsw <8 x i32> %i.eq, %i.en
  %wide.load111 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !39, !alias.scope !113
  %i.es = sext <8 x i16> %wide.load111 to <8 x i32>
  %i.et = mul nsw <8 x i32> %i.es, splat (i32 -138)
  %i.eu = add nsw <8 x i32> %i.et, %i.er
  %i.ev = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eu, <8 x i32> splat (i32 -134217728))
  %i.ew = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ev, <8 x i32> splat (i32 134215679))
  %i.ex = add nsw <8 x i32> %i.ew, splat (i32 2048)
  %i.ey = lshr <8 x i32> %i.ex, splat (i32 12)
  %i.ez = trunc <8 x i32> %i.ey to <8 x i16>
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.ez, ptr %i.fa, align 2, !tbaa !39, !alias.scope !114, !noalias !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27.i
  br i1 %cmp.n, label %filter_mafq12.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %scalar.ph ], [ %indvars.iv24.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv24.i
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -14
  %i.fe = load <8 x i16>, ptr %i.fd, align 2, !tbaa !39
  %i.ff = sext <8 x i16> %i.fe to <8 x i32>
  %i.fg = mul nsw <8 x i32> %i.ff, <i32 -138, i32 343, i32 -590, i32 2922, i32 3302, i32 -755, i32 446, i32 -140>
  %i.fh = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fg)
  %i.fi = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 -134217728)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.fi, i32 134215679)
  %i.fj = add nsw i32 %.0.i.i, 2048
  %i.fk = lshr i32 %i.fj, 12
  %i.fl = trunc i32 %i.fk to i16
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv24.i
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !39
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %filter_mafq12.exit, label %scalar.ph, !llvm.loop !107

bb.g:                                             ; preds = %bb.e
  %i.fn = shl nsw i32 %i.e, 1                     ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %0, i8 0, i64 %i.fo, i1 false)
  %i.fp = zext nneg i16 %3 to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fp
  store i64 0, ptr %i.fq, align 2
  %i.fr = shl nsw i32 %i.f, 16
  %sext63 = add nsw i32 %i.fr, -524288
  %i.fs = ashr exact i32 %sext63, 16
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr [2 x i8], ptr %1, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 14     ; 2 uses
  %i.fw = add i16 %4, 5                           ; 3 uses
  %i.fx = icmp sgt i16 %i.fw, 0
  br i1 %i.fx, label %.lr.ph.i65, label %filter_mafq12.exit76

.lr.ph.i65:                                       ; preds = %bb.g
  %wide.trip.count27.i66 = zext nneg i16 %i.fw to i64 ; 3 uses
  %min.iters.check113 = icmp ult i16 %i.fw, 8
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i65
  %n.vec115 = and i64 %wide.trip.count27.i66, 32760 ; 3 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next126, %vector.body116 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index117 ; 8 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -2
  %wide.load118 = load <8 x i16>, ptr %i.fy, align 2, !tbaa !39
  %i.ga = sext <8 x i16> %wide.load118 to <8 x i32>
  %i.gb = mul nsw <8 x i32> %i.ga, splat (i32 -140)
  %i.gc = getelementptr inbounds i8, ptr %i.fy, i64 -4
  %wide.load119 = load <8 x i16>, ptr %i.fz, align 2, !tbaa !39
  %i.gd = sext <8 x i16> %wide.load119 to <8 x i32>
  %i.ge = mul nsw <8 x i32> %i.gd, splat (i32 446)
  %i.gf = add nsw <8 x i32> %i.ge, %i.gb
  %i.gg = getelementptr inbounds i8, ptr %i.fy, i64 -6
  %wide.load120 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !39
  %i.gh = sext <8 x i16> %wide.load120 to <8 x i32>
  %i.gi = mul nsw <8 x i32> %i.gh, splat (i32 -755)
  %i.gj = add nsw <8 x i32> %i.gi, %i.gf
  %i.gk = getelementptr inbounds i8, ptr %i.fy, i64 -8
  %wide.load121 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !39
  %i.gl = sext <8 x i16> %wide.load121 to <8 x i32>
  %i.gm = mul nsw <8 x i32> %i.gl, splat (i32 3302)
  %i.gn = add nsw <8 x i32> %i.gm, %i.gj
  %i.go = getelementptr inbounds i8, ptr %i.fy, i64 -10
  %wide.load122 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !39
  %i.gp = sext <8 x i16> %wide.load122 to <8 x i32>
  %i.gq = mul nsw <8 x i32> %i.gp, splat (i32 2922)
  %i.gr = add nsw <8 x i32> %i.gq, %i.gn
  %i.gs = getelementptr inbounds i8, ptr %i.fy, i64 -12
  %wide.load123 = load <8 x i16>, ptr %i.go, align 2, !tbaa !39
  %i.gt = sext <8 x i16> %wide.load123 to <8 x i32>
  %i.gu = mul nsw <8 x i32> %i.gt, splat (i32 -590)
  %i.gv = add nsw <8 x i32> %i.gu, %i.gr
  %i.gw = getelementptr inbounds i8, ptr %i.fy, i64 -14
  %wide.load124 = load <8 x i16>, ptr %i.gs, align 2, !tbaa !39
  %i.gx = sext <8 x i16> %wide.load124 to <8 x i32>
  %i.gy = mul nsw <8 x i32> %i.gx, splat (i32 343)
  %i.gz = add nsw <8 x i32> %i.gy, %i.gv
  %wide.load125 = load <8 x i16>, ptr %i.gw, align 2, !tbaa !39
  %i.ha = sext <8 x i16> %wide.load125 to <8 x i32>
  %i.hb = mul nsw <8 x i32> %i.ha, splat (i32 -138)
  %i.hc = add nsw <8 x i32> %i.hb, %i.gz
  %i.hd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hc, <8 x i32> splat (i32 -134217728))
  %i.he = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.hd, <8 x i32> splat (i32 134215679))
  %i.hf = add nsw <8 x i32> %i.he, splat (i32 2048)
  %i.hg = lshr <8 x i32> %i.hf, splat (i32 12)
  %i.hh = trunc <8 x i32> %i.hg to <8 x i16>
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index117
  store <8 x i16> %i.hh, ptr %i.hi, align 16, !tbaa !39
  %index.next126 = add nuw i64 %index117, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next126, %n.vec115
  br i1 %i.hj, label %middle.block127, label %vector.body116, !llvm.loop !108

middle.block127:                                  ; preds = %vector.body116
  %cmp.n128 = icmp eq i64 %n.vec115, %wide.trip.count27.i66
  br i1 %cmp.n128, label %filter_mafq12.exit76, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.lr.ph.i65, %middle.block127
  %indvars.iv24.i67.ph = phi i64 [ 0, %.lr.ph.i65 ], [ %n.vec115, %middle.block127 ]
  br label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv24.i67 = phi i64 [ %indvars.iv.next25.i74, %scalar.ph112 ], [ %indvars.iv24.i67.ph, %scalar.ph112.preheader ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv24.i67
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -14
  %i.hm = load <8 x i16>, ptr %i.hl, align 2, !tbaa !39
  %i.hn = sext <8 x i16> %i.hm to <8 x i32>
  %i.ho = mul nsw <8 x i32> %i.hn, <i32 -138, i32 343, i32 -590, i32 2922, i32 3302, i32 -755, i32 446, i32 -140>
  %i.hp = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ho)
  %i.hq = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 -134217728)
  %.0.i.i73 = tail call i32 @llvm.smin.i32(i32 %i.hq, i32 134215679)
  %i.hr = add nsw i32 %.0.i.i73, 2048
  %i.hs = lshr i32 %i.hr, 12
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv24.i67
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !39
  %indvars.iv.next25.i74 = add nuw nsw i64 %indvars.iv24.i67, 1 ; 2 uses
  %exitcond28.not.i75 = icmp eq i64 %indvars.iv.next25.i74, %wide.trip.count27.i66
  br i1 %exitcond28.not.i75, label %filter_mafq12.exit76, label %scalar.ph112, !llvm.loop !109

filter_mafq12.exit76:                             ; preds = %scalar.ph112, %middle.block127, %bb.g
  %i.hv = add nsw i32 %spec.select, %i.d
  %i.hw = xor i32 %i.hv, -1
  %i.hx = add nsw i32 %i.j, 65516
  %i.hy = add nsw i32 %i.hx, %i.fn
  %i.hz = add nsw i32 %i.hy, %i.hw                ; 2 uses
  %sext64 = shl i32 %i.hz, 16                     ; 6 uses
  %i.ia = ashr exact i32 %sext64, 16              ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 90 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ic = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.ia, i32 4) ; 4 uses
  %i.id = sub nsw i32 %i.hz, %i.ic
  %i.ie = zext i32 %i.id to i64
  %i.if = sext i32 %i.ia to i64                   ; 2 uses
  %i.ig = sub nsw i64 0, %i.if
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ig ; 3 uses
  %i.ii = ashr exact i32 %sext64, 15
  %i.ij = sext i32 %i.ii to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull readonly align 2 %i.ih, i64 %i.ij, i1 false)
  %sext.i77 = shl i64 %i.ie, 48
  %i.ik = ashr exact i64 %sext.i77, 47
  %i.il = getelementptr inbounds i8, ptr %0, i64 %i.ik ; 9 uses
  %i.im = sext i32 %i.ic to i64                   ; 2 uses
  %i.in = sub nsw i64 0, %i.im                    ; 2 uses
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ih, i64 %i.in ; 4 uses
  %i.ip = icmp sgt i32 %i.ia, 0
  br i1 %i.ip, label %.lr.ph.preheader.i.i78, label %create_augmented_vector.exit93

.lr.ph.preheader.i.i78:                           ; preds = %filter_mafq12.exit76
  %wide.trip.count.i.i79 = zext nneg i32 %i.ic to i64 ; 4 uses
  %i.iq = load i16, ptr %i.io, align 2, !tbaa !39
  %i.ir = sext i16 %i.iq to i32
  %i.is = mul nsw i32 %i.ir, 6554
  %i.it = lshr i32 %i.is, 15
  %i.iu = trunc i32 %i.it to i16
  store i16 %i.iu, ptr %i.il, align 2, !tbaa !39
  %exitcond.not.i.i83 = icmp eq i32 %sext64, 65536
  br i1 %exitcond.not.i.i83, label %.lr.ph.preheader.i30.i84, label %.lr.ph.i.i80.1

.lr.ph.i.i80.1:                                   ; preds = %.lr.ph.preheader.i.i78
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !39
  %i.ix = sext i16 %i.iw to i32
  %i.iy = mul nsw i32 %i.ix, 13107
  %i.iz = lshr i32 %i.iy, 15
  %i.ja = trunc i32 %i.iz to i16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  store i16 %i.ja, ptr %i.jb, align 2, !tbaa !39
  %exitcond.not.i.i83.1 = icmp eq i32 %sext64, 131072
  br i1 %exitcond.not.i.i83.1, label %.lr.ph.preheader.i30.i84, label %.lr.ph.i.i80.2

.lr.ph.i.i80.2:                                   ; preds = %.lr.ph.i.i80.1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !39
  %i.je = sext i16 %i.jd to i32
  %i.jf = mul nsw i32 %i.je, 19661
  %i.jg = lshr i32 %i.jf, 15
  %i.jh = trunc i32 %i.jg to i16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store i16 %i.jh, ptr %i.ji, align 2, !tbaa !39
  %exitcond.not.i.i83.2 = icmp eq i32 %sext64, 196608
  br i1 %exitcond.not.i.i83.2, label %.lr.ph.preheader.i30.i84, label %.lr.ph.i.i80.3

.lr.ph.i.i80.3:                                   ; preds = %.lr.ph.i.i80.2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !39
  %i.jl = sext i16 %i.jk to i32
  %i.jm = mul nsw i32 %i.jl, 26214
  %i.jn = lshr i32 %i.jm, 15
  %i.jo = trunc i32 %i.jn to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !39
  br label %.lr.ph.preheader.i30.i84

.lr.ph.preheader.i30.i84:                         ; preds = %.lr.ph.i.i80.3, %.lr.ph.i.i80.2, %.lr.ph.i.i80.1, %.lr.ph.preheader.i.i78
  %i.jq = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.in ; 3 uses
  %i.jr = getelementptr [2 x i8], ptr @alpha, i64 %i.im
  %i.js = getelementptr i8, ptr %i.jr, i64 -2     ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i79, 1
  %i.jt = icmp eq i32 %sext64, 65536
  br i1 %i.jt, label %.lr.ph.i32.i85.epil.preheader, label %.lr.ph.preheader.i30.i84.new

.lr.ph.preheader.i30.i84.new:                     ; preds = %.lr.ph.preheader.i30.i84
  %unroll_iter = and i64 %wide.trip.count.i.i79, 6
  br label %.lr.ph.i32.i85

.lr.ph.i32.i85:                                   ; preds = %.lr.ph.i32.i85, %.lr.ph.preheader.i30.i84.new
  %indvars.iv.i33.i86 = phi i64 [ 0, %.lr.ph.preheader.i30.i84.new ], [ %indvars.iv.next.i34.i87.1, %.lr.ph.i32.i85 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i30.i84.new ], [ %niter.next.1, %.lr.ph.i32.i85 ]
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %indvars.iv.i33.i86
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !39
  %i.jw = sext i16 %i.jv to i32
  %i.jx = sub nsw i64 0, %indvars.iv.i33.i86
  %i.jy = getelementptr inbounds [2 x i8], ptr %i.js, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !39
  %i.ka = sext i16 %i.jz to i32
  %i.kb = mul nsw i32 %i.ka, %i.jw
  %i.kc = lshr i32 %i.kb, 15
  %i.kd = trunc i32 %i.kc to i16
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i33.i86
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !39
  %indvars.iv.next.i34.i87 = or disjoint i64 %indvars.iv.i33.i86, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %indvars.iv.next.i34.i87
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !39
  %i.kh = sext i16 %i.kg to i32
  %i.ki = xor i64 %indvars.iv.i33.i86, -1
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.js, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !39
  %i.kl = sext i16 %i.kk to i32
  %i.km = mul nsw i32 %i.kl, %i.kh
  %i.kn = lshr i32 %i.km, 15
  %i.ko = trunc i32 %i.kn to i16
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i34.i87
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !39
  %indvars.iv.next.i34.i87.1 = add nuw nsw i64 %indvars.iv.i33.i86, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i38.i89.preheader.unr-lcssa, label %.lr.ph.i32.i85, !llvm.loop !110

.lr.ph.i38.i89.preheader.unr-lcssa:               ; preds = %.lr.ph.i32.i85
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i89.preheader, label %.lr.ph.i32.i85.epil.preheader

.lr.ph.i32.i85.epil.preheader:                    ; preds = %.lr.ph.i38.i89.preheader.unr-lcssa, %.lr.ph.preheader.i30.i84
  %indvars.iv.i33.i86.epil.init = phi i64 [ 0, %.lr.ph.preheader.i30.i84 ], [ %indvars.iv.next.i34.i87.1, %.lr.ph.i38.i89.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod176 = trunc i32 %i.ic to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %indvars.iv.i33.i86.epil.init
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !39
  %i.ks = sext i16 %i.kr to i32
  %i.kt = sub nsw i64 0, %indvars.iv.i33.i86.epil.init
  %i.ku = getelementptr inbounds [2 x i8], ptr %i.js, i64 %i.kt
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !39
  %i.kw = sext i16 %i.kv to i32
  %i.kx = mul nsw i32 %i.kw, %i.ks
  %i.ky = lshr i32 %i.kx, 15
  %i.kz = trunc i32 %i.ky to i16
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i33.i86.epil.init
  store i16 %i.kz, ptr %i.la, align 2, !tbaa !39
  br label %.lr.ph.i38.i89.preheader

.lr.ph.i38.i89.preheader:                         ; preds = %.lr.ph.i38.i89.preheader.unr-lcssa, %.lr.ph.i32.i85.epil.preheader
  %xtraiter177 = and i64 %wide.trip.count.i.i79, 3 ; 3 uses
  %i.lb = icmp slt i32 %i.ia, 4
  br i1 %i.lb, label %.lr.ph.i38.i89.epil.preheader, label %.lr.ph.i38.i89.preheader.new

.lr.ph.i38.i89.preheader.new:                     ; preds = %.lr.ph.i38.i89.preheader
  %unroll_iter180 = and i64 %wide.trip.count.i.i79, 4
  br label %.lr.ph.i38.i89

.lr.ph.i38.i89:                                   ; preds = %.lr.ph.i38.i89, %.lr.ph.i38.i89.preheader.new
  %indvars.iv.i39.i90 = phi i64 [ 0, %.lr.ph.i38.i89.preheader.new ], [ %indvars.iv.next.i40.i91.3, %.lr.ph.i38.i89 ] ; 6 uses
  %niter181 = phi i64 [ 0, %.lr.ph.i38.i89.preheader.new ], [ %niter181.next.3, %.lr.ph.i38.i89 ]
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv.i39.i90 ; 2 uses
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !39
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i39.i90
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !39
  %i.lg = add i16 %i.lf, %i.ld
  store i16 %i.lg, ptr %i.lc, align 2, !tbaa !39
  %indvars.iv.next.i40.i91 = or disjoint i64 %indvars.iv.i39.i90, 1 ; 2 uses
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv.next.i40.i91 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !39
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i40.i91
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !39
  %i.ll = add i16 %i.lk, %i.li
  store i16 %i.ll, ptr %i.lh, align 2, !tbaa !39
  %indvars.iv.next.i40.i91.1 = or disjoint i64 %indvars.iv.i39.i90, 2 ; 2 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv.next.i40.i91.1 ; 2 uses
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !39
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i40.i91.1
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !39
  %i.lq = add i16 %i.lp, %i.ln
  store i16 %i.lq, ptr %i.lm, align 2, !tbaa !39
  %indvars.iv.next.i40.i91.2 = or disjoint i64 %indvars.iv.i39.i90, 3 ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv.next.i40.i91.2 ; 2 uses
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !39
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i40.i91.2
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !39
  %i.lv = add i16 %i.lu, %i.ls
  store i16 %i.lv, ptr %i.lr, align 2, !tbaa !39
  %indvars.iv.next.i40.i91.3 = add nuw nsw i64 %indvars.iv.i39.i90, 4 ; 2 uses
  %niter181.next.3 = add i64 %niter181, 4         ; 2 uses
  %niter181.ncmp.3 = icmp eq i64 %niter181.next.3, %unroll_iter180
  br i1 %niter181.ncmp.3, label %create_augmented_vector.exit93.loopexit.unr-lcssa, label %.lr.ph.i38.i89, !llvm.loop !111

create_augmented_vector.exit93.loopexit.unr-lcssa: ; preds = %.lr.ph.i38.i89
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %create_augmented_vector.exit93, label %.lr.ph.i38.i89.epil.preheader

.lr.ph.i38.i89.epil.preheader:                    ; preds = %create_augmented_vector.exit93.loopexit.unr-lcssa, %.lr.ph.i38.i89.preheader
  %indvars.iv.i39.i90.epil.init = phi i64 [ 0, %.lr.ph.i38.i89.preheader ], [ %indvars.iv.next.i40.i91.3, %create_augmented_vector.exit93.loopexit.unr-lcssa ]
  %lcmp.mod179 = icmp ne i64 %xtraiter177, 0
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.i38.i89.epil

.lr.ph.i38.i89.epil:                              ; preds = %.lr.ph.i38.i89.epil, %.lr.ph.i38.i89.epil.preheader
  %indvars.iv.i39.i90.epil = phi i64 [ %indvars.iv.next.i40.i91.epil, %.lr.ph.i38.i89.epil ], [ %indvars.iv.i39.i90.epil.init, %.lr.ph.i38.i89.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i38.i89.epil ], [ 0, %.lr.ph.i38.i89.epil.preheader ]
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv.i39.i90.epil ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !39
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i39.i90.epil
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !39
  %i.ma = add i16 %i.lz, %i.lx
  store i16 %i.ma, ptr %i.lw, align 2, !tbaa !39
  %indvars.iv.next.i40.i91.epil = add nuw nsw i64 %indvars.iv.i39.i90.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter177
  br i1 %epil.iter.cmp.not, label %create_augmented_vector.exit93, label %.lr.ph.i38.i89.epil, !llvm.loop !112

create_augmented_vector.exit93:                   ; preds = %create_augmented_vector.exit93.loopexit.unr-lcssa, %.lr.ph.i38.i89.epil, %filter_mafq12.exit76
  %i.mb = getelementptr inbounds [2 x i8], ptr %0, i64 %i.if
  %i.mc = sub nsw i32 40, %i.ia
  %i.md = tail call i32 @llvm.smin.i32(i32 %i.mc, i32 range(i32 -32768, 32768) %i.ia)
  %i.me = sext i32 %i.md to i64
  %i.mf = shl nsw i64 %i.me, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.mb, ptr nonnull readonly align 2 %i.ih, i64 %i.mf, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %filter_mafq12.exit

filter_mafq12.exit:                               ; preds = %scalar.ph, %middle.block, %bb.f, %create_augmented_vector.exit93, %create_augmented_vector.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"short", !5, i64 0}
!30 = !{!"ILBCFrame", !5, i64 0, !5, i64 12, !5, i64 42, !29, i64 72, !29, i64 74, !5, i64 76, !29, i64 192, !29, i64 194}
!31 = !{!"ILBCContext", !10, i64 0, !6, i64 8, !6, i64 12, !30, i64 16, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !29, i64 232, !29, i64 234, !6, i64 236, !29, i64 240, !29, i64 242, !5, i64 244, !5, i64 284, !5, i64 304, !5, i64 324, !5, i64 344, !5, i64 476, !5, i64 608, !5, i64 740, !5, i64 2026, !5, i64 2042, !5, i64 2522, !5, i64 3002, !29, i64 3502, !29, i64 3504, !29, i64 3506, !29, i64 3508, !29, i64 3510, !5, i64 3512, !5, i64 3534, !5, i64 3556, !5, i64 3560}
!32 = !{!31, !6, i64 12}
!33 = !{!5, !5, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!31, !6, i64 236}
!36 = !{!31, !29, i64 234}
!37 = !{!31, !6, i64 228}
!38 = !{!31, !6, i64 224}
!39 = !{!29, !29, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 4, i32 12}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!27, !6, i64 380}
!46 = !{!27, !13, i64 56}
!47 = !{!9, !9, i64 0}
!48 = !{!31, !29, i64 232}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = distinct !{!54, !40}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40, !41, !42}
!58 = distinct !{!58, !40, !42, !41}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40, !41, !42}
!61 = distinct !{!61, !40, !41, !42}
!62 = distinct !{!62, !40, !42, !41}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !44}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40}
!71 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!72 = !{!71, !14, i64 24}
!73 = !{!71, !6, i64 32}
!74 = !{!30, !29, i64 194}
!75 = !{!30, !29, i64 74}
!76 = !{!30, !29, i64 72}
!77 = !{!"p2 omnipotent char", !25, i64 0}
!78 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!79 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!80 = !{!"AVFrame", !5, i64 0, !5, i64 64, !77, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !78, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !79, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!81 = !{!80, !6, i64 112}
!82 = !{!31, !29, i64 210}
!83 = !{!31, !6, i64 216}
!84 = !{!31, !29, i64 3504}
!85 = !{!31, !6, i64 8}
!86 = !{!31, !6, i64 220}
!87 = !{!14, !14, i64 0}
!88 = !{!31, !6, i64 212}
!89 = distinct !{!89, !40, !41, !42}
!90 = distinct !{!90, !40, !41, !42}
!91 = distinct !{!91, !40, !42, !41}
!92 = distinct !{!92, !40, !41, !42}
!93 = distinct !{!93, !40, !42, !41}
!94 = distinct !{!94, !40, !41, !42}
!95 = distinct !{!95, !40, !42, !41}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40, !41, !42}
!98 = distinct !{!98, !40, !42, !41}
!99 = distinct !{!99, !40, !41}
!100 = distinct !{!100, !40, !42, !41}
!101 = distinct !{!101, !40, !41, !42}
!102 = distinct !{!102, !40, !42, !41}
!103 = distinct !{!103, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !40, !41, !42}
!107 = distinct !{!107, !40, !41}
!108 = distinct !{!108, !40, !41, !42}
!109 = distinct !{!109, !40, !42, !41}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !40}
!112 = distinct !{!112, !44}
!113 = !{!104}
!114 = !{!105}
end_hunk_3
