Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dss_sp?download=true
inline.NumInlined: 35
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"dss_sp\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Digital Speech Standard - Standard Play mode (DSS SP)\00", align 1
@ff_dss_sp_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86082, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 3984, ptr null, ptr null, ptr null, ptr @dss_sp_decode_init, %union.anon { ptr @dss_sp_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Expected %d bytes, got %d - skipping packet.\0A\00", align 1
@dss_sp_adaptive_gain = internal unnamed_addr constant [32 x i16] [i16 102, i16 231, i16 360, i16 488, i16 617, i16 746, i16 875, i16 1004, i16 1133, i16 1261, i16 1390, i16 1519, i16 1648, i16 1777, i16 1905, i16 2034, i16 2163, i16 2292, i16 2421, i16 2550, i16 2678, i16 2807, i16 2936, i16 3065, i16 3194, i16 3323, i16 3451, i16 3580, i16 3709, i16 3838, i16 3967, i16 4096], align 16
@__const.dss_sp_unpack_coeffs.C72_binomials = private unnamed_addr constant [8 x i32] [i32 72, i32 2556, i32 59640, i32 1028790, i32 13991544, i32 156238908, i32 1473109704, i32 -915885543], align 16
@dss_sp_combinatorial_table = internal unnamed_addr constant [8 x [72 x i32]] [[72 x i32] zeroinitializer, [72 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71], [72 x i32] [i32 0, i32 0, i32 1, i32 3, i32 6, i32 10, i32 15, i32 21, i32 28, i32 36, i32 45, i32 55, i32 66, i32 78, i32 91, i32 105, i32 120, i32 136, i32 153, i32 171, i32 190, i32 210, i32 231, i32 253, i32 276, i32 300, i32 325, i32 351, i32 378, i32 406, i32 435, i32 465, i32 496, i32 528, i32 561, i32 595, i32 630, i32 666, i32 703, i32 741, i32 780, i32 820, i32 861, i32 903, i32 946, i32 990, i32 1035, i32 1081, i32 1128, i32 1176, i32 1225, i32 1275, i32 1326, i32 1378, i32 1431, i32 1485, i32 1540, i32 1596, i32 1653, i32 1711, i32 1770, i32 1830, i32 1891, i32 1953, i32 2016, i32 2080, i32 2145, i32 2211, i32 2278, i32 2346, i32 2415, i32 2485], [72 x i32] [i32 0, i32 0, i32 0, i32 1, i32 4, i32 10, i32 20, i32 35, i32 56, i32 84, i32 120, i32 165, i32 220, i32 286, i32 364, i32 455, i32 560, i32 680, i32 816, i32 969, i32 1140, i32 1330, i32 1540, i32 1771, i32 2024, i32 2300, i32 2600, i32 2925, i32 3276, i32 3654, i32 4060, i32 4495, i32 4960, i32 5456, i32 5984, i32 6545, i32 7140, i32 7770, i32 8436, i32 9139, i32 9880, i32 10660, i32 11480, i32 12341, i32 13244, i32 14190, i32 15180, i32 16215, i32 17296, i32 18424, i32 19600, i32 20825, i32 22100, i32 23426, i32 24804, i32 26235, i32 27720, i32 29260, i32 30856, i32 32509, i32 34220, i32 35990, i32 37820, i32 39711, i32 41664, i32 43680, i32 45760, i32 47905, i32 50116, i32 52394, i32 54740, i32 57155], [72 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 5, i32 15, i32 35, i32 70, i32 126, i32 210, i32 330, i32 495, i32 715, i32 1001, i32 1365, i32 1820, i32 2380, i32 3060, i32 3876, i32 4845, i32 5985, i32 7315, i32 8855, i32 10626, i32 12650, i32 14950, i32 17550, i32 20475, i32 23751, i32 27405, i32 31465, i32 35960, i32 40920, i32 46376, i32 52360, i32 58905, i32 66045, i32 73815, i32 82251, i32 91390, i32 101270, i32 111930, i32 123410, i32 135751, i32 148995, i32 163185, i32 178365, i32 194580, i32 211876, i32 230300, i32 249900, i32 270725, i32 292825, i32 316251, i32 341055, i32 367290, i32 395010, i32 424270, i32 455126, i32 487635, i32 521855, i32 557845, i32 595665, i32 635376, i32 677040, i32 720720, i32 766480, i32 814385, i32 864501, i32 916895, i32 971635], [72 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 6, i32 21, i32 56, i32 126, i32 252, i32 462, i32 792, i32 1287, i32 2002, i32 3003, i32 4368, i32 6188, i32 8568, i32 11628, i32 15504, i32 20349, i32 26334, i32 33649, i32 42504, i32 53130, i32 65780, i32 80730, i32 98280, i32 118755, i32 142506, i32 169911, i32 201376, i32 237336, i32 278256, i32 324632, i32 376992, i32 435897, i32 501942, i32 575757, i32 658008, i32 749398, i32 850668, i32 962598, i32 1086008, i32 1221759, i32 1370754, i32 1533939, i32 1712304, i32 1906884, i32 2118760, i32 2349060, i32 2598960, i32 2869685, i32 3162510, i32 3478761, i32 3819816, i32 4187106, i32 4582116, i32 5006386, i32 5461512, i32 5949147, i32 6471002, i32 7028847, i32 7624512, i32 8259888, i32 8936928, i32 9657648, i32 10424128, i32 11238513, i32 12103014, i32 13019909], [72 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 7, i32 28, i32 84, i32 210, i32 462, i32 924, i32 1716, i32 3003, i32 5005, i32 8008, i32 12376, i32 18564, i32 27132, i32 38760, i32 54264, i32 74613, i32 100947, i32 134596, i32 177100, i32 230230, i32 296010, i32 376740, i32 475020, i32 593775, i32 736281, i32 906192, i32 1107568, i32 1344904, i32 1623160, i32 1947792, i32 2324784, i32 2760681, i32 3262623, i32 3838380, i32 4496388, i32 5245786, i32 6096454, i32 7059052, i32 8145060, i32 9366819, i32 10737573, i32 12271512, i32 13983816, i32 15890700, i32 18009460, i32 20358520, i32 22957480, i32 25827165, i32 28989675, i32 32468436, i32 36288252, i32 40475358, i32 45057474, i32 50063860, i32 55525372, i32 61474519, i32 67945521, i32 74974368, i32 82598880, i32 90858768, i32 99795696, i32 109453344, i32 119877472, i32 131115985, i32 143218999], [72 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 36, i32 120, i32 330, i32 792, i32 1716, i32 3432, i32 6435, i32 11440, i32 19448, i32 31824, i32 50388, i32 77520, i32 116280, i32 170544, i32 245157, i32 346104, i32 480700, i32 657800, i32 888030, i32 1184040, i32 1560780, i32 2035800, i32 2629575, i32 3365856, i32 4272048, i32 5379616, i32 6724520, i32 8347680, i32 10295472, i32 12620256, i32 15380937, i32 18643560, i32 22481940, i32 26978328, i32 32224114, i32 38320568, i32 45379620, i32 53524680, i32 62891499, i32 73629072, i32 85900584, i32 99884400, i32 115775100, i32 133784560, i32 154143080, i32 177100560, i32 202927725, i32 231917400, i32 264385836, i32 300674088, i32 341149446, i32 386206920, i32 436270780, i32 491796152, i32 553270671, i32 621216192, i32 696190560, i32 778789440, i32 869648208, i32 969443904, i32 1078897248, i32 1198774720, i32 1329890705]], align 16
@.str.3 = private unnamed_addr constant [30 x i8] c"combined_pitch was too large\0A\00", align 1
@dss_sp_filter_cb = internal unnamed_addr constant <{ [32 x i16], [32 x i16], <{ [16 x i16], [16 x i16] }>, <{ [16 x i16], [16 x i16] }>, <{ [16 x i16], [16 x i16] }>, <{ [16 x i16], [16 x i16] }>, <{ [16 x i16], [16 x i16] }>, <{ [16 x i16], [16 x i16] }>, <{ [8 x i16], [24 x i16] }>, <{ [8 x i16], [24 x i16] }>, <{ [8 x i16], [24 x i16] }>, <{ [8 x i16], [24 x i16] }>, <{ [8 x i16], [24 x i16] }>, <{ [8 x i16], [24 x i16] }> }> <{ [32 x i16] [i16 -32653, i16 -32587, i16 -32515, i16 -32438, i16 -32341, i16 -32216, i16 -32062, i16 -31881, i16 -31665, i16 -31398, i16 -31080, i16 -30724, i16 -30299, i16 -29813, i16 -29248, i16 -28572, i16 -27674, i16 -26439, i16 -24666, i16 -22466, i16 -19433, i16 -16133, i16 -12218, i16 -7783, i16 -2834, i16 1819, i16 6544, i16 11260, i16 16050, i16 20220, i16 24774, i16 28120], [32 x i16] [i16 -27503, i16 -24509, i16 -20644, i16 -17496, i16 -14187, i16 -11277, i16 -8420, i16 -5595, i16 -3013, i16 -624, i16 1711, i16 3880, i16 5844, i16 7774, i16 9739, i16 11592, i16 13364, i16 14903, i16 16426, i16 17900, i16 19250, i16 20586, i16 21803, i16 23006, i16 24142, i16 25249, i16 26275, i16 27300, i16 28359, i16 29249, i16 30118, i16 31183], <{ [16 x i16], [16 x i16] }> <{ [16 x i16] [i16 -27827, i16 -24208, i16 -20943, i16 -17781, i16 -14843, i16 -11848, i16 -9066, i16 -6297, i16 -3660, i16 -910, i16 1918, i16 5025, i16 8223, i16 11649, i16 15086, i16 18423], [16 x i16] zeroinitializer }>, <{ [16 x i16], [16 x i16] }> <{ [16 x i16] [i16 -17128, i16 -11975, i16 -8270, i16 -5123, i16 -2296, i16 183, i16 2503, i16 4707, i16 6798, i16 8945, i16 11045, i16 13239, i16 15528, i16 18248, i16 21115, i16 24785], [16 x i16] zeroinitializer }>, <{ [16 x i16], [16 x i16] }> <{ [16 x i16] [i16 -21557, i16 -17280, i16 -14286, i16 -11644, i16 -9268, i16 -7087, i16 -4939, i16 -2831, i16 -691, i16 1407, i16 3536, i16 5721, i16 8125, i16 10677, i16 13721, i16 17731], [16 x i16] zeroinitializer }>, <{ [16 x i16], [16 x i16] }> <{ [16 x i16] [i16 -15030, i16 -10377, i16 -7034, i16 -4327, i16 -1900, i16 364, i16 2458, i16 4450, i16 6422, i16 8374, i16 10374, i16 12486, i16 14714, i16 16997, i16 19626, i16 22954], [16 x i16] zeroinitializer }>, <{ [16 x i16], [16 x i16] }> <{ [16 x i16] [i16 -16155, i16 -12362, i16 -9698, i16 -7460, i16 -5258, i16 -3359, i16 -1547, i16 219, i16 1916, i16 3599, i16 5299, i16 6994, i16 8963, i16 11226, i16 13716, i16 16982], [16 x i16] zeroinitializer }>, <{ [16 x i16], [16 x i16] }> <{ [16 x i16] [i16 -14742, i16 -9848, i16 -6921, i16 -4648, i16 -2769, i16 -1065, i16 499, i16 2083, i16 3633, i16 5219, i16 6857, i16 8580, i16 10410, i16 12672, i16 15561, i16 20101], [16 x i16] zeroinitializer }>, <{ [8 x i16], [24 x i16] }> <{ [8 x i16] [i16 -11099, i16 -7014, i16 -3855, i16 -1025, i16 1680, i16 4544, i16 7807, i16 11932], [24 x i16] zeroinitializer }>, <{ [8 x i16], [24 x i16] }> <{ [8 x i16] [i16 -9060, i16 -4570, i16 -1381, i16 1419, i16 4034, i16 6728, i16 9865, i16 14149], [24 x i16] zeroinitializer }>, <{ [8 x i16], [24 x i16] }> <{ [8 x i16] [i16 -12450, i16 -7985, i16 -4596, i16 -1734, i16 961, i16 3629, i16 6865, i16 11142], [24 x i16] zeroinitializer }>, <{ [8 x i16], [24 x i16] }> <{ [8 x i16] [i16 -11831, i16 -7404, i16 -4010, i16 -1096, i16 1606, i16 4291, i16 7386, i16 11482], [24 x i16] zeroinitializer }>, <{ [8 x i16], [24 x i16] }> <{ [8 x i16] [i16 -13404, i16 -9250, i16 -5995, i16 -3312, i16 -890, i16 1594, i16 4464, i16 8198], [24 x i16] zeroinitializer }>, <{ [8 x i16], [24 x i16] }> <{ [8 x i16] [i16 -11239, i16 -7220, i16 -4040, i16 -1406, i16 971, i16 3321, i16 6006, i16 9697], [24 x i16] zeroinitializer }> }>, align 16
@dss_sp_fixed_cb_gain = internal unnamed_addr constant [64 x i16] [i16 0, i16 4, i16 8, i16 13, i16 17, i16 22, i16 26, i16 31, i16 35, i16 40, i16 44, i16 48, i16 53, i16 58, i16 63, i16 69, i16 76, i16 83, i16 91, i16 99, i16 109, i16 119, i16 130, i16 142, i16 155, i16 170, i16 185, i16 203, i16 222, i16 242, i16 265, i16 290, i16 317, i16 346, i16 378, i16 414, i16 452, i16 494, i16 540, i16 591, i16 646, i16 706, i16 771, i16 843, i16 922, i16 1007, i16 1101, i16 1204, i16 1316, i16 1438, i16 1572, i16 1719, i16 1879, i16 2053, i16 2244, i16 2453, i16 2682, i16 2931, i16 3204, i16 3502, i16 3828, i16 4184, i16 4574, i16 5000], align 16
@dss_sp_pulse_val = internal unnamed_addr constant [8 x i16] [i16 -31182, i16 -22273, i16 -13364, i16 -4455, i16 4455, i16 13364, i16 22273, i16 31182], align 16
@dss_sp_sinc = internal unnamed_addr constant [67 x i32] [i32 262, i32 293, i32 323, i32 348, i32 356, i32 336, i32 269, i32 139, i32 -67, i32 -358, i32 -733, i32 -1178, i32 -1668, i32 -2162, i32 -2607, i32 -2940, i32 -3090, i32 -2986, i32 -2562, i32 -1760, i32 -541, i32 1110, i32 3187, i32 5651, i32 8435, i32 11446, i32 14568, i32 17670, i32 20611, i32 23251, i32 25460, i32 27125, i32 28160, i32 28512, i32 28160, i32 27125, i32 25460, i32 23251, i32 20611, i32 17670, i32 14568, i32 11446, i32 8435, i32 5651, i32 3187, i32 1110, i32 -541, i32 -1760, i32 -2562, i32 -2986, i32 -3090, i32 -2940, i32 -2607, i32 -2162, i32 -1668, i32 -1178, i32 -733, i32 -358, i32 -67, i32 139, i32 269, i32 336, i32 356, i32 348, i32 323, i32 293, i32 262], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @dss_sp_decode_init(ptr noundef initializes((344, 352)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x i32> <i32 11025, i32 1>, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.d) #7
  store <2 x i32> splat (i32 1), ptr %i.d, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3860
  store i32 1, ptr %i.e, align 4, !tbaa !34
  store ptr %0, ptr %i.b, align 16, !tbaa !35
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 43) i32 @dss_sp_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [72 x i32], align 16              ; 7 uses
  %i.b = alloca [8 x i32], align 16               ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 305 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 48 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !60   ; 3 uses
  %i.k = icmp slt i32 %i.j, 42
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.2, i32 noundef 42, i32 noundef %i.j) #7
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 264, ptr %i.l, align 8, !tbaa !65
  %i.m = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i64 %i.h, 42
  %i.p = add i64 %i.e, 1932
  %i.q = add i64 %i.e, 3914
  %rt.bound0 = icmp ult i64 %i.p, %i.o
  %rt.bound1 = icmp ugt i64 %i.q, %i.h
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !66

.preheader152.i.i:                                ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 3860 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.rtcont
  %indvars.iv.i.i = phi i64 [ 0, %.rtcont ], [ %indvars.iv.next.i.i, %bb.f ] ; 3 uses
  %.sroa.11.3165.i.i = phi i32 [ 52, %.rtcont ], [ %i.eq, %bb.f ] ; 3 uses
  %i.s = lshr i32 %.sroa.11.3165.i.i, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.bgo, i64 %i.t
  %i.v = load i32, ptr %i.u, align 1, !tbaa !30
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = and i32 %.sroa.11.3165.i.i, 7
  %i.y = shl i32 %i.w, %i.x
  %i.z = lshr i32 %i.y, 27
  %i.aa = add nuw nsw i32 %.sroa.11.3165.i.i, 5   ; 11 uses
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 344) ; 2 uses
  %i.ac = trunc nuw nsw i32 %i.z to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.rtmerge230, i64 %indvars.iv.i.i
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !68
  %i.ae = lshr i32 %i.ab, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.bgn, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !30
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = and i32 %i.ab, 7
  %i.ak = shl i32 %i.ai, %i.aj
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 328) ; 2 uses
  %i.am = add nuw nsw i32 %i.al, 16
  %i.an = lshr i32 %i.am, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !30
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = and i32 %i.al, 7
  %i.at = shl i32 %i.ar, %i.as
  %i.au = lshr i32 %i.at, 17
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 313)
  %i.aw = add nuw nsw i32 %i.av, 31               ; 2 uses
  %i.ax = lshr i32 %i.ak, 1
  %i.ay = and i32 %i.ax, 2147450880
  %i.az = or disjoint i32 %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw [36 x i8], ptr %.rtmerge231, i64 %indvars.iv.i.i ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !70
  %i.bc = lshr i32 %i.aw, 3
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bgl, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !30
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bh = and i32 %i.aw, 7
  %i.bi = shl i32 %i.bg, %i.bh
  %i.bj = lshr i32 %i.bi, 26
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 307)
  %i.bl = add nuw nsw i32 %i.bk, 37               ; 2 uses
  %i.bm = trunc nuw nsw i32 %i.bj to i16
  store i16 %i.bm, ptr %i.ba, align 4, !tbaa !71
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 22
  %i.bo = lshr i32 %i.bl, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bgk, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !30
  %i.bs = tail call i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = and i32 %i.bl, 7
  %i.bu = shl i32 %i.bs, %i.bt
  %i.bv = lshr i32 %i.bu, 29
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 304) ; 2 uses
  %i.bx = add nuw nsw i32 %i.bw, 40
  %i.by = trunc nuw nsw i32 %i.bv to i16
  store i16 %i.by, ptr %i.bn, align 2, !tbaa !68
  %i.bz = lshr i32 %i.bx, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bgj, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !30
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  %i.ce = and i32 %i.bw, 7
  %i.cf = shl i32 %i.cd, %i.ce
  %i.cg = lshr i32 %i.cf, 29
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 301)
  %i.ci = add nuw nsw i32 %i.ch, 43               ; 2 uses
  %i.cj = trunc nuw nsw i32 %i.cg to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i16 %i.cj, ptr %i.ck, align 4, !tbaa !68
  %i.cl = lshr i32 %i.ci, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bgi, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 1, !tbaa !30
  %i.cp = tail call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = and i32 %i.ci, 7
  %i.cr = shl i32 %i.cp, %i.cq
  %i.cs = lshr i32 %i.cr, 29
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 298)
  %i.cu = add nuw nsw i32 %i.ct, 46               ; 2 uses
  %i.cv = trunc nuw nsw i32 %i.cs to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ba, i64 26
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !68
  %i.cx = lshr i32 %i.cu, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bgh, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !30
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dc = and i32 %i.cu, 7
  %i.dd = shl i32 %i.db, %i.dc
  %i.de = lshr i32 %i.dd, 29
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 295)
  %i.dg = add nuw nsw i32 %i.df, 49               ; 2 uses
  %i.dh = trunc nuw nsw i32 %i.de to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  store i16 %i.dh, ptr %i.di, align 4, !tbaa !68
  %i.dj = lshr i32 %i.dg, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bgg, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 1, !tbaa !30
  %i.dn = tail call i32 @llvm.bswap.i32(i32 %i.dm)
  %i.do = and i32 %i.dg, 7
  %i.dp = shl i32 %i.dn, %i.do
  %i.dq = lshr i32 %i.dp, 29
  %i.dr = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 292)
  %i.ds = add nuw nsw i32 %i.dr, 52               ; 2 uses
  %i.dt = trunc nuw nsw i32 %i.dq to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ba, i64 30
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !68
  %i.dv = lshr i32 %i.ds, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bgf, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 1, !tbaa !30
  %i.dz = tail call i32 @llvm.bswap.i32(i32 %i.dy)
  %i.ea = and i32 %i.ds, 7
  %i.eb = shl i32 %i.dz, %i.ea
  %i.ec = lshr i32 %i.eb, 29
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 289)
  %i.ee = add nuw nsw i32 %i.ed, 55               ; 2 uses
  %i.ef = trunc nuw nsw i32 %i.ec to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i16 %i.ef, ptr %i.eg, align 4, !tbaa !68
  %i.eh = lshr i32 %i.ee, 3
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bge, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 1, !tbaa !30
  %i.el = tail call i32 @llvm.bswap.i32(i32 %i.ek)
  %i.em = and i32 %i.ee, 7
  %i.en = shl i32 %i.el, %i.em
  %i.eo = lshr i32 %i.en, 29
  %i.ep = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 286)
  %i.eq = add nuw nsw i32 %i.ep, 58
  %i.er = trunc nuw nsw i32 %i.eo to i16
  %i.es = getelementptr inbounds nuw i8, ptr %i.ba, i64 34
  store i16 %i.er, ptr %i.es, align 2, !tbaa !68
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.not.i.i, label %.preheader152.i.i, label %bb.f, !llvm.loop !37

bb.g:                                             ; preds = %.loopexit150.i.i, %.preheader152.i.i
  %indvars.iv210.i.i = phi i64 [ 0, %.preheader152.i.i ], [ %indvars.iv.next211.i.i, %.loopexit150.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) @__const.dss_sp_unpack_coeffs.C72_binomials, i64 32, i1 false)
  %i.et = getelementptr inbounds nuw [36 x i8], ptr %.rtmerge231, i64 %indvars.iv210.i.i ; 10 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !70 ; 4 uses
  %i.ew = icmp ult i32 %i.ev, -915885543
  br i1 %i.ew, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ex = load i32, ptr %i.r, align 4, !tbaa !34
  %.not126.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not126.i.i, label %.loopexit150.i.i, label %.preheader149.i.i
end_hunk_0
begin_hunk_1_@dss_sp_decode_frame:bb.a
  %i.iv = load i16, ptr %i.ik, align 4, !tbaa !68
  %i.iw = add i16 %i.iv, %.sink247.i.i            ; 3 uses
  store i16 %i.iw, ptr %i.ik, align 4, !tbaa !68
  %i.ix = icmp ugt i16 %i.iw, 162
  br i1 %i.ix, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %narrow.2.i.i = add nsw i16 %i.iw, -23
  %i.iy = tail call i16 @llvm.umax.i16(i16 %narrow.2.i.i, i16 36)
  %i.iz = add i16 %i.iy, %i.io
  br label %dss_sp_unpack_coeffs.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ja = add nuw nsw i16 %i.io, 139
  br label %dss_sp_unpack_coeffs.exit.i

dss_sp_unpack_coeffs.exit.i:                      ; preds = %bb.ab, %bb.aa
  %.sink.i = phi i16 [ %i.ja, %bb.ab ], [ %i.iz, %bb.aa ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 1974
  store i16 %.sink.i, ptr %i.jb, align 2, !tbaa !68
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 3392 ; 3 uses
  %i.jd = load i16, ptr %.rtmerge216, align 4, !tbaa !68
  %i.je = sext i16 %i.jd to i64
  %i.jf = getelementptr inbounds [2 x i8], ptr @dss_sp_filter_cb, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !68
  %i.jh = sext i16 %i.jg to i32
  store i32 %i.jh, ptr %i.jc, align 4, !tbaa !29
  %i.ji = load i16, ptr %.rtmerge217, align 2, !tbaa !68
  %i.jj = sext i16 %i.ji to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 64), i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !68
  %i.jm = sext i16 %i.jl to i32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.d, i64 3396
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !29
  %i.jo = load i16, ptr %.rtmerge218, align 4, !tbaa !68
  %i.jp = sext i16 %i.jo to i64
  %i.jq = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 128), i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !68
  %i.js = sext i16 %i.jr to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.d, i64 3400
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !29
  %i.ju = load i16, ptr %.rtmerge219, align 2, !tbaa !68
  %i.jv = sext i16 %i.ju to i64
  %i.jw = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 192), i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !68
  %i.jy = sext i16 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 3404
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !29
  %i.ka = load i16, ptr %.rtmerge220, align 4, !tbaa !68
  %i.kb = sext i16 %i.ka to i64
  %i.kc = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 256), i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !68
  %i.ke = sext i16 %i.kd to i32
  %i.kf = getelementptr inbounds nuw i8, ptr %i.d, i64 3408
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !29
  %i.kg = load i16, ptr %.rtmerge221, align 2, !tbaa !68
  %i.kh = sext i16 %i.kg to i64
  %i.ki = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 320), i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !68
  %i.kk = sext i16 %i.kj to i32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.d, i64 3412
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !29
  %i.km = load i16, ptr %.rtmerge222, align 4, !tbaa !68
  %i.kn = sext i16 %i.km to i64
  %i.ko = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 384), i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !68
  %i.kq = sext i16 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 3416
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !29
  %i.ks = load i16, ptr %.rtmerge223, align 2, !tbaa !68
  %i.kt = sext i16 %i.ks to i64
  %i.ku = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 448), i64 %i.kt
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !68
  %i.kw = sext i16 %i.kv to i32
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 3420
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !29
  %i.ky = load i16, ptr %.rtmerge224, align 4, !tbaa !68
  %i.kz = sext i16 %i.ky to i64
  %i.la = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 512), i64 %i.kz
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !68
  %i.lc = sext i16 %i.lb to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.d, i64 3424
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !29
  %i.le = load i16, ptr %.rtmerge225, align 2, !tbaa !68
  %i.lf = sext i16 %i.le to i64
  %i.lg = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 576), i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !68
  %i.li = sext i16 %i.lh to i32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.d, i64 3428
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !29
  %i.lk = load i16, ptr %.rtmerge226, align 4, !tbaa !68
  %i.ll = sext i16 %i.lk to i64
  %i.lm = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 640), i64 %i.ll
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !68
  %i.lo = sext i16 %i.ln to i32
  %i.lp = getelementptr inbounds nuw i8, ptr %i.d, i64 3432
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !29
  %i.lq = load i16, ptr %.rtmerge227, align 2, !tbaa !68
  %i.lr = sext i16 %i.lq to i64
  %i.ls = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 704), i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !68
  %i.lu = sext i16 %i.lt to i32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.d, i64 3436
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !29
  %i.lw = load i16, ptr %.rtmerge228, align 4, !tbaa !68
  %i.lx = sext i16 %i.lw to i64
  %i.ly = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 768), i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !68
  %i.ma = sext i16 %i.lz to i32
  %i.mb = getelementptr inbounds nuw i8, ptr %i.d, i64 3440
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !29
  %i.mc = load i16, ptr %.rtmerge229, align 2, !tbaa !68
  %i.md = sext i16 %i.mc to i64
  %i.me = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 832), i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !68
  %i.mg = sext i16 %i.mf to i32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 3444
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !29
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 3448 ; 5 uses
  store i32 8192, ptr %i.mi, align 4, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i40.i, %dss_sp_unpack_coeffs.exit.i
  %indvars.iv41.i.i = phi i64 [ 0, %dss_sp_unpack_coeffs.exit.i ], [ %indvars.iv.next42.i.i, %.loopexit.i40.i ] ; 3 uses
  %indvars.iv39.i.i = phi i32 [ 1, %dss_sp_unpack_coeffs.exit.i ], [ %indvars.iv.next40.i.i, %.loopexit.i40.i ] ; 2 uses
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 4 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv41.i.i ; 3 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !29
  %i.ml = ashr i32 %i.mk, 2
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.next42.i.i
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !29
  %.not.i35.i = icmp eq i64 %indvars.iv41.i.i, 0
  br i1 %.not.i35.i, label %.loopexit.i40.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ac
  %i.mn = lshr i32 %indvars.iv39.i.i, 1
  %i.mo = add nuw nsw i32 %i.mn, 1
  %wide.trip.count.i36.i = zext nneg i32 %i.mo to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %indvars.iv.i37.i = phi i64 [ 1, %.preheader.preheader.i.i ], [ %indvars.iv.next.i38.i, %.preheader.i.i ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.i37.i ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !29 ; 2 uses
  %i.mr = sub nuw nsw i64 %indvars.iv.next42.i.i, %indvars.iv.i37.i
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mr ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !29 ; 2 uses
  %i.mu = shl nsw i32 %i.mq, 15
  %i.mv = load i32, ptr %i.mj, align 4, !tbaa !29
  %i.mw = mul i32 %i.mv, %i.mt
  %i.mx = or disjoint i32 %i.mu, 16384
  %i.my = add i32 %i.mx, %i.mw
  %i.mz = ashr i32 %i.my, 15
  %i.na = tail call i32 @llvm.smax.i32(i32 %i.mz, i32 -32768)
  %i.nb = tail call i32 @llvm.smin.i32(i32 %i.na, i32 32767)
  store i32 %i.nb, ptr %i.mp, align 4, !tbaa !29
  %i.nc = shl nsw i32 %i.mt, 15
  %i.nd = load i32, ptr %i.mj, align 4, !tbaa !29
  %i.ne = mul i32 %i.nd, %i.mq
  %i.nf = or disjoint i32 %i.nc, 16384
  %i.ng = add i32 %i.nf, %i.ne
  %i.nh = ashr i32 %i.ng, 15
  %i.ni = tail call i32 @llvm.smax.i32(i32 %i.nh, i32 -32768)
  %i.nj = tail call i32 @llvm.smin.i32(i32 %i.ni, i32 32767)
  store i32 %i.nj, ptr %i.ms, align 4, !tbaa !29
  %indvars.iv.next.i38.i = add nuw nsw i64 %indvars.iv.i37.i, 1 ; 2 uses
  %exitcond.not.i39.i = icmp eq i64 %indvars.iv.next.i38.i, %wide.trip.count.i36.i
  br i1 %exitcond.not.i39.i, label %.loopexit.i40.i, label %.preheader.i.i, !llvm.loop !43

.loopexit.i40.i:                                  ; preds = %.preheader.i.i, %bb.ac
  %indvars.iv.next40.i.i = add nuw nsw i32 %indvars.iv39.i.i, 1
  %exitcond44.not.i.i = icmp eq i64 %indvars.iv.next42.i.i, 14
  br i1 %exitcond44.not.i.i, label %dss_sp_convert_coeffs.exit.preheader.i, label %bb.ac, !llvm.loop !44

dss_sp_convert_coeffs.exit.preheader.i:           ; preds = %.loopexit.i40.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.d, i64 3508 ; 41 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 1184 ; 15 uses
  %scevgep.i.i = getelementptr nuw i8, ptr %i.d, i64 1476
  %scevgep13.i.i = getelementptr nuw i8, ptr %i.d, i64 1188
  %i.nm = getelementptr inbounds nuw i8, ptr %i.d, i64 3800
  %i.nn = getelementptr i8, ptr %i.d, i64 3804    ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.d, i64 3856
  %i.np = getelementptr inbounds nuw i8, ptr %i.d, i64 3504 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 3852
  %i.nr = getelementptr inbounds nuw i8, ptr %i.d, i64 3500
  %i.ns = getelementptr inbounds nuw i8, ptr %i.d, i64 3848
  %i.nt = getelementptr inbounds nuw i8, ptr %i.d, i64 3496
  %i.nu = getelementptr inbounds nuw i8, ptr %i.d, i64 3844
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 3492
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 3840
  %i.nx = getelementptr inbounds nuw i8, ptr %i.d, i64 3488 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.d, i64 3836
  %i.nz = getelementptr inbounds nuw i8, ptr %i.d, i64 3484
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 3832
  %i.ob = getelementptr inbounds nuw i8, ptr %i.d, i64 3480
  %i.oc = getelementptr inbounds nuw i8, ptr %i.d, i64 3828
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 3476
  %i.oe = getelementptr inbounds nuw i8, ptr %i.d, i64 3824
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 3472 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.d, i64 3820
  %i.oh = getelementptr inbounds nuw i8, ptr %i.d, i64 3468 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.d, i64 3816
  %i.oj = getelementptr inbounds nuw i8, ptr %i.d, i64 3464 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.d, i64 3812
  %i.ol = getelementptr inbounds nuw i8, ptr %i.d, i64 3460
  %i.om = getelementptr inbounds nuw i8, ptr %i.d, i64 3808
  %i.on = getelementptr inbounds nuw i8, ptr %i.d, i64 3456 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.d, i64 3452
  %i.op = getelementptr i8, ptr %i.d, i64 2120    ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 3272 ; 6 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.d, i64 3276 ; 6 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.d, i64 3280
  %i.ot = getelementptr inbounds nuw i8, ptr %i.d, i64 3284
  %i.ou = getelementptr inbounds nuw i8, ptr %i.d, i64 3288 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.d, i64 3292 ; 5 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 3296
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 3300
  %i.ow = getelementptr inbounds nuw i8, ptr %i.d, i64 3304 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.d, i64 3308 ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 3312
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 3316
  %i.oy = getelementptr inbounds nuw i8, ptr %i.d, i64 3320 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.d, i64 3324 ; 5 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.d, i64 3328 ; 5 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.d, i64 3332 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.d, i64 3336 ; 6 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.d, i64 3340 ; 5 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.d, i64 3352 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.d, i64 3356 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.d, i64 3368 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.d, i64 3372 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.d, i64 3384 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.d, i64 3388 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.d, i64 3796 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  %i.pm = getelementptr inbounds nuw i8, ptr %i.d, i64 3780
  %i.pn = getelementptr inbounds nuw i8, ptr %i.d, i64 3748
  %i.po = getelementptr inbounds nuw i8, ptr %i.d, i64 3716
  %i.pp = getelementptr inbounds nuw i8, ptr %i.d, i64 3684
  %i.pq = getelementptr inbounds nuw i8, ptr %i.d, i64 3652
  %i.pr = getelementptr inbounds nuw i8, ptr %i.d, i64 3620
  %i.ps = getelementptr inbounds nuw i8, ptr %i.d, i64 3588
  %i.pt = getelementptr inbounds nuw i8, ptr %i.d, i64 3556
  %i.pu = getelementptr inbounds nuw i8, ptr %i.d, i64 3524
  %i.pv = getelementptr inbounds nuw i8, ptr %i.d, i64 3764
  %i.pw = getelementptr inbounds nuw i8, ptr %i.d, i64 3732
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 3700
  %i.py = getelementptr inbounds nuw i8, ptr %i.d, i64 3668
  %i.pz = getelementptr inbounds nuw i8, ptr %i.d, i64 3636
  %i.qa = getelementptr inbounds nuw i8, ptr %i.d, i64 3604
  %i.qb = getelementptr inbounds nuw i8, ptr %i.d, i64 3572
  %i.qc = getelementptr inbounds nuw i8, ptr %i.d, i64 3540
  %i.qd = getelementptr inbounds nuw i8, ptr %i.d, i64 3524
  %i.qe = getelementptr inbounds nuw i8, ptr %i.d, i64 3540
  %i.qf = getelementptr inbounds nuw i8, ptr %i.d, i64 3556
  %i.qg = getelementptr inbounds nuw i8, ptr %i.d, i64 3572
  %i.qh = getelementptr inbounds nuw i8, ptr %i.d, i64 3588
  %i.qi = getelementptr inbounds nuw i8, ptr %i.d, i64 3604
  %i.qj = getelementptr inbounds nuw i8, ptr %i.d, i64 3620
  %i.qk = getelementptr inbounds nuw i8, ptr %i.d, i64 3636
  %i.ql = getelementptr inbounds nuw i8, ptr %i.d, i64 3652
  %i.qm = getelementptr inbounds nuw i8, ptr %i.d, i64 3668
  %i.qn = getelementptr inbounds nuw i8, ptr %i.d, i64 3684
  %i.qo = getelementptr inbounds nuw i8, ptr %i.d, i64 3700
  %i.qp = getelementptr inbounds nuw i8, ptr %i.d, i64 3716
  %i.qq = getelementptr inbounds nuw i8, ptr %i.d, i64 3732
  %i.qr = getelementptr inbounds nuw i8, ptr %i.d, i64 3748
  %i.qs = getelementptr inbounds nuw i8, ptr %i.d, i64 3764
  %i.qt = getelementptr inbounds nuw i8, ptr %i.d, i64 3780
  %i.qu = getelementptr inbounds nuw i8, ptr %i.d, i64 3524 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.d, i64 3540 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.d, i64 3556 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.d, i64 3572 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.d, i64 3588 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.d, i64 3604 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.d, i64 3620 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.d, i64 3636 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.d, i64 3652 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.d, i64 3668 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.d, i64 3684 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.d, i64 3700 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.d, i64 3716 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.d, i64 3732 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.d, i64 3748 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.d, i64 3764 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.d, i64 3780 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.d, i64 3524 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.d, i64 3540 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.d, i64 3556 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.d, i64 3572 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.d, i64 3588 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.d, i64 3604 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.d, i64 3620 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.d, i64 3636 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.d, i64 3652 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.d, i64 3668 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.d, i64 3684 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.d, i64 3700 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.d, i64 3716 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.d, i64 3732 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.d, i64 3748 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.d, i64 3764 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.d, i64 3780 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.d, i64 3520 ; 2 uses
  %i.sd = getelementptr i8, ptr %i.d, i64 3516
  %i.se = getelementptr inbounds nuw i8, ptr %i.d, i64 3516 ; 2 uses
  %i.sf = getelementptr i8, ptr %i.d, i64 3512
  %i.sg = getelementptr inbounds nuw i8, ptr %i.d, i64 3512 ; 2 uses
  %i.sh = getelementptr i8, ptr %i.d, i64 3508
  %i.si = getelementptr inbounds nuw i8, ptr %i.d, i64 3524 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.d, i64 3540 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.d, i64 3556 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.d, i64 3572 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.d, i64 3588 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.d, i64 3604 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.d, i64 3620 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.d, i64 3636 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.d, i64 3652 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.d, i64 3668 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.d, i64 3684 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.d, i64 3700 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.d, i64 3716 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.d, i64 3732 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.d, i64 3748 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.d, i64 3764 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.d, i64 3780 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.d, i64 3524 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.d, i64 3540 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.d, i64 3556 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.d, i64 3572 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.d, i64 3588 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.d, i64 3604 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.d, i64 3620 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.d, i64 3636 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.d, i64 3652 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.d, i64 3668 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.d, i64 3684 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.d, i64 3700 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.d, i64 3716 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.d, i64 3732 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.d, i64 3748 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.d, i64 3764 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.d, i64 3780 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.d, i64 3524
  %i.tr = getelementptr inbounds nuw i8, ptr %i.d, i64 3540
  %i.ts = getelementptr inbounds nuw i8, ptr %i.d, i64 3556
  %i.tt = getelementptr inbounds nuw i8, ptr %i.d, i64 3572
  %i.tu = getelementptr inbounds nuw i8, ptr %i.d, i64 3588
  %i.tv = getelementptr inbounds nuw i8, ptr %i.d, i64 3604
  %i.tw = getelementptr inbounds nuw i8, ptr %i.d, i64 3620
  %i.tx = getelementptr inbounds nuw i8, ptr %i.d, i64 3636
  %i.ty = getelementptr inbounds nuw i8, ptr %i.d, i64 3652
  %i.tz = getelementptr inbounds nuw i8, ptr %i.d, i64 3668
  %i.ua = getelementptr inbounds nuw i8, ptr %i.d, i64 3684
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 3700
  %i.uc = getelementptr inbounds nuw i8, ptr %i.d, i64 3716
  %i.ud = getelementptr inbounds nuw i8, ptr %i.d, i64 3732
  %i.ue = getelementptr inbounds nuw i8, ptr %i.d, i64 3748
  %i.uf = getelementptr inbounds nuw i8, ptr %i.d, i64 3764
  %i.ug = getelementptr inbounds nuw i8, ptr %i.d, i64 3780
  br label %bb.ad

bb.ad:                                            ; preds = %dss_sp_sf_synthesis.exit.i, %dss_sp_convert_coeffs.exit.preheader.i
  %indvars.iv151.i = phi i64 [ 0, %dss_sp_convert_coeffs.exit.preheader.i ], [ %indvars.iv.next152.i, %dss_sp_sf_synthesis.exit.i ] ; 5 uses
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %i.id, i64 %indvars.iv151.i
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !68 ; 2 uses
  %i.uj = sext i16 %i.ui to i32                   ; 7 uses
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %.rtmerge230, i64 %indvars.iv151.i
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !68
  %i.um = sext i16 %i.ul to i64
  %i.un = getelementptr inbounds [2 x i8], ptr @dss_sp_adaptive_gain, i64 %i.um
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !68
  %i.up = zext i16 %i.uo to i32
  %i.uq = icmp slt i16 %i.ui, 72
  br i1 %i.uq, label %.preheader.i45.i, label %.preheader25.preheader.i.i

.preheader25.preheader.i.i:                       ; preds = %bb.ad
  %i.ur = zext nneg i32 %i.uj to i64              ; 4 uses
  br label %.preheader25.i.i

.preheader.i45.i:                                 ; preds = %bb.ad, %.preheader.i45.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i.2, %.preheader.i45.i ], [ 0, %bb.ad ] ; 5 uses
  %i.us = trunc nuw nsw i64 %indvars.iv32.i.i to i32
  %i.ut = srem i32 %i.us, %i.uj
  %i.uu = sub nsw i32 %i.uj, %i.ut
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !29
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv32.i.i
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !29
  %indvars.iv.next33.i.i = add nuw nsw i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.uz = trunc nuw nsw i64 %indvars.iv.next33.i.i to i32
  %i.va = srem i32 %i.uz, %i.uj
  %i.vb = sub nsw i32 %i.uj, %i.va
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.vc
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !29
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next33.i.i
  store i32 %i.ve, ptr %i.vf, align 4, !tbaa !29
  %indvars.iv.next33.i.i.1 = add nuw nsw i64 %indvars.iv32.i.i, 2 ; 2 uses
  %i.vg = trunc nuw nsw i64 %indvars.iv.next33.i.i.1 to i32
  %i.vh = srem i32 %i.vg, %i.uj
  %i.vi = sub nsw i32 %i.uj, %i.vh
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.vj
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !29
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next33.i.i.1
  store i32 %i.vl, ptr %i.vm, align 4, !tbaa !29
  %indvars.iv.next33.i.i.2 = add nuw nsw i64 %indvars.iv32.i.i, 3 ; 2 uses
  %exitcond35.not.i.i.2 = icmp eq i64 %indvars.iv.next33.i.i.2, 72
  br i1 %exitcond35.not.i.i.2, label %vector.ph196, label %.preheader.i45.i, !llvm.loop !45

.preheader25.i.i:                                 ; preds = %.preheader25.i.i, %.preheader25.preheader.i.i
  %indvars.iv.i41.i = phi i64 [ 0, %.preheader25.preheader.i.i ], [ %indvars.iv.next.i42.i.3, %.preheader25.i.i ] ; 6 uses
  %i.vn = sub nuw nsw i64 %i.ur, %indvars.iv.i41.i
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.vn
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !29
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i41.i
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !29
  %indvars.iv.next.i42.i = or disjoint i64 %indvars.iv.i41.i, 1 ; 2 uses
  %i.vr = sub nuw nsw i64 %i.ur, %indvars.iv.next.i42.i
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !29
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i42.i
end_hunk_1
begin_hunk_2_@dss_sp_decode_frame:bb.a
  %i.afw = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load179.5, i1 true)
  %i.afx = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load180.5, i1 true)
  %i.afy = or <4 x i32> %i.afw, %i.afu
  %i.afz = or <4 x i32> %i.afx, %i.afv
  %wide.load179.6 = load <4 x i32>, ptr %i.qo, align 4, !tbaa !29
  %wide.load180.6 = load <4 x i32>, ptr %i.qp, align 4, !tbaa !29
  %i.aga = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load179.6, i1 true)
  %i.agb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load180.6, i1 true)
  %i.agc = or <4 x i32> %i.aga, %i.afy
  %i.agd = or <4 x i32> %i.agb, %i.afz
  %wide.load179.7 = load <4 x i32>, ptr %i.qq, align 4, !tbaa !29
  %wide.load180.7 = load <4 x i32>, ptr %i.qr, align 4, !tbaa !29
  %i.age = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load179.7, i1 true)
  %i.agf = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load180.7, i1 true)
  %i.agg = or <4 x i32> %i.age, %i.agc
  %i.agh = or <4 x i32> %i.agf, %i.agd
  %wide.load179.8 = load <4 x i32>, ptr %i.qs, align 4, !tbaa !29
  %wide.load180.8 = load <4 x i32>, ptr %i.qt, align 4, !tbaa !29
  %i.agi = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load179.8, i1 true)
  %i.agj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load180.8, i1 true)
  %i.agk = or <4 x i32> %i.agi, %i.agg
  %i.agl = or <4 x i32> %i.agj, %i.agh
  %bin.rdx183 = or <4 x i32> %i.agl, %i.agk
  %i.agm = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx183) ; 2 uses
  %i.agn = getelementptr inbounds nuw [288 x i8], ptr %i.op, i64 %indvars.iv151.i
  %spec.store.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.afc, i32 1048575)
  %i.ago = icmp samesign ult i32 %i.agm, 16385
  br i1 %i.ago, label %.lr.ph.i.i.i, label %vector.body157

.lr.ph.i.i.i:                                     ; preds = %dss_sp_shift_sq_sub.exit.i, %.lr.ph.i.i.i
  %.01320.i.i.i = phi i32 [ %i.agq, %.lr.ph.i.i.i ], [ 0, %dss_sp_shift_sq_sub.exit.i ] ; 3 uses
  %.119.i.i.i = phi i32 [ %i.agp, %.lr.ph.i.i.i ], [ %i.agm, %dss_sp_shift_sq_sub.exit.i ] ; 2 uses
  %i.agp = shl nuw nsw i32 %.119.i.i.i, 1
  %i.agq = add nuw nsw i32 %.01320.i.i.i, 1       ; 3 uses
  %i.agr = icmp samesign ult i32 %.119.i.i.i, 8193
  br i1 %i.agr, label %.lr.ph.i.i.i, label %dss_sp_get_normalize_bits.exit.i.i, !llvm.loop !51

dss_sp_get_normalize_bits.exit.i.i:               ; preds = %.lr.ph.i.i.i
  %i.ags = add nsw i32 %.01320.i.i.i, -2          ; 2 uses
  %i.agt = icmp samesign ult i32 %.01320.i.i.i, 2
  br i1 %i.agt, label %vector.body157, label %vector.body167

vector.body167:                                   ; preds = %dss_sp_get_normalize_bits.exit.i.i
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.ags, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 18 uses
  %wide.load169 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !29
  %wide.load170 = load <4 x i32>, ptr %i.qu, align 4, !tbaa !29
  %i.agu = shl <4 x i32> %wide.load169, %broadcast.splat166
  %i.agv = shl <4 x i32> %wide.load170, %broadcast.splat166
  store <4 x i32> %i.agu, ptr %i.nk, align 4, !tbaa !29
  store <4 x i32> %i.agv, ptr %i.qu, align 4, !tbaa !29
  %wide.load169.1 = load <4 x i32>, ptr %i.qv, align 4, !tbaa !29
  %wide.load170.1 = load <4 x i32>, ptr %i.qw, align 4, !tbaa !29
  %i.agw = shl <4 x i32> %wide.load169.1, %broadcast.splat166
  %i.agx = shl <4 x i32> %wide.load170.1, %broadcast.splat166
  store <4 x i32> %i.agw, ptr %i.qv, align 4, !tbaa !29
  store <4 x i32> %i.agx, ptr %i.qw, align 4, !tbaa !29
  %wide.load169.2 = load <4 x i32>, ptr %i.qx, align 4, !tbaa !29
  %wide.load170.2 = load <4 x i32>, ptr %i.qy, align 4, !tbaa !29
  %i.agy = shl <4 x i32> %wide.load169.2, %broadcast.splat166
  %i.agz = shl <4 x i32> %wide.load170.2, %broadcast.splat166
  store <4 x i32> %i.agy, ptr %i.qx, align 4, !tbaa !29
  store <4 x i32> %i.agz, ptr %i.qy, align 4, !tbaa !29
  %wide.load169.3 = load <4 x i32>, ptr %i.qz, align 4, !tbaa !29
  %wide.load170.3 = load <4 x i32>, ptr %i.ra, align 4, !tbaa !29
  %i.aha = shl <4 x i32> %wide.load169.3, %broadcast.splat166
  %i.ahb = shl <4 x i32> %wide.load170.3, %broadcast.splat166
  store <4 x i32> %i.aha, ptr %i.qz, align 4, !tbaa !29
  store <4 x i32> %i.ahb, ptr %i.ra, align 4, !tbaa !29
  %wide.load169.4 = load <4 x i32>, ptr %i.rb, align 4, !tbaa !29
  %wide.load170.4 = load <4 x i32>, ptr %i.rc, align 4, !tbaa !29
  %i.ahc = shl <4 x i32> %wide.load169.4, %broadcast.splat166
  %i.ahd = shl <4 x i32> %wide.load170.4, %broadcast.splat166
  store <4 x i32> %i.ahc, ptr %i.rb, align 4, !tbaa !29
  store <4 x i32> %i.ahd, ptr %i.rc, align 4, !tbaa !29
  %wide.load169.5 = load <4 x i32>, ptr %i.rd, align 4, !tbaa !29
  %wide.load170.5 = load <4 x i32>, ptr %i.re, align 4, !tbaa !29
  %i.ahe = shl <4 x i32> %wide.load169.5, %broadcast.splat166
  %i.ahf = shl <4 x i32> %wide.load170.5, %broadcast.splat166
  store <4 x i32> %i.ahe, ptr %i.rd, align 4, !tbaa !29
  store <4 x i32> %i.ahf, ptr %i.re, align 4, !tbaa !29
  %wide.load169.6 = load <4 x i32>, ptr %i.rf, align 4, !tbaa !29
  %wide.load170.6 = load <4 x i32>, ptr %i.rg, align 4, !tbaa !29
  %i.ahg = shl <4 x i32> %wide.load169.6, %broadcast.splat166
  %i.ahh = shl <4 x i32> %wide.load170.6, %broadcast.splat166
  store <4 x i32> %i.ahg, ptr %i.rf, align 4, !tbaa !29
  store <4 x i32> %i.ahh, ptr %i.rg, align 4, !tbaa !29
  %wide.load169.7 = load <4 x i32>, ptr %i.rh, align 4, !tbaa !29
  %wide.load170.7 = load <4 x i32>, ptr %i.ri, align 4, !tbaa !29
  %i.ahi = shl <4 x i32> %wide.load169.7, %broadcast.splat166
  %i.ahj = shl <4 x i32> %wide.load170.7, %broadcast.splat166
  store <4 x i32> %i.ahi, ptr %i.rh, align 4, !tbaa !29
  store <4 x i32> %i.ahj, ptr %i.ri, align 4, !tbaa !29
  %wide.load169.8 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !29
  %wide.load170.8 = load <4 x i32>, ptr %i.rk, align 4, !tbaa !29
  %i.ahk = shl <4 x i32> %wide.load169.8, %broadcast.splat166
  %i.ahl = shl <4 x i32> %wide.load170.8, %broadcast.splat166
  store <4 x i32> %i.ahk, ptr %i.rj, align 4, !tbaa !29
  store <4 x i32> %i.ahl, ptr %i.rk, align 4, !tbaa !29
  br label %dss_sp_scale_vector.exit.i.i

vector.body157:                                   ; preds = %dss_sp_get_normalize_bits.exit.i.i, %dss_sp_shift_sq_sub.exit.i
  %i.ahm = phi i32 [ %i.ags, %dss_sp_get_normalize_bits.exit.i.i ], [ -3, %dss_sp_shift_sq_sub.exit.i ]
  %.013.lcssa.i175.i.i = phi i32 [ %i.agq, %dss_sp_get_normalize_bits.exit.i.i ], [ 0, %dss_sp_shift_sq_sub.exit.i ]
  %i.ahn = sub nsw i32 0, %i.ahm
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %i.ahn, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer ; 18 uses
  %wide.load159 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !29
  %wide.load160 = load <4 x i32>, ptr %i.rl, align 4, !tbaa !29
  %i.aho = ashr <4 x i32> %wide.load159, %broadcast.splat156
  %i.ahp = ashr <4 x i32> %wide.load160, %broadcast.splat156
  store <4 x i32> %i.aho, ptr %i.nk, align 4, !tbaa !29
  store <4 x i32> %i.ahp, ptr %i.rl, align 4, !tbaa !29
  %wide.load159.1 = load <4 x i32>, ptr %i.rm, align 4, !tbaa !29
  %wide.load160.1 = load <4 x i32>, ptr %i.rn, align 4, !tbaa !29
  %i.ahq = ashr <4 x i32> %wide.load159.1, %broadcast.splat156
  %i.ahr = ashr <4 x i32> %wide.load160.1, %broadcast.splat156
  store <4 x i32> %i.ahq, ptr %i.rm, align 4, !tbaa !29
  store <4 x i32> %i.ahr, ptr %i.rn, align 4, !tbaa !29
  %wide.load159.2 = load <4 x i32>, ptr %i.ro, align 4, !tbaa !29
  %wide.load160.2 = load <4 x i32>, ptr %i.rp, align 4, !tbaa !29
  %i.ahs = ashr <4 x i32> %wide.load159.2, %broadcast.splat156
  %i.aht = ashr <4 x i32> %wide.load160.2, %broadcast.splat156
  store <4 x i32> %i.ahs, ptr %i.ro, align 4, !tbaa !29
  store <4 x i32> %i.aht, ptr %i.rp, align 4, !tbaa !29
  %wide.load159.3 = load <4 x i32>, ptr %i.rq, align 4, !tbaa !29
  %wide.load160.3 = load <4 x i32>, ptr %i.rr, align 4, !tbaa !29
  %i.ahu = ashr <4 x i32> %wide.load159.3, %broadcast.splat156
  %i.ahv = ashr <4 x i32> %wide.load160.3, %broadcast.splat156
  store <4 x i32> %i.ahu, ptr %i.rq, align 4, !tbaa !29
  store <4 x i32> %i.ahv, ptr %i.rr, align 4, !tbaa !29
  %wide.load159.4 = load <4 x i32>, ptr %i.rs, align 4, !tbaa !29
  %wide.load160.4 = load <4 x i32>, ptr %i.rt, align 4, !tbaa !29
  %i.ahw = ashr <4 x i32> %wide.load159.4, %broadcast.splat156
  %i.ahx = ashr <4 x i32> %wide.load160.4, %broadcast.splat156
  store <4 x i32> %i.ahw, ptr %i.rs, align 4, !tbaa !29
  store <4 x i32> %i.ahx, ptr %i.rt, align 4, !tbaa !29
  %wide.load159.5 = load <4 x i32>, ptr %i.ru, align 4, !tbaa !29
  %wide.load160.5 = load <4 x i32>, ptr %i.rv, align 4, !tbaa !29
  %i.ahy = ashr <4 x i32> %wide.load159.5, %broadcast.splat156
  %i.ahz = ashr <4 x i32> %wide.load160.5, %broadcast.splat156
  store <4 x i32> %i.ahy, ptr %i.ru, align 4, !tbaa !29
  store <4 x i32> %i.ahz, ptr %i.rv, align 4, !tbaa !29
  %wide.load159.6 = load <4 x i32>, ptr %i.rw, align 4, !tbaa !29
  %wide.load160.6 = load <4 x i32>, ptr %i.rx, align 4, !tbaa !29
  %i.aia = ashr <4 x i32> %wide.load159.6, %broadcast.splat156
  %i.aib = ashr <4 x i32> %wide.load160.6, %broadcast.splat156
  store <4 x i32> %i.aia, ptr %i.rw, align 4, !tbaa !29
  store <4 x i32> %i.aib, ptr %i.rx, align 4, !tbaa !29
  %wide.load159.7 = load <4 x i32>, ptr %i.ry, align 4, !tbaa !29
  %wide.load160.7 = load <4 x i32>, ptr %i.rz, align 4, !tbaa !29
  %i.aic = ashr <4 x i32> %wide.load159.7, %broadcast.splat156
  %i.aid = ashr <4 x i32> %wide.load160.7, %broadcast.splat156
  store <4 x i32> %i.aic, ptr %i.ry, align 4, !tbaa !29
  store <4 x i32> %i.aid, ptr %i.rz, align 4, !tbaa !29
  %wide.load159.8 = load <4 x i32>, ptr %i.sa, align 4, !tbaa !29
  %wide.load160.8 = load <4 x i32>, ptr %i.sb, align 4, !tbaa !29
  %i.aie = ashr <4 x i32> %wide.load159.8, %broadcast.splat156
  %i.aif = ashr <4 x i32> %wide.load160.8, %broadcast.splat156
  store <4 x i32> %i.aie, ptr %i.sa, align 4, !tbaa !29
  store <4 x i32> %i.aif, ptr %i.sb, align 4, !tbaa !29
  br label %dss_sp_scale_vector.exit.i.i

dss_sp_scale_vector.exit.i.i:                     ; preds = %vector.body167, %vector.body157
  %.013.lcssa.i174.i.i = phi i32 [ %.013.lcssa.i175.i.i, %vector.body157 ], [ %i.agq, %vector.body167 ] ; 13 uses
  %i.aig = load <4 x i32>, ptr %i.oq, align 8, !tbaa !29
  %i.aih = insertelement <4 x i32> poison, i32 %.013.lcssa.i174.i.i, i64 0
  %i.aii = shufflevector <4 x i32> %i.aih, <4 x i32> poison, <4 x i32> zeroinitializer ; 13 uses
  %i.aij = shl <4 x i32> %i.aig, %i.aii
  store <4 x i32> %i.aij, ptr %i.oq, align 8, !tbaa !29
  %i.aik = load <4 x i32>, ptr %i.ou, align 8, !tbaa !29
  %i.ail = shl <4 x i32> %i.aik, %i.aii
  store <4 x i32> %i.ail, ptr %i.ou, align 8, !tbaa !29
  %i.aim = load <4 x i32>, ptr %i.ow, align 8, !tbaa !29
  %i.ain = shl <4 x i32> %i.aim, %i.aii
  store <4 x i32> %i.ain, ptr %i.ow, align 8, !tbaa !29
  %i.aio = load i32, ptr %i.pb, align 4, !tbaa !29 ; 2 uses
  %i.aip = load <4 x i32>, ptr %i.oy, align 8, !tbaa !29
  %i.aiq = shl i32 %i.aio, %.013.lcssa.i174.i.i
  %i.air = shl <4 x i32> %i.aip, %i.aii
  store <4 x i32> %i.air, ptr %i.oy, align 8, !tbaa !29
  %i.ais = load <4 x i32>, ptr %i.pc, align 8, !tbaa !29
  %i.ait = shl <4 x i32> %i.ais, %i.aii           ; 2 uses
  store <4 x i32> %i.ait, ptr %i.pc, align 8, !tbaa !29
  %i.aiu = load <4 x i32>, ptr %i.pe, align 8, !tbaa !29
  %i.aiv = shl <4 x i32> %i.aiu, %i.aii
  store <4 x i32> %i.aiv, ptr %i.pe, align 8, !tbaa !29
  %i.aiw = load <4 x i32>, ptr %i.pg, align 8, !tbaa !29
  %i.aix = shl <4 x i32> %i.aiw, %i.aii
  store <4 x i32> %i.aix, ptr %i.pg, align 8, !tbaa !29
  %i.aiy = load i32, ptr %i.pi, align 8, !tbaa !29
  %i.aiz = shl i32 %i.aiy, %.013.lcssa.i174.i.i
  store i32 %i.aiz, ptr %i.pi, align 8, !tbaa !29
  %i.aja = load i32, ptr %i.pj, align 4, !tbaa !29
  %i.ajb = shl i32 %i.aja, %.013.lcssa.i174.i.i
  store i32 %i.ajb, ptr %i.pj, align 4, !tbaa !29
  %i.ajc = shl nsw i32 %i.acw, 14
  %i.ajd = add nsw i32 %i.ajc, 16384
  %i.aje = ashr i32 %i.ajd, 15
  %i.ajf = shl nsw i32 %i.acv, 13
  %8 = add nsw i32 %i.ajf, 16384
  %9 = ashr i32 %8, 15
  %10 = shl nsw i32 %i.acu, 12
  %i.ajg = add nsw i32 %10, 16384
  %i.ajh = ashr i32 %i.ajg, 15
  %i.aji = load <2 x i32>, ptr %i.oj, align 8, !tbaa !29
  %11 = load i32, ptr %i.oh, align 4, !tbaa !29
  %12 = load i32, ptr %i.oj, align 8, !tbaa !29
  %13 = shl nsw i32 %12, 11
  %14 = add nsw i32 %13, 16384
  %15 = ashr i32 %14, 15
  %16 = shl nsw i32 %11, 10
  %17 = add nsw i32 %16, 16384
  %18 = ashr i32 %17, 15
  %i.ajj = load <4 x i32>, ptr %i.of, align 16, !tbaa !29 ; 5 uses
  %19 = extractelement <4 x i32> %i.ajj, i64 0
  %20 = shl nsw i32 %19, 9
  %21 = add nsw i32 %20, 16384
  %22 = ashr i32 %21, 15
  %23 = extractelement <4 x i32> %i.ajj, i64 1
  %24 = shl nsw i32 %23, 8
  %25 = add nsw i32 %24, 16384
  %26 = ashr i32 %25, 15
  %27 = extractelement <4 x i32> %i.ajj, i64 2
  %28 = shl nsw i32 %27, 7
  %29 = add nsw i32 %28, 16384
  %30 = ashr i32 %29, 15
  %i.ajk = load <4 x i32>, ptr %i.nx, align 16, !tbaa !29 ; 3 uses
  %31 = shufflevector <4 x i32> %i.ajj, <4 x i32> %i.ajk, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %32 = shl nsw <4 x i32> %31, <i32 6, i32 5, i32 4, i32 3>
  %33 = add nsw <4 x i32> %32, splat (i32 16384)
  %34 = ashr <4 x i32> %33, splat (i32 15)        ; 4 uses
  %35 = extractelement <4 x i32> %i.ajk, i64 3
  %36 = shl nsw i32 %35, 2
  %37 = add nsw i32 %36, 16384
  %38 = ashr i32 %37, 15
  %39 = load i32, ptr %i.np, align 16, !tbaa !29  ; 2 uses
  %40 = shl nsw i32 %39, 1
  %41 = add nsw i32 %40, 16384
  %42 = ashr i32 %41, 15
  %43 = extractelement <4 x i32> %34, i64 0
  %44 = extractelement <4 x i32> %34, i64 1
  %45 = extractelement <4 x i32> %34, i64 2
  %46 = extractelement <4 x i32> %34, i64 3
  br label %.preheader.i115.i.i

.preheader.i115.i.i:                              ; preds = %.preheader.i115.i.i, %dss_sp_scale_vector.exit.i.i
  %indvars.iv.i116.i.i = phi i64 [ 0, %dss_sp_scale_vector.exit.i.i ], [ %indvars.iv.next.i117.i.i, %.preheader.i115.i.i ] ; 2 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i116.i.i ; 2 uses
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !29 ; 4 uses
  store i32 %i.ajm, ptr %i.oq, align 8, !tbaa !29
  %47 = load i32, ptr %i.pa, align 16, !tbaa !29
  %48 = load i32, ptr %i.oz, align 4, !tbaa !29
  %49 = load i32, ptr %i.oy, align 8, !tbaa !29
  %50 = load i32, ptr %7, align 4, !tbaa !29
  %51 = load i32, ptr %6, align 16, !tbaa !29
  %52 = load i32, ptr %i.ox, align 4, !tbaa !29
  %53 = load i32, ptr %i.ow, align 8, !tbaa !29
  %54 = load i32, ptr %5, align 4, !tbaa !29
  %55 = load i32, ptr %4, align 16, !tbaa !29
  %56 = load i32, ptr %i.ov, align 4, !tbaa !29
  %57 = load i32, ptr %i.ou, align 8, !tbaa !29
  %58 = load i32, ptr %i.ot, align 4, !tbaa !29
  %i.ajn = load i32, ptr %i.os, align 16, !tbaa !29
  %i.ajo = load i32, ptr %i.or, align 4, !tbaa !29
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.or, ptr noundef nonnull align 8 dereferenceable(56) %i.oq, i64 56, i1 false), !tbaa !29
  %59 = mul nsw i32 %47, %42
  %60 = mul nsw i32 %48, %38
  %61 = mul nsw i32 %49, %46
  %62 = mul nsw i32 %50, %45
  %63 = mul nsw i32 %51, %44
  %64 = mul nsw i32 %52, %43
  %65 = mul nsw i32 %53, %30
  %66 = mul nsw i32 %54, %26
  %67 = mul nsw i32 %55, %22
  %68 = mul nsw i32 %56, %18
  %69 = mul nsw i32 %57, %15
  %70 = mul nsw i32 %58, %i.ajh
  %i.ajp = mul nsw i32 %i.ajn, %9
  %i.ajq = mul nsw i32 %i.ajo, %i.aje
  %i.ajr = mul nsw i32 %i.ajm, %i.ach
  %71 = add i32 %i.ajr, 4096
  %72 = add i32 %71, %59
  %73 = add i32 %72, %60
  %74 = add i32 %73, %61
  %75 = add i32 %74, %62
  %76 = add i32 %75, %63
  %77 = add i32 %76, %64
  %78 = add i32 %77, %65
  %79 = add i32 %78, %66
  %80 = add i32 %79, %67
  %81 = add i32 %80, %68
  %i.ajs = add i32 %81, %69
  %i.ajt = add i32 %i.ajs, %70
  %i.aju = add i32 %i.ajt, %i.ajp
  %i.ajv = add i32 %i.aju, %i.ajq
  %i.ajw = ashr i32 %i.ajv, 13
  %i.ajx = tail call i32 @llvm.smax.i32(i32 %i.ajw, i32 -32768)
  %i.ajy = tail call i32 @llvm.smin.i32(i32 %i.ajx, i32 32767)
  store i32 %i.ajy, ptr %i.ajl, align 4, !tbaa !29
  %indvars.iv.next.i117.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1 ; 2 uses
  %exitcond.not.i118.i.i = icmp eq i64 %indvars.iv.next.i117.i.i, 72
  br i1 %exitcond.not.i118.i.i, label %dss_sp_shift_sq_add.exit.i.i, label %.preheader.i115.i.i, !llvm.loop !52

dss_sp_shift_sq_add.exit.i.i:                     ; preds = %.preheader.i115.i.i
  %i.ajz = mul nsw i32 %i.acw, 26214
  %i.aka = add nsw i32 %i.ajz, 16384
  %i.akb = ashr i32 %i.aka, 15
  %i.akc = shufflevector <2 x i32> %i.act, <2 x i32> %i.aji, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akd = shufflevector <4 x i32> %i.ajk, <4 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ake = shufflevector <12 x i32> %i.akc, <12 x i32> %i.akd, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %i.akf = shufflevector <4 x i32> %i.ajj, <4 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akg = shufflevector <12 x i32> %i.ake, <12 x i32> %i.akf, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.akh = mul nsw <12 x i32> %i.akg, <i32 20972, i32 16777, i32 13422, i32 10737, i32 8590, i32 6872, i32 5498, i32 4398, i32 3518, i32 2815, i32 2252, i32 1801>
  %i.aki = add nsw <12 x i32> %i.akh, splat (i32 16384)
  %i.akj = ashr <12 x i32> %i.aki, splat (i32 15)
  %i.akk = mul nsw i32 %39, 1441
  %i.akl = add nsw i32 %i.akk, 16384
  %i.akm = ashr i32 %i.akl, 15
  %i.akn = extractelement <4 x i32> %i.ait, i64 0 ; 2 uses
  br label %.preheader.i119.i.i

.preheader.i119.i.i:                              ; preds = %.preheader.i119.i.i, %dss_sp_shift_sq_add.exit.i.i
  %i.ako = phi i32 [ %i.akn, %dss_sp_shift_sq_add.exit.i.i ], [ %i.aky, %.preheader.i119.i.i ]
  %indvars.iv.i120.i.i = phi i64 [ 0, %dss_sp_shift_sq_add.exit.i.i ], [ %indvars.iv.next.i121.i.i, %.preheader.i119.i.i ] ; 2 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i120.i.i ; 2 uses
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !29
  %i.akr = mul nsw i32 %i.akq, %i.ach
  %i.aks = load i32, ptr %i.pj, align 4, !tbaa !29
  %.neg200.i.neg.i.neg = mul i32 %i.ako, %i.akb
  %.neg.i.neg.i.neg = mul i32 %i.aks, %i.akm
  %i.akt = load <12 x i32>, ptr %i.pd, align 4, !tbaa !29
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pc, ptr noundef nonnull align 4 dereferenceable(56) %i.pb, i64 56, i1 false), !tbaa !29
  %i.aku = mul <12 x i32> %i.akt, %i.akj
  %i.akv = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.aku)
  %op.rdx = add i32 %i.akv, %.neg.i.neg.i.neg
  %op.rdx213 = add i32 %op.rdx, %.neg200.i.neg.i.neg
  %i.akw = add i32 %i.akr, 4096
  %i.akx = sub i32 %i.akw, %op.rdx213
  %i.aky = ashr i32 %i.akx, 13                    ; 5 uses
  store i32 %i.aky, ptr %i.pc, align 8, !tbaa !29
  %i.akz = tail call i32 @llvm.smax.i32(i32 %i.aky, i32 -32768)
  %i.ala = tail call i32 @llvm.smin.i32(i32 %i.akz, i32 32767)
  store i32 %i.ala, ptr %i.akp, align 4, !tbaa !29
  %indvars.iv.next.i121.i.i = add nuw nsw i64 %indvars.iv.i120.i.i, 1 ; 2 uses
  %exitcond.not.i122.i.i = icmp eq i64 %indvars.iv.next.i121.i.i, 72
  br i1 %exitcond.not.i122.i.i, label %dss_sp_shift_sq_sub.exit.i.i, label %.preheader.i119.i.i, !llvm.loop !50

dss_sp_shift_sq_sub.exit.i.i:                     ; preds = %.preheader.i119.i.i
  %i.alb = ashr i32 %i.adt, 1
  %spec.store.select1.i.i = tail call i32 @llvm.smin.i32(i32 %i.alb, i32 0) ; 5 uses
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %spec.store.select1.i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %dss_sp_shift_sq_sub.exit.i.i
  %index147 = phi i64 [ 0, %dss_sp_shift_sq_sub.exit.i.i ], [ %index.next151, %vector.body146 ] ; 2 uses
  %i.alc = sub i64 71, %index147
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.alc ; 2 uses
  %i.ale = getelementptr inbounds i8, ptr %i.ald, i64 -12 ; 2 uses
  %wide.load148 = load <4 x i32>, ptr %i.ale, align 4, !tbaa !29
  %i.alf = shl nsw <4 x i32> %wide.load148, splat (i32 15)
  %i.alg = getelementptr i8, ptr %i.ald, i64 -16
  %wide.load149 = load <4 x i32>, ptr %i.alg, align 4, !tbaa !29
  %i.alh = mul <4 x i32> %wide.load149, %broadcast.splat145
  %i.ali = or disjoint <4 x i32> %i.alf, splat (i32 16384)
  %i.alj = add <4 x i32> %i.ali, %i.alh
  %i.alk = ashr <4 x i32> %i.alj, splat (i32 15)
  %i.all = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.alk, <4 x i32> splat (i32 -32768))
  %i.alm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.all, <4 x i32> splat (i32 32767))
  store <4 x i32> %i.alm, ptr %i.ale, align 4, !tbaa !29
  %index.next151 = add nuw i64 %index147, 4       ; 2 uses
  %i.aln = icmp eq i64 %index.next151, 68
  br i1 %i.aln, label %scalar.ph, label %vector.body146, !llvm.loop !53

scalar.ph:                                        ; preds = %vector.body146
  %i.alo = load i32, ptr %i.sc, align 16, !tbaa !29
  %i.alp = shl nsw i32 %i.alo, 15
  %i.alq = load i32, ptr %i.sd, align 4, !tbaa !29
  %i.alr = mul i32 %i.alq, %spec.store.select1.i.i
  %i.als = or disjoint i32 %i.alp, 16384
  %i.alt = add i32 %i.als, %i.alr
  %i.alu = ashr i32 %i.alt, 15
  %i.alv = tail call i32 @llvm.smax.i32(i32 %i.alu, i32 -32768)
  %i.alw = tail call i32 @llvm.smin.i32(i32 %i.alv, i32 32767)
  store i32 %i.alw, ptr %i.sc, align 16, !tbaa !29
  %i.alx = load i32, ptr %i.se, align 4, !tbaa !29
  %i.aly = shl nsw i32 %i.alx, 15
  %i.alz = load i32, ptr %i.sf, align 8, !tbaa !29
  %i.ama = mul i32 %i.alz, %spec.store.select1.i.i
  %i.amb = or disjoint i32 %i.aly, 16384
  %i.amc = add i32 %i.amb, %i.ama
  %i.amd = ashr i32 %i.amc, 15
  %i.ame = tail call i32 @llvm.smax.i32(i32 %i.amd, i32 -32768)
  %i.amf = tail call i32 @llvm.smin.i32(i32 %i.ame, i32 32767)
  store i32 %i.amf, ptr %i.se, align 4, !tbaa !29
  %i.amg = load i32, ptr %i.sg, align 8, !tbaa !29
  %i.amh = shl nsw i32 %i.amg, 15
  %i.ami = load i32, ptr %i.sh, align 4, !tbaa !29
  %i.amj = mul i32 %i.ami, %spec.store.select1.i.i
  %i.amk = or disjoint i32 %i.amh, 16384
  %i.aml = add i32 %i.amk, %i.amj
  %i.amm = ashr i32 %i.aml, 15
  %i.amn = tail call i32 @llvm.smax.i32(i32 %i.amm, i32 -32768)
  %i.amo = tail call i32 @llvm.smin.i32(i32 %i.amn, i32 32767)
  store i32 %i.amo, ptr %i.sg, align 8, !tbaa !29
  %i.amp = load i32, ptr %i.nk, align 4, !tbaa !29
  %i.amq = shl nsw i32 %i.amp, 15
  %i.amr = mul i32 %i.akn, %spec.store.select1.i.i
  %i.ams = add i32 %i.amr, 16384
  %i.amt = add i32 %i.ams, %i.amq
  %i.amu = ashr i32 %i.amt, 15
  %i.amv = tail call i32 @llvm.smax.i32(i32 %i.amu, i32 -32768)
  %i.amw = tail call i32 @llvm.smin.i32(i32 %i.amv, i32 32767)
  store i32 %i.amw, ptr %i.nk, align 4, !tbaa !29
  %i.amx = sub nsw i32 0, %.013.lcssa.i174.i.i    ; 7 uses
  %i.amy = icmp sgt i32 %.013.lcssa.i174.i.i, 0
  br i1 %i.amy, label %vector.body128, label %vector.body137

vector.body137:                                   ; preds = %scalar.ph
  %broadcast.splatinsert135 = insertelement <4 x i32> poison, i32 %i.amx, i64 0
  %broadcast.splat136 = shufflevector <4 x i32> %broadcast.splatinsert135, <4 x i32> poison, <4 x i32> zeroinitializer ; 18 uses
  %wide.load139 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !29
  %wide.load140 = load <4 x i32>, ptr %i.si, align 4, !tbaa !29
  %i.amz = shl <4 x i32> %wide.load139, %broadcast.splat136
  %i.ana = shl <4 x i32> %wide.load140, %broadcast.splat136
  store <4 x i32> %i.amz, ptr %i.nk, align 4, !tbaa !29
  store <4 x i32> %i.ana, ptr %i.si, align 4, !tbaa !29
  %wide.load139.1 = load <4 x i32>, ptr %i.sj, align 4, !tbaa !29
  %wide.load140.1 = load <4 x i32>, ptr %i.sk, align 4, !tbaa !29
  %i.anb = shl <4 x i32> %wide.load139.1, %broadcast.splat136
  %i.anc = shl <4 x i32> %wide.load140.1, %broadcast.splat136
  store <4 x i32> %i.anb, ptr %i.sj, align 4, !tbaa !29
  store <4 x i32> %i.anc, ptr %i.sk, align 4, !tbaa !29
  %wide.load139.2 = load <4 x i32>, ptr %i.sl, align 4, !tbaa !29
  %wide.load140.2 = load <4 x i32>, ptr %i.sm, align 4, !tbaa !29
  %i.and = shl <4 x i32> %wide.load139.2, %broadcast.splat136
  %i.ane = shl <4 x i32> %wide.load140.2, %broadcast.splat136
  store <4 x i32> %i.and, ptr %i.sl, align 4, !tbaa !29
  store <4 x i32> %i.ane, ptr %i.sm, align 4, !tbaa !29
  %wide.load139.3 = load <4 x i32>, ptr %i.sn, align 4, !tbaa !29
  %wide.load140.3 = load <4 x i32>, ptr %i.so, align 4, !tbaa !29
  %i.anf = shl <4 x i32> %wide.load139.3, %broadcast.splat136
  %i.ang = shl <4 x i32> %wide.load140.3, %broadcast.splat136
  store <4 x i32> %i.anf, ptr %i.sn, align 4, !tbaa !29
  store <4 x i32> %i.ang, ptr %i.so, align 4, !tbaa !29
  %wide.load139.4 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !29
  %wide.load140.4 = load <4 x i32>, ptr %i.sq, align 4, !tbaa !29
  %i.anh = shl <4 x i32> %wide.load139.4, %broadcast.splat136
  %i.ani = shl <4 x i32> %wide.load140.4, %broadcast.splat136
  store <4 x i32> %i.anh, ptr %i.sp, align 4, !tbaa !29
  store <4 x i32> %i.ani, ptr %i.sq, align 4, !tbaa !29
  %wide.load139.5 = load <4 x i32>, ptr %i.sr, align 4, !tbaa !29
  %wide.load140.5 = load <4 x i32>, ptr %i.ss, align 4, !tbaa !29
  %i.anj = shl <4 x i32> %wide.load139.5, %broadcast.splat136
  %i.ank = shl <4 x i32> %wide.load140.5, %broadcast.splat136
  store <4 x i32> %i.anj, ptr %i.sr, align 4, !tbaa !29
  store <4 x i32> %i.ank, ptr %i.ss, align 4, !tbaa !29
  %wide.load139.6 = load <4 x i32>, ptr %i.st, align 4, !tbaa !29
  %wide.load140.6 = load <4 x i32>, ptr %i.su, align 4, !tbaa !29
  %i.anl = shl <4 x i32> %wide.load139.6, %broadcast.splat136
  %i.anm = shl <4 x i32> %wide.load140.6, %broadcast.splat136
  store <4 x i32> %i.anl, ptr %i.st, align 4, !tbaa !29
  store <4 x i32> %i.anm, ptr %i.su, align 4, !tbaa !29
  %wide.load139.7 = load <4 x i32>, ptr %i.sv, align 4, !tbaa !29
  %wide.load140.7 = load <4 x i32>, ptr %i.sw, align 4, !tbaa !29
  %i.ann = shl <4 x i32> %wide.load139.7, %broadcast.splat136
  %i.ano = shl <4 x i32> %wide.load140.7, %broadcast.splat136
  store <4 x i32> %i.ann, ptr %i.sv, align 4, !tbaa !29
  store <4 x i32> %i.ano, ptr %i.sw, align 4, !tbaa !29
  %wide.load139.8 = load <4 x i32>, ptr %i.sx, align 4, !tbaa !29
  %wide.load140.8 = load <4 x i32>, ptr %i.sy, align 4, !tbaa !29
  %i.anp = shl <4 x i32> %wide.load139.8, %broadcast.splat136
  %i.anq = shl <4 x i32> %wide.load140.8, %broadcast.splat136
  store <4 x i32> %i.anp, ptr %i.sx, align 4, !tbaa !29
  store <4 x i32> %i.anq, ptr %i.sy, align 4, !tbaa !29
  %i.anr = shl i32 %i.ajm, %i.amx
  store i32 %i.anr, ptr %i.oq, align 8, !tbaa !29
  %i.ans = load <4 x i32>, ptr %i.or, align 4, !tbaa !29
  %i.ant = insertelement <4 x i32> poison, i32 %i.amx, i64 0
  %i.anu = shufflevector <4 x i32> %i.ant, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.anv = shl <4 x i32> %i.ans, %i.anu
  store <4 x i32> %i.anv, ptr %i.or, align 4, !tbaa !29
  %i.anw = load <4 x i32>, ptr %i.ov, align 4, !tbaa !29
  %i.anx = shl <4 x i32> %i.anw, %i.anu
  store <4 x i32> %i.anx, ptr %i.ov, align 4, !tbaa !29
  %i.any = load <4 x i32>, ptr %i.ox, align 4, !tbaa !29
  %i.anz = shl <4 x i32> %i.any, %i.anu
  store <4 x i32> %i.anz, ptr %i.ox, align 4, !tbaa !29
  %i.aoa = load i32, ptr %i.oz, align 4, !tbaa !29
  %i.aob = shl i32 %i.aoa, %i.amx
  store i32 %i.aob, ptr %i.oz, align 4, !tbaa !29
  %i.aoc = load i32, ptr %i.pa, align 16, !tbaa !29
  %i.aod = shl i32 %i.aoc, %i.amx
  store i32 %i.aod, ptr %i.pa, align 16, !tbaa !29
  store i32 %i.aio, ptr %i.pb, align 4, !tbaa !29
  %i.aoe = shl i32 %i.aky, %i.amx
  store i32 %i.aoe, ptr %i.pc, align 8, !tbaa !29
  %i.aof = load <4 x i32>, ptr %i.pd, align 4, !tbaa !29
  %i.aog = shl <4 x i32> %i.aof, %i.anu
  store <4 x i32> %i.aog, ptr %i.pd, align 4, !tbaa !29
  %i.aoh = load <4 x i32>, ptr %i.pf, align 4, !tbaa !29
  %i.aoi = shl <4 x i32> %i.aoh, %i.anu
  store <4 x i32> %i.aoi, ptr %i.pf, align 4, !tbaa !29
  %i.aoj = load <4 x i32>, ptr %i.ph, align 4, !tbaa !29
  %i.aok = shl <4 x i32> %i.aoj, %i.anu
  store <4 x i32> %i.aok, ptr %i.ph, align 4, !tbaa !29
  %i.aol = load i32, ptr %i.pj, align 4, !tbaa !29
  %i.aom = shl i32 %i.aol, %i.amx
  br label %dss_sp_scale_vector.exit152.i.i

vector.body128:                                   ; preds = %scalar.ph
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.013.lcssa.i174.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 18 uses
  %wide.load130 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !29
  %wide.load131 = load <4 x i32>, ptr %i.sz, align 4, !tbaa !29
  %i.aon = ashr <4 x i32> %wide.load130, %broadcast.splat
end_hunk_2
