Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g729dec?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.G729FormatDescription = type { [2 x i8], i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [5 x i8] c"g729\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"G.729\00", align 1
@ff_g729_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86069, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 32, ptr null, ptr null, ptr null, ptr @decoder_init, %union.anon { ptr @decode_frame }, ptr @decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"acelp.kelvin\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Sipro ACELP.KELVIN\00", align 1
@ff_acelp_kelvin_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 1, i32 86106, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 32, ptr null, ptr null, ptr null, ptr @decoder_init, %union.anon { ptr @decode_frame }, ptr @decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"Only mono and stereo are supported (requested channels: %d).\0A\00", align 1
@lsp_init = internal unnamed_addr constant [10 x i16] [i16 30000, i16 26000, i16 21000, i16 15000, i16 8000, i16 0, i16 -8000, i16 -15000, i16 -21000, i16 -26000], align 16
@format_g729_8k = internal unnamed_addr constant %struct.G729FormatDescription { [2 x i8] c"\08\05", i8 1, i8 3, i8 4, i8 4, i8 13, i8 10 }, align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Packet type: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"G.729 @ 8kbit/s\00", align 1
@format_g729d_6k4 = internal unnamed_addr constant %struct.G729FormatDescription { [2 x i8] c"\08\04", i8 0, i8 3, i8 3, i8 2, i8 9, i8 8 }, align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"G.729D @ 6.4kbit/s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Packet size %d is unknown.\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"First byte value %x for channel %d\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"pitch_delay_int %d is too large\0A\00", align 1
@ff_fc_4pulses_8bits_tracks_13 = external constant [16 x i8], align 16
@ff_fc_4pulses_8bits_track_4 = external constant [32 x i8], align 16
@ff_fc_2pulses_9bits_track1_gray = external constant [16 x i8], align 16
@ff_fc_2pulses_9bits_track2_gray = external constant [32 x i8], align 16
@cb_gain_1st_6k4 = internal unnamed_addr constant [8 x [2 x i16]] [[2 x i16] [i16 5849, i16 0], [2 x i16] [i16 3171, i16 9280], [2 x i16] [i16 3617, i16 6747], [2 x i16] [i16 4987, i16 22294], [2 x i16] [i16 2929, i16 1078], [2 x i16] [i16 6068, i16 6093], [2 x i16] [i16 9425, i16 2731], [2 x i16] [i16 3915, i16 12872]], align 16
@cb_gain_2nd_6k4 = internal unnamed_addr constant [8 x [2 x i16]] [[2 x i16] [i16 0, i16 4175], [2 x i16] [i16 10828, i16 27602], [2 x i16] [i16 16423, i16 15724], [2 x i16] [i16 4478, i16 7324], [2 x i16] [i16 3988, i16 0], [2 x i16] [i16 10291, i16 11385], [2 x i16] [i16 11956, i16 10735], [2 x i16] [i16 7876, i16 7821]], align 16
@cb_gain_1st_8k = internal unnamed_addr constant [8 x [2 x i16]] [[2 x i16] [i16 3242, i16 9949], [2 x i16] [i16 1551, i16 2425], [2 x i16] [i16 2678, i16 27162], [2 x i16] [i16 1921, i16 9291], [2 x i16] [i16 1831, i16 5022], [2 x i16] [i16 1, i16 1516], [2 x i16] [i16 356, i16 14756], [2 x i16] [i16 57, i16 5404]], align 16
@cb_gain_2nd_8k = internal unnamed_addr constant [16 x [2 x i16]] [[2 x i16] [i16 5142, i16 592], [2 x i16] [i16 17299, i16 1861], [2 x i16] [i16 6160, i16 2395], [2 x i16] [i16 16112, i16 3392], [2 x i16] [i16 826, i16 2005], [2 x i16] [i16 18973, i16 5935], [2 x i16] [i16 1994, i16 0], [2 x i16] [i16 15434, i16 237], [2 x i16] [i16 10573, i16 2966], [2 x i16] [i16 15132, i16 4914], [2 x i16] [i16 11569, i16 1196], [2 x i16] [i16 14194, i16 1630], [2 x i16] [i16 8091, i16 4861], [2 x i16] [i16 15161, i16 14276], [2 x i16] [i16 9120, i16 525], [2 x i16] [i16 13260, i16 3256]], align 16
@ma_prediction_coeff = internal constant [4 x i16] [i16 5571, i16 4751, i16 2785, i16 1556], align 2
@ff_acelp_interp_filter = external constant [61 x i16], align 16
@cb_ma_predictor = internal unnamed_addr constant [2 x [4 x [10 x i16]]] [[4 x [10 x i16]] [[10 x i16] [i16 8421, i16 9109, i16 9175, i16 8965, i16 9034, i16 9057, i16 8765, i16 8775, i16 9106, i16 8673], [10 x i16] [i16 7018, i16 7189, i16 7638, i16 7307, i16 7444, i16 7379, i16 7038, i16 6956, i16 6930, i16 6868], [10 x i16] [i16 5472, i16 4990, i16 5134, i16 5177, i16 5246, i16 5141, i16 5206, i16 5095, i16 4830, i16 5147], [10 x i16] [i16 4056, i16 3031, i16 2614, i16 3024, i16 2916, i16 2713, i16 3309, i16 3237, i16 2857, i16 3473]], [4 x [10 x i16]] [[10 x i16] [i16 7733, i16 7880, i16 8188, i16 8175, i16 8247, i16 8490, i16 8637, i16 8601, i16 8359, i16 7569], [10 x i16] [i16 4210, i16 3031, i16 2552, i16 3473, i16 3876, i16 3853, i16 4184, i16 4154, i16 3909, i16 3968], [10 x i16] [i16 3214, i16 1930, i16 1313, i16 2143, i16 2493, i16 2385, i16 2755, i16 2706, i16 2542, i16 2919], [10 x i16] [i16 3024, i16 1592, i16 940, i16 1631, i16 1723, i16 1579, i16 2034, i16 2084, i16 1913, i16 2601]]], align 16
@cb_ma_predictor_sum_inv = internal unnamed_addr constant [2 x [10 x i16]] [[10 x i16] [i16 17210, i16 15888, i16 16357, i16 16183, i16 16516, i16 15833, i16 15888, i16 15421, i16 14840, i16 15597], [10 x i16] [i16 9202, i16 7320, i16 6788, i16 7738, i16 8170, i16 8154, i16 8856, i16 8818, i16 8366, i16 8544]], align 16
@cb_lsp_1st = internal unnamed_addr constant [128 x [10 x i16]] [[10 x i16] [i16 1486, i16 2168, i16 3751, i16 9074, i16 12134, i16 13944, i16 17983, i16 19173, i16 21190, i16 21820], [10 x i16] [i16 1730, i16 2640, i16 3450, i16 4870, i16 6126, i16 7876, i16 15644, i16 17817, i16 20294, i16 21902], [10 x i16] [i16 1568, i16 2256, i16 3088, i16 4874, i16 11063, i16 13393, i16 18307, i16 19293, i16 21109, i16 21741], [10 x i16] [i16 1733, i16 2512, i16 3357, i16 4708, i16 6977, i16 10296, i16 17024, i16 17956, i16 19145, i16 20350], [10 x i16] [i16 1744, i16 2436, i16 3308, i16 8731, i16 10432, i16 12007, i16 15614, i16 16639, i16 21359, i16 21913], [10 x i16] [i16 1786, i16 2369, i16 3372, i16 4521, i16 6795, i16 12963, i16 17674, i16 18988, i16 20855, i16 21640], [10 x i16] [i16 1631, i16 2433, i16 3361, i16 6328, i16 10709, i16 12013, i16 13277, i16 13904, i16 19441, i16 21088], [10 x i16] [i16 1489, i16 2364, i16 3291, i16 6250, i16 9227, i16 10403, i16 13843, i16 15278, i16 17721, i16 21451], [10 x i16] [i16 1869, i16 2533, i16 3475, i16 4365, i16 9152, i16 14513, i16 15908, i16 17022, i16 20611, i16 21411], [10 x i16] [i16 2070, i16 3025, i16 4333, i16 5854, i16 7805, i16 9231, i16 10597, i16 16047, i16 20109, i16 21834], [10 x i16] [i16 1910, i16 2673, i16 3419, i16 4261, i16 11168, i16 15111, i16 16577, i16 17591, i16 19310, i16 20265], [10 x i16] [i16 1141, i16 1815, i16 2624, i16 4623, i16 6495, i16 9588, i16 13968, i16 16428, i16 19351, i16 21286], [10 x i16] [i16 2192, i16 3171, i16 4707, i16 5808, i16 10904, i16 12500, i16 14162, i16 15664, i16 21124, i16 21789], [10 x i16] [i16 1286, i16 1907, i16 2548, i16 3453, i16 9574, i16 11964, i16 15978, i16 17344, i16 19691, i16 22495], [10 x i16] [i16 1921, i16 2720, i16 4604, i16 6684, i16 11503, i16 12992, i16 14350, i16 15262, i16 16997, i16 20791], [10 x i16] [i16 2052, i16 2759, i16 3897, i16 5246, i16 6638, i16 10267, i16 15834, i16 16814, i16 18149, i16 21675], [10 x i16] [i16 1798, i16 2497, i16 5617, i16 11449, i16 13189, i16 14711, i16 17050, i16 18195, i16 20307, i16 21182], [10 x i16] [i16 1009, i16 1647, i16 2889, i16 5709, i16 9541, i16 12354, i16 15231, i16 18494, i16 20966, i16 22033], [10 x i16] [i16 3016, i16 3794, i16 5406, i16 7469, i16 12488, i16 13984, i16 15328, i16 16334, i16 19952, i16 20791], [10 x i16] [i16 2203, i16 3040, i16 3796, i16 5442, i16 11987, i16 13512, i16 14931, i16 16370, i16 17856, i16 18803], [10 x i16] [i16 2912, i16 4292, i16 7988, i16 9572, i16 11562, i16 13244, i16 14556, i16 16529, i16 20004, i16 21073], [10 x i16] [i16 2861, i16 3607, i16 5923, i16 7034, i16 9234, i16 12054, i16 13729, i16 18056, i16 20262, i16 20974], [10 x i16] [i16 3069, i16 4311, i16 5967, i16 7367, i16 11482, i16 12699, i16 14309, i16 16233, i16 18333, i16 19172], [10 x i16] [i16 2434, i16 3661, i16 4866, i16 5798, i16 10383, i16 11722, i16 13049, i16 15668, i16 18862, i16 19831], [10 x i16] [i16 2020, i16 2605, i16 3860, i16 9241, i16 13275, i16 14644, i16 16010, i16 17099, i16 19268, i16 20251], [10 x i16] [i16 1877, i16 2809, i16 3590, i16 4707, i16 11056, i16 12441, i16 15622, i16 17168, i16 18761, i16 19907], [10 x i16] [i16 2107, i16 2873, i16 3673, i16 5799, i16 13579, i16 14687, i16 15938, i16 17077, i16 18890, i16 19831], [10 x i16] [i16 1612, i16 2284, i16 2944, i16 3572, i16 8219, i16 13959, i16 15924, i16 17239, i16 18592, i16 20117], [10 x i16] [i16 2420, i16 3156, i16 6542, i16 10215, i16 12061, i16 13534, i16 15305, i16 16452, i16 18717, i16 19880], [10 x i16] [i16 1667, i16 2612, i16 3534, i16 5237, i16 10513, i16 11696, i16 12940, i16 16798, i16 18058, i16 19378], [10 x i16] [i16 2388, i16 3017, i16 4839, i16 9333, i16 11413, i16 12730, i16 15024, i16 16248, i16 17449, i16 18677], [10 x i16] [i16 1875, i16 2786, i16 4231, i16 6320, i16 8694, i16 10149, i16 11785, i16 17013, i16 18608, i16 19960], [10 x i16] [i16 679, i16 1411, i16 4654, i16 8006, i16 11446, i16 13249, i16 15763, i16 18127, i16 20361, i16 21567], [10 x i16] [i16 1838, i16 2596, i16 3578, i16 4608, i16 5650, i16 11274, i16 14355, i16 15886, i16 20579, i16 21754], [10 x i16] [i16 1303, i16 1955, i16 2395, i16 3322, i16 12023, i16 13764, i16 15883, i16 18077, i16 20180, i16 21232], [10 x i16] [i16 1438, i16 2102, i16 2663, i16 3462, i16 8328, i16 10362, i16 13763, i16 17248, i16 19732, i16 22344], [10 x i16] [i16 860, i16 1904, i16 6098, i16 7775, i16 9815, i16 12007, i16 14821, i16 16709, i16 19787, i16 21132], [10 x i16] [i16 1673, i16 2723, i16 3704, i16 6125, i16 7668, i16 9447, i16 13683, i16 14443, i16 20538, i16 21731], [10 x i16] [i16 1246, i16 1849, i16 2902, i16 4508, i16 7221, i16 12710, i16 14835, i16 16314, i16 19335, i16 22720], [10 x i16] [i16 1525, i16 2260, i16 3862, i16 5659, i16 7342, i16 11748, i16 13370, i16 14442, i16 18044, i16 21334], [10 x i16] [i16 1196, i16 1846, i16 3104, i16 7063, i16 10972, i16 12905, i16 14814, i16 17037, i16 19922, i16 22636], [10 x i16] [i16 2147, i16 3106, i16 4475, i16 6511, i16 8227, i16 9765, i16 10984, i16 12161, i16 18971, i16 21300], [10 x i16] [i16 1585, i16 2405, i16 2994, i16 4036, i16 11481, i16 13177, i16 14519, i16 15431, i16 19967, i16 21275], [10 x i16] [i16 1778, i16 2688, i16 3614, i16 4680, i16 9465, i16 11064, i16 12473, i16 16320, i16 19742, i16 20800], [10 x i16] [i16 1862, i16 2586, i16 3492, i16 6719, i16 11708, i16 13012, i16 14364, i16 16128, i16 19610, i16 20425], [10 x i16] [i16 1395, i16 2156, i16 2669, i16 3386, i16 10607, i16 12125, i16 13614, i16 16705, i16 18976, i16 21367], [10 x i16] [i16 1444, i16 2117, i16 3286, i16 6233, i16 9423, i16 12981, i16 14998, i16 15853, i16 17188, i16 21857], [10 x i16] [i16 2004, i16 2895, i16 3783, i16 4897, i16 6168, i16 7297, i16 12609, i16 16445, i16 19297, i16 21465], [10 x i16] [i16 1495, i16 2863, i16 6360, i16 8100, i16 11399, i16 14271, i16 15902, i16 17711, i16 20479, i16 22061], [10 x i16] [i16 2484, i16 3114, i16 5718, i16 7097, i16 8400, i16 12616, i16 14073, i16 14847, i16 20535, i16 21396], [10 x i16] [i16 2424, i16 3277, i16 5296, i16 6284, i16 11290, i16 12903, i16 16022, i16 17508, i16 19333, i16 20283], [10 x i16] [i16 2565, i16 3778, i16 5360, i16 6989, i16 8782, i16 10428, i16 14390, i16 15742, i16 17770, i16 21734], [10 x i16] [i16 2727, i16 3384, i16 6613, i16 9254, i16 10542, i16 12236, i16 14651, i16 15687, i16 20074, i16 21102], [10 x i16] [i16 1916, i16 2953, i16 6274, i16 8088, i16 9710, i16 10925, i16 12392, i16 16434, i16 20010, i16 21183], [10 x i16] [i16 3384, i16 4366, i16 5349, i16 7667, i16 11180, i16 12605, i16 13921, i16 15324, i16 19901, i16 20754], [10 x i16] [i16 3075, i16 4283, i16 5951, i16 7619, i16 9604, i16 11010, i16 12384, i16 14006, i16 20658, i16 21497], [10 x i16] [i16 1751, i16 2455, i16 5147, i16 9966, i16 11621, i16 13176, i16 14739, i16 16470, i16 20788, i16 21756], [10 x i16] [i16 1442, i16 2188, i16 3330, i16 6813, i16 8929, i16 12135, i16 14476, i16 15306, i16 19635, i16 20544], [10 x i16] [i16 2294, i16 2895, i16 4070, i16 8035, i16 12233, i16 13416, i16 14762, i16 17367, i16 18952, i16 19688], [10 x i16] [i16 1937, i16 2659, i16 4602, i16 6697, i16 9071, i16 12863, i16 14197, i16 15230, i16 16047, i16 18877], [10 x i16] [i16 2071, i16 2663, i16 4216, i16 9445, i16 10887, i16 12292, i16 13949, i16 14909, i16 19236, i16 20341], [10 x i16] [i16 1740, i16 2491, i16 3488, i16 8138, i16 9656, i16 11153, i16 13206, i16 14688, i16 20896, i16 21907], [10 x i16] [i16 2199, i16 2881, i16 4675, i16 8527, i16 10051, i16 11408, i16 14435, i16 15463, i16 17190, i16 20597], [10 x i16] [i16 1943, i16 2988, i16 4177, i16 6039, i16 7478, i16 8536, i16 14181, i16 15551, i16 17622, i16 21579], [10 x i16] [i16 1825, i16 3175, i16 7062, i16 9818, i16 12824, i16 15450, i16 18330, i16 19856, i16 21830, i16 22412], [10 x i16] [i16 2464, i16 3046, i16 4822, i16 5977, i16 7696, i16 15398, i16 16730, i16 17646, i16 20588, i16 21320], [10 x i16] [i16 2550, i16 3393, i16 5305, i16 6920, i16 10235, i16 14083, i16 18143, i16 19195, i16 20681, i16 21336], [10 x i16] [i16 3003, i16 3799, i16 5321, i16 6437, i16 7919, i16 11643, i16 15810, i16 16846, i16 18119, i16 18980], [10 x i16] [i16 3455, i16 4157, i16 6838, i16 8199, i16 9877, i16 12314, i16 15905, i16 16826, i16 19949, i16 20892], [10 x i16] [i16 3052, i16 3769, i16 4891, i16 5810, i16 6977, i16 10126, i16 14788, i16 15990, i16 19773, i16 20904], [10 x i16] [i16 3671, i16 4356, i16 5827, i16 6997, i16 8460, i16 12084, i16 14154, i16 14939, i16 19247, i16 20423], [10 x i16] [i16 2716, i16 3684, i16 5246, i16 6686, i16 8463, i16 10001, i16 12394, i16 14131, i16 16150, i16 19776], [10 x i16] [i16 1945, i16 2638, i16 4130, i16 7995, i16 14338, i16 15576, i16 17057, i16 18206, i16 20225, i16 20997], [10 x i16] [i16 2304, i16 2928, i16 4122, i16 4824, i16 5640, i16 13139, i16 15825, i16 16938, i16 20108, i16 21054], [10 x i16] [i16 1800, i16 2516, i16 3350, i16 5219, i16 13406, i16 15948, i16 17618, i16 18540, i16 20531, i16 21252], [10 x i16] [i16 1436, i16 2224, i16 2753, i16 4546, i16 9657, i16 11245, i16 15177, i16 16317, i16 17489, i16 19135], [10 x i16] [i16 2319, i16 2899, i16 4980, i16 6936, i16 8404, i16 13489, i16 15554, i16 16281, i16 20270, i16 20911], [10 x i16] [i16 2187, i16 2919, i16 4610, i16 5875, i16 7390, i16 12556, i16 14033, i16 16794, i16 20998, i16 21769], [10 x i16] [i16 2235, i16 2923, i16 5121, i16 6259, i16 8099, i16 13589, i16 15340, i16 16340, i16 17927, i16 20159], [10 x i16] [i16 1765, i16 2638, i16 3751, i16 5730, i16 7883, i16 10108, i16 13633, i16 15419, i16 16808, i16 18574], [10 x i16] [i16 3460, i16 5741, i16 9596, i16 11742, i16 14413, i16 16080, i16 18173, i16 19090, i16 20845, i16 21601], [10 x i16] [i16 3735, i16 4426, i16 6199, i16 7363, i16 9250, i16 14489, i16 16035, i16 17026, i16 19873, i16 20876], [10 x i16] [i16 3521, i16 4778, i16 6887, i16 8680, i16 12717, i16 14322, i16 15950, i16 18050, i16 20166, i16 21145], [10 x i16] [i16 2141, i16 2968, i16 6865, i16 8051, i16 10010, i16 13159, i16 14813, i16 15861, i16 17528, i16 18655], [10 x i16] [i16 4148, i16 6128, i16 9028, i16 10871, i16 12686, i16 14005, i16 15976, i16 17208, i16 19587, i16 20595], [10 x i16] [i16 4403, i16 5367, i16 6634, i16 8371, i16 10163, i16 11599, i16 14963, i16 16331, i16 17982, i16 18768], [10 x i16] [i16 4091, i16 5386, i16 6852, i16 8770, i16 11563, i16 13290, i16 15728, i16 16930, i16 19056, i16 20102], [10 x i16] [i16 2746, i16 3625, i16 5299, i16 7504, i16 10262, i16 11432, i16 13172, i16 15490, i16 16875, i16 17514], [10 x i16] [i16 2248, i16 3556, i16 8539, i16 10590, i16 12665, i16 14696, i16 16515, i16 17824, i16 20268, i16 21247], [10 x i16] [i16 1279, i16 1960, i16 3920, i16 7793, i16 10153, i16 14753, i16 16646, i16 18139, i16 20679, i16 21466], [10 x i16] [i16 2440, i16 3475, i16 6737, i16 8654, i16 12190, i16 14588, i16 17119, i16 17925, i16 19110, i16 19979], [10 x i16] [i16 1879, i16 2514, i16 4497, i16 7572, i16 10017, i16 14948, i16 16141, i16 16897, i16 18397, i16 19376], [10 x i16] [i16 2804, i16 3688, i16 7490, i16 10086, i16 11218, i16 12711, i16 16307, i16 17470, i16 20077, i16 21126], [10 x i16] [i16 2023, i16 2682, i16 3873, i16 8268, i16 10255, i16 11645, i16 15187, i16 17102, i16 18965, i16 19788], [10 x i16] [i16 2823, i16 3605, i16 5815, i16 8595, i16 10085, i16 11469, i16 16568, i16 17462, i16 18754, i16 19876], [10 x i16] [i16 2851, i16 3681, i16 5280, i16 7648, i16 9173, i16 10338, i16 14961, i16 16148, i16 17559, i16 18474], [10 x i16] [i16 1348, i16 2645, i16 5826, i16 8785, i16 10620, i16 12831, i16 16255, i16 18319, i16 21133, i16 22586], [10 x i16] [i16 2141, i16 3036, i16 4293, i16 6082, i16 7593, i16 10629, i16 17158, i16 18033, i16 21466, i16 22084], [10 x i16] [i16 1608, i16 2375, i16 3384, i16 6878, i16 9970, i16 11227, i16 16928, i16 17650, i16 20185, i16 21120], [10 x i16] [i16 2774, i16 3616, i16 5014, i16 6557, i16 7788, i16 8959, i16 17068, i16 18302, i16 19537, i16 20542], [10 x i16] [i16 1934, i16 4813, i16 6204, i16 7212, i16 8979, i16 11665, i16 15989, i16 17811, i16 20426, i16 21703], [10 x i16] [i16 2288, i16 3507, i16 5037, i16 6841, i16 8278, i16 9638, i16 15066, i16 16481, i16 21653, i16 22214], [10 x i16] [i16 2951, i16 3771, i16 4878, i16 7578, i16 9016, i16 10298, i16 14490, i16 15242, i16 20223, i16 20990], [10 x i16] [i16 3256, i16 4791, i16 6601, i16 7521, i16 8644, i16 9707, i16 13398, i16 16078, i16 19102, i16 20249], [10 x i16] [i16 1827, i16 2614, i16 3486, i16 6039, i16 12149, i16 13823, i16 16191, i16 17282, i16 21423, i16 22041], [10 x i16] [i16 1000, i16 1704, i16 3002, i16 6335, i16 8471, i16 10500, i16 14878, i16 16979, i16 20026, i16 22427], [10 x i16] [i16 1646, i16 2286, i16 3109, i16 7245, i16 11493, i16 12791, i16 16824, i16 17667, i16 18981, i16 20222], [10 x i16] [i16 1708, i16 2501, i16 3315, i16 6737, i16 8729, i16 9924, i16 16089, i16 17097, i16 18374, i16 19917], [10 x i16] [i16 2623, i16 3510, i16 4478, i16 5645, i16 9862, i16 11115, i16 15219, i16 18067, i16 19583, i16 20382], [10 x i16] [i16 2518, i16 3434, i16 4728, i16 6388, i16 8082, i16 9285, i16 13162, i16 18383, i16 19819, i16 20552], [10 x i16] [i16 1726, i16 2383, i16 4090, i16 6303, i16 7805, i16 12845, i16 14612, i16 17608, i16 19269, i16 20181], [10 x i16] [i16 2860, i16 3735, i16 4838, i16 6044, i16 7254, i16 8402, i16 14031, i16 16381, i16 18037, i16 19410], [10 x i16] [i16 4247, i16 5993, i16 7952, i16 9792, i16 12342, i16 14653, i16 17527, i16 18774, i16 20831, i16 21699], [10 x i16] [i16 3502, i16 4051, i16 5680, i16 6805, i16 8146, i16 11945, i16 16649, i16 17444, i16 20390, i16 21564], [10 x i16] [i16 3151, i16 4893, i16 5899, i16 7198, i16 11418, i16 13073, i16 15124, i16 17673, i16 20520, i16 21861], [10 x i16] [i16 3960, i16 4848, i16 5926, i16 7259, i16 8811, i16 10529, i16 15661, i16 16560, i16 18196, i16 20183], [10 x i16] [i16 4499, i16 6604, i16 8036, i16 9251, i16 10804, i16 12627, i16 15880, i16 17512, i16 20020, i16 21046], [10 x i16] [i16 4251, i16 5541, i16 6654, i16 8318, i16 9900, i16 11686, i16 15100, i16 17093, i16 20572, i16 21687], [10 x i16] [i16 3769, i16 5327, i16 7865, i16 9360, i16 10684, i16 11818, i16 13660, i16 15366, i16 18733, i16 19882], [10 x i16] [i16 3083, i16 3969, i16 6248, i16 8121, i16 9798, i16 10994, i16 12393, i16 13686, i16 17888, i16 19105], [10 x i16] [i16 2731, i16 4670, i16 7063, i16 9201, i16 11346, i16 13735, i16 16875, i16 18797, i16 20787, i16 22360], [10 x i16] [i16 1187, i16 2227, i16 4737, i16 7214, i16 9622, i16 12633, i16 15404, i16 17968, i16 20262, i16 23533], [10 x i16] [i16 1911, i16 2477, i16 3915, i16 10098, i16 11616, i16 12955, i16 16223, i16 17138, i16 19270, i16 20729], [10 x i16] [i16 1764, i16 2519, i16 3887, i16 6944, i16 9150, i16 12590, i16 16258, i16 16984, i16 17924, i16 18435], [10 x i16] [i16 1400, i16 3674, i16 7131, i16 8718, i16 10688, i16 12508, i16 15708, i16 17711, i16 19720, i16 21068], [10 x i16] [i16 2322, i16 3073, i16 4287, i16 8108, i16 9407, i16 10628, i16 15862, i16 16693, i16 19714, i16 21474], [10 x i16] [i16 2630, i16 3339, i16 4758, i16 8360, i16 10274, i16 11333, i16 12880, i16 17374, i16 19221, i16 19936], [10 x i16] [i16 1721, i16 2577, i16 5553, i16 7195, i16 8651, i16 10686, i16 15069, i16 16953, i16 18703, i16 19929]], align 16
@cb_lsp_2nd = internal unnamed_addr constant [32 x [10 x i16]] [[10 x i16] [i16 -435, i16 -815, i16 -742, i16 1033, i16 -518, i16 582, i16 -1201, i16 829, i16 86, i16 385], [10 x i16] [i16 -833, i16 -891, i16 463, i16 -8, i16 -1251, i16 1450, i16 72, i16 -231, i16 864, i16 661], [10 x i16] [i16 -1021, i16 231, i16 -306, i16 321, i16 -220, i16 -163, i16 -526, i16 -754, i16 -1633, i16 267], [10 x i16] [i16 57, i16 -198, i16 -339, i16 -33, i16 -1468, i16 573, i16 796, i16 -169, i16 -631, i16 816], [10 x i16] [i16 171, i16 -350, i16 294, i16 1660, i16 453, i16 519, i16 291, i16 159, i16 -640, i16 -1296], [10 x i16] [i16 -701, i16 -842, i16 -58, i16 950, i16 892, i16 1549, i16 715, i16 527, i16 -714, i16 -193], [10 x i16] [i16 584, i16 31, i16 -289, i16 356, i16 -333, i16 -457, i16 612, i16 -283, i16 -1381, i16 -741], [10 x i16] [i16 -109, i16 -808, i16 231, i16 77, i16 -87, i16 -344, i16 1341, i16 1087, i16 -654, i16 -569], [10 x i16] [i16 -859, i16 1236, i16 550, i16 854, i16 714, i16 -543, i16 -1752, i16 -195, i16 -98, i16 -276], [10 x i16] [i16 -877, i16 -954, i16 -1248, i16 -299, i16 212, i16 -235, i16 -728, i16 949, i16 1517, i16 895], [10 x i16] [i16 -77, i16 344, i16 -620, i16 763, i16 413, i16 502, i16 -362, i16 -960, i16 -483, i16 1386], [10 x i16] [i16 -314, i16 -307, i16 -256, i16 -1260, i16 -429, i16 450, i16 -466, i16 -108, i16 1010, i16 2223], [10 x i16] [i16 711, i16 693, i16 521, i16 650, i16 1305, i16 -28, i16 -378, i16 744, i16 -1005, i16 240], [10 x i16] [i16 -112, i16 -271, i16 -500, i16 946, i16 1733, i16 271, i16 -15, i16 909, i16 -259, i16 1688], [10 x i16] [i16 575, i16 -10, i16 -468, i16 -199, i16 1101, i16 -1011, i16 581, i16 -53, i16 -747, i16 878], [10 x i16] [i16 145, i16 -285, i16 -1280, i16 -398, i16 36, i16 -498, i16 -1377, i16 18, i16 -444, i16 1483], [10 x i16] [i16 -1133, i16 -835, i16 1350, i16 1284, i16 -95, i16 1015, i16 -222, i16 443, i16 372, i16 -354], [10 x i16] [i16 -1459, i16 -1237, i16 416, i16 -213, i16 466, i16 669, i16 659, i16 1640, i16 932, i16 534], [10 x i16] [i16 -15, i16 66, i16 468, i16 1019, i16 -748, i16 1385, i16 -182, i16 -907, i16 -721, i16 -262], [10 x i16] [i16 -338, i16 148, i16 1445, i16 75, i16 -760, i16 569, i16 1247, i16 337, i16 416, i16 -121], [10 x i16] [i16 389, i16 239, i16 1568, i16 981, i16 113, i16 369, i16 -1003, i16 -507, i16 -587, i16 -904], [10 x i16] [i16 -312, i16 -98, i16 949, i16 31, i16 1104, i16 72, i16 -141, i16 1465, i16 63, i16 -785], [10 x i16] [i16 1127, i16 584, i16 835, i16 277, i16 -1159, i16 208, i16 301, i16 -882, i16 117, i16 -404], [10 x i16] [i16 539, i16 -114, i16 856, i16 -493, i16 223, i16 -912, i16 623, i16 -76, i16 276, i16 -440], [10 x i16] [i16 2197, i16 2337, i16 1268, i16 670, i16 304, i16 -267, i16 -525, i16 140, i16 882, i16 -139], [10 x i16] [i16 -1596, i16 550, i16 801, i16 -456, i16 -56, i16 -697, i16 865, i16 1060, i16 413, i16 446], [10 x i16] [i16 1154, i16 593, i16 -77, i16 1237, i16 -31, i16 581, i16 -1037, i16 -895, i16 669, i16 297], [10 x i16] [i16 397, i16 558, i16 203, i16 -797, i16 -919, i16 3, i16 692, i16 -292, i16 1050, i16 782], [10 x i16] [i16 334, i16 1475, i16 632, i16 -80, i16 48, i16 -1061, i16 -484, i16 362, i16 -597, i16 -852], [10 x i16] [i16 -545, i16 -330, i16 -429, i16 -680, i16 1133, i16 -1182, i16 -744, i16 1340, i16 262, i16 63], [10 x i16] [i16 1320, i16 827, i16 -398, i16 -576, i16 341, i16 -774, i16 -483, i16 -1247, i16 -70, i16 98], [10 x i16] [i16 -163, i16 674, i16 -11, i16 -886, i16 531, i16 -1125, i16 -265, i16 -242, i16 724, i16 934]], align 16
@cb_ma_predictor_sum = internal unnamed_addr constant [2 x [10 x i16]] [[10 x i16] [i16 7798, i16 8447, i16 8205, i16 8293, i16 8126, i16 8477, i16 8447, i16 8703, i16 9043, i16 8604], [10 x i16] [i16 14585, i16 18333, i16 19772, i16 17344, i16 16426, i16 16459, i16 15155, i16 15220, i16 16043, i16 15708]], align 16
@phase_filter = internal constant <{ [40 x i16], [40 x i16], <{ i16, [39 x i16] }> }> <{ [40 x i16] [i16 14690, i16 11518, i16 1268, i16 -2762, i16 -5672, i16 7514, i16 -36, i16 -2808, i16 -3041, i16 4823, i16 2952, i16 -8425, i16 3785, i16 1455, i16 2179, i16 -8638, i16 8051, i16 -2104, i16 -1455, i16 777, i16 1108, i16 -2386, i16 2254, i16 -364, i16 -675, i16 -2104, i16 6046, i16 -5682, i16 1072, i16 3123, i16 -5059, i16 5312, i16 -2330, i16 -3729, i16 6924, i16 -3890, i16 675, i16 -1776, i16 29, i16 10145], [40 x i16] [i16 30274, i16 3831, i16 -4037, i16 2972, i16 -1049, i16 -1003, i16 2477, i16 -3044, i16 2815, i16 -2232, i16 1753, i16 -1612, i16 1714, i16 -1776, i16 1543, i16 -1009, i16 429, i16 -170, i16 472, i16 -1265, i16 2176, i16 -2707, i16 2523, i16 -1622, i16 344, i16 826, i16 -1530, i16 1724, i16 -1658, i16 1701, i16 -2064, i16 2644, i16 -3061, i16 2897, i16 -1979, i16 557, i16 780, i16 -1370, i16 842, i16 655], <{ i16, [39 x i16] }> <{ i16 32767, [39 x i16] zeroinitializer }> }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @decoder_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 4 uses
  %i.e = add i32 %i.d, -3
  %or.cond = icmp ult i32 %i.e, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.d) #9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 6, ptr %i.f, align 4, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 80, ptr %i.g, align 8, !tbaa !46
  %narrow = mul nuw nsw i32 %i.d, 1368
  %i.h = zext nneg i32 %narrow to i64
  %i.i = tail call noalias ptr @av_mallocz(i64 noundef %i.h) #9 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !32
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %vector.ph
  %.04554 = phi i32 [ %i.af, %vector.ph ], [ 0, %bb.c ]
  %.04653 = phi ptr [ %i.ae, %vector.ph ], [ %i.i, %bb.c ] ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.04653, i64 1340
  store i32 16384, ptr %i.k, align 4, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %.04653, i64 484
  %i.m = getelementptr inbounds nuw i8, ptr %.04653, i64 584
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv56 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next57, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.l, i64 %indvars.iv56 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv56
  store ptr %i.n, ptr %i.o, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 1, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.p = trunc i64 %indvars.iv to i32
  %i.q = mul i32 %i.p, 18717
  %i.r = lshr i32 %i.q, 3
  %i.s = trunc nuw nsw i32 %i.r to i16
  %i.t = getelementptr [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  store i16 %i.s, ptr %i.u, align 2, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !42

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next57, 5
  br i1 %exitcond59.not, label %vector.ph, label %bb.d, !llvm.loop !43

vector.ph:                                        ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.04653, i64 644 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04653, i64 688
  store ptr %i.v, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %.04653, i64 664
  %i.y = getelementptr inbounds nuw i8, ptr %.04653, i64 696
  store ptr %i.x, ptr %i.y, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 16 dereferenceable(20) @lsp_init, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.04653, i64 308
  %i.aa = getelementptr inbounds nuw i8, ptr %.04653, i64 472
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %.04653, i64 480
  store i32 20, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %.04653, i64 1344
  store i16 21845, ptr %i.ac, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %.04653, i64 704
  store <4 x i16> splat (i16 -14336), ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %.04653, i64 1368
  %i.af = add nuw nsw i32 %.04554, 1              ; 2 uses
  %exitcond64.not = icmp eq i32 %i.af, %i.d
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %vector.ph
  tail call void @ff_audiodsp_init(ptr noundef %i.b) #9
  store ptr @scalarproduct_int16_c, ptr %i.b, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.047 = phi i32 [ -22, %bb.b ], [ 0, %._crit_edge ], [ -12, %bb.c ]
  ret i32 %.047
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef initializes((112, 116)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [40 x i16], align 16              ; 9 uses
  %i.b = alloca [2 x [11 x i16]], align 16        ; 6 uses
  %.sroa.0 = alloca i32, align 4                  ; 4 uses
  %.sroa.5 = alloca i32, align 4                  ; 3 uses
  %i.c = alloca [40 x i16], align 16              ; 16 uses
  %i.d = alloca [50 x i16], align 16              ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [40 x i16], align 16              ; 10 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !55   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 80, ptr %i.r, align 8, !tbaa !60
  %i.s = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %indvars.iv532.sroa.gep605 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  br i1 %i.t, label %bb.ck, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !61
  %i.w = icmp eq i32 %i.v, 86106
  %i.x = select i1 %i.w, i32 11, i32 10
  %i.y = mul nsw i32 %i.x, %i.q
  %i.z = srem i32 %i.k, %i.y
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 1334
  store i16 0, ptr %i.ab, align 2, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1332
  store i16 2, ptr %i.ac, align 4, !tbaa !63
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ad = shl nsw i32 %i.q, 3
  %i.ae = icmp eq i32 %i.k, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !61
  %.not266 = icmp eq i32 %i.ag, 86106
  br i1 %.not266, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.k) #9
  br label %bb.ck

bb.h:                                             ; preds = %bb.f, %bb.d
  %.str.7.sink = phi ptr [ @.str.6, %bb.d ], [ @.str.7, %bb.f ]
  %.0251 = phi ptr [ @format_g729_8k, %bb.d ], [ @format_g729d_6k4, %bb.f ] ; 8 uses
  %i.ah = phi i1 [ false, %bb.d ], [ true, %bb.f ] ; 4 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.7.sink) #9
  %i.ai = icmp sgt i32 %i.q, 0
  br i1 %i.ai, label %.lr.ph499, label %._crit_edge500

.lr.ph499:                                        ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.0251, i64 7
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.am = getelementptr inbounds nuw i8, ptr %.0251, i64 6
  %i.an = getelementptr inbounds nuw i8, ptr %.0251, i64 5
  %i.ao = getelementptr inbounds nuw i8, ptr %.0251, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.0251, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0251, i64 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %wide.trip.count538 = zext nneg i32 %i.q to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph499, %bb.cj
  %indvars.iv535 = phi i64 [ 0, %.lr.ph499 ], [ %indvars.iv.next536, %bb.cj ] ; 3 uses
  %.0246497 = phi ptr [ %i.o, %.lr.ph499 ], [ %i.bdc, %bb.cj ] ; 94 uses
  %.0252494 = phi ptr [ %i.i, %.lr.ph499 ], [ %i.bdb, %bb.cj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 0, ptr %i.e, align 4, !tbaa !64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv535
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !65
  %i.bj = load i32, ptr %i.aj, align 8, !tbaa !61
  %i.bk = icmp eq i32 %i.bj, 86106
  br i1 %i.bk, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bl = load i8, ptr %.0252494, align 1, !tbaa !66
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = load i32, ptr %i.p, align 4, !tbaa !29
  %i.bo = trunc nuw nsw i64 %indvars.iv535 to i32 ; 2 uses
  %i.bp = xor i32 %i.bo, -1
  %i.bq = add i32 %i.bn, %i.bp
  %i.br = shl nsw i32 %i.bq, 7
  %i.bs = or disjoint i32 %i.br, 2
  %.not267 = icmp eq i32 %i.bs, %i.bm
  br i1 %.not267, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.bm, i32 noundef %i.bo) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.0252494, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1253 = phi ptr [ %i.bt, %bb.l ], [ %.0252494, %bb.i ] ; 12 uses
  %i.bu = load i8, ptr %i.ak, align 1, !tbaa !68  ; 5 uses
  %i.bv = zext i8 %i.bu to i32
  %.not501 = icmp eq i8 %i.bu, 0
  br i1 %.not501, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i8 %i.bu to i64         ; 3 uses
  %min.iters.check = icmp ult i8 %i.bu, 8
  br i1 %min.iters.check, label %.lr.ph.preheader596, label %vector.ph583

vector.ph583:                                     ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph583
  %index585 = phi i64 [ 0, %vector.ph583 ], [ %index.next589, %vector.body584 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph583 ], [ %i.ca, %vector.body584 ]
  %vec.phi586 = phi <4 x i32> [ zeroinitializer, %vector.ph583 ], [ %i.cb, %vector.body584 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.1253, i64 %index585 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %wide.load587 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !66
  %wide.load588 = load <4 x i8>, ptr %i.bx, align 1, !tbaa !66
  %i.by = zext <4 x i8> %wide.load587 to <4 x i32>
  %i.bz = zext <4 x i8> %wide.load588 to <4 x i32>
  %i.ca = or <4 x i32> %vec.phi, %i.by            ; 2 uses
  %i.cb = or <4 x i32> %vec.phi586, %i.bz         ; 2 uses
  %index.next589 = add nuw i64 %index585, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next589, %n.vec
  br i1 %i.cc, label %middle.block590, label %vector.body584, !llvm.loop !48

middle.block590:                                  ; preds = %vector.body584
  %bin.rdx = or <4 x i32> %i.cb, %i.ca
  %i.cd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader596

.lr.ph.preheader596:                              ; preds = %.lr.ph.preheader, %middle.block590
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block590 ]
  %.0239483.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cd, %middle.block590 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader596, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader596 ] ; 2 uses
  %.0239483 = phi i32 [ %i.ch, %.lr.ph ], [ %.0239483.ph, %.lr.ph.preheader596 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.1253, i64 %indvars.iv
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !66
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or i32 %.0239483, %i.cg                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block590
  %.lcssa = phi i32 [ %i.cd, %middle.block590 ], [ %i.ch, %.lr.ph ]
  %i.ci = icmp eq i32 %.lcssa, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.0239.lcssa = phi i1 [ true, %bb.m ], [ %i.ci, %._crit_edge.loopexit ] ; 8 uses
  %i.cj = zext i1 %.0239.lcssa to i32
  %i.ck = shl nuw nsw i32 %i.bv, 3
  %.not.i.i = icmp eq ptr %.1253, null
  %i.cl = add nuw nsw i32 %i.ck, 8                ; 7 uses
  %i.cm = select i1 %.not.i.i, i32 8, i32 %i.cl   ; 2 uses
  %i.cn = load i32, ptr %.1253, align 1, !tbaa !66
  %i.co = call i32 @llvm.bswap.i32(i32 %i.cn)     ; 2 uses
  %i.cp = lshr i32 %i.co, 31                      ; 2 uses
  %i.cq = call i32 @llvm.umin.i32(i32 %i.cm, i32 13) ; 2 uses
  %i.cr = add nuw nsw i32 %i.cq, 5
  %i.cs = call i32 @llvm.umin.i32(i32 %i.cm, i32 %i.cr)
  br i1 %.0239.lcssa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %.0246497, i64 624
  %i.cu = getelementptr inbounds nuw i8, ptr %.0246497, i64 584
  %i.cv = getelementptr inbounds nuw i8, ptr %.0246497, i64 1348
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %.0246497, i64 616
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36 ; 10 uses
  %i.cz = sext i32 %i.cw to i64                   ; 2 uses
  %i.da = getelementptr inbounds [80 x i8], ptr @cb_ma_predictor, i64 %i.cz ; 40 uses
  %i.db = getelementptr inbounds [20 x i8], ptr @cb_ma_predictor_sum_inv, i64 %i.cz ; 10 uses
  %i.dc = load i16, ptr %i.ct, align 8, !tbaa !37
  %i.dd = sext i16 %i.dc to i32
  %i.de = shl nsw i32 %i.dd, 15
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !36 ; 10 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !37
  %i.dh = sext i16 %i.dg to i32
  %i.di = load i16, ptr %i.da, align 16, !tbaa !37
  %i.dj = sext i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %.0246497, i64 592
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 10 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !37
  %i.dn = sext i16 %i.dm to i32
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %i.do = load i16, ptr %gep.1.i, align 4, !tbaa !37
  %i.dp = sext i16 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %.0246497, i64 600
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !36 ; 10 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !37
  %i.dt = sext i16 %i.ds to i32
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.du = load i16, ptr %gep.2.i, align 8, !tbaa !37
  %i.dv = sext i16 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %.0246497, i64 608
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !36 ; 10 uses
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !37
  %i.dz = sext i16 %i.dy to i32
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.da, i64 60
  %i.ea = load i16, ptr %gep.3.i, align 4, !tbaa !37
  %i.eb = sext i16 %i.ea to i32
  %.neg372 = mul nsw i32 %i.dj, %i.dh
  %.neg373 = mul nsw i32 %i.dp, %i.dn
  %.neg375 = mul nsw i32 %i.dv, %i.dt
  %.neg377 = mul nsw i32 %i.eb, %i.dz
  %reass.add = add i32 %.neg373, %.neg372
  %reass.add442 = add i32 %reass.add, %.neg375
  %reass.add443 = add i32 %reass.add442, %.neg377
  %i.ec = sub i32 %i.de, %reass.add443
  %i.ed = ashr i32 %i.ec, 15
  %i.ee = load i16, ptr %i.db, align 4, !tbaa !37
  %i.ef = sext i16 %i.ee to i32
  %i.eg = mul nsw i32 %i.ed, %i.ef
  %i.eh = lshr i32 %i.eg, 12
  %i.ei = trunc i32 %i.eh to i16
  store i16 %i.ei, ptr %i.cy, align 2, !tbaa !37
  %i.ej = getelementptr inbounds nuw i8, ptr %.0246497, i64 626
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !37
  %i.el = sext i16 %i.ek to i32
  %i.em = shl nsw i32 %i.el, 15
  %invariant.gep.1.i = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !37
  %i.ep = sext i16 %i.eo to i32
  %i.eq = load i16, ptr %invariant.gep.1.i, align 2, !tbaa !37
  %i.er = sext i16 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.et = load i16, ptr %i.es, align 2, !tbaa !37
  %i.eu = sext i16 %i.et to i32
  %gep.1.1.i = getelementptr inbounds nuw i8, ptr %i.da, i64 22
  %i.ev = load i16, ptr %gep.1.1.i, align 2, !tbaa !37
  %i.ew = sext i16 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !37
  %i.ez = sext i16 %i.ey to i32
  %gep.2.1.i = getelementptr inbounds nuw i8, ptr %i.da, i64 42
  %i.fa = load i16, ptr %gep.2.1.i, align 2, !tbaa !37
  %i.fb = sext i16 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !37
  %i.fe = sext i16 %i.fd to i32
  %gep.3.1.i = getelementptr inbounds nuw i8, ptr %i.da, i64 62
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  store i16 %i.axo, ptr %i.api, align 2, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body573, %bb.ce
  br i1 %i.ah, label %vector.memcheck, label %bb.cf

vector.memcheck:                                  ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.axp = load i16, ptr %i.anu, align 2, !tbaa !62
  %.val = load i16, ptr %i.ano, align 8, !tbaa !37 ; 2 uses
  %.val276 = load i16, ptr %i.anp, align 2, !tbaa !37
  %i.axq = ashr i16 %.val, 1
  %i.axr = icmp sgt i16 %i.axq, %.val276
  %i.axs = call i16 @llvm.smax.i16(i16 %i.axp, i16 1)
  %i.axt = zext nneg i16 %i.axs to i32
  %i.axu = add nsw i32 %i.axt, -1
  %.0.i318 = select i1 %i.axr, i32 2, i32 %i.axu  ; 2 uses
  %i.axv = trunc nuw nsw i32 %.0.i318 to i16
  store i16 %i.axv, ptr %i.anu, align 2, !tbaa !62
  %i.axw = load i16, ptr %i.anv, align 4, !tbaa !63
  %i.axx = sext i16 %i.axw to i32
  %i.axy = load <4 x i16>, ptr %i.anm, align 4, !tbaa !37
  %i.axz = load i16, ptr %i.anm, align 4, !tbaa !37 ; 2 uses
  %i.aya = icmp slt <4 x i16> %i.axy, splat (i16 9830)
  %i.ayb = load i16, ptr %i.anw, align 4, !tbaa !37
  %i.ayc = icmp slt i16 %i.ayb, 9830
  %i.ayd = zext i1 %i.ayc to i32
  %i.aye = load i16, ptr %i.anx, align 2, !tbaa !37
  %i.ayf = icmp slt i16 %i.aye, 9830
  %i.ayg = zext i1 %i.ayf to i32
  %i.ayh = bitcast <4 x i1> %i.aya to i4
  %i.ayi = call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.ayh)
  %i.ayj = zext nneg i4 %i.ayi to i32
  %op.rdx = add nuw nsw i32 %i.ayj, %i.ayd
  %op.rdx594 = add nuw nsw i32 %op.rdx, %i.ayg
  %i.ayk = icmp sgt i16 %i.axz, 14744
  %i.ayl = icmp sgt i16 %i.axz, 9830
  %..i319 = zext i1 %i.ayl to i32
  %.0.i320 = select i1 %i.ayk, i32 2, i32 %..i319
  %i.aym = icmp samesign ult i32 %op.rdx594, 3
  %i.ayn = icmp ne i32 %.0.i318, 0                ; 3 uses
  %or.cond.i = or i1 %i.ayn, %i.aym
  %spec.select23.i = select i1 %or.cond.i, i32 %.0.i320, i32 0 ; 2 uses
  %i.ayo = add nsw i32 %i.axx, 1
  %i.ayp = icmp sgt i32 %spec.select23.i, %i.ayo
  %not..i = xor i1 %i.ayn, true
  %or.cond25.not.i = select i1 %not..i, i1 %i.ayp, i1 false
  %i.ayq = sext i1 %or.cond25.not.i to i32
  %.2.i = add nsw i32 %spec.select23.i, %i.ayq    ; 2 uses
  %i.ayr = icmp slt i32 %.2.i, 2
  %or.cond3.i = and i1 %i.ayn, %i.ayr
  %i.ays = zext i1 %or.cond3.i to i32
  %.3.i = add nsw i32 %.2.i, %i.ays               ; 2 uses
  %i.ayt = trunc nsw i32 %.3.i to i16
  store i16 %i.ayt, ptr %i.anv, align 4, !tbaa !63
  %i.ayu = load ptr, ptr %i.anr, align 8, !tbaa !39 ; 2 uses
  %i.ayv = getelementptr inbounds nuw [2 x i8], ptr %i.ayu, i64 %i.avo ; 6 uses
  %i.ayw = sext i16 %.val to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ayx = sext i32 %.3.i to i64
  %i.ayy = getelementptr inbounds [80 x i8], ptr @phase_filter, i64 %i.ayx
  call void @ff_celp_convolve_circ(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ayy, i32 noundef 40) #9
  %i.ayz = ptrtoaddr ptr %i.ayu to i64
  %i.aza = sub i64 %i.g, %i.ayz
  %.neg592 = mul nuw nsw i64 %indvars.iv532, -80
  %i.azb = add i64 %.neg592, %i.aza
  %i.azc = add i64 %i.azb, -1
  %diff.check = icmp ult i64 %i.azc, 15
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ayw, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 10 uses
  %wide.load = load <8 x i16>, ptr %i.ayv, align 2, !tbaa !37
  %wide.load569 = load <8 x i16>, ptr %i.c, align 16, !tbaa !37
  %i.azd = sext <8 x i16> %wide.load569 to <8 x i32>
  %i.aze = mul nsw <8 x i32> %broadcast.splat, %i.azd
  %i.azf = add nsw <8 x i32> %i.aze, splat (i32 8192)
  %i.azg = lshr <8 x i32> %i.azf, splat (i32 14)
  %i.azh = trunc <8 x i32> %i.azg to <8 x i16>
  %i.azi = sub <8 x i16> %wide.load, %i.azh
  %wide.load570 = load <8 x i16>, ptr %i.a, align 16, !tbaa !37
  %i.azj = sext <8 x i16> %wide.load570 to <8 x i32>
  %i.azk = mul nsw <8 x i32> %broadcast.splat, %i.azj
  %i.azl = add nsw <8 x i32> %i.azk, splat (i32 8192)
  %i.azm = lshr <8 x i32> %i.azl, splat (i32 14)
  %i.azn = trunc <8 x i32> %i.azm to <8 x i16>
  %i.azo = add <8 x i16> %i.azi, %i.azn
  store <8 x i16> %i.azo, ptr %i.f, align 16, !tbaa !37
  %i.azp = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16
  %wide.load.1 = load <8 x i16>, ptr %i.azp, align 2, !tbaa !37
  %wide.load569.1 = load <8 x i16>, ptr %i.aw, align 16, !tbaa !37
  %i.azq = sext <8 x i16> %wide.load569.1 to <8 x i32>
  %i.azr = mul nsw <8 x i32> %broadcast.splat, %i.azq
  %i.azs = add nsw <8 x i32> %i.azr, splat (i32 8192)
  %i.azt = lshr <8 x i32> %i.azs, splat (i32 14)
  %i.azu = trunc <8 x i32> %i.azt to <8 x i16>
  %i.azv = sub <8 x i16> %wide.load.1, %i.azu
  %wide.load570.1 = load <8 x i16>, ptr %i.ax, align 16, !tbaa !37
  %i.azw = sext <8 x i16> %wide.load570.1 to <8 x i32>
  %i.azx = mul nsw <8 x i32> %broadcast.splat, %i.azw
  %i.azy = add nsw <8 x i32> %i.azx, splat (i32 8192)
  %i.azz = lshr <8 x i32> %i.azy, splat (i32 14)
  %i.baa = trunc <8 x i32> %i.azz to <8 x i16>
  %i.bab = add <8 x i16> %i.azv, %i.baa
  store <8 x i16> %i.bab, ptr %i.av, align 16, !tbaa !37
  %i.bac = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32
  %wide.load.2 = load <8 x i16>, ptr %i.bac, align 2, !tbaa !37
  %wide.load569.2 = load <8 x i16>, ptr %i.az, align 16, !tbaa !37
  %i.bad = sext <8 x i16> %wide.load569.2 to <8 x i32>
  %i.bae = mul nsw <8 x i32> %broadcast.splat, %i.bad
  %i.baf = add nsw <8 x i32> %i.bae, splat (i32 8192)
  %i.bag = lshr <8 x i32> %i.baf, splat (i32 14)
  %i.bah = trunc <8 x i32> %i.bag to <8 x i16>
  %i.bai = sub <8 x i16> %wide.load.2, %i.bah
  %wide.load570.2 = load <8 x i16>, ptr %i.ba, align 16, !tbaa !37
  %i.baj = sext <8 x i16> %wide.load570.2 to <8 x i32>
  %i.bak = mul nsw <8 x i32> %broadcast.splat, %i.baj
  %i.bal = add nsw <8 x i32> %i.bak, splat (i32 8192)
  %i.bam = lshr <8 x i32> %i.bal, splat (i32 14)
  %i.ban = trunc <8 x i32> %i.bam to <8 x i16>
  %i.bao = add <8 x i16> %i.bai, %i.ban
  store <8 x i16> %i.bao, ptr %i.ay, align 16, !tbaa !37
  %i.bap = getelementptr inbounds nuw i8, ptr %i.ayv, i64 48
  %wide.load.3 = load <8 x i16>, ptr %i.bap, align 2, !tbaa !37
  %wide.load569.3 = load <8 x i16>, ptr %i.bc, align 16, !tbaa !37
  %i.baq = sext <8 x i16> %wide.load569.3 to <8 x i32>
  %i.bar = mul nsw <8 x i32> %broadcast.splat, %i.baq
  %i.bas = add nsw <8 x i32> %i.bar, splat (i32 8192)
  %i.bat = lshr <8 x i32> %i.bas, splat (i32 14)
  %i.bau = trunc <8 x i32> %i.bat to <8 x i16>
  %i.bav = sub <8 x i16> %wide.load.3, %i.bau
  %wide.load570.3 = load <8 x i16>, ptr %i.bd, align 16, !tbaa !37
  %i.baw = sext <8 x i16> %wide.load570.3 to <8 x i32>
  %i.bax = mul nsw <8 x i32> %broadcast.splat, %i.baw
  %i.bay = add nsw <8 x i32> %i.bax, splat (i32 8192)
  %i.baz = lshr <8 x i32> %i.bay, splat (i32 14)
  %i.bba = trunc <8 x i32> %i.baz to <8 x i16>
  %i.bbb = add <8 x i16> %i.bav, %i.bba
  store <8 x i16> %i.bbb, ptr %i.bb, align 16, !tbaa !37
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 64
  %wide.load.4 = load <8 x i16>, ptr %i.bbc, align 2, !tbaa !37
  %wide.load569.4 = load <8 x i16>, ptr %i.bf, align 16, !tbaa !37
  %i.bbd = sext <8 x i16> %wide.load569.4 to <8 x i32>
  %i.bbe = mul nsw <8 x i32> %broadcast.splat, %i.bbd
  %i.bbf = add nsw <8 x i32> %i.bbe, splat (i32 8192)
  %i.bbg = lshr <8 x i32> %i.bbf, splat (i32 14)
  %i.bbh = trunc <8 x i32> %i.bbg to <8 x i16>
  %i.bbi = sub <8 x i16> %wide.load.4, %i.bbh
  %wide.load570.4 = load <8 x i16>, ptr %i.bg, align 16, !tbaa !37
  %i.bbj = sext <8 x i16> %wide.load570.4 to <8 x i32>
  %i.bbk = mul nsw <8 x i32> %broadcast.splat, %i.bbj
  %i.bbl = add nsw <8 x i32> %i.bbk, splat (i32 8192)
  %i.bbm = lshr <8 x i32> %i.bbl, splat (i32 14)
  %i.bbn = trunc <8 x i32> %i.bbm to <8 x i16>
  %i.bbo = add <8 x i16> %i.bbi, %i.bbn
  store <8 x i16> %i.bbo, ptr %i.be, align 16, !tbaa !37
  br label %g729d_get_new_exc.exit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 5 uses
  %i.bbp = getelementptr inbounds nuw [2 x i8], ptr %i.ayv, i64 %indvars.iv.i
  %i.bbq = load i16, ptr %i.bbp, align 2, !tbaa !37
  %i.bbr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.bbs = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bbt = load i16, ptr %i.bbs, align 2, !tbaa !37
  %i.bbu = sext i16 %i.bbt to i32
  %i.bbv = mul nsw i32 %i.bbu, %i.ayw
  %i.bbw = add nsw i32 %i.bbv, 8192
  %i.bbx = lshr i32 %i.bbw, 14
  %i.bby = trunc i32 %i.bbx to i16
  %i.bbz = sub i16 %i.bbq, %i.bby
  %i.bca = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bcb = load i16, ptr %i.bca, align 2, !tbaa !37
  %i.bcc = sext i16 %i.bcb to i32
  %i.bcd = mul nsw i32 %i.bcc, %i.ayw
  %i.bce = add nsw i32 %i.bcd, 8192
  %i.bcf = lshr i32 %i.bce, 14
  %i.bcg = trunc i32 %i.bcf to i16
  %i.bch = add i16 %i.bbz, %i.bcg
  store i16 %i.bch, ptr %i.bbr, align 2, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 40
  br i1 %exitcond.not.i, label %g729d_get_new_exc.exit, label %scalar.ph, !llvm.loop !50

g729d_get_new_exc.exit:                           ; preds = %scalar.ph, %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bci = call i32 @ff_celp_lp_synthesis_filter(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.awe, ptr noundef nonnull %i.f, i32 noundef 40, i32 noundef 10, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %bb.cg

bb.cf:                                            ; preds = %.loopexit
  %i.bcj = load ptr, ptr %i.anr, align 8, !tbaa !39
  %i.bck = getelementptr inbounds nuw [2 x i8], ptr %i.bcj, i64 %i.avo
  %i.bcl = call i32 @ff_celp_lp_synthesis_filter(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.awe, ptr noundef %i.bck, i32 noundef 40, i32 noundef 10, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #9 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %g729d_get_new_exc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ant, ptr noundef nonnull align 16 dereferenceable(20) %i.as, i64 20, i1 false)
  %.sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 4, !tbaa !64
  %4 = load <40 x i16>, ptr %i.ar, align 4, !tbaa !37
  call void @ff_g729_postfilter(ptr noundef %i.m, ptr noundef nonnull %i.any, ptr noundef nonnull %i.e, ptr noundef nonnull %indvars.iv532.sroa.phi604, i32 noundef %.sroa.0.0..sroa.0.0., ptr noundef nonnull %i.anz, ptr noundef nonnull %i.aoa, ptr noundef nonnull %i.aob, ptr noundef nonnull %i.ar, i32 noundef 40) #9
  %5 = load <40 x i16>, ptr %i.ar, align 4, !tbaa !37
  %6 = call <40 x i16> @llvm.abs.v40i16(<40 x i16> %5, i1 false)
  %7 = zext <40 x i16> %6 to <40 x i32>
  %i.bcm = call i32 @llvm.vector.reduce.add.v40i32(<40 x i32> %7)
  %8 = call <40 x i16> @llvm.abs.v40i16(<40 x i16> %4, i1 false)
  %9 = zext <40 x i16> %8 to <40 x i32>
  %i.bcn = call i32 @llvm.vector.reduce.add.v40i32(<40 x i32> %9)
  %i.bco = load i32, ptr %i.aoc, align 4, !tbaa !35
  %i.bcp = trunc i32 %i.bco to i16
  %i.bcq = call signext i16 @ff_g729_adaptive_gain_control(i32 noundef %i.bcn, i32 noundef %i.bcm, ptr noundef nonnull %i.ar, i32 noundef 40, i16 noundef signext %i.bcp) #9
  %i.bcr = sext i16 %i.bcq to i32
  store i32 %i.bcr, ptr %i.aoc, align 4, !tbaa !35
  br i1 %.0239.lcssa, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.bcs = load i32, ptr %i.anj, align 8, !tbaa !40
  %i.bct = call i32 @llvm.smin.i32(i32 %i.bcs, i32 142)
  %spec.select = add nsw i32 %i.bct, 1
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %storemerge565 = phi i32 [ %spec.select, %bb.ch ], [ %i.atq, %bb.cg ]
  store i32 %storemerge565, ptr %i.anj, align 8, !tbaa !40
  %i.bcu = load i32, ptr %i.aod, align 8
  store i32 %i.bcu, ptr %i.at, align 16
  %i.bcv = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.avo
  call void @ff_acelp_high_pass_filter(ptr noundef %i.bcv, ptr noundef nonnull %i.aoe, ptr noundef nonnull %i.ar, i32 noundef 40) #9
  %i.bcw = load i32, ptr %i.au, align 16
  store i32 %i.bcw, ptr %i.aod, align 8
  br i1 %.not269, label %bb.ay, label %bb.cj, !llvm.loop !51

bb.cj:                                            ; preds = %bb.ci
  %i.bcx = load i32, ptr %i.e, align 4, !tbaa !64
  %i.bcy = trunc i32 %i.bcx to i16
  store i16 %i.bcy, ptr %i.ans, align 8, !tbaa !77
  %i.bcz = getelementptr inbounds nuw i8, ptr %.0246497, i64 160
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(308) %.0246497, ptr noundef nonnull align 8 dereferenceable(308) %i.bcz, i64 308, i1 false)
  %i.bda = zext i8 %i.bu to i64
  %i.bdb = getelementptr inbounds nuw i8, ptr %.1253, i64 %i.bda
  %i.bdc = getelementptr inbounds nuw i8, ptr %.0246497, i64 1368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %exitcond539.not = icmp eq i64 %indvars.iv.next536, %wide.trip.count538
  br i1 %exitcond539.not, label %._crit_edge500, label %bb.i, !llvm.loop !52

._crit_edge500:                                   ; preds = %bb.cj, %bb.h
  store i32 1, ptr %2, align 4, !tbaa !64
  %i.bdd = getelementptr inbounds nuw i8, ptr %.0251, i64 7
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !68
  %i.bdf = zext i8 %i.bde to i32
  %i.bdg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bdh = load i32, ptr %i.bdg, align 8, !tbaa !61
  %i.bdi = icmp eq i32 %i.bdh, 86106
  %i.bdj = zext i1 %i.bdi to i32
  %i.bdk = add nuw nsw i32 %i.bdj, %i.bdf
  %i.bdl = mul nsw i32 %i.bdk, %i.q
  br label %bb.ck

bb.ck:                                            ; preds = %bb.a, %._crit_edge500, %bb.g
  %.0236 = phi i32 [ -1094995529, %bb.g ], [ %i.bdl, %._crit_edge500 ], [ %i.s, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0236
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ff_audiodsp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @scalarproduct_int16_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not13 = icmp eq i32 %2, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %2, 3                       ; 3 uses
  %i.a = icmp ult i32 %2, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %2, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.017 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %.0815 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.0914 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0914, i64 2
  %i.c = load i16, ptr %.0914, align 2, !tbaa !37
  %i.d = sext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %.0815, i64 2
  %i.f = load i16, ptr %.0815, align 2, !tbaa !37
  %i.g = sext i16 %i.f to i64
  %i.h = mul nsw i64 %i.g, %i.d
  %i.i = add nsw i64 %i.h, %.017
  %i.j = getelementptr inbounds nuw i8, ptr %.0914, i64 4
  %i.k = load i16, ptr %i.b, align 2, !tbaa !37
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.0815, i64 4
  %i.n = load i16, ptr %i.e, align 2, !tbaa !37
  %i.o = sext i16 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = add nsw i64 %i.p, %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0914, i64 6
  %i.s = load i16, ptr %i.j, align 2, !tbaa !37
  %i.t = sext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.0815, i64 6
  %i.v = load i16, ptr %i.m, align 2, !tbaa !37
  %i.w = sext i16 %i.v to i64
  %i.x = mul nsw i64 %i.w, %i.t
  %i.y = add nsw i64 %i.x, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %.0914, i64 8 ; 2 uses
  %i.aa = load i16, ptr %i.r, align 2, !tbaa !37
  %i.ab = sext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0815, i64 8 ; 2 uses
  %i.ad = load i16, ptr %i.u, align 2, !tbaa !37
  %i.ae = sext i16 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.ab
  %i.ag = add nsw i64 %i.af, %i.y                 ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !78

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.017.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %.0815.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %.0914.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.017.epil = phi i64 [ %i.ao, %.lr.ph.epil ], [ %.017.epil.init, %.lr.ph.epil.preheader ]
  %.0815.epil = phi ptr [ %i.ak, %.lr.ph.epil ], [ %.0815.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0914.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.0914.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0914.epil, i64 2
  %i.ai = load i16, ptr %.0914.epil, align 2, !tbaa !37
  %i.aj = sext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.0815.epil, i64 2
  %i.al = load i16, ptr %.0815.epil, align 2, !tbaa !37
  %i.am = sext i16 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.aj
  %i.ao = add nsw i64 %i.an, %.017.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !79

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.epil ]
  %i.ap = tail call i64 @llvm.smax.i64(i64 %.lcssa, i64 -2147483648)
  %i.aq = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 2147483647)
  %i.ar = trunc nsw i64 %i.aq to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ar, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @ff_acelp_lsf2lsp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_lp_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @ff_acelp_fc_pulse_per_track(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_weighted_vector_sum(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare signext i16 @ff_acelp_decode_gain_code(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_update_past_gain(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_interpolate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_celp_lp_synthesis_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_g729_postfilter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare signext i16 @ff_g729_adaptive_gain_control(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #3

declare void @ff_acelp_high_pass_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_reorder_lsf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_celp_convolve_circ(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <40 x i16> @llvm.abs.v40i16(<40 x i16>, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v40i32(<40 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

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
!29 = !{!27, !6, i64 356}
!30 = !{!"AudioDSPContext", !9, i64 0, !9, i64 8, !9, i64 16}
!31 = !{!"", !30, i64 0, !9, i64 24}
!32 = !{!31, !9, i64 24}
!33 = !{!"short", !5, i64 0}
!34 = !{!"", !5, i64 0, !17, i64 472, !6, i64 480, !5, i64 484, !5, i64 584, !5, i64 624, !5, i64 644, !5, i64 688, !5, i64 704, !5, i64 712, !5, i64 732, !5, i64 1116, !5, i64 1216, !5, i64 1316, !5, i64 1328, !33, i64 1332, !33, i64 1334, !33, i64 1336, !33, i64 1338, !6, i64 1340, !33, i64 1344, !6, i64 1348, !5, i64 1352, !5, i64 1360}
!35 = !{!34, !6, i64 1340}
!36 = !{!17, !17, i64 0}
!37 = !{!33, !33, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!34, !17, i64 472}
!40 = !{!34, !6, i64 480}
!41 = !{!34, !33, i64 1344}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !38}
!45 = !{!27, !6, i64 348}
!46 = !{!27, !6, i64 376}
!47 = !{!31, !9, i64 0}
!48 = distinct !{!48, !38, !69, !70}
!49 = distinct !{!49, !38, !70, !69}
!50 = distinct !{!50, !38, !69}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
!53 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!54 = !{!53, !14, i64 24}
!55 = !{!53, !6, i64 32}
!56 = !{!"p2 omnipotent char", !25, i64 0}
!57 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!58 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!59 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !57, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !58, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!60 = !{!59, !6, i64 112}
!61 = !{!27, !6, i64 24}
!62 = !{!34, !33, i64 1334}
!63 = !{!34, !33, i64 1332}
!64 = !{!6, !6, i64 0}
!65 = !{!14, !14, i64 0}
!66 = !{!5, !5, i64 0}
!67 = !{!"", !5, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7}
!68 = !{!67, !5, i64 7}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!34, !6, i64 1348}
!72 = !{!67, !5, i64 6}
!73 = !{!67, !5, i64 5}
!74 = !{!67, !5, i64 3}
!75 = !{!67, !5, i64 4}
!76 = !{!67, !5, i64 2}
!77 = !{!34, !33, i64 1336}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
