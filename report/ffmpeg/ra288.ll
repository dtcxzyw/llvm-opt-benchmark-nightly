Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ra288?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"real_288\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"RealAudio 2.0 (28.8K)\00", align 1
@ff_ra_288_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 77825, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 1072, ptr null, ptr null, ptr null, ptr @ra288_decode_init, %union.anon { ptr @ra288_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"unsupported block align\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Error! Input buffer is too small [%d<%d]\0A\00", align 1
@amptable = internal unnamed_addr constant [8 x float] [float 5.156250e-01, float f0x3F670000, float f0x3FCA2000, float f0x4030DC00, float -5.156250e-01, float f0xBF670000, float f0xBFCA2000, float f0xC030DC00], align 16
@syn_window = internal constant [112 x float] [float 5.766910e-01, float 5.808380e-01, float 5.850140e-01, float 5.892200e-01, float 5.934560e-01, float 5.977230e-01, float f0x3F1A1E00, float f0x3F1B3C00, float f0x3F1C5A00, float f0x3F1D7A00, float f0x3F1E9E00, float f0x3F1FC400, float f0x3F20EA00, float f0x3F221400, float f0x3F234000, float f0x3F246C00, float f0x3F259C00, float f0x3F26CE00, float f0x3F280200, float f0x3F293A00, float 6.658020e-01, float f0x3F2BAC00, float f0x3F2CEA00, float f0x3F2E2A00, float f0x3F2F6C00, float f0x3F30B000, float f0x3F31F600, float f0x3F333E00, float f0x3F348A00, float f0x3F35D800, float f0x3F372800, float f0x3F387A00, float f0x3F39D000, float f0x3F3B2600, float f0x3F3C8000, float f0x3F3DDC00, float f0x3F3F3C00, float f0x3F409C00, float f0x3F420000, float f0x3F436800, float f0x3F44D000, float 7.743530e-01, float f0x3F47AA00, float f0x3F491C00, float f0x3F4A8E00, float f0x3F4C0400, float f0x3F4D7E00, float f0x3F4EFA00, float f0x3F507800, float f0x3F51FA00, float f0x3F537E00, float f0x3F550400, float f0x3F568E00, float f0x3F581A00, float f0x3F59AA00, float f0x3F5B3C00, float f0x3F5CD000, float f0x3F5E6800, float f0x3F600400, float f0x3F61A200, float f0x3F634200, float f0x3F64E600, float f0x3F668E00, float f0x3F683800, float f0x3F69E400, float f0x3F6B9400, float f0x3F6D4800, float f0x3F6EFE00, float f0x3F70B800, float f0x3F727400, float f0x3F743400, float f0x3F75F800, float f0x3F77BE00, float f0x3F798800, float 9.817810e-01, float f0x3F7D2600, float f0x3F7EAE00, float f0x3F7FA200, float f0x3F7FFE00, float f0x3F7FC600, float f0x3F7EFA00, float f0x3F7D9800, float f0x3F7BA000, float f0x3F791800, float f0x3F75FC00, float f0x3F725000, float f0x3F6E1800, float f0x3F695400, float f0x3F640800, float 8.680420e-01, float f0x3F57E400, float f0x3F511200, float 7.882080e-01, float f0x3F420600, float f0x3F39D400, float f0x3F313400, float f0x3F282C00, float f0x3F1EC400, float f0x3F14FE00, float f0x3F0AE000, float f0x3F007200, float f0x3EEB7000, float f0x3ED57400, float f0x3EBEFC00, float f0x3EA81400, float f0x3E90C800, float f0x3E725800, float f0x3E428800, float f0x3E124800, float f0x3DC37000, float f0x3D43A000, float 0.000000e+00], align 16
@gain_bw_tab = internal constant [16 x float] [float 9.062500e-01, float f0x3F524000, float f0x3F3E8C00, float f0x3F2CAC00, float f0x3F1C7C00, float f0x3F0DD000, float f0x3F008400, float f0x3EE8F000, float f0x3ED31800, float f0x3EBF5000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@codetable = internal unnamed_addr constant [128 x [5 x i16]] [[5 x i16] [i16 668, i16 -2950, i16 -1254, i16 -1790, i16 -2553], [5 x i16] [i16 -5032, i16 -4577, i16 -1045, i16 2908, i16 3318], [5 x i16] [i16 -2819, i16 -2677, i16 -948, i16 -2825, i16 -4450], [5 x i16] [i16 -6679, i16 -340, i16 1482, i16 -1276, i16 1262], [5 x i16] [i16 -562, i16 -6757, i16 1281, i16 179, i16 -1274], [5 x i16] [i16 -2512, i16 -7130, i16 -4925, i16 6913, i16 2411], [5 x i16] [i16 -2478, i16 -156, i16 4683, i16 -3873, i16 0], [5 x i16] [i16 -8208, i16 2140, i16 -478, i16 -2785, i16 533], [5 x i16] [i16 1889, i16 2759, i16 1381, i16 -6955, i16 -5913], [5 x i16] [i16 5082, i16 -2460, i16 -5778, i16 1797, i16 568], [5 x i16] [i16 -2208, i16 -3309, i16 -4523, i16 -6236, i16 -7505], [5 x i16] [i16 -2719, i16 4358, i16 -2988, i16 -1149, i16 2664], [5 x i16] [i16 1259, i16 995, i16 2711, i16 -2464, i16 -10390], [5 x i16] [i16 1722, i16 -7569, i16 -2742, i16 2171, i16 -2329], [5 x i16] [i16 1032, i16 747, i16 -858, i16 -7946, i16 -12843], [5 x i16] [i16 3106, i16 4856, i16 -4193, i16 -2541, i16 1035], [5 x i16] [i16 1862, i16 -960, i16 -6628, i16 410, i16 5882], [5 x i16] [i16 -2493, i16 -2628, i16 -4000, i16 -60, i16 7202], [5 x i16] [i16 -2672, i16 1446, i16 1536, i16 -3831, i16 1233], [5 x i16] [i16 -5302, i16 6912, i16 1589, i16 -4187, i16 3665], [5 x i16] [i16 -3456, i16 -8170, i16 -7709, i16 1384, i16 4698], [5 x i16] [i16 -4699, i16 -6209, i16 -11176, i16 8104, i16 16830], [5 x i16] [i16 930, i16 7004, i16 1269, i16 -8977, i16 2567], [5 x i16] [i16 4649, i16 11804, i16 3441, i16 -5657, i16 1199], [5 x i16] [i16 2542, i16 -183, i16 -8859, i16 -7976, i16 3230], [5 x i16] [i16 -2872, i16 -2011, i16 -9713, i16 -8385, i16 12983], [5 x i16] [i16 3086, i16 2140, i16 -3680, i16 -9643, i16 -2896], [5 x i16] [i16 -7609, i16 6515, i16 -2283, i16 -2522, i16 6332], [5 x i16] [i16 -3333, i16 -5620, i16 -9130, i16 -11131, i16 5543], [5 x i16] [i16 -407, i16 -6721, i16 -17466, i16 -2889, i16 11568], [5 x i16] [i16 3692, i16 6796, i16 -262, i16 -10846, i16 -1856], [5 x i16] [i16 7275, i16 13404, i16 -2989, i16 -10595, i16 4936], [5 x i16] [i16 244, i16 -2219, i16 2656, i16 3776, i16 -5412], [5 x i16] [i16 -4043, i16 -5934, i16 2131, i16 863, i16 -2866], [5 x i16] [i16 -3302, i16 1743, i16 -2006, i16 -128, i16 -2052], [5 x i16] [i16 -6361, i16 3342, i16 -1583, i16 -21, i16 1142], [5 x i16] [i16 -3837, i16 -1831, i16 6397, i16 2545, i16 -2848], [5 x i16] [i16 -9332, i16 -6528, i16 5309, i16 1986, i16 -2245], [5 x i16] [i16 -4490, i16 748, i16 1935, i16 -3027, i16 -493], [5 x i16] [i16 -9255, i16 5366, i16 3193, i16 -4493, i16 1784], [5 x i16] [i16 4784, i16 -370, i16 1866, i16 1057, i16 -1889], [5 x i16] [i16 7342, i16 -2690, i16 -2577, i16 676, i16 -611], [5 x i16] [i16 -502, i16 2235, i16 -1850, i16 -1777, i16 -2049], [5 x i16] [i16 1011, i16 3880, i16 -2465, i16 2209, i16 -152], [5 x i16] [i16 2592, i16 2829, i16 5588, i16 2839, i16 -7306], [5 x i16] [i16 -3049, i16 -4918, i16 5955, i16 9201, i16 -4447], [5 x i16] [i16 697, i16 3908, i16 5798, i16 -4451, i16 -4644], [5 x i16] [i16 -2121, i16 5444, i16 -2570, i16 321, i16 -1202], [5 x i16] [i16 2846, i16 -2086, i16 3532, i16 566, i16 -708], [5 x i16] [i16 -4279, i16 950, i16 4980, i16 3749, i16 452], [5 x i16] [i16 -2484, i16 3502, i16 1719, i16 -170, i16 238], [5 x i16] [i16 -3435, i16 263, i16 2114, i16 -2005, i16 2361], [5 x i16] [i16 -7338, i16 -1208, i16 9347, i16 -1216, i16 -4013], [5 x i16] [i16 -13498, i16 -439, i16 8028, i16 -4232, i16 361], [5 x i16] [i16 -3729, i16 5433, i16 2004, i16 -4727, i16 -1259], [5 x i16] [i16 -3986, i16 7743, i16 8429, i16 -3691, i16 -987], [5 x i16] [i16 5198, i16 -423, i16 1150, i16 -1281, i16 816], [5 x i16] [i16 7409, i16 4109, i16 -3949, i16 2690, i16 30], [5 x i16] [i16 1246, i16 3055, i16 -35, i16 -1370, i16 -246], [5 x i16] [i16 -1489, i16 5635, i16 -678, i16 -2627, i16 3170], [5 x i16] [i16 4830, i16 -4585, i16 2008, i16 -1062, i16 799], [5 x i16] [i16 -129, i16 717, i16 4594, i16 14937, i16 10706], [5 x i16] [i16 417, i16 2759, i16 1850, i16 -5057, i16 -1153], [5 x i16] [i16 -3887, i16 7361, i16 -5768, i16 4285, i16 666], [5 x i16] [i16 1443, i16 -938, i16 20, i16 -2119, i16 -1697], [5 x i16] [i16 -3712, i16 -3402, i16 -2212, i16 110, i16 2136], [5 x i16] [i16 -2952, i16 12, i16 -1568, i16 -3500, i16 -1855], [5 x i16] [i16 -1315, i16 -1731, i16 1160, i16 -558, i16 1709], [5 x i16] [i16 88, i16 -4569, i16 194, i16 -454, i16 -2957], [5 x i16] [i16 -2839, i16 -1666, i16 -273, i16 2084, i16 -155], [5 x i16] [i16 -189, i16 -2376, i16 1663, i16 -1040, i16 -2449], [5 x i16] [i16 -2842, i16 -1369, i16 636, i16 -248, i16 -2677], [5 x i16] [i16 1517, i16 79, i16 -3013, i16 -3669, i16 -973], [5 x i16] [i16 1913, i16 -2493, i16 -5312, i16 -749, i16 1271], [5 x i16] [i16 -2903, i16 -3324, i16 -3756, i16 -3690, i16 -1829], [5 x i16] [i16 -2913, i16 -1547, i16 -2760, i16 -1406, i16 1124], [5 x i16] [i16 1844, i16 -1834, i16 456, i16 706, i16 -4272], [5 x i16] [i16 467, i16 -4256, i16 -1909, i16 1521, i16 1134], [5 x i16] [i16 -127, i16 -994, i16 -637, i16 -1491, i16 -6494], [5 x i16] [i16 873, i16 -2045, i16 -3828, i16 -2792, i16 -578], [5 x i16] [i16 2311, i16 -1817, i16 2632, i16 -3052, i16 1968], [5 x i16] [i16 641, i16 1194, i16 1893, i16 4107, i16 6342], [5 x i16] [i16 -45, i16 1198, i16 2160, i16 -1449, i16 2203], [5 x i16] [i16 -2004, i16 1713, i16 3518, i16 2652, i16 4251], [5 x i16] [i16 2936, i16 -3968, i16 1280, i16 131, i16 -1476], [5 x i16] [i16 2827, i16 8, i16 -1928, i16 2658, i16 3513], [5 x i16] [i16 3199, i16 -816, i16 2687, i16 -1741, i16 -1407], [5 x i16] [i16 2948, i16 4029, i16 394, i16 -253, i16 1298], [5 x i16] [i16 4286, i16 51, i16 -4507, i16 -32, i16 -659], [5 x i16] [i16 3903, i16 5646, i16 -5588, i16 -2592, i16 5707], [5 x i16] [i16 -606, i16 1234, i16 -1607, i16 -5187, i16 664], [5 x i16] [i16 -525, i16 3620, i16 -2192, i16 -2527, i16 1707], [5 x i16] [i16 4297, i16 -3251, i16 -2283, i16 812, i16 -2264], [5 x i16] [i16 5765, i16 528, i16 -3287, i16 1352, i16 1672], [5 x i16] [i16 2735, i16 1241, i16 -1103, i16 -3273, i16 -3407], [5 x i16] [i16 4033, i16 1648, i16 -2965, i16 -1174, i16 1444], [5 x i16] [i16 74, i16 918, i16 1999, i16 915, i16 -1026], [5 x i16] [i16 -2496, i16 -1605, i16 2034, i16 2950, i16 229], [5 x i16] [i16 -2168, i16 2037, i16 15, i16 -1264, i16 -208], [5 x i16] [i16 -3552, i16 1530, i16 581, i16 1491, i16 962], [5 x i16] [i16 -2613, i16 -2338, i16 3621, i16 -1488, i16 -2185], [5 x i16] [i16 -1747, i16 81, i16 5538, i16 1432, i16 -2257], [5 x i16] [i16 -1019, i16 867, i16 214, i16 -2284, i16 -1510], [5 x i16] [i16 -1684, i16 2816, i16 -229, i16 2551, i16 -1389], [5 x i16] [i16 2707, i16 504, i16 479, i16 2783, i16 -1009], [5 x i16] [i16 2517, i16 -1487, i16 -1596, i16 621, i16 1929], [5 x i16] [i16 -148, i16 2206, i16 -4288, i16 1292, i16 -1401], [5 x i16] [i16 -527, i16 1243, i16 -2731, i16 1909, i16 1280], [5 x i16] [i16 2149, i16 -1501, i16 3688, i16 610, i16 -4591], [5 x i16] [i16 3306, i16 -3369, i16 1875, i16 3636, i16 -1217], [5 x i16] [i16 2574, i16 2513, i16 1449, i16 -3074, i16 -4979], [5 x i16] [i16 814, i16 1826, i16 -2497, i16 4234, i16 -4077], [5 x i16] [i16 1664, i16 -220, i16 3418, i16 1002, i16 1115], [5 x i16] [i16 781, i16 1658, i16 3919, i16 6130, i16 3140], [5 x i16] [i16 1148, i16 4065, i16 1516, i16 815, i16 199], [5 x i16] [i16 1191, i16 2489, i16 2561, i16 2421, i16 2443], [5 x i16] [i16 770, i16 -5915, i16 5515, i16 -368, i16 -3199], [5 x i16] [i16 1190, i16 1047, i16 3742, i16 6927, i16 -2089], [5 x i16] [i16 292, i16 3099, i16 4308, i16 -758, i16 -2455], [5 x i16] [i16 523, i16 3921, i16 4044, i16 1386, i16 85], [5 x i16] [i16 4367, i16 1006, i16 -1252, i16 -1466, i16 -1383], [5 x i16] [i16 3852, i16 1579, i16 -77, i16 2064, i16 868], [5 x i16] [i16 5109, i16 2919, i16 -202, i16 359, i16 -509], [5 x i16] [i16 3650, i16 3206, i16 2303, i16 1693, i16 1296], [5 x i16] [i16 2905, i16 -3907, i16 229, i16 -1196, i16 -2332], [5 x i16] [i16 5977, i16 -3585, i16 805, i16 3825, i16 -3138], [5 x i16] [i16 3746, i16 -606, i16 53, i16 -269, i16 -3301], [5 x i16] [i16 606, i16 2018, i16 -1316, i16 4064, i16 398]], align 16
@syn_bw_tab = internal constant <{ [36 x float], [12 x float] }> <{ [36 x float] [float f0x3F7D0000, float f0x3F7A0900, float f0x3F771AE5, float f0x3F743594, float f0x3F7158F3, float f0x3F6E84E8, float f0x3F6BB959, float f0x3F68F62D, float f0x3F663B4A, float 8.888030e-01, float f0x3F60DDFE, float f0x3F5E3B64, float f0x3F5BA0B2, float 8.478670e-01, float f0x3F5682A7, float f0x3F53FF1F, float f0x3F518322, float f0x3F4F0E99, float f0x3F4CA16D, float f0x3F4A3B89, float f0x3F47DCD6, float f0x3F45853F, float f0x3F4334AF, float f0x3F40EB11, float f0x3F3EA850, float f0x3F3C6C57, float f0x3F3A3712, float f0x3F38086D, float f0x3F35E054, float f0x3F33BEB3, float f0x3F31A377, float f0x3F2F8E8D, float f0x3F2D7FE1, float f0x3F2B7761, float f0x3F2974FB, float f0x3F27789C], [12 x float] zeroinitializer }>, align 16
@gain_window = internal constant <{ [38 x float], [10 x float] }> <{ [38 x float] [float 5.057000e-01, float 5.242000e-01, float 5.434000e-01, float 5.633000e-01, float f0x3F157E00, float f0x3F1AF800, float f0x3F20A400, float f0x3F268600, float f0x3F2CA000, float f0x3F32F200, float f0x3F397E00, float f0x3F404A00, float f0x3F475400, float f0x3F4EA000, float f0x3F563000, float f0x3F5E0800, float f0x3F662A00, float f0x3F6E9800, float f0x3F762400, float f0x3F7B9600, float f0x3F7EE200, float 1.000000e+00, float f0x3F7EEE00, float f0x3F7BB000, float f0x3F764A00, float f0x3F6ECA00, float f0x3F654000, float f0x3F59C000, float f0x3F4C6400, float f0x3F3D4800, float f0x3F2C9000, float f0x3F1A5E00, float f0x3F06DA00, float f0x3EE45C00, float f0x3EB91400, float f0x3E8C3400, float f0x3E3C4800, float f0x3DBD2000], [10 x float] zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1163346256, 1) i32 @ra288_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #6
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x i32> <i32 3, i32 1>, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %.not = icmp eq i32 %i.f, 38
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = and i32 %i.h, 8388608
  %i.j = tail call ptr @avpriv_float_dsp_alloc(i32 noundef %i.i) #6 ; 3 uses
  %.not12 = icmp eq ptr %i.j, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  store ptr %i.k, ptr %i.b, align 16, !tbaa !36
  tail call void @av_free(ptr noundef nonnull %i.j) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -1163346256, %bb.b ], [ 0, %bb.d ], [ -12, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ra288_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [5 x float], align 16             ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 25 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32   ; 4 uses
  %i.h = icmp slt i32 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.c, i32 noundef %i.g) #6
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 3 uses
  %or.cond.i = icmp ugt i32 %i.g, 268435455
  %i.k = shl nuw nsw i32 %i.g, 3
  %i.l = select i1 %or.cond.i, i32 -8, i32 %i.k   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.l, 2147483135
  %i.m = icmp ne ptr %i.j, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.m       ; 2 uses
  %i.n = add nuw nsw i32 %i.l, 8
  %i.o = select i1 %or.cond3.i.i, i32 %i.n, i32 8 ; 2 uses
  br i1 %or.cond3.i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 160, ptr %i.p, align 8, !tbaa !41
  %i.q = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %1, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 976 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 572
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 1012
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 1000
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 220
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 228
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 984
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 236
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 980
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 244
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 696 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 716
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 864
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1016
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %.048 = phi i32 [ 0, %bb.e ], [ %i.ee, %bb.h ]  ; 3 uses
  %.03747 = phi ptr [ %i.s, %bb.e ], [ %i.eb, %bb.h ] ; 2 uses
  %.sroa.5.046 = phi i32 [ 0, %bb.e ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ar = lshr i32 %.sroa.5.046, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.as
  %i.au = load i32, ptr %i.at, align 1, !tbaa !30
  %i.av = and i32 %.sroa.5.046, 7
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = and i32 %i.aw, 7
  %i.ay = add i32 %.sroa.5.046, 3
  %i.az = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.ay) ; 3 uses
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @amptable, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !47
  %i.bd = and i32 %.048, 1                        ; 2 uses
  %i.be = lshr i32 %i.az, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !30
  %i.bi = and i32 %i.az, 7
  %i.bj = lshr i32 %i.bh, %i.bi
  %narrow.i.i = sub nuw nsw i32 26, %i.bd
  %i.bk = lshr i32 -1, %narrow.i.i
  %i.bl = and i32 %i.bj, %i.bk
  %i.bm = add nuw i32 %i.az, 6
  %i.bn = add nuw i32 %i.bm, %i.bd
  %i.bo = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.t, ptr noundef nonnull align 4 dereferenceable(144) %i.v, i64 144, i1 false)
  %i.bp = load float, ptr %i.w, align 4, !tbaa !47
  %i.bq = load float, ptr %i.y, align 4, !tbaa !47
  %i.br = load float, ptr %i.z, align 4, !tbaa !47
  %i.bs = load float, ptr %i.ab, align 4, !tbaa !47
  %i.bt = load <4 x float>, ptr %i.aa, align 4, !tbaa !47
  %i.bu = fneg nsz <4 x float> %i.bt              ; 4 uses
  %i.bv = extractelement <4 x float> %i.bu, i64 3
  %i.bw = call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.bp, float 3.200000e+01)
  %i.bx = extractelement <4 x float> %i.bu, i64 2
  %i.by = call nsz float @llvm.fmuladd.f32(float %i.bx, float %i.bq, float %i.bw)
  %i.bz = extractelement <4 x float> %i.bu, i64 1
  %i.ca = call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.br, float %i.by)
  %i.cb = extractelement <4 x float> %i.bu, i64 0
  %i.cc = call nsz float @llvm.fmuladd.f32(float %i.cb, float %i.bs, float %i.ca)
  %i.cd = load float, ptr %i.ac, align 4, !tbaa !47
  %i.ce = load float, ptr %i.ad, align 4, !tbaa !47
  %i.cf = load float, ptr %i.ae, align 4, !tbaa !47
  %i.cg = load float, ptr %i.ag, align 4, !tbaa !47
  %i.ch = load <4 x float>, ptr %i.af, align 4, !tbaa !47
  %i.ci = fneg nsz <4 x float> %i.ch              ; 4 uses
  %i.cj = extractelement <4 x float> %i.ci, i64 3
  %i.ck = call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.cd, float %i.cc)
  %i.cl = extractelement <4 x float> %i.ci, i64 2
  %i.cm = call nsz float @llvm.fmuladd.f32(float %i.cl, float %i.ce, float %i.ck)
  %i.cn = extractelement <4 x float> %i.ci, i64 1
  %i.co = call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.cf, float %i.cm)
  %i.cp = extractelement <4 x float> %i.ci, i64 0
  %i.cq = call nsz float @llvm.fmuladd.f32(float %i.cp, float %i.cg, float %i.co)
  %i.cr = load float, ptr %i.ai, align 4, !tbaa !47
  %i.cs = load float, ptr %i.aj, align 4, !tbaa !47
  %i.ct = load <2 x float>, ptr %i.u, align 4, !tbaa !47
  %i.cu = fneg nsz <2 x float> %i.ct              ; 2 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 1
  %i.cw = call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.cr, float %i.cq)
  %i.cx = extractelement <2 x float> %i.cu, i64 0
  %i.cy = call nsz float @llvm.fmuladd.f32(float %i.cx, float %i.cs, float %i.cw) ; 2 uses
  %i.cz = fcmp nsz ogt float %i.cy, 0.000000e+00
  %i.da = select nsz i1 %i.cz, float %i.cy, float 0.000000e+00 ; 2 uses
  %i.db = fcmp nsz ogt float %i.da, 6.000000e+01
  %..i.i = select nsz i1 %i.db, float 6.000000e+01, float %i.da
  %i.dc = fpext nsz float %..i.i to double
  %i.dd = fmul nsz double %i.dc, f0x3FBD791C5F88877E
  %i.de = call nsz double @llvm.exp.f64(double %i.dd)
  %i.df = fpext nsz float %i.bc to double
  %i.dg = fmul nsz double %i.de, %i.df
  %i.dh = fmul nsz double %i.dg, f0x3E80000000000000 ; 2 uses
  %i.di = zext nneg i32 %i.bl to i64
  %i.dj = getelementptr inbounds nuw [10 x i8], ptr @codetable, i64 %i.di ; 2 uses
  %i.dk = load <4 x i16>, ptr %i.dj, align 2, !tbaa !48
  %i.dl = sitofp <4 x i16> %i.dk to <4 x double>
  %i.dm = insertelement <4 x double> poison, double %i.dh, i64 0
  %i.dn = shufflevector <4 x double> %i.dm, <4 x double> poison, <4 x i32> zeroinitializer
  %i.do = fmul nsz <4 x double> %i.dn, %i.dl
  %i.dp = fptrunc <4 x double> %i.do to <4 x float>
  store <4 x float> %i.dp, ptr %i.a, align 16, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !48
  %i.ds = sitofp i16 %i.dr to double
  %i.dt = fmul nsz double %i.dh, %i.ds
  %i.du = fptrunc nsz double %i.dt to float
  store float %i.du, ptr %i.ak, align 16, !tbaa !47
  %i.dv = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i32 noundef 5) #6 ; 2 uses
  %i.dw = fcmp nsz ogt float %i.dv, f0x34A00000
  %narrow.sel.i = select nsz i1 %i.dw, float %i.dv, float f0x34A00000
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.u, ptr noundef nonnull align 4 dereferenceable(36) %i.ah, i64 36, i1 false)
  %i.dx = fpext nsz float %narrow.sel.i to double
  %i.dy = call nsz double @llvm.log10.f64(double %i.dx)
  %i.dz = call nsz double @llvm.fmuladd.f64(double %i.dy, double 1.000000e+01, double f0x4040A0F5B9777A46)
  %i.ea = fptrunc nsz double %i.dz to float
  store float %i.ea, ptr %i.x, align 4, !tbaa !47
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %i.a, i32 noundef 5, i32 noundef 36) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.03747, ptr noundef nonnull align 8 dereferenceable(20) %i.al, i64 20, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %.03747, i64 20
  %i.ec = and i32 %.048, 7
  %i.ed = icmp eq i32 %i.ec, 3
  br i1 %i.ed, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @backward_filter(ptr noundef nonnull %i.e, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull @syn_window, ptr noundef nonnull %i.am, ptr noundef nonnull @syn_bw_tab, i32 noundef 36, i32 noundef 40, i32 noundef 35, i32 noundef 70)
  call fastcc void @backward_filter(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull @gain_window, ptr noundef nonnull %i.w, ptr noundef nonnull @gain_bw_tab, i32 noundef 10, i32 noundef 8, i32 noundef 20, i32 noundef 28)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ee = add nuw nsw i32 %.048, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, 32
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !50

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %2, align 4, !tbaa !29
  %i.ef = load i32, ptr %i.f, align 4, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.i, %bb.b
  %.038 = phi i32 [ -1094995529, %bb.b ], [ %i.ef, %bb.i ], [ -1094995529, %bb.c ], [ %i.q, %bb.d ]
  ret i32 %.038
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @backward_filter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef range(i32 10, 37) %6, i32 noundef range(i32 8, 41) %7, i32 noundef range(i32 20, 36) %8, i32 noundef range(i32 28, 71) %9) unnamed_addr #1 {
bb.a:
  %i.a = alloca [37 x float], align 16            ; 5 uses
  %i.b = alloca [37 x float], align 16            ; 5 uses
  %i.c = alloca [112 x float], align 16           ; 4 uses
  %i.d = alloca [37 x float], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = load ptr, ptr %0, align 16, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = add nuw nsw i32 %6, 15                   ; 2 uses
  %i.g = add nuw nsw i32 %i.f, %7
  %i.h = add nuw nsw i32 %i.g, %8
  %i.i = and i32 %i.h, 496
  call void %i.e(ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef %1, i32 noundef %i.i) #6, !inline_history !52
  %i.j = zext nneg i32 %6 to i64                  ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i.i = phi i64 [ %i.j, %bb.a ], [ %indvars.iv.next.i.i, %bb.b ] ; 4 uses
  %i.l = sub nsw i64 0, %indvars.iv.i.i
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, i32 noundef range(i32 8, 41) %7) #6
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store float %i.n, ptr %i.o, align 4, !tbaa !47
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %convolve.exit.i, label %bb.b, !llvm.loop !53

convolve.exit.i:                                  ; preds = %bb.b
  %i.p = zext nneg i32 %7 to i64                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.p ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %convolve.exit.i
  %indvars.iv.i29.i = phi i64 [ %i.j, %convolve.exit.i ], [ %indvars.iv.next.i30.i, %bb.c ] ; 4 uses
  %i.r = sub nsw i64 0, %indvars.iv.i29.i
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, i32 noundef range(i32 20, 36) %8) #6
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i29.i
  store float %i.t, ptr %i.u, align 4, !tbaa !47
  %indvars.iv.next.i30.i = add nsw i64 %indvars.iv.i29.i, -1
  %.not.i31.i = icmp eq i64 %indvars.iv.i29.i, 0
  br i1 %.not.i31.i, label %convolve.exit32.preheader.i, label %bb.c, !llvm.loop !53

convolve.exit32.preheader.i:                      ; preds = %bb.c
  %i.v = add nuw nsw i32 %6, 1
  %wide.trip.count.i = zext nneg i32 %i.v to i64  ; 3 uses
  %n.vec = and i64 %wide.trip.count.i, 124        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %convolve.exit32.preheader.i
  %index = phi i64 [ 0, %convolve.exit32.preheader.i ], [ %index.next, %vector.body ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.w, align 4, !tbaa !47
  %i.x = fpext nsz <4 x float> %wide.load to <4 x double>
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load26 = load <4 x float>, ptr %i.y, align 16, !tbaa !47
  %i.z = fpext nsz <4 x float> %wide.load26 to <4 x double>
  %i.aa = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.x, <4 x double> splat (double 5.625000e-01), <4 x double> %i.z)
  %i.ab = fptrunc nsz <4 x double> %i.aa to <4 x float> ; 2 uses
  store <4 x float> %i.ab, ptr %i.w, align 4, !tbaa !47
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  %wide.load27 = load <4 x float>, ptr %i.ac, align 16, !tbaa !47
  %i.ad = fadd nsz <4 x float> %wide.load27, %i.ab
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  store <4 x float> %i.ad, ptr %i.ae, align 16, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %do_hybrid_window.exit, label %convolve.exit32.i

convolve.exit32.i:                                ; preds = %middle.block, %convolve.exit32.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %convolve.exit32.i ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !47
  %i.ai = fpext nsz float %i.ah to double
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !47
  %i.al = fpext nsz float %i.ak to double
  %i.am = call nsz double @llvm.fmuladd.f64(double %i.ai, double 5.625000e-01, double %i.al)
  %i.an = fptrunc nsz double %i.am to float       ; 2 uses
  store float %i.an, ptr %i.ag, align 4, !tbaa !47
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !47
  %i.aq = fadd nsz float %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  store float %i.aq, ptr %i.ar, align 4, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %do_hybrid_window.exit, label %convolve.exit32.i, !llvm.loop !57

do_hybrid_window.exit:                            ; preds = %convolve.exit32.i, %middle.block
  %i.as = load float, ptr %i.d, align 16, !tbaa !47
  %i.at = fmul nsz float %i.as, f0x3F808000       ; 3 uses
  store float %i.at, ptr %i.d, align 16, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.j
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !47
  %i.ay = fcmp nsz oeq float %i.ax, 0.000000e+00
  %i.az = fcmp nsz ole float %i.at, 0.000000e+00
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i, label %compute_lpc_coefs.exit.thread, label %.preheader.i.preheader

.preheader.i:                                     ; preds = %._crit_edge6.i
  %indvars.iv.next14.i = add nuw nsw i32 %indvars.iv13.i24, 1 ; 2 uses
  %i.ba = lshr i32 %indvars.iv.next14.i, 1
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %i.j
  br i1 %exitcond21.not.i, label %compute_lpc_coefs.exit, label %.preheader.i.preheader, !llvm.loop !58

.preheader.i.preheader:                           ; preds = %do_hybrid_window.exit, %.preheader.i
  %i.bb = phi i32 [ %i.ba, %.preheader.i ], [ 0, %do_hybrid_window.exit ]
  %.174.i25 = phi float [ %i.br, %.preheader.i ], [ %i.at, %do_hybrid_window.exit ] ; 3 uses
  %indvars.iv13.i24 = phi i32 [ %indvars.iv.next14.i, %.preheader.i ], [ 1, %do_hybrid_window.exit ]
  %indvars.iv17.i23 = phi i64 [ %indvars.iv.next18.i, %.preheader.i ], [ 0, %do_hybrid_window.exit ] ; 8 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv17.i23 ; 4 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !47
  %i.be = fneg nsz float %i.bd                    ; 3 uses
  %.not.i = icmp eq i64 %indvars.iv17.i23, 0      ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i.preheader
  %xtraiter = and i64 %indvars.iv17.i23, 1
  %i.bf = icmp eq i64 %indvars.iv17.i23, 1
  br i1 %i.bf, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %indvars.iv17.i23, 9223372036854775806
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i17.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i18.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.0671.i.epil.init = phi float [ %i.be, %.lr.ph.i.preheader ], [ %i.cj, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %indvars.iv17.i23 to i1
  call void @llvm.assume(i1 %lcmp.mod29)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i17.epil.init
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !47
  %i.bi = xor i64 %indvars.iv.i17.epil.init, -1
  %i.bj = getelementptr [4 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !47
  %i.bl = fneg nsz float %i.bh
  %i.bm = call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bk, float %.0671.i.epil.init)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.067.lcssa.i = phi float [ %i.be, %.preheader.i.preheader ], [ %i.cj, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.bn = fcmp nsz une float %.174.i25, 0.000000e+00
  %i.bo = fdiv nsz float %.067.lcssa.i, %.174.i25
  %.168.i = select nsz i1 %i.bn, float %i.bo, float %.067.lcssa.i ; 4 uses
  %i.bp = fneg nsz float %.168.i
  %i.bq = call nsz float @llvm.fmuladd.f32(float %i.bp, float %.168.i, float 1.000000e+00)
  %i.br = fmul nsz float %.174.i25, %i.bq         ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv17.i23 ; 2 uses
  store float %.168.i, ptr %i.bs, align 4, !tbaa !47
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i23, 1 ; 2 uses
  br i1 %.not.i, label %._crit_edge6.i, label %.lr.ph5.preheader.i

.lr.ph5.preheader.i:                              ; preds = %._crit_edge.i
  %wide.trip.count15.i = zext nneg i32 %i.bb to i64
  %i.bt = insertelement <2 x float> poison, float %.168.i, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph5.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i17 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i18.1, %.lr.ph.i ] ; 5 uses
  %.0671.i = phi float [ %i.be, %.lr.ph.i.preheader.new ], [ %i.cj, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i17
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !47
  %i.bx = xor i64 %indvars.iv.i17, -1
  %i.by = getelementptr [4 x i8], ptr %i.bc, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !47
  %i.ca = fneg nsz float %i.bw
  %i.cb = call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.bz, float %.0671.i)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !47
  %i.cf = xor i64 %indvars.iv.i17, -2
  %i.cg = getelementptr [4 x i8], ptr %i.bc, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !47
  %i.ci = fneg nsz float %i.ce
  %i.cj = call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.ch, float %i.cb) ; 3 uses
  %indvars.iv.next.i18.1 = add nuw nsw i64 %indvars.iv.i17, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !59

._crit_edge6.i:                                   ; preds = %.lr.ph5.i, %._crit_edge.i
  %i.ck = fcmp nsz uge float %i.br, 0.000000e+00
  br i1 %i.ck, label %.preheader.i, label %compute_lpc_coefs.exit.thread, !llvm.loop !58

.lr.ph5.i:                                        ; preds = %.lr.ph5.i, %.lr.ph5.preheader.i
  %indvars.iv10.i = phi i64 [ 0, %.lr.ph5.preheader.i ], [ %indvars.iv.next11.i, %.lr.ph5.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv10.i ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !47 ; 2 uses
  %i.cn = xor i64 %indvars.iv10.i, -1
  %i.co = getelementptr [4 x i8], ptr %i.bs, i64 %i.cn ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !47 ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cm, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cp, i64 1
  %i.cu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cr, <2 x float> %i.ct) ; 2 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  store float %i.cv, ptr %i.cl, align 4, !tbaa !47
  %i.cw = extractelement <2 x float> %i.cu, i64 1
  store float %i.cw, ptr %i.co, align 4, !tbaa !47
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next11.i, %wide.trip.count15.i
  br i1 %exitcond16.not.i, label %._crit_edge6.i, label %.lr.ph5.i, !llvm.loop !60

compute_lpc_coefs.exit:                           ; preds = %.preheader.i
  %i.cx = load ptr, ptr %0, align 16, !tbaa !36
  %i.cy = and i32 %i.f, 112
  call void %i.cx(ptr noundef %4, ptr noundef %4, ptr noundef %5, i32 noundef %i.cy) #6
  br label %compute_lpc_coefs.exit.thread

compute_lpc_coefs.exit.thread:                    ; preds = %._crit_edge6.i, %do_hybrid_window.exit, %compute_lpc_coefs.exit
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  %i.da = shl nuw nsw i32 %9, 2
  %i.db = zext nneg i32 %i.da to i64
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(1) %i.cz, i64 %i.db, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #4

declare float @ff_scalarproduct_float_c(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @ff_celp_lp_synthesis_filterf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!12, !12, i64 0}
!32 = !{!10, !6, i64 380}
!33 = !{!10, !6, i64 64}
!34 = !{!35, !12, i64 0}
!35 = !{!"AVFloatDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!36 = !{!37, !12, i64 0}
!37 = !{!"RA288Context", !12, i64 0, !7, i64 16, !7, i64 208, !7, i64 272, !7, i64 716, !7, i64 864, !7, i64 1016}
!38 = !{!39, !6, i64 32}
!39 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!40 = !{!39, !16, i64 24}
!41 = !{!42, !6, i64 112}
!42 = !{!"AVFrame", !7, i64 0, !7, i64 64, !43, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !44, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !45, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!43 = !{!"p2 omnipotent char", !28, i64 0}
!44 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!45 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!46 = !{!16, !16, i64 0}
!47 = !{!18, !18, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !7, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{null}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51, !55, !56}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = distinct !{!57, !51, !56, !55}
!58 = distinct !{!58, !51}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51}
end_hunk_0
