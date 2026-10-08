Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.51 = private unnamed_addr constant [49 x i8] c"MNG features are not allowed in a PNG datastream\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"Unknown filter method in IHDR\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Invalid filter method in IHDR\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Invalid IHDR data\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"ASCII conversion buffer too small\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"gamma table being rebuilt\00", align 1
@png_sRGB_table = local_unnamed_addr constant [256 x i16] [i16 0, i16 20, i16 40, i16 60, i16 80, i16 99, i16 119, i16 139, i16 159, i16 179, i16 199, i16 219, i16 241, i16 264, i16 288, i16 313, i16 340, i16 367, i16 396, i16 427, i16 458, i16 491, i16 526, i16 562, i16 599, i16 637, i16 677, i16 718, i16 761, i16 805, i16 851, i16 898, i16 947, i16 997, i16 1048, i16 1101, i16 1156, i16 1212, i16 1270, i16 1330, i16 1391, i16 1453, i16 1517, i16 1583, i16 1651, i16 1720, i16 1790, i16 1863, i16 1937, i16 2013, i16 2090, i16 2170, i16 2250, i16 2333, i16 2418, i16 2504, i16 2592, i16 2681, i16 2773, i16 2866, i16 2961, i16 3058, i16 3157, i16 3258, i16 3360, i16 3464, i16 3570, i16 3678, i16 3788, i16 3900, i16 4014, i16 4129, i16 4247, i16 4366, i16 4488, i16 4611, i16 4736, i16 4864, i16 4993, i16 5124, i16 5257, i16 5392, i16 5530, i16 5669, i16 5810, i16 5953, i16 6099, i16 6246, i16 6395, i16 6547, i16 6700, i16 6856, i16 7014, i16 7174, i16 7335, i16 7500, i16 7666, i16 7834, i16 8004, i16 8177, i16 8352, i16 8528, i16 8708, i16 8889, i16 9072, i16 9258, i16 9445, i16 9635, i16 9828, i16 10022, i16 10219, i16 10417, i16 10619, i16 10822, i16 11028, i16 11235, i16 11446, i16 11658, i16 11873, i16 12090, i16 12309, i16 12530, i16 12754, i16 12980, i16 13209, i16 13440, i16 13673, i16 13909, i16 14146, i16 14387, i16 14629, i16 14874, i16 15122, i16 15371, i16 15623, i16 15878, i16 16135, i16 16394, i16 16656, i16 16920, i16 17187, i16 17456, i16 17727, i16 18001, i16 18277, i16 18556, i16 18837, i16 19121, i16 19407, i16 19696, i16 19987, i16 20281, i16 20577, i16 20876, i16 21177, i16 21481, i16 21787, i16 22096, i16 22407, i16 22721, i16 23038, i16 23357, i16 23678, i16 24002, i16 24329, i16 24658, i16 24990, i16 25325, i16 25662, i16 26001, i16 26344, i16 26688, i16 27036, i16 27386, i16 27739, i16 28094, i16 28452, i16 28813, i16 29176, i16 29542, i16 29911, i16 30282, i16 30656, i16 31033, i16 31412, i16 31794, i16 32179, i16 32567, i16 -32579, i16 -32186, i16 -31791, i16 -31393, i16 -30992, i16 -30588, i16 -30181, i16 -29772, i16 -29360, i16 -28945, i16 -28528, i16 -28107, i16 -27684, i16 -27258, i16 -26830, i16 -26398, i16 -25964, i16 -25527, i16 -25087, i16 -24645, i16 -24199, i16 -23751, i16 -23300, i16 -22846, i16 -22389, i16 -21930, i16 -21467, i16 -21002, i16 -20534, i16 -20063, i16 -19589, i16 -19113, i16 -18633, i16 -18151, i16 -17665, i16 -17177, i16 -16686, i16 -16192, i16 -15695, i16 -15195, i16 -14692, i16 -14187, i16 -13678, i16 -13167, i16 -12652, i16 -12135, i16 -11615, i16 -11091, i16 -10565, i16 -10036, i16 -9504, i16 -8969, i16 -8431, i16 -7890, i16 -7346, i16 -6799, i16 -6249, i16 -5696, i16 -5140, i16 -4581, i16 -4019, i16 -3454, i16 -2886, i16 -2315, i16 -1741, i16 -1164, i16 -584, i16 -1], align 16
@png_sRGB_base = local_unnamed_addr constant [512 x i16] [i16 128, i16 1782, i16 3383, i16 4644, i16 5675, i16 6564, i16 7357, i16 8074, i16 8732, i16 9346, i16 9921, i16 10463, i16 10977, i16 11466, i16 11935, i16 12384, i16 12816, i16 13233, i16 13634, i16 14024, i16 14402, i16 14769, i16 15125, i16 15473, i16 15812, i16 16142, i16 16466, i16 16781, i16 17090, i16 17393, i16 17690, i16 17981, i16 18266, i16 18546, i16 18822, i16 19093, i16 19359, i16 19621, i16 19879, i16 20133, i16 20383, i16 20630, i16 20873, i16 21113, i16 21349, i16 21583, i16 21813, i16 22041, i16 22265, i16 22487, i16 22707, i16 22923, i16 23138, i16 23350, i16 23559, i16 23767, i16 23972, i16 24175, i16 24376, i16 24575, i16 24772, i16 24967, i16 25160, i16 25352, i16 25542, i16 25730, i16 25916, i16 26101, i16 26284, i16 26465, i16 26645, i16 26823, i16 27000, i16 27176, i16 27350, i16 27523, i16 27695, i16 27865, i16 28034, i16 28201, i16 28368, i16 28533, i16 28697, i16 28860, i16 29021, i16 29182, i16 29341, i16 29500, i16 29657, i16 29813, i16 29969, i16 30123, i16 30276, i16 30429, i16 30580, i16 30730, i16 30880, i16 31028, i16 31176, i16 31323, i16 31469, i16 31614, i16 31758, i16 31902, i16 32045, i16 32186, i16 32327, i16 32468, i16 32607, i16 32746, i16 -32652, i16 -32515, i16 -32378, i16 -32242, i16 -32107, i16 -31972, i16 -31839, i16 -31705, i16 -31573, i16 -31441, i16 -31310, i16 -31179, i16 -31050, i16 -30920, i16 -30792, i16 -30663, i16 -30536, i16 -30409, i16 -30283, i16 -30157, i16 -30032, i16 -29907, i16 -29783, i16 -29660, i16 -29537, i16 -29414, i16 -29292, i16 -29171, i16 -29050, i16 -28930, i16 -28810, i16 -28691, i16 -28572, i16 -28453, i16 -28335, i16 -28218, i16 -28101, i16 -27985, i16 -27868, i16 -27753, i16 -27638, i16 -27523, i16 -27409, i16 -27295, i16 -27182, i16 -27069, i16 -26956, i16 -26844, i16 -26733, i16 -26621, i16 -26510, i16 -26400, i16 -26290, i16 -26180, i16 -26071, i16 -25962, i16 -25854, i16 -25746, i16 -25638, i16 -25531, i16 -25424, i16 -25317, i16 -25211, i16 -25105, i16 -24999, i16 -24894, i16 -24789, i16 -24685, i16 -24581, i16 -24477, i16 -24373, i16 -24270, i16 -24167, i16 -24065, i16 -23963, i16 -23861, i16 -23759, i16 -23658, i16 -23557, i16 -23457, i16 -23357, i16 -23257, i16 -23157, i16 -23058, i16 -22959, i16 -22860, i16 -22761, i16 -22663, i16 -22565, i16 -22468, i16 -22371, i16 -22274, i16 -22177, i16 -22080, i16 -21984, i16 -21888, i16 -21793, i16 -21697, i16 -21602, i16 -21508, i16 -21413, i16 -21319, i16 -21225, i16 -21131, i16 -21037, i16 -20944, i16 -20851, i16 -20758, i16 -20666, i16 -20574, i16 -20482, i16 -20390, i16 -20298, i16 -20207, i16 -20116, i16 -20025, i16 -19935, i16 -19844, i16 -19754, i16 -19664, i16 -19575, i16 -19485, i16 -19396, i16 -19307, i16 -19218, i16 -19130, i16 -19042, i16 -18953, i16 -18866, i16 -18778, i16 -18690, i16 -18603, i16 -18516, i16 -18429, i16 -18343, i16 -18256, i16 -18170, i16 -18084, i16 -17998, i16 -17913, i16 -17827, i16 -17742, i16 -17657, i16 -17572, i16 -17488, i16 -17403, i16 -17319, i16 -17235, i16 -17151, i16 -17068, i16 -16984, i16 -16901, i16 -16818, i16 -16735, i16 -16652, i16 -16570, i16 -16488, i16 -16405, i16 -16323, i16 -16242, i16 -16160, i16 -16078, i16 -15997, i16 -15916, i16 -15835, i16 -15754, i16 -15674, i16 -15593, i16 -15513, i16 -15433, i16 -15353, i16 -15273, i16 -15194, i16 -15114, i16 -15035, i16 -14956, i16 -14877, i16 -14798, i16 -14720, i16 -14641, i16 -14563, i16 -14485, i16 -14407, i16 -14329, i16 -14251, i16 -14174, i16 -14097, i16 -14019, i16 -13942, i16 -13865, i16 -13789, i16 -13712, i16 -13636, i16 -13559, i16 -13483, i16 -13407, i16 -13331, i16 -13256, i16 -13180, i16 -13104, i16 -13029, i16 -12954, i16 -12879, i16 -12804, i16 -12729, i16 -12655, i16 -12580, i16 -12506, i16 -12432, i16 -12358, i16 -12284, i16 -12210, i16 -12136, i16 -12063, i16 -11990, i16 -11916, i16 -11843, i16 -11770, i16 -11697, i16 -11625, i16 -11552, i16 -11480, i16 -11407, i16 -11335, i16 -11263, i16 -11191, i16 -11119, i16 -11047, i16 -10976, i16 -10904, i16 -10833, i16 -10762, i16 -10691, i16 -10620, i16 -10549, i16 -10478, i16 -10407, i16 -10337, i16 -10267, i16 -10196, i16 -10126, i16 -10056, i16 -9986, i16 -9916, i16 -9847, i16 -9777, i16 -9708, i16 -9638, i16 -9569, i16 -9500, i16 -9431, i16 -9362, i16 -9293, i16 -9225, i16 -9156, i16 -9088, i16 -9019, i16 -8951, i16 -8883, i16 -8815, i16 -8747, i16 -8679, i16 -8612, i16 -8544, i16 -8477, i16 -8409, i16 -8342, i16 -8275, i16 -8208, i16 -8141, i16 -8074, i16 -8007, i16 -7941, i16 -7874, i16 -7808, i16 -7741, i16 -7675, i16 -7609, i16 -7543, i16 -7477, i16 -7411, i16 -7345, i16 -7280, i16 -7214, i16 -7149, i16 -7083, i16 -7018, i16 -6953, i16 -6888, i16 -6823, i16 -6758, i16 -6693, i16 -6628, i16 -6564, i16 -6499, i16 -6435, i16 -6371, i16 -6306, i16 -6242, i16 -6178, i16 -6114, i16 -6050, i16 -5987, i16 -5923, i16 -5859, i16 -5796, i16 -5732, i16 -5669, i16 -5606, i16 -5543, i16 -5480, i16 -5417, i16 -5354, i16 -5291, i16 -5228, i16 -5166, i16 -5103, i16 -5041, i16 -4978, i16 -4916, i16 -4854, i16 -4792, i16 -4730, i16 -4668, i16 -4606, i16 -4544, i16 -4482, i16 -4421, i16 -4359, i16 -4298, i16 -4236, i16 -4175, i16 -4114, i16 -4053, i16 -3992, i16 -3931, i16 -3870, i16 -3809, i16 -3748, i16 -3688, i16 -3627, i16 -3567, i16 -3506, i16 -3446, i16 -3386, i16 -3325, i16 -3265, i16 -3205, i16 -3145, i16 -3086, i16 -3026, i16 -2966, i16 -2906, i16 -2847, i16 -2787, i16 -2728, i16 -2669, i16 -2609, i16 -2550, i16 -2491, i16 -2432, i16 -2373, i16 -2314, i16 -2255, i16 -2196, i16 -2138, i16 -2079, i16 -2021, i16 -1962, i16 -1904, i16 -1845, i16 -1787, i16 -1729, i16 -1671, i16 -1613, i16 -1555, i16 -1497, i16 -1439, i16 -1381, i16 -1324, i16 -1266, i16 -1208, i16 -1151, i16 -1093, i16 -1036, i16 -979, i16 -922, i16 -864, i16 -807, i16 -750, i16 -693, i16 -636, i16 -580, i16 -523, i16 -466, i16 -410, i16 -353, i16 -297, i16 -240, i16 -184, i16 -127, i16 -71], align 16
@png_sRGB_delta = local_unnamed_addr constant [512 x i8] c"\CF\C9\9E\81qdZRMHD@=;86421/.-+*)(''&%$$#\22\22!!  \1F\1F\1E\1E\1E\1D\1D\1C\1C\1C\1B\1B\1B\1B\1A\1A\1A\19\19\19\19\18\18\18\18\17\17\17\17\17\16\16\16\16\16\16\15\15\15\15\15\15\14\14\14\14\14\14\14\14\13\13\13\13\13\13\13\13\12\12\12\12\12\12\12\12\12\12\11\11\11\11\11\11\11\11\11\11\11\10\10\10\10\10\10\10\10\10\10\10\10\10\10\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16
@.str.57 = private unnamed_addr constant [10 x i8] c"too short\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"profile '\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"': \00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"h: \00", align 1
@switch.table.png_build_grayscale_palette = private unnamed_addr constant [4 x i16] [i16 2, i16 4, i16 16, i16 256], align 8
@switch.table.png_zstream_error = private unnamed_addr constant [10 x ptr] [ptr @.str.19, ptr @.str.18, ptr @.str.17, ptr @.str.16, ptr @.str.15, ptr @.str.14, ptr @.str.13, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 8
@switch.table.png_check_fp_number = private unnamed_addr constant [59 x i16] [i16 4, i16 poison, i16 132, i16 16, i16 poison, i16 8, i16 264, i16 264, i16 264, i16 264, i16 264, i16 264, i16 264, i16 264, i16 264, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 32, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 32], align 4

; Function Attrs: nounwind uwtable
define void @png_set_sig_bytes(ptr noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 8
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = trunc nuw nsw i32 %spec.select to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 629
  store i8 %i.c, ptr %i.d, align 1, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @png_sig_cmp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 8
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %2, %bb.b ], [ 8, %bb.a ]       ; 2 uses
  %i.c = icmp ugt i64 %1, 7
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add nuw nsw i64 %.0, %1
  %i.e = icmp samesign ugt i64 %i.d, 8
  %i.f = sub nuw nsw i64 8, %1
  %spec.select = select i1 %i.e, i64 %i.f, i64 %.0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr @png_sig_cmp.png_signature, i64 %1
  %i.i = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef nonnull %i.h, i64 noundef %spec.select) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.010 = phi i32 [ -1, %bb.b ], [ %i.i, %bb.d ], [ -1, %bb.c ]
  ret i32 %.010
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noalias ptr @png_zalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw i64 %i.b, %i.c
  %i.e = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.d) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @png_zfree(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void @png_free(ptr noundef %0, ptr noundef %1) #28
  ret void
}

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @png_reset_crc(ptr noalias nofree noundef writeonly captures(none) initializes((596, 600)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #28
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 596
  store i32 %i.b, ptr %i.c, align 4, !tbaa !25
  ret void
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @png_calculate_crc(ptr noalias nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  %i.c = and i32 %i.b, 536870912
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = and i32 %i.e, 768
  %i.g = icmp ne i32 %i.f, 768
  %i.h = and i32 %i.e, 2048
  %.not22 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not, i1 %.not22, i1 %i.g
  %i.j = icmp ne i64 %2, 0
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %i.m = zext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.020 = phi i64 [ %2, %bb.b ], [ %i.s, %bb.c ]  ; 2 uses
  %.018 = phi i64 [ %i.m, %bb.b ], [ %i.p, %bb.c ]
  %.0 = phi ptr [ %1, %bb.b ], [ %i.r, %bb.c ]    ; 2 uses
  %i.n = trunc i64 %.020 to i32                   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %spec.store.select = select i1 %i.o, i32 -1, i32 %i.n ; 2 uses
  %i.p = tail call i64 @crc32(i64 noundef %.018, ptr noundef %.0, i32 noundef %spec.store.select) #28 ; 2 uses
  %i.q = zext i32 %spec.store.select to i64       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 %i.q
  %i.s = sub i64 %.020, %i.q                      ; 2 uses
  %.not23 = icmp eq i64 %i.s, 0
  br i1 %.not23, label %bb.d, label %bb.c, !llvm.loop !66

bb.d:                                             ; preds = %bb.c
  %i.t = trunc i64 %i.p to i32
  store i32 %i.t, ptr %i.k, align 4, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_user_version_check(ptr noalias noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  %.not = icmp eq ptr %1, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 17 uses
  br i1 %.not, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !28      ; 3 uses
  %.not24 = icmp eq i8 %i.c, 49
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = load i32, ptr %i.b, align 8, !tbaa !26
  %i.e = or i32 %i.d, 131072
  store i32 %i.e, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.f = icmp eq i8 %i.c, 46
  %i.g = zext i1 %i.f to i32
  %.not25 = icmp eq i8 %i.c, 0
  br i1 %.not25, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28    ; 3 uses
  %.not24.1 = icmp eq i8 %i.i, 46
  br i1 %.not24.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.1
  %i.j = load i32, ptr %i.b, align 8, !tbaa !26
  %i.k = or i32 %i.j, 131072
  store i32 %i.k, ptr %i.b, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.1
  %i.l = icmp eq i8 %i.i, 46
  %i.m = zext i1 %i.l to i32
  %spec.select.1 = add nuw nsw i32 %i.g, %i.m     ; 2 uses
  %i.n = icmp samesign uge i32 %spec.select.1, 2
  %.not25.1 = icmp eq i8 %i.i, 0
  %or.cond = or i1 %i.n, %.not25.1
  br i1 %or.cond, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %bb.e
  %i.o = getelementptr i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28    ; 3 uses
  %.not24.2 = icmp eq i8 %i.p, 54
  br i1 %.not24.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.2
  %i.q = load i32, ptr %i.b, align 8, !tbaa !26
  %i.r = or i32 %i.q, 131072
  store i32 %i.r, ptr %i.b, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.2
  %i.s = icmp eq i8 %i.p, 46
  %i.t = zext i1 %i.s to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.t ; 2 uses
  %i.u = icmp samesign uge i32 %spec.select.2, 2
  %.not25.2 = icmp eq i8 %i.p, 0
  %or.cond31 = or i1 %i.u, %.not25.2
  br i1 %or.cond31, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %bb.g
  %i.v = getelementptr i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !28    ; 3 uses
  %.not24.3 = icmp eq i8 %i.w, 46
  br i1 %.not24.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.3
  %i.x = load i32, ptr %i.b, align 8, !tbaa !26
  %i.y = or i32 %i.x, 131072
  store i32 %i.y, ptr %i.b, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.3
  %i.z = icmp eq i8 %i.w, 46
  %i.aa = zext i1 %i.z to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.aa ; 2 uses
  %i.ab = icmp samesign uge i32 %spec.select.3, 2
  %.not25.3 = icmp eq i8 %i.w, 0
  %or.cond32 = or i1 %i.ab, %.not25.3
  br i1 %or.cond32, label %.critedge, label %.preheader.4

.preheader.4:                                     ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28  ; 3 uses
  %.not24.4 = icmp eq i8 %i.ad, 53
  br i1 %.not24.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.4
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !26
  %i.af = or i32 %i.ae, 131072
  store i32 %i.af, ptr %i.b, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.4
  %i.ag = icmp eq i8 %i.ad, 46
  %i.ah = zext i1 %i.ag to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %i.ah ; 2 uses
  %i.ai = icmp samesign uge i32 %spec.select.4, 2
  %.not25.4 = icmp eq i8 %i.ad, 0
  %or.cond33 = or i1 %i.ai, %.not25.4
  br i1 %or.cond33, label %.critedge, label %.preheader.5

.preheader.5:                                     ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %1, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28  ; 3 uses
  %.not24.5 = icmp eq i8 %i.ak, 56
  br i1 %.not24.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.5
  %i.al = load i32, ptr %i.b, align 8, !tbaa !26
  %i.am = or i32 %i.al, 131072
  store i32 %i.am, ptr %i.b, align 8, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader.5
  %i.an = icmp eq i8 %i.ak, 46
  %i.ao = zext i1 %i.an to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %i.ao
  %i.ap = icmp samesign uge i32 %spec.select.5, 2
  %.not25.5 = icmp eq i8 %i.ak, 0
  %or.cond34 = or i1 %i.ap, %.not25.5
  br i1 %or.cond34, label %.critedge, label %.preheader.6

.preheader.6:                                     ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %1, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28
  %.not24.6 = icmp eq i8 %i.ar, 0
  br i1 %.not24.6, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.preheader.6
  %i.as = load i32, ptr %i.b, align 8, !tbaa !26
  %i.at = or i32 %i.as, 131072
  store i32 %i.at, ptr %i.b, align 8, !tbaa !26
  br label %.critedge

.critedge.thread:                                 ; preds = %bb.a
  %i.au = load i32, ptr %i.b, align 8, !tbaa !26
  %i.av = or i32 %i.au, 131072
  store i32 %i.av, ptr %i.b, align 8, !tbaa !26
  br label %bb.o

.critedge:                                        ; preds = %.preheader.6, %bb.n, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.pre = load i32, ptr %i.b, align 8, !tbaa !26
  %i.aw = and i32 %.pre, 131072
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge.thread, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ay = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 0, ptr noundef nonnull @.str.3) #28
  %i.az = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef %i.ay, ptr noundef %1) #28
  %i.ba = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef %i.az, ptr noundef nonnull @.str.4) #28
  %i.bb = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef %i.ba, ptr noundef nonnull @.str.2) #28 ; 0 uses
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.o
  %.0 = phi i32 [ 0, %bb.o ], [ 1, %.critedge ]
  ret i32 %.0
}

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noalias ptr @png_create_png_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.png_struct_def, align 8     ; 18 uses
  %8 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1232) %7, i8 0, i64 1232, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 1108
  store i32 1000000, ptr %i.a, align 4, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 1112
  store i32 1000000, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 1116
  store i32 1000, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 1120
  store i64 8000000, ptr %i.d, align 8, !tbaa !31
  call void @png_set_mem_fn(ptr noundef nonnull %7, ptr noundef %4, ptr noundef %5, ptr noundef %6) #28
  call void @png_set_error_fn(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef %3) #28
  %i.e = call i32 @_setjmp(ptr noundef nonnull %8) #29
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 208
  store ptr %8, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i64 0, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  store ptr @longjmp, ptr %i.h, align 8, !tbaa !71
  %i.i = call i32 @png_user_version_check(ptr noundef nonnull %7, ptr noundef %0)
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call noalias ptr @png_malloc_warn(ptr noundef nonnull %7, i64 noundef 1232) #28 ; 4 uses
  %.not15 = icmp eq ptr %i.j, null
  br i1 %.not15, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 384
  store ptr @png_zalloc, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 392
  store ptr @png_zfree, ptr %i.l, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 400
  store ptr %i.j, ptr %i.m, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1232) %i.j, ptr noundef nonnull align 8 dereferenceable(1232) %7, i64 1232, i1 false), !tbaa.struct !79
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @png_set_mem_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_set_error_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define noalias ptr @png_create_info_struct(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef 352) #28 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i8 0, i64 352, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

declare noalias ptr @png_malloc_base(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @png_destroy_info_struct(ptr noalias noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %.not = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !39     ; 4 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !39
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 65535, i32 noundef -1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i8 0, i64 352, i1 false)
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #28
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_free_data(ptr noalias noundef %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge224, label %bb.c

._crit_edge224:                                   ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 252
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !47
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %2, 16384
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 4 uses
  %i.h = and i32 %i.e, %i.g
  %.not162 = icmp eq i32 %i.h, 0
  br i1 %.not162, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not163 = icmp eq i32 %3, -1
  br i1 %.not163, label %.preheader185, label %bb.e

.preheader185:                                    ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !86   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader185
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.l = sext i32 %3 to i64
end_hunk_0
begin_hunk_1_@png_ascii_from_fp:bb.a
  %i.cm = add i64 %.7199, -1
  %.pre.prol = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph237.prol
  %i.cn = phi i32 [ %.pre.prol, %bb.z ], [ %i.ck, %.lr.ph237.prol ]
  %.8142.prol = phi ptr [ %i.cl, %bb.z ], [ %.6140198, %.lr.ph237.prol ]
  %.9.prol = phi i64 [ %i.cm, %bb.z ], [ %.7199, %.lr.ph237.prol ]
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.a, align 4, !tbaa !34
  br label %.lr.ph237.prol.loopexit.unr-lcssa

.lr.ph237.prol.loopexit.unr-lcssa:                ; preds = %bb.aa, %.lr.ph237.prol
  %.9143.prol = phi ptr [ %.8142.prol, %bb.aa ], [ %.6140198, %.lr.ph237.prol ] ; 2 uses
  %.10.prol = phi i64 [ %.9.prol, %bb.aa ], [ %.7199, %.lr.ph237.prol ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.9143.prol, i64 1 ; 2 uses
  store i8 48, ptr %.9143.prol, align 1, !tbaa !28
  %i.cq = add nsw i32 %.3115202, -1
  br label %.lr.ph237.prol.loopexit

.lr.ph237.prol.loopexit:                          ; preds = %.lr.ph237.prol.loopexit.unr-lcssa, %.lr.ph237.preheader
  %.10.lcssa.unr = phi i64 [ poison, %.lr.ph237.preheader ], [ %.10.prol, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.lcssa356.unr = phi ptr [ poison, %.lr.ph237.preheader ], [ %i.cp, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.4116236.unr = phi i32 [ %.3115202, %.lr.ph237.preheader ], [ %i.cq, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.8235.unr = phi i64 [ %.7199, %.lr.ph237.preheader ], [ %.10.prol, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.7141234.unr = phi ptr [ %.6140198, %.lr.ph237.preheader ], [ %i.cp, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %i.cr = icmp eq i32 %.3115202, 1
  br i1 %i.cr, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %.lr.ph237.prol.loopexit, %bb.af
  %.4116236 = phi i32 [ %i.de, %bb.af ], [ %.4116236.unr, %.lr.ph237.prol.loopexit ]
  %.8235 = phi i64 [ %.10.1, %bb.af ], [ %.8235.unr, %.lr.ph237.prol.loopexit ] ; 3 uses
  %.7141234 = phi ptr [ %i.dd, %bb.af ], [ %.7141234.unr, %.lr.ph237.prol.loopexit ] ; 4 uses
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.cs, label %bb.ac [
    i32 -1, label %.lr.ph237.1
    i32 0, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph237
  %i.ct = getelementptr inbounds nuw i8, ptr %.7141234, i64 1
  store i8 46, ptr %.7141234, align 1, !tbaa !28
  %i.cu = add i64 %.8235, -1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph237, %bb.ab
  %i.cv = phi i32 [ %.pre, %bb.ab ], [ %i.cs, %.lr.ph237 ]
  %.8142 = phi ptr [ %i.ct, %bb.ab ], [ %.7141234, %.lr.ph237 ]
  %.9 = phi i64 [ %i.cu, %bb.ab ], [ %.8235, %.lr.ph237 ]
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !34
  br label %.lr.ph237.1

.lr.ph237.1:                                      ; preds = %.lr.ph237, %bb.ac
  %.9143 = phi ptr [ %.8142, %bb.ac ], [ %.7141234, %.lr.ph237 ] ; 3 uses
  %.10 = phi i64 [ %.9, %bb.ac ], [ %.8235, %.lr.ph237 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.9143, i64 1 ; 3 uses
  store i8 48, ptr %.9143, align 1, !tbaa !28
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.cy, label %bb.ae [
    i32 -1, label %bb.af
    i32 0, label %bb.ad
  ]

bb.ad:                                            ; preds = %.lr.ph237.1
  %i.cz = getelementptr inbounds nuw i8, ptr %.9143, i64 2
  store i8 46, ptr %i.cx, align 1, !tbaa !28
  %i.da = add i64 %.10, -1
  %.pre.1 = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph237.1
  %i.db = phi i32 [ %.pre.1, %bb.ad ], [ %i.cy, %.lr.ph237.1 ]
  %.8142.1 = phi ptr [ %i.cz, %bb.ad ], [ %i.cx, %.lr.ph237.1 ]
  %.9.1 = phi i64 [ %i.da, %bb.ad ], [ %.10, %.lr.ph237.1 ]
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.a, align 4, !tbaa !34
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph237.1
  %.9143.1 = phi ptr [ %.8142.1, %bb.ae ], [ %i.cx, %.lr.ph237.1 ] ; 2 uses
  %.10.1 = phi i64 [ %.9.1, %bb.ae ], [ %.10, %.lr.ph237.1 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.9143.1, i64 1 ; 2 uses
  store i8 48, ptr %.9143.1, align 1, !tbaa !28
  %i.de = add i32 %.4116236, -2                   ; 2 uses
  %.not164.1 = icmp eq i32 %i.de, 0
  br i1 %.not164.1, label %._crit_edge238, label %.lr.ph237, !llvm.loop !155

._crit_edge238.sink.split:                        ; preds = %bb.w, %bb.v
  %.sink326 = phi i32 [ 1, %bb.v ], [ %i.cg, %bb.w ]
  %.7141.lcssa.ph = phi ptr [ %i.cc, %bb.v ], [ %.2136.lcssa298, %bb.w ]
  %.8.lcssa.ph = phi i64 [ %i.cf, %bb.v ], [ %.2129.lcssa299, %bb.w ]
  store i32 %.sink326, ptr %i.a, align 4, !tbaa !34
  br label %._crit_edge238

._crit_edge238:                                   ; preds = %.lr.ph237.prol.loopexit, %bb.af, %._crit_edge238.sink.split, %bb.u, %.thread190
  %.3126201313 = phi double [ %.3126201, %.thread190 ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %._crit_edge238.sink.split ], [ %.3126201, %bb.af ], [ %.3126201, %.lr.ph237.prol.loopexit ]
  %.3115202312 = phi i32 [ 0, %.thread190 ], [ 0, %bb.u ], [ 0, %._crit_edge238.sink.split ], [ %.3115202, %bb.af ], [ %.3115202, %.lr.ph237.prol.loopexit ]
  %.2110203311 = phi i32 [ %.2110203, %.thread190 ], [ %.0108, %bb.u ], [ %.0108, %._crit_edge238.sink.split ], [ %.2110203, %bb.af ], [ %.2110203, %.lr.ph237.prol.loopexit ]
  %.3204310 = phi i32 [ %.3204, %.thread190 ], [ %.1106.lcssa300, %bb.u ], [ %.1106.lcssa300, %._crit_edge238.sink.split ], [ %.3204, %bb.af ], [ %.3204, %.lr.ph237.prol.loopexit ]
  %.2205309 = phi double [ %.2205, %.thread190 ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %._crit_edge238.sink.split ], [ %.2205, %bb.af ], [ %.2205, %.lr.ph237.prol.loopexit ]
  %.7141.lcssa = phi ptr [ %.6140198, %.thread190 ], [ %i.cc, %bb.u ], [ %.7141.lcssa.ph, %._crit_edge238.sink.split ], [ %.lcssa356.unr, %.lr.ph237.prol.loopexit ], [ %i.dd, %bb.af ] ; 4 uses
  %.8.lcssa = phi i64 [ %.7199, %.thread190 ], [ %.2129.lcssa299, %bb.u ], [ %.8.lcssa.ph, %._crit_edge238.sink.split ], [ %.10.lcssa.unr, %.lr.ph237.prol.loopexit ], [ %.10.1, %bb.af ] ; 3 uses
  %i.df = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.df, label %bb.ah [
    i32 -1, label %bb.ai
    i32 0, label %bb.ag
  ]

bb.ag:                                            ; preds = %._crit_edge238
  %i.dg = getelementptr inbounds nuw i8, ptr %.7141.lcssa, i64 1
  store i8 46, ptr %.7141.lcssa, align 1, !tbaa !28
  %i.dh = add i64 %.8.lcssa, -1
  %.pre271 = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge238, %bb.ag
  %i.di = phi i32 [ %.pre271, %bb.ag ], [ %i.df, %._crit_edge238 ]
  %.10144 = phi ptr [ %i.dg, %bb.ag ], [ %.7141.lcssa, %._crit_edge238 ]
  %.11 = phi i64 [ %i.dh, %bb.ag ], [ %.8.lcssa, %._crit_edge238 ]
  %i.dj = add nsw i32 %i.di, -1
  store i32 %i.dj, ptr %i.a, align 4, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge238, %bb.ah
  %.11145 = phi ptr [ %.10144, %bb.ah ], [ %.7141.lcssa, %._crit_edge238 ] ; 2 uses
  %.12 = phi i64 [ %.11, %bb.ah ], [ %.8.lcssa, %._crit_edge238 ]
  %i.dk = fptosi double %.2205309 to i32
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = add i8 %i.dl, 48
  %i.dn = getelementptr inbounds nuw i8, ptr %.11145, i64 1
  store i8 %i.dm, ptr %.11145, align 1, !tbaa !28
  %i.do = add i32 %.3204310, 1
  %i.dp = sub i32 %i.do, %.2110203311
  %i.dq = add i32 %i.dp, %.3115202312
  br label %bb.aj

bb.aj:                                            ; preds = %bb.y, %bb.ai
  %.3126200 = phi double [ %.3126201313, %bb.ai ], [ %.3126, %bb.y ] ; 2 uses
  %.12146 = phi ptr [ %i.dn, %bb.ai ], [ %.6140, %bb.y ] ; 6 uses
  %.13 = phi i64 [ %.12, %bb.ai ], [ %.7, %bb.y ] ; 2 uses
  %.5117 = phi i32 [ 0, %bb.ai ], [ %i.ax, %bb.y ] ; 2 uses
  %.3111 = phi i32 [ 0, %bb.ai ], [ %spec.select170, %bb.y ] ; 2 uses
  %.4 = phi i32 [ %i.dq, %bb.ai ], [ %.3, %bb.y ] ; 3 uses
  %i.dr = add i32 %.4, %.5117
  %i.ds = add i32 %.3111, %spec.store.select7
  %i.dt = icmp ult i32 %i.dr, %i.ds
  %i.du = fcmp ogt double %.3126200, f0x0010000000000000
  %i.dv = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %i.dv, label %bb.l, label %bb.ak, !llvm.loop !156

bb.ak:                                            ; preds = %bb.aj
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !34  ; 3 uses
  %i.dx = add i32 %i.dw, 1
  %or.cond5 = icmp ult i32 %i.dx, 4
  br i1 %or.cond5, label %.preheader, label %bb.al

.preheader:                                       ; preds = %bb.ak
  %i.dy = add nsw i32 %i.dw, -1
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !34
  %i.dz = icmp sgt i32 %i.dw, 0
  br i1 %i.dz, label %.lr.ph255, label %.thread207

.lr.ph255:                                        ; preds = %.preheader, %.lr.ph255
  %.13147254 = phi ptr [ %i.ea, %.lr.ph255 ], [ %.12146, %.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.13147254, i64 1 ; 2 uses
  store i8 48, ptr %.13147254, align 1, !tbaa !28
  %.pr = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.eb = add nsw i32 %.pr, -1
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !34
  %i.ec = icmp sgt i32 %.pr, 0
  br i1 %i.ec, label %.lr.ph255, label %.thread207, !llvm.loop !157

bb.al:                                            ; preds = %bb.ak
  %i.ed = zext i32 %.4 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.12146, i64 1 ; 2 uses
  store i8 69, ptr %.12146, align 1, !tbaa !28
  %i.ef = xor i64 %i.ed, -1
  %i.eg = add i64 %.13, %i.ef                     ; 2 uses
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %.12146, i64 2
  store i8 45, ptr %i.ee, align 1, !tbaa !28
  %i.ek = add i64 %i.eg, -1
  %i.el = load i32, ptr %i.a, align 4, !tbaa !34
  %i.em = sub i32 0, %i.el
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.14148 = phi ptr [ %i.ej, %bb.am ], [ %i.ee, %bb.al ] ; 9 uses
  %.14 = phi i64 [ %i.ek, %bb.am ], [ %i.eg, %bb.al ] ; 2 uses
  %.0 = phi i32 [ %i.em, %bb.am ], [ %i.eh, %bb.al ] ; 2 uses
  %.not167241 = icmp eq i32 %.0, 0
  br i1 %.not167241, label %._crit_edge246.thread, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.an, %.lr.ph245
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph245 ], [ 0, %bb.an ] ; 4 uses
  %.1243 = phi i32 [ %i.er, %.lr.ph245 ], [ %.0, %bb.an ] ; 3 uses
  %i.en = urem i32 %.1243, 10
  %i.eo = trunc nuw nsw i32 %i.en to i8
  %i.ep = or disjoint i8 %i.eo, 48
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 15 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !28
  %i.er = udiv i32 %.1243, 10
  %.not167 = icmp ult i32 %.1243, 10
  br i1 %.not167, label %._crit_edge246, label %.lr.ph245, !llvm.loop !158

._crit_edge246:                                   ; preds = %.lr.ph245
  %i.es = icmp ugt i64 %.14, %indvars.iv.next
  br i1 %i.es, label %iter.check, label %bb.ao

iter.check:                                       ; preds = %._crit_edge246
  %min.iters.check = icmp ult i64 %indvars.iv, 7
  br i1 %min.iters.check, label %.lr.ph251.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.14148, i64 %indvars.iv.next
  %scevgep336 = getelementptr i8, ptr %i.b, i64 %indvars.iv.next
  %bound0 = icmp ult ptr %.14148, %scevgep336
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph251.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check337 = icmp ult i64 %indvars.iv, 31
  br i1 %min.iters.check337, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.et = and i64 %indvars.iv.next, 24
  %n.vec = and i64 %indvars.iv.next, -32          ; 4 uses
  %i.eu = and i64 %indvars.iv.next, 31
  %i.ev = getelementptr i8, ptr %.14148, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %5 = sub i64 %indvars.iv.next, %index
  %next.gep = getelementptr i8, ptr %.14148, i64 %index ; 2 uses
  %i.ew = getelementptr i8, ptr %i.b, i64 %5      ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -16
  %i.ey = getelementptr i8, ptr %i.ew, i64 -32
  %wide.load = load <16 x i8>, ptr %i.ex, align 1, !tbaa !28, !alias.scope !166
  %wide.load338 = load <16 x i8>, ptr %i.ey, align 1, !tbaa !28, !alias.scope !166
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse339 = shufflevector <16 x i8> %wide.load338, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ez = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !28, !alias.scope !167, !noalias !166
  store <16 x i8> %reverse339, ptr %i.ez, align 1, !tbaa !28, !alias.scope !167, !noalias !166
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv.next, %n.vec
  br i1 %cmp.n, label %.thread207, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check, label %.lr.ph251.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec341 = and i64 %indvars.iv.next, -8        ; 3 uses
  %i.fb = and i64 %indvars.iv.next, 7
  %i.fc = getelementptr i8, ptr %.14148, i64 %n.vec341 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index342 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next346, %vec.epilog.vector.body ] ; 3 uses
  %6 = sub i64 %indvars.iv.next, %index342
  %next.gep343 = getelementptr i8, ptr %.14148, i64 %index342
  %i.fd = getelementptr i8, ptr %i.b, i64 %6
  %i.fe = getelementptr i8, ptr %i.fd, i64 -8
  %wide.load344 = load <8 x i8>, ptr %i.fe, align 1, !tbaa !28, !alias.scope !166
  %reverse345 = shufflevector <8 x i8> %wide.load344, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse345, ptr %next.gep343, align 1, !tbaa !28, !alias.scope !167, !noalias !166
  %index.next346 = add nuw i64 %index342, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next346, %n.vec341
  br i1 %i.ff, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n347 = icmp eq i64 %indvars.iv.next, %n.vec341
  br i1 %cmp.n347, label %.thread207, label %.lr.ph251.preheader

.lr.ph251.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv268.ph = phi i64 [ %indvars.iv.next, %iter.check ], [ %indvars.iv.next, %vector.memcheck ], [ %i.eu, %vec.epilog.iter.check ], [ %i.fb, %vec.epilog.middle.block ] ; 4 uses
  %.15249.ph = phi ptr [ %.14148, %iter.check ], [ %.14148, %vector.memcheck ], [ %i.ev, %vec.epilog.iter.check ], [ %i.fc, %vec.epilog.middle.block ] ; 2 uses
  %i.fg = add nsw i64 %indvars.iv268.ph, -1
  %xtraiter359 = and i64 %indvars.iv268.ph, 7     ; 2 uses
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %.lr.ph251.prol.loopexit, label %.lr.ph251.prol

.lr.ph251.prol:                                   ; preds = %.lr.ph251.preheader, %.lr.ph251.prol
  %indvars.iv268.prol = phi i64 [ %i.fh, %.lr.ph251.prol ], [ %indvars.iv268.ph, %.lr.ph251.preheader ] ; 2 uses
  %.15249.prol = phi ptr [ %i.fk, %.lr.ph251.prol ], [ %.15249.ph, %.lr.ph251.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph251.prol ], [ 0, %.lr.ph251.preheader ]
  %i.fh = add nsw i64 %indvars.iv268.prol, -1     ; 2 uses
  %7 = getelementptr i8, ptr %i.b, i64 %indvars.iv268.prol
  %i.fi = getelementptr i8, ptr %7, i64 -1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !28
  %i.fk = getelementptr inbounds nuw i8, ptr %.15249.prol, i64 1 ; 3 uses
  store i8 %i.fj, ptr %.15249.prol, align 1, !tbaa !28
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter359
  br i1 %prol.iter.cmp.not, label %.lr.ph251.prol.loopexit, label %.lr.ph251.prol, !llvm.loop !164

.lr.ph251.prol.loopexit:                          ; preds = %.lr.ph251.prol, %.lr.ph251.preheader
  %.lcssa351.unr = phi ptr [ poison, %.lr.ph251.preheader ], [ %i.fk, %.lr.ph251.prol ]
  %indvars.iv268.unr = phi i64 [ %indvars.iv268.ph, %.lr.ph251.preheader ], [ %i.fh, %.lr.ph251.prol ]
  %.15249.unr = phi ptr [ %.15249.ph, %.lr.ph251.preheader ], [ %i.fk, %.lr.ph251.prol ]
  %i.fl = icmp ult i64 %i.fg, 7
  br i1 %i.fl, label %.thread207, label %.lr.ph251

._crit_edge246.thread:                            ; preds = %bb.an
  %.not327 = icmp eq i64 %.14, 0
  br i1 %.not327, label %bb.ao, label %.thread207

.lr.ph251:                                        ; preds = %.lr.ph251.prol.loopexit, %.lr.ph251
  %indvars.iv268 = phi i64 [ %i.go, %.lr.ph251 ], [ %indvars.iv268.unr, %.lr.ph251.prol.loopexit ] ; 9 uses
  %.15249 = phi ptr [ %i.gr, %.lr.ph251 ], [ %.15249.unr, %.lr.ph251.prol.loopexit ] ; 9 uses
  %i.fm = getelementptr i8, ptr %i.b, i64 %indvars.iv268
  %i.fn = getelementptr i8, ptr %i.fm, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !28
  %i.fp = getelementptr inbounds nuw i8, ptr %.15249, i64 1
  store i8 %i.fo, ptr %.15249, align 1, !tbaa !28
  %i.fq = getelementptr i8, ptr %i.b, i64 %indvars.iv268
  %i.fr = getelementptr i8, ptr %i.fq, i64 -2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !28
  %i.ft = getelementptr inbounds nuw i8, ptr %.15249, i64 2
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !28
  %i.fu = getelementptr i8, ptr %i.b, i64 %indvars.iv268
  %i.fv = getelementptr i8, ptr %i.fu, i64 -3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !28
  %i.fx = getelementptr inbounds nuw i8, ptr %.15249, i64 3
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !28
  %i.fy = getelementptr i8, ptr %i.b, i64 %indvars.iv268
  %i.fz = getelementptr i8, ptr %i.fy, i64 -4
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !28
  %i.gb = getelementptr inbounds nuw i8, ptr %.15249, i64 4
  store i8 %i.ga, ptr %i.fx, align 1, !tbaa !28
  %i.gc = getelementptr i8, ptr %i.b, i64 %indvars.iv268
  %i.gd = getelementptr i8, ptr %i.gc, i64 -5
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !28
  %i.gf = getelementptr inbounds nuw i8, ptr %.15249, i64 5
  store i8 %i.ge, ptr %i.gb, align 1, !tbaa !28
  %i.gg = getelementptr i8, ptr %i.b, i64 %indvars.iv268
  %i.gh = getelementptr i8, ptr %i.gg, i64 -6
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !28
  %i.gj = getelementptr inbounds nuw i8, ptr %.15249, i64 6
  store i8 %i.gi, ptr %i.gf, align 1, !tbaa !28
  %i.gk = getelementptr i8, ptr %i.b, i64 %indvars.iv268
  %i.gl = getelementptr i8, ptr %i.gk, i64 -7
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !28
  %i.gn = getelementptr inbounds nuw i8, ptr %.15249, i64 7
  store i8 %i.gm, ptr %i.gj, align 1, !tbaa !28
  %i.go = add nsw i64 %indvars.iv268, -8          ; 2 uses
  %8 = getelementptr i8, ptr %i.b, i64 %indvars.iv268
  %i.gp = getelementptr i8, ptr %8, i64 -8
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !28
  %i.gr = getelementptr inbounds nuw i8, ptr %.15249, i64 8 ; 2 uses
  store i8 %i.gq, ptr %i.gn, align 1, !tbaa !28
  %.not168.wide.7 = icmp eq i64 %i.go, 0
  br i1 %.not168.wide.7, label %.thread207, label %.lr.ph251, !llvm.loop !165

.thread207:                                       ; preds = %.lr.ph251.prol.loopexit, %.lr.ph251, %.lr.ph255, %middle.block, %vec.epilog.middle.block, %._crit_edge246.thread, %.preheader
  %.13147.lcssa.sink = phi ptr [ %i.ea, %.lr.ph255 ], [ %.12146, %.preheader ], [ %.14148, %._crit_edge246.thread ], [ %i.fc, %vec.epilog.middle.block ], [ %i.ev, %middle.block ], [ %.lcssa351.unr, %.lr.ph251.prol.loopexit ], [ %i.gr, %.lr.ph251 ]
  store i8 0, ptr %.13147.lcssa.sink, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.at

bb.ao:                                            ; preds = %._crit_edge246.thread, %._crit_edge246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.as

bb.ap:                                            ; preds = %bb.d
  br i1 %i.k, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gs = getelementptr inbounds nuw i8, ptr %.0134, i64 1
  store i8 48, ptr %.0134, align 1, !tbaa !28
  store i8 0, ptr %i.gs, align 1, !tbaa !28
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  store <4 x i8> <i8 105, i8 110, i8 102, i8 0>, ptr %.0134, align 1, !tbaa !28
  br label %bb.at

bb.as:                                            ; preds = %bb.ao, %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.55) #26
  unreachable

bb.at:                                            ; preds = %.thread207, %bb.ar, %bb.aq
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #19

; Function Attrs: nounwind uwtable
define void @png_ascii_from_fixed(ptr noalias noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 14 uses
  %i.b = icmp ugt i64 %2, 12
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !28
  %i.e = sub nsw i32 0, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  %.not48 = icmp eq i32 %3, 0
  br i1 %.not48, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.c
  %.03884 = phi i32 [ %i.e, %.thread ], [ %3, %bb.c ]
  %.04082 = phi ptr [ %i.d, %.thread ], [ %1, %bb.c ] ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.03551 = phi i32 [ 16, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.13949 = phi i32 [ %.03884, %.lr.ph.preheader ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.f = udiv i32 %.13949, 10                     ; 2 uses
  %.neg = mul nsw i32 %i.f, -10
  %i.g = add nsw i32 %.neg, %.13949               ; 2 uses
  %i.h = trunc i32 %i.g to i8
  %i.i = add i8 %i.h, 48
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.i, ptr %i.j, align 1, !tbaa !28
  %i.k = icmp eq i32 %.03551, 16
  %i.l = icmp ne i32 %i.g, 0
  %or.cond = and i1 %i.k, %i.l
  %i.m = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %spec.select = select i1 %or.cond, i32 %i.m, i32 %.03551 ; 6 uses
  %.not = icmp samesign ult i32 %.13949, 10
  br i1 %.not, label %.preheader47, label %.lr.ph, !llvm.loop !168

.preheader47:                                     ; preds = %.lr.ph
  %i.n = icmp ugt i64 %indvars.iv, 4
  br i1 %i.n, label %iter.check, label %._crit_edge56

iter.check:                                       ; preds = %.preheader47
  %i.o = add i64 %indvars.iv, -4                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph55.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check94 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 5 uses
  %i.q = sub i64 %indvars.iv.next, %n.vec
  %i.r = getelementptr i8, ptr %.04082, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %4 = sub i64 %indvars.iv.next, %index
  %next.gep = getelementptr i8, ptr %.04082, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %i.a, i64 %4       ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %i.u = getelementptr i8, ptr %i.s, i64 -32
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !28
  %wide.load95 = load <16 x i8>, ptr %i.u, align 1, !tbaa !28
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse96 = shufflevector <16 x i8> %wide.load95, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !28
  store <16 x i8> %reverse96, ptr %i.v, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge56, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph55.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %i.o, -8                     ; 4 uses
  %i.x = sub i64 %indvars.iv.next, %n.vec98
  %i.y = getelementptr i8, ptr %.04082, i64 %n.vec98 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 3 uses
  %5 = sub i64 %indvars.iv.next, %index99
  %next.gep100 = getelementptr i8, ptr %.04082, i64 %index99
  %i.z = getelementptr i8, ptr %i.a, i64 %5
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %wide.load101 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !28
  %reverse102 = shufflevector <8 x i8> %wide.load101, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse102, ptr %next.gep100, align 1, !tbaa !28
  %index.next103 = add nuw i64 %index99, 8        ; 2 uses
  %i.ab = icmp eq i64 %index.next103, %n.vec98
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n104 = icmp eq i64 %i.o, %n.vec98
  br i1 %cmp.n104, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv75.ph = phi i64 [ %indvars.iv.next, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.14153.ph = phi ptr [ %.04082, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %indvars.iv75 = phi i64 [ %i.ac, %.lr.ph55 ], [ %indvars.iv75.ph, %.lr.ph55.preheader ] ; 2 uses
  %.14153 = phi ptr [ %i.af, %.lr.ph55 ], [ %.14153.ph, %.lr.ph55.preheader ] ; 2 uses
  %i.ac = add nsw i64 %indvars.iv75, -1           ; 2 uses
  %6 = getelementptr i8, ptr %i.a, i64 %indvars.iv75
  %i.ad = getelementptr i8, ptr %6, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %.14153, i64 1 ; 2 uses
  store i8 %i.ae, ptr %.14153, align 1, !tbaa !28
  %.wide = icmp ugt i64 %i.ac, 5
  br i1 %.wide, label %.lr.ph55, label %._crit_edge56, !llvm.loop !171

._crit_edge56:                                    ; preds = %.lr.ph55, %middle.block, %vec.epilog.middle.block, %.preheader47
  %.141.lcssa = phi ptr [ %.04082, %.preheader47 ], [ %i.y, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.af, %.lr.ph55 ] ; 4 uses
  %.137.lcssa = phi i32 [ %i.m, %.preheader47 ], [ 5, %vec.epilog.middle.block ], [ 5, %middle.block ], [ 5, %.lr.ph55 ] ; 11 uses
  %i.ag = icmp ult i32 %spec.select, 6
  br i1 %i.ag, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge56
  store i8 46, ptr %.141.lcssa, align 1, !tbaa !28
  %.24259 = getelementptr i8, ptr %.141.lcssa, i64 1 ; 2 uses
  %i.ah = icmp samesign ult i32 %.137.lcssa, 5
  br i1 %i.ah, label %.lr.ph63.preheader, label %.preheader

.lr.ph63.preheader:                               ; preds = %bb.d
  %i.ai = sub nuw nsw i32 4, %.137.lcssa
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.24259, i8 48, i64 %i.ak, i1 false), !tbaa !28
  %i.al = getelementptr i8, ptr %.141.lcssa, i64 %i.aj
  %scevgep = getelementptr i8, ptr %i.al, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph63.preheader, %bb.d
  %.242.lcssa = phi ptr [ %.24259, %bb.d ], [ %scevgep, %.lr.ph63.preheader ] ; 9 uses
  %.not4665 = icmp samesign ult i32 %.137.lcssa, %spec.select
  br i1 %.not4665, label %.loopexit, label %iter.check129

iter.check129:                                    ; preds = %.preheader
  %i.am = add i32 %.137.lcssa, -1
  %i.an = add nsw i32 %spec.select, -1
  %i.ao = tail call i32 @llvm.usub.sat.i32(i32 %i.am, i32 %i.an) ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 5 uses
  %min.iters.check112 = icmp ult i32 %i.ao, 7
  br i1 %min.iters.check112, label %.lr.ph68.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check129
  %i.ar = add nsw i32 %spec.select, -1
  %i.as = add i32 %.137.lcssa, -1                 ; 2 uses
  %i.at = tail call i32 @llvm.usub.sat.i32(i32 %i.as, i32 %i.ar)
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr i8, ptr %.242.lcssa, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  %i.ax = zext i32 %i.as to i64                   ; 2 uses
  %i.ay = sub nsw i64 %i.ax, %i.au
  %i.az = getelementptr i8, ptr %i.a, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.a, i64 %i.ax
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  %bound0 = icmp ult ptr %.242.lcssa, %i.bb
  %bound1 = icmp ult ptr %i.az, %i.aw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph68.preheader, label %vector.main.loop.iter.check113

vector.main.loop.iter.check113:                   ; preds = %vector.memcheck
  %min.iters.check114 = icmp ult i32 %i.ao, 31
  br i1 %min.iters.check114, label %vec.epilog.ph133, label %vector.ph115

vector.ph115:                                     ; preds = %vector.main.loop.iter.check113
  %i.bc = and i64 %i.aq, 24
  %n.vec116 = and i64 %i.aq, 8589934560           ; 5 uses
  %i.bd = trunc i64 %n.vec116 to i32
  %i.be = sub i32 %.137.lcssa, %i.bd
  %i.bf = getelementptr i8, ptr %.242.lcssa, i64 %n.vec116 ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.ph115, %vector.body117
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next124, %vector.body117 ] ; 3 uses
  %i.bg = trunc i64 %index118 to i32
  %next.gep119 = getelementptr i8, ptr %.242.lcssa, i64 %index118 ; 2 uses
  %i.bh = xor i32 %i.bg, -1
  %i.bi = add i32 %.137.lcssa, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -15
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -31
  %wide.load120 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !28, !alias.scope !178
  %wide.load121 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !28, !alias.scope !178
  %reverse122 = shufflevector <16 x i8> %wide.load120, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse123 = shufflevector <16 x i8> %wide.load121, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bn = getelementptr i8, ptr %next.gep119, i64 16
  store <16 x i8> %reverse122, ptr %next.gep119, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  store <16 x i8> %reverse123, ptr %i.bn, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  %index.next124 = add nuw i64 %index118, 32      ; 2 uses
  %i.bo = icmp eq i64 %index.next124, %n.vec116
  br i1 %i.bo, label %middle.block125, label %vector.body117, !llvm.loop !175

middle.block125:                                  ; preds = %vector.body117
  %cmp.n126 = icmp eq i64 %i.aq, %n.vec116
  br i1 %cmp.n126, label %.loopexit, label %vec.epilog.iter.check131

vec.epilog.iter.check131:                         ; preds = %middle.block125
  %min.epilog.iters.check132 = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check132, label %.lr.ph68.preheader, label %vec.epilog.ph133, !prof !57

vec.epilog.ph133:                                 ; preds = %vector.main.loop.iter.check113, %vec.epilog.iter.check131
  %vec.epilog.resume.val127 = phi i64 [ %n.vec116, %vec.epilog.iter.check131 ], [ 0, %vector.main.loop.iter.check113 ]
  %n.vec134 = and i64 %i.aq, 8589934584           ; 4 uses
  %i.bp = trunc i64 %n.vec134 to i32
  %i.bq = sub i32 %.137.lcssa, %i.bp
  %i.br = getelementptr i8, ptr %.242.lcssa, i64 %n.vec134 ; 2 uses
  br label %vec.epilog.vector.body135

vec.epilog.vector.body135:                        ; preds = %vec.epilog.vector.body135, %vec.epilog.ph133
  %index136 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph133 ], [ %index.next140, %vec.epilog.vector.body135 ] ; 3 uses
  %i.bs = trunc i64 %index136 to i32
  %next.gep137 = getelementptr i8, ptr %.242.lcssa, i64 %index136
  %i.bt = xor i32 %i.bs, -1
  %i.bu = add i32 %.137.lcssa, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -7
  %wide.load138 = load <8 x i8>, ptr %i.bx, align 1, !tbaa !28, !alias.scope !178
  %reverse139 = shufflevector <8 x i8> %wide.load138, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse139, ptr %next.gep137, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  %index.next140 = add nuw i64 %index136, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.by, label %vec.epilog.middle.block141, label %vec.epilog.vector.body135, !llvm.loop !176

vec.epilog.middle.block141:                       ; preds = %vec.epilog.vector.body135
  %cmp.n142 = icmp eq i64 %i.aq, %n.vec134
  br i1 %cmp.n142, label %.loopexit, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %iter.check129, %vector.memcheck, %vec.epilog.iter.check131, %vec.epilog.middle.block141
  %.267.ph = phi i32 [ %.137.lcssa, %iter.check129 ], [ %.137.lcssa, %vector.memcheck ], [ %i.be, %vec.epilog.iter.check131 ], [ %i.bq, %vec.epilog.middle.block141 ]
  %.366.ph = phi ptr [ %.242.lcssa, %iter.check129 ], [ %.242.lcssa, %vector.memcheck ], [ %i.bf, %vec.epilog.iter.check131 ], [ %i.br, %vec.epilog.middle.block141 ]
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.lr.ph68
  %.267 = phi i32 [ %i.bz, %.lr.ph68 ], [ %.267.ph, %.lr.ph68.preheader ]
  %.366 = phi ptr [ %i.cd, %.lr.ph68 ], [ %.366.ph, %.lr.ph68.preheader ] ; 2 uses
  %i.bz = add i32 %.267, -1                       ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28
  %i.cd = getelementptr inbounds nuw i8, ptr %.366, i64 1 ; 2 uses
  store i8 %i.cc, ptr %.366, align 1, !tbaa !28
  %.not46 = icmp ult i32 %i.bz, %spec.select
  br i1 %.not46, label %.loopexit, label %.lr.ph68, !llvm.loop !177

bb.e:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph68, %middle.block125, %vec.epilog.middle.block141, %.preheader, %._crit_edge56, %bb.e
  %.4 = phi ptr [ %i.ce, %bb.e ], [ %.141.lcssa, %._crit_edge56 ], [ %.242.lcssa, %.preheader ], [ %i.br, %vec.epilog.middle.block141 ], [ %i.bf, %middle.block125 ], [ %i.cd, %.lr.ph68 ]
  store i8 0, ptr %.4, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.f:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.55) #26
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @png_fixed(ptr noalias noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+05, double 5.000000e-01)
  %i.b = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.c = fcmp ogt double %i.b, f0x41DFFFFFFFC00000
  %i.d = fcmp olt double %i.b, f0xC1E0000000000000
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fptosi double %i.b to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: noreturn
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @png_fixed_ITU(ptr noalias noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+04, double 5.000000e-01)
  %i.b = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.c = fcmp ogt double %i.b, f0x41DFFFFFFFC00000
  %i.d = fcmp olt double %i.b, 0.000000e+00
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_1
