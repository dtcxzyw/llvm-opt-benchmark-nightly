Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_haval?download=true
inline.NumInlined: 23
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"haval128,3\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"l8l2b128\00", align 1
@php_hash_3haval128_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str, ptr @PHP_3HAVAL128Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL128Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 16, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@D0 = internal unnamed_addr constant [8 x i32] [i32 608135816, i32 -2052912941, i32 320440878, i32 57701188, i32 -1542899678, i32 698298832, i32 137296536, i32 -330404727], align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"haval160,3\00", align 1
@php_hash_3haval160_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.2, ptr @PHP_3HAVAL160Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL160Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 20, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"haval192,3\00", align 1
@php_hash_3haval192_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.3, ptr @PHP_3HAVAL192Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL192Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 24, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"haval224,3\00", align 1
@php_hash_3haval224_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.4, ptr @PHP_3HAVAL224Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL224Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 28, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"haval256,3\00", align 1
@php_hash_3haval256_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.5, ptr @PHP_3HAVAL256Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL256Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 32, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"haval128,4\00", align 1
@php_hash_4haval128_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.6, ptr @PHP_4HAVAL128Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL128Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 16, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"haval160,4\00", align 1
@php_hash_4haval160_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.7, ptr @PHP_4HAVAL160Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL160Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 20, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"haval192,4\00", align 1
@php_hash_4haval192_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.8, ptr @PHP_4HAVAL192Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL192Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 24, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"haval224,4\00", align 1
@php_hash_4haval224_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.9, ptr @PHP_4HAVAL224Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL224Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 28, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"haval256,4\00", align 1
@php_hash_4haval256_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.10, ptr @PHP_4HAVAL256Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL256Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 32, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"haval128,5\00", align 1
@php_hash_5haval128_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.11, ptr @PHP_5HAVAL128Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL128Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 16, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"haval160,5\00", align 1
@php_hash_5haval160_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.12, ptr @PHP_5HAVAL160Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL160Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 20, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"haval192,5\00", align 1
@php_hash_5haval192_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.13, ptr @PHP_5HAVAL192Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL192Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 24, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"haval224,5\00", align 1
@php_hash_5haval224_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.14, ptr @PHP_5HAVAL224Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL224Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 28, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"haval256,5\00", align 1
@php_hash_5haval256_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.15, ptr @PHP_5HAVAL256Init, ptr @PHP_HAVALUpdate, ptr @PHP_HAVAL256Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 32, i64 128, i64 184, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@M2 = internal unnamed_addr constant [32 x i16] [i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3], align 16
@M3 = internal unnamed_addr constant [32 x i16] [i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4], align 16
@M6 = internal unnamed_addr constant [32 x i16] [i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7], align 16
@M0 = internal unnamed_addr constant [32 x i16] [i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1], align 16
@M5 = internal unnamed_addr constant [32 x i16] [i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6], align 16
@M1 = internal unnamed_addr constant [32 x i16] [i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2], align 16
@M4 = internal unnamed_addr constant [32 x i16] [i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5], align 16
@M7 = internal unnamed_addr constant [32 x i16] [i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0], align 16
@I2 = internal unnamed_addr constant [32 x i16] [i16 5, i16 14, i16 26, i16 18, i16 11, i16 28, i16 7, i16 16, i16 0, i16 23, i16 20, i16 22, i16 1, i16 10, i16 4, i16 8, i16 30, i16 3, i16 21, i16 9, i16 17, i16 24, i16 29, i16 6, i16 19, i16 12, i16 15, i16 13, i16 2, i16 25, i16 31, i16 27], align 16
@K2 = internal unnamed_addr constant [32 x i32] [i32 1160258022, i32 953160567, i32 -1101764913, i32 887688300, i32 -1062458953, i32 -914599715, i32 1065670069, i32 -1253635817, i32 -1843997223, i32 -1988494565, i32 -785314906, i32 -1730169428, i32 805139163, i32 -803545161, i32 -1193168915, i32 1780907670, i32 -1166241723, i32 -248741991, i32 614570311, i32 -1282315017, i32 134345442, i32 -2054226922, i32 1667834072, i32 1901547113, i32 -1537671517, i32 -191677058, i32 227898511, i32 1921955416, i32 1904987480, i32 -2112533778, i32 2069144605, i32 -1034266187], align 16
@I3 = internal unnamed_addr constant [32 x i16] [i16 19, i16 9, i16 4, i16 20, i16 28, i16 17, i16 8, i16 22, i16 29, i16 14, i16 25, i16 12, i16 24, i16 30, i16 16, i16 26, i16 31, i16 15, i16 7, i16 3, i16 1, i16 0, i16 18, i16 27, i16 13, i16 6, i16 21, i16 10, i16 23, i16 11, i16 5, i16 2], align 16
@K3 = internal unnamed_addr constant [32 x i32] [i32 -1674521287, i32 720527379, i32 -976113629, i32 677414384, i32 -901678824, i32 -1193592593, i32 -1904616272, i32 1614419982, i32 1822297739, i32 -1340175810, i32 -686458943, i32 -1120842969, i32 2024746970, i32 1432378464, i32 -430627341, i32 -1437226092, i32 1464375394, i32 1676153920, i32 1439316330, i32 715854006, i32 -1261675468, i32 289532110, i32 -1588296017, i32 2087905683, i32 -1276242927, i32 1668267050, i32 732546397, i32 1947742710, i32 -832815594, i32 -1685613794, i32 -1344882125, i32 1814351708], align 16
@I4 = internal unnamed_addr constant [32 x i16] [i16 24, i16 4, i16 0, i16 14, i16 2, i16 7, i16 28, i16 23, i16 26, i16 6, i16 30, i16 20, i16 18, i16 25, i16 19, i16 3, i16 22, i16 11, i16 31, i16 21, i16 8, i16 27, i16 12, i16 9, i16 1, i16 29, i16 5, i16 15, i16 17, i16 10, i16 16, i16 13], align 16
@K4 = internal unnamed_addr constant [32 x i32] [i32 2050118529, i32 680887927, i32 999245976, i32 1800124847, i32 -994056165, i32 1713906067, i32 1641548236, i32 -81679983, i32 1216130144, i32 1575780402, i32 -276538019, i32 -377129551, i32 -601480446, i32 -345695352, i32 596196993, i32 -745100091, i32 258830323, i32 -2081144263, i32 772490370, i32 -1534844924, i32 1774776394, i32 -1642095778, i32 566650946, i32 -152474470, i32 1728879713, i32 -1412200208, i32 1783734482, i32 -665571480, i32 -1777359064, i32 -1420741725, i32 1861159788, i32 326777828], align 16
@I5 = internal unnamed_addr constant [32 x i16] [i16 27, i16 3, i16 21, i16 26, i16 17, i16 11, i16 20, i16 29, i16 19, i16 0, i16 12, i16 7, i16 13, i16 8, i16 31, i16 10, i16 5, i16 9, i16 14, i16 30, i16 18, i16 6, i16 28, i16 24, i16 2, i16 23, i16 16, i16 22, i16 4, i16 1, i16 25, i16 15], align 16
@K5 = internal unnamed_addr constant [32 x i32] [i32 -1170476976, i32 2130389656, i32 -1578015459, i32 967770486, i32 1724537150, i32 -2109534584, i32 -1930525159, i32 1164943284, i32 2105845187, i32 998989502, i32 -529566248, i32 -2050940813, i32 1075463327, i32 1455516326, i32 1322494562, i32 910128902, i32 469688178, i32 1117454909, i32 936433444, i32 -804646328, i32 -619713837, i32 1240580251, i32 122909385, i32 -2137449605, i32 634681816, i32 -152510729, i32 -469872614, i32 -1233564613, i32 -1754472259, i32 79693498, i32 -1045868618, i32 1084186820], align 16
@PADDING = internal constant <{ i8, [127 x i8] }> <{ i8 1, [127 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL128Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 128, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVALUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 127                        ; 3 uses
  %i.e = trunc i64 %2 to i32
  %i.f = shl i32 %i.e, 3                          ; 2 uses
  %i.g = add i32 %i.b, %i.f                       ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = icmp ult i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = zext i1 %i.h to i32
  %i.l = add i32 %i.j, %i.k
  %i.m = lshr i64 %2, 29
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = add i32 %i.l, %i.n
  store i32 %i.p, ptr %i.o, align 4, !tbaa !13
  %i.q = sub nuw nsw i32 128, %i.d
  %i.r = zext nneg i32 %i.q to i64                ; 5 uses
  %.not = icmp ult i64 %2, %i.r
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = zext nneg i32 %i.d to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.r, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  tail call void %i.w(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #6
  %i.x = add nuw nsw i64 %i.r, 127
  %i.y = icmp ult i64 %i.x, %2
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi i64 [ %i.ab, %.lr.ph ], [ %i.r, %bb.a ] ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.033
  tail call void %i.z(ptr noundef nonnull %0, ptr noundef nonnull %i.aa) #6
  %i.ab = add i64 %.033, 128                      ; 2 uses
  %i.ac = add i64 %.033, 255
  %i.ad = icmp ult i64 %i.ac, %2
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !0

bb.b:                                             ; preds = %._crit_edge
  %i.ae = zext nneg i32 %i.d to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.030 = phi i64 [ %i.ae, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.1 = phi i64 [ 0, %bb.b ], [ %i.r, %bb.a ], [ %i.ab, %.lr.ph ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.030
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.ai = sub i64 %2, %.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL128Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %2 = or disjoint i8 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %2
  store i8 %i.i, ptr %i.a, align 1, !tbaa !21
  %i.j = lshr i16 %i.g, 2
  %i.k = trunc i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.m, align 1
  %i.p = load i32, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.q = lshr i32 %i.p, 3
  %i.r = and i32 %i.q, 127                        ; 5 uses
  %i.s = icmp samesign ult i32 %i.r, 118
  %.v = select i1 %i.s, i32 118, i32 246
  %i.t = sub nsw i32 %.v, %i.r                    ; 4 uses
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = shl nsw i32 %i.t, 3                      ; 2 uses
  %i.w = add i32 %i.v, %i.p                       ; 2 uses
  store i32 %i.w, ptr %i.n, align 8, !tbaa !13
  %i.x = icmp ult i32 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = zext i1 %i.x to i32
  %i.ab = lshr i32 %i.t, 29
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = add i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !13
  %i.ae = sub nuw nsw i32 128, %i.r               ; 2 uses
  %.not.i = icmp ult i32 %i.t, %i.ae
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.af = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ah = zext nneg i32 %i.r to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.af, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  tail call void %i.ak(ptr noundef nonnull %1, ptr noundef nonnull %i.ag) #6, !inline_history !22
  %i.al = add nuw nsw i64 %i.af, 127
  %i.am = icmp samesign ult i64 %i.al, %i.u
  br i1 %i.am, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.a ] ; 3 uses
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.an(ptr noundef nonnull %1, ptr noundef nonnull %i.ao) #6, !inline_history !22
  %i.ap = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.aq = add nuw nsw i64 %.033.i, 255
  %i.ar = icmp samesign ult i64 %i.aq, %i.u
  br i1 %i.ar, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.as = zext nneg i32 %i.r to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.as, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.a ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i
  %i.av = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.aw = sub i64 %i.u, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.av, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !13  ; 3 uses
  %i.ay = lshr i32 %i.ax, 3
  %i.az = and i32 %i.ay, 127                      ; 4 uses
  %i.ba = add i32 %i.ax, 80
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !13
  %i.bb = icmp ugt i32 %i.ax, -81
  %i.bc = load i32, ptr %i.y, align 4, !tbaa !13
  %i.bd = zext i1 %i.bb to i32
  %i.be = add i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.y, align 4, !tbaa !13
  %.not.i33 = icmp samesign ult i32 %i.az, 118
  br i1 %.not.i33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bf = sub nuw nsw i32 128, %i.az
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = zext nneg i32 %i.az to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bg, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  tail call void %i.bk(ptr noundef nonnull %1, ptr noundef nonnull %i.at) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit38

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bl = zext nneg i32 %i.az to i64
  br label %PHP_HAVALUpdate.exit38

PHP_HAVALUpdate.exit38:                           ; preds = %bb.d, %bb.c
  %.030.i34 = phi i64 [ %i.bl, %bb.d ], [ 0, %bb.c ]
  %.1.i35 = phi i64 [ 0, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i35
  %i.bo = sub nuw nsw i64 10, %.1.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13 ; 4 uses
  %i.br = and i32 %i.bq, -16777216
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !13 ; 4 uses
  %i.bu = and i32 %i.bt, 16711680
  %i.bv = or disjoint i32 %i.bu, %i.br
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !13 ; 4 uses
  %i.by = and i32 %i.bx, 65280
  %i.bz = or disjoint i32 %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !13 ; 4 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = or disjoint i32 %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.cg = add i32 %i.cd, %i.cf
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !13
  %i.ch = and i32 %i.bq, 16711680
  %i.ci = and i32 %i.bt, 65280
  %i.cj = or disjoint i32 %i.ci, %i.ch
  %i.ck = and i32 %i.bx, 255
  %i.cl = or disjoint i32 %i.cj, %i.ck
  %i.cm = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cb, i32 8)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !13
  %i.cp = add i32 %i.co, %i.cm
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !13
  %i.cq = and i32 %i.bq, 65280
  %i.cr = and i32 %i.bt, 255
  %i.cs = or disjoint i32 %i.cr, %i.cq
  %i.ct = and i32 %i.bx, -16777216
  %i.cu = and i32 %i.cb, 16711680
  %i.cv = or disjoint i32 %i.cu, %i.ct
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cv, i32 16)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !13
  %i.cz = add i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !13
  %i.da = and i32 %i.bt, -16777216
  %i.db = and i32 %i.bx, 16711680
  %i.dc = or disjoint i32 %i.db, %i.da
  %i.dd = and i32 %i.cb, 65280
  %i.de = or disjoint i32 %i.dc, %i.dd
  %i.df = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.de, i32 24)
  %i.dg = load i32, ptr %1, align 8, !tbaa !13
  %i.dh = add i32 %i.dg, %i.df                    ; 2 uses
  store i32 %i.dh, ptr %1, align 8, !tbaa !13
  %i.di = trunc i32 %i.dh to i8
  store i8 %i.di, ptr %0, align 1, !tbaa !21
  %i.dj = load i32, ptr %1, align 8, !tbaa !13
  %i.dk = lshr i32 %i.dj, 8
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !21
  %i.dn = load i32, ptr %1, align 8, !tbaa !13
  %i.do = lshr i32 %i.dn, 16
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !21
  %i.dr = load i32, ptr %1, align 8, !tbaa !13
  %i.ds = lshr i32 %i.dr, 24
  %i.dt = trunc nuw i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = load i32, ptr %i.cx, align 4, !tbaa !13
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !21
  %i.dy = load i32, ptr %i.cx, align 4, !tbaa !13
  %i.dz = lshr i32 %i.dy, 8
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !21
  %i.ec = load i32, ptr %i.cx, align 4, !tbaa !13
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !21
  %i.eg = load i32, ptr %i.cx, align 4, !tbaa !13
  %i.eh = lshr i32 %i.eg, 24
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !21
  %i.ek = load i32, ptr %i.cn, align 8, !tbaa !13
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.el, ptr %i.em, align 1, !tbaa !21
  %i.en = load i32, ptr %i.cn, align 8, !tbaa !13
  %i.eo = lshr i32 %i.en, 8
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !21
  %i.er = load i32, ptr %i.cn, align 8, !tbaa !13
  %i.es = lshr i32 %i.er, 16
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !21
end_hunk_0
begin_hunk_1_@PHP_3HAVALTransform:.preheader112.preheader
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader111, label %.preheader112, !llvm.loop !24

.preheader111:                                    ; preds = %.preheader112, %.preheader111
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %.preheader111 ], [ 0, %.preheader112 ] ; 12 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @M3, i64 %indvars.iv120
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !23
  %i.cf = sext i16 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !13 ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr @M5, i64 %indvars.iv120
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !23
  %i.ck = sext i16 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13 ; 4 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @M0, i64 %indvars.iv120
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !23
  %i.cp = sext i16 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr @M1, i64 %indvars.iv120
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !23
  %i.cu = sext i16 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @M2, i64 %indvars.iv120
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !23
  %i.cz = sext i16 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !13 ; 2 uses
  %i.dc = and i32 %i.db, %i.cw                    ; 2 uses
  %i.dd = and i32 %i.dc, %i.cm
  %i.de = and i32 %i.cw, %i.ch
  %i.df = getelementptr inbounds nuw [2 x i8], ptr @M4, i64 %indvars.iv120
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !23
  %i.dh = sext i16 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !13
  %i.dk = and i32 %i.dj, %i.cm
  %i.dl = and i32 %i.db, %i.cr
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @M6, i64 %indvars.iv120
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !23
  %i.do = sext i16 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !13 ; 2 uses
  %i.dr = and i32 %i.dq, %i.cm
  %i.ds = xor i32 %i.cr, -1
  %i.dt = and i32 %i.ch, %i.ds
  %i.du = and i32 %i.dt, %i.cm
  %i.dv = xor i32 %i.du, %i.de
  %i.dw = xor i32 %i.dv, %i.dd
  %i.dx = xor i32 %i.dw, %i.dl
  %i.dy = xor i32 %i.dx, %i.dk
  %i.dz = xor i32 %i.dy, %i.dr
  %i.ea = xor i32 %i.dz, %i.dc
  %i.eb = xor i32 %i.ea, %i.dq                    ; 2 uses
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 25)
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr @M7, i64 %indvars.iv120
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !23
  %i.ef = sext i16 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !13 ; 2 uses
  %i.ei = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 21)
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr @I2, i64 %indvars.iv120
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !23
  %i.el = sext i16 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !13
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @K2, i64 %indvars.iv120
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !13
  %i.eq = add i32 %i.en, %i.ei
  %i.er = add i32 %i.eq, %i.ep
  %i.es = add i32 %i.er, %i.ec
  %i.et = and i64 %indvars.iv120, 7
  %i.eu = xor i64 %i.et, 7
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eu
  store i32 %i.es, ptr %i.ev, align 4, !tbaa !13
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next121, 32
  br i1 %exitcond123.not, label %.preheader110, label %.preheader111, !llvm.loop !25

.preheader110:                                    ; preds = %.preheader111, %.preheader110
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %.preheader110 ], [ 0, %.preheader111 ] ; 12 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr @M5, i64 %indvars.iv124
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !23
  %i.ey = sext i16 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !13 ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr @M4, i64 %indvars.iv124
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !23
  %i.fd = sext i16 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !13 ; 2 uses
  %i.fg = and i32 %i.ff, %i.fa
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr @M3, i64 %indvars.iv124
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !23
  %i.fj = sext i16 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !13 ; 3 uses
  %i.fm = and i32 %i.fg, %i.fl
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr @M2, i64 %indvars.iv124
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !23
  %i.fp = sext i16 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !13
  %i.fs = and i32 %i.fr, %i.fa
  %i.ft = xor i32 %i.fs, %i.fm
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr @M1, i64 %indvars.iv124
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !23
  %i.fw = sext i16 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !13
  %i.fz = and i32 %i.fy, %i.ff
  %i.ga = xor i32 %i.ft, %i.fz
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr @M6, i64 %indvars.iv124
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !23
  %i.gd = sext i16 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !13
  %i.gg = and i32 %i.gf, %i.fl
  %i.gh = xor i32 %i.ga, %i.gg
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr @M0, i64 %indvars.iv124
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !23
  %i.gk = sext i16 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !13 ; 2 uses
  %i.gn = and i32 %i.gm, %i.fl
  %i.go = xor i32 %i.gh, %i.gn
  %i.gp = xor i32 %i.go, %i.gm                    ; 2 uses
  %i.gq = tail call i32 @llvm.fshl.i32(i32 %i.gp, i32 %i.gp, i32 25)
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr @M7, i64 %indvars.iv124
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !23
  %i.gt = sext i16 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !13 ; 2 uses
  %i.gw = tail call i32 @llvm.fshl.i32(i32 %i.gv, i32 %i.gv, i32 21)
  %i.gx = add i32 %i.gq, %i.gw
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr @I3, i64 %indvars.iv124
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !23
  %i.ha = sext i16 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !13
  %i.hd = add i32 %i.gx, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @K3, i64 %indvars.iv124
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !13
  %i.hg = add i32 %i.hd, %i.hf
  %i.hh = and i64 %indvars.iv124, 7
  %i.hi = xor i64 %i.hh, 7
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hi
  store i32 %i.hg, ptr %i.hj, align 4, !tbaa !13
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next125, 32
  br i1 %exitcond127.not, label %.preheader.preheader, label %.preheader110, !llvm.loop !26

.preheader.preheader:                             ; preds = %.preheader110
  %i.hk = load <4 x i32>, ptr %i.a, align 16, !tbaa !13
  %i.hl = load <4 x i32>, ptr %0, align 4, !tbaa !13
  %i.hm = add <4 x i32> %i.hl, %i.hk
  store <4 x i32> %i.hm, ptr %0, align 4, !tbaa !13
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hp = load <4 x i32>, ptr %i.hn, align 16, !tbaa !13
  %i.hq = load <4 x i32>, ptr %i.ho, align 4, !tbaa !13
  %i.hr = add <4 x i32> %i.hq, %i.hp
  store <4 x i32> %i.hr, ptr %i.ho, align 4, !tbaa !13
  call void @explicit_bzero(ptr noundef nonnull %i.b, i64 noundef 128) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL160Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 160, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL160Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %2 = or disjoint i8 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %2
  store i8 %i.i, ptr %i.a, align 1, !tbaa !21
  %i.j = lshr i16 %i.g, 2
  %i.k = trunc i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.m, align 1
  %i.p = load i32, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.q = lshr i32 %i.p, 3
  %i.r = and i32 %i.q, 127                        ; 5 uses
  %i.s = icmp samesign ult i32 %i.r, 118
  %.v = select i1 %i.s, i32 118, i32 246
  %i.t = sub nsw i32 %.v, %i.r                    ; 4 uses
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = shl nsw i32 %i.t, 3                      ; 2 uses
  %i.w = add i32 %i.v, %i.p                       ; 2 uses
  store i32 %i.w, ptr %i.n, align 8, !tbaa !13
  %i.x = icmp ult i32 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = zext i1 %i.x to i32
  %i.ab = lshr i32 %i.t, 29
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = add i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !13
  %i.ae = sub nuw nsw i32 128, %i.r               ; 2 uses
  %.not.i = icmp ult i32 %i.t, %i.ae
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.af = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ah = zext nneg i32 %i.r to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.af, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  tail call void %i.ak(ptr noundef nonnull %1, ptr noundef nonnull %i.ag) #6, !inline_history !22
  %i.al = add nuw nsw i64 %i.af, 127
  %i.am = icmp samesign ult i64 %i.al, %i.u
  br i1 %i.am, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.a ] ; 3 uses
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.an(ptr noundef nonnull %1, ptr noundef nonnull %i.ao) #6, !inline_history !22
  %i.ap = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.aq = add nuw nsw i64 %.033.i, 255
  %i.ar = icmp samesign ult i64 %i.aq, %i.u
  br i1 %i.ar, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.as = zext nneg i32 %i.r to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.as, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.a ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i
  %i.av = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.aw = sub i64 %i.u, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.av, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !13  ; 3 uses
  %i.ay = lshr i32 %i.ax, 3
  %i.az = and i32 %i.ay, 127                      ; 4 uses
  %i.ba = add i32 %i.ax, 80
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !13
  %i.bb = icmp ugt i32 %i.ax, -81
  %i.bc = load i32, ptr %i.y, align 4, !tbaa !13
  %i.bd = zext i1 %i.bb to i32
  %i.be = add i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.y, align 4, !tbaa !13
  %.not.i39 = icmp samesign ult i32 %i.az, 118
  br i1 %.not.i39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bf = sub nuw nsw i32 128, %i.az
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = zext nneg i32 %i.az to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bg, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  tail call void %i.bk(ptr noundef nonnull %1, ptr noundef nonnull %i.at) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit44

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bl = zext nneg i32 %i.az to i64
  br label %PHP_HAVALUpdate.exit44

PHP_HAVALUpdate.exit44:                           ; preds = %bb.d, %bb.c
  %.030.i40 = phi i64 [ %i.bl, %bb.d ], [ 0, %bb.c ]
  %.1.i41 = phi i64 [ 0, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i41
  %i.bo = sub nuw nsw i64 10, %.1.i41
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13 ; 5 uses
  %i.bt = and i32 %i.bs, 520192
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bz = load i32, ptr %i.bp, align 4, !tbaa !13 ; 5 uses
  %i.ca = and i32 %i.bz, -33554432
  %i.cb = load i32, ptr %i.bq, align 8, !tbaa !13 ; 5 uses
  %i.cc = and i32 %i.cb, 33030144
  %i.cd = or disjoint i32 %i.cc, %i.ca
  %i.ce = or disjoint i32 %i.cd, %i.bt
  %i.cf = lshr exact i32 %i.ce, 12
  %i.cg = add i32 %i.cf, %i.bv
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !13
  %i.ch = and i32 %i.bz, 33030144
  %i.ci = and i32 %i.cb, 520192
  %i.cj = or disjoint i32 %i.ci, %i.ch
  %i.ck = and i32 %i.bs, 4032
  %i.cl = or disjoint i32 %i.cj, %i.ck
  %i.cm = lshr exact i32 %i.cl, 6
  %i.cn = and i32 %i.bz, 520192
  %i.co = and i32 %i.cb, 4032
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = and i32 %i.bs, 63
  %i.cr = or disjoint i32 %i.cp, %i.cq
  %i.cs = and i32 %i.bz, 4032
  %i.ct = and i32 %i.cb, 63
  %i.cu = or disjoint i32 %i.ct, %i.cs
  %i.cv = and i32 %i.bs, -33554432
  %i.cw = or disjoint i32 %i.cu, %i.cv            ; 2 uses
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 7)
  %i.cy = and i32 %i.bz, 63
  %i.cz = and i32 %i.cb, -33554432
  %i.da = or disjoint i32 %i.cz, %i.cy
  %i.db = and i32 %i.bs, 33030144
  %i.dc = or disjoint i32 %i.da, %i.db            ; 2 uses
  %i.dd = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 13)
  %i.de = load <4 x i32>, ptr %1, align 8, !tbaa !13
  %i.df = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %i.dg = insertelement <4 x i32> %i.df, i32 %i.cx, i64 1
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.cr, i64 2
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.cm, i64 3
  %i.dj = add <4 x i32> %i.di, %i.de              ; 2 uses
  store <4 x i32> %i.dj, ptr %1, align 8, !tbaa !13
  %i.dk = bitcast <4 x i32> %i.dj to <16 x i8>
  %i.dl = extractelement <16 x i8> %i.dk, i64 0
  store i8 %i.dl, ptr %0, align 1, !tbaa !21
  %i.dm = load i32, ptr %1, align 8, !tbaa !13
  %i.dn = lshr i32 %i.dm, 8
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !21
  %i.dq = load i32, ptr %1, align 8, !tbaa !13
  %i.dr = lshr i32 %i.dq, 16
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !21
  %i.du = load i32, ptr %1, align 8, !tbaa !13
  %i.dv = lshr i32 %i.du, 24
  %i.dw = trunc nuw i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !21
  %i.dy = load i32, ptr %i.by, align 4, !tbaa !13
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !21
  %i.eb = load i32, ptr %i.by, align 4, !tbaa !13
  %i.ec = lshr i32 %i.eb, 8
  %i.ed = trunc i32 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !21
  %i.ef = load i32, ptr %i.by, align 4, !tbaa !13
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !21
  %i.ej = load i32, ptr %i.by, align 4, !tbaa !13
  %i.ek = lshr i32 %i.ej, 24
  %i.el = trunc nuw i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.el, ptr %i.em, align 1, !tbaa !21
  %i.en = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !21
  %i.eq = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.er = lshr i32 %i.eq, 8
  %i.es = trunc i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.es, ptr %i.et, align 1, !tbaa !21
  %i.eu = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.ev = lshr i32 %i.eu, 16
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !21
  %i.ey = load i32, ptr %i.bx, align 8, !tbaa !13
  %i.ez = lshr i32 %i.ey, 24
  %i.fa = trunc nuw i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !21
  %i.fc = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !21
  %i.ff = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = trunc i32 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !21
  %i.fj = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.fk = lshr i32 %i.fj, 16
  %i.fl = trunc i32 %i.fk to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !21
  %i.fn = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.fo = lshr i32 %i.fn, 24
  %i.fp = trunc nuw i32 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !21
  %i.fr = load i32, ptr %i.bu, align 8, !tbaa !13
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !21
  %i.fu = load i32, ptr %i.bu, align 8, !tbaa !13
  %i.fv = lshr i32 %i.fu, 8
  %i.fw = trunc i32 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !21
  %i.fy = load i32, ptr %i.bu, align 8, !tbaa !13
  %i.fz = lshr i32 %i.fy, 16
  %i.ga = trunc i32 %i.fz to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !21
  %i.gc = load i32, ptr %i.bu, align 8, !tbaa !13
  %i.gd = lshr i32 %i.gc, 24
  %i.ge = trunc nuw i32 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL192Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 192, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL192Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %2 = or disjoint i8 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %2
  store i8 %i.i, ptr %i.a, align 1, !tbaa !21
  %i.j = lshr i16 %i.g, 2
  %i.k = trunc i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.m, align 1
  %i.p = load i32, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.q = lshr i32 %i.p, 3
  %i.r = and i32 %i.q, 127                        ; 5 uses
  %i.s = icmp samesign ult i32 %i.r, 118
  %.v = select i1 %i.s, i32 118, i32 246
  %i.t = sub nsw i32 %.v, %i.r                    ; 4 uses
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = shl nsw i32 %i.t, 3                      ; 2 uses
  %i.w = add i32 %i.v, %i.p                       ; 2 uses
  store i32 %i.w, ptr %i.n, align 8, !tbaa !13
  %i.x = icmp ult i32 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = zext i1 %i.x to i32
  %i.ab = lshr i32 %i.t, 29
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = add i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !13
  %i.ae = sub nuw nsw i32 128, %i.r               ; 2 uses
  %.not.i = icmp ult i32 %i.t, %i.ae
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.af = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ah = zext nneg i32 %i.r to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.af, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  tail call void %i.ak(ptr noundef nonnull %1, ptr noundef nonnull %i.ag) #6, !inline_history !22
  %i.al = add nuw nsw i64 %i.af, 127
  %i.am = icmp samesign ult i64 %i.al, %i.u
  br i1 %i.am, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.a ] ; 3 uses
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.an(ptr noundef nonnull %1, ptr noundef nonnull %i.ao) #6, !inline_history !22
  %i.ap = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.aq = add nuw nsw i64 %.033.i, 255
  %i.ar = icmp samesign ult i64 %i.aq, %i.u
  br i1 %i.ar, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.as = zext nneg i32 %i.r to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.as, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.a ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i
  %i.av = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.aw = sub i64 %i.u, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.av, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !13  ; 3 uses
  %i.ay = lshr i32 %i.ax, 3
  %i.az = and i32 %i.ay, 127                      ; 4 uses
  %i.ba = add i32 %i.ax, 80
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !13
  %i.bb = icmp ugt i32 %i.ax, -81
  %i.bc = load i32, ptr %i.y, align 4, !tbaa !13
  %i.bd = zext i1 %i.bb to i32
  %i.be = add i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.y, align 4, !tbaa !13
  %.not.i33 = icmp samesign ult i32 %i.az, 118
  br i1 %.not.i33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bf = sub nuw nsw i32 128, %i.az
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = zext nneg i32 %i.az to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bg, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  tail call void %i.bk(ptr noundef nonnull %1, ptr noundef nonnull %i.at) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit38

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bl = zext nneg i32 %i.az to i64
  br label %PHP_HAVALUpdate.exit38

PHP_HAVALUpdate.exit38:                           ; preds = %bb.d, %bb.c
  %.030.i34 = phi i64 [ %i.bl, %bb.d ], [ 0, %bb.c ]
  %.1.i35 = phi i64 [ 0, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i35
  %i.bo = sub nuw nsw i64 10, %.1.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 6 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bx = load <2 x i32>, ptr %i.bp, align 8, !tbaa !13 ; 4 uses
  %i.by = extractelement <2 x i32> %i.bx, i64 1   ; 4 uses
  %i.bz = and i32 %i.by, -67108864
  %i.ca = extractelement <2 x i32> %i.bx, i64 0   ; 4 uses
  %i.cb = and i32 %i.ca, 65011712
  %i.cc = or disjoint i32 %i.cb, %i.bz
  %i.cd = lshr exact i32 %i.cc, 21
  %i.ce = add i32 %i.cd, %i.br
  store i32 %i.ce, ptr %i.bq, align 4, !tbaa !13
  %i.cf = and i32 %i.by, 65011712
  %i.cg = and i32 %i.ca, 2031616
  %i.ch = or disjoint i32 %i.cg, %i.cf
  %i.ci = lshr exact i32 %i.ch, 16
  %i.cj = add i32 %i.bt, %i.ci
  store i32 %i.cj, ptr %i.bs, align 8, !tbaa !13
  %i.ck = and i32 %i.by, 2031616
  %i.cl = and i32 %i.ca, 64512
  %i.cm = or disjoint i32 %i.cl, %i.ck
  %i.cn = lshr exact i32 %i.cm, 10
  %i.co = and <2 x i32> %i.bx, splat (i32 992)
  %i.cp = and <2 x i32> %i.bx, <i32 31, i32 64512>
  %i.cq = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = or disjoint <2 x i32> %i.cq, %i.co      ; 2 uses
  %i.cs = extractelement <2 x i32> %i.cr, i64 0
  %i.ct = lshr exact i32 %i.cs, 5
  %i.cu = and i32 %i.by, 31
  %i.cv = and i32 %i.ca, -67108864
  %i.cw = or disjoint i32 %i.cv, %i.cu            ; 2 uses
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 6)
  %i.cy = load <4 x i32>, ptr %1, align 8, !tbaa !13
  %i.cz = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cx, i64 0
  %i.db = insertelement <4 x i32> %i.da, i32 %i.ct, i64 2
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cn, i64 3
  %i.dd = add <4 x i32> %i.cy, %i.dc              ; 2 uses
  store <4 x i32> %i.dd, ptr %1, align 8, !tbaa !13
  %i.de = bitcast <4 x i32> %i.dd to <16 x i8>
  %i.df = extractelement <16 x i8> %i.de, i64 0
  store i8 %i.df, ptr %0, align 1, !tbaa !21
  %i.dg = load i32, ptr %1, align 8, !tbaa !13
  %i.dh = lshr i32 %i.dg, 8
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !21
  %i.dk = load i32, ptr %1, align 8, !tbaa !13
  %i.dl = lshr i32 %i.dk, 16
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !21
  %i.do = load i32, ptr %1, align 8, !tbaa !13
  %i.dp = lshr i32 %i.do, 24
  %i.dq = trunc nuw i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !21
  %i.ds = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.dw = lshr i32 %i.dv, 8
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !21
  %i.dz = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.ea = lshr i32 %i.dz, 16
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !21
  %i.ed = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.ee = lshr i32 %i.ed, 24
  %i.ef = trunc nuw i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !21
  %i.eh = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !21
  %i.ek = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.el = lshr i32 %i.ek, 8
  %i.em = trunc i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.em, ptr %i.en, align 1, !tbaa !21
  %i.eo = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.ep = lshr i32 %i.eo, 16
  %i.eq = trunc i32 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !21
  %i.es = load i32, ptr %i.bv, align 8, !tbaa !13
  %i.et = lshr i32 %i.es, 24
  %i.eu = trunc nuw i32 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !21
  %i.ew = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !21
  %i.ez = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.fa = lshr i32 %i.ez, 8
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !21
  %i.fd = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.fe = lshr i32 %i.fd, 16
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !21
  %i.fh = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.fi = lshr i32 %i.fh, 24
  %i.fj = trunc nuw i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !21
  %i.fl = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !21
  %i.fo = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.fp = lshr i32 %i.fo, 8
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !21
  %i.fs = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.ft = lshr i32 %i.fs, 16
  %i.fu = trunc i32 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !21
  %i.fw = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.fx = lshr i32 %i.fw, 24
  %i.fy = trunc nuw i32 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !21
  %i.ga = load i32, ptr %i.bq, align 4, !tbaa !13
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !21
  %i.gd = load i32, ptr %i.bq, align 4, !tbaa !13
  %i.ge = lshr i32 %i.gd, 8
  %i.gf = trunc i32 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !21
  %i.gh = load i32, ptr %i.bq, align 4, !tbaa !13
  %i.gi = lshr i32 %i.gh, 16
  %i.gj = trunc i32 %i.gi to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !21
  %i.gl = load i32, ptr %i.bq, align 4, !tbaa !13
  %i.gm = lshr i32 %i.gl, 24
  %i.gn = trunc nuw i32 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL224Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 224, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL224Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %2 = or disjoint i8 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %2
  store i8 %i.i, ptr %i.a, align 1, !tbaa !21
  %i.j = lshr i16 %i.g, 2
  %i.k = trunc i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.m, align 1
  %i.p = load i32, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.q = lshr i32 %i.p, 3
  %i.r = and i32 %i.q, 127                        ; 5 uses
  %i.s = icmp samesign ult i32 %i.r, 118
  %.v = select i1 %i.s, i32 118, i32 246
  %i.t = sub nsw i32 %.v, %i.r                    ; 4 uses
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = shl nsw i32 %i.t, 3                      ; 2 uses
  %i.w = add i32 %i.v, %i.p                       ; 2 uses
  store i32 %i.w, ptr %i.n, align 8, !tbaa !13
  %i.x = icmp ult i32 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = zext i1 %i.x to i32
  %i.ab = lshr i32 %i.t, 29
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = add i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !13
  %i.ae = sub nuw nsw i32 128, %i.r               ; 2 uses
  %.not.i = icmp ult i32 %i.t, %i.ae
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.af = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ah = zext nneg i32 %i.r to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.af, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  tail call void %i.ak(ptr noundef nonnull %1, ptr noundef nonnull %i.ag) #6, !inline_history !22
  %i.al = add nuw nsw i64 %i.af, 127
  %i.am = icmp samesign ult i64 %i.al, %i.u
  br i1 %i.am, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.a ] ; 3 uses
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.an(ptr noundef nonnull %1, ptr noundef nonnull %i.ao) #6, !inline_history !22
  %i.ap = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.aq = add nuw nsw i64 %.033.i, 255
  %i.ar = icmp samesign ult i64 %i.aq, %i.u
  br i1 %i.ar, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.as = zext nneg i32 %i.r to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.as, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.a ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i
  %i.av = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.aw = sub i64 %i.u, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.av, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !13  ; 3 uses
  %i.ay = lshr i32 %i.ax, 3
  %i.az = and i32 %i.ay, 127                      ; 4 uses
  %i.ba = add i32 %i.ax, 80
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !13
  %i.bb = icmp ugt i32 %i.ax, -81
  %i.bc = load i32, ptr %i.y, align 4, !tbaa !13
  %i.bd = zext i1 %i.bb to i32
  %i.be = add i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.y, align 4, !tbaa !13
  %.not.i27 = icmp samesign ult i32 %i.az, 118
  br i1 %.not.i27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bf = sub nuw nsw i32 128, %i.az
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = zext nneg i32 %i.az to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bg, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  tail call void %i.bk(ptr noundef nonnull %1, ptr noundef nonnull %i.at) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit32

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bl = zext nneg i32 %i.az to i64
  br label %PHP_HAVALUpdate.exit32

PHP_HAVALUpdate.exit32:                           ; preds = %bb.d, %bb.c
  %.030.i28 = phi i64 [ %i.bl, %bb.d ], [ 0, %bb.c ]
  %.1.i29 = phi i64 [ 0, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i29
  %i.bo = sub nuw nsw i64 10, %.1.i29
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13 ; 7 uses
  %i.br = and i32 %i.bq, 15
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.bu = add i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bx = lshr i32 %i.bq, 4
  %i.by = lshr i32 %i.bq, 9
  %i.bz = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %i.ca = insertelement <2 x i32> %i.bz, i32 %i.bx, i64 1
  %i.cb = and <2 x i32> %i.ca, <i32 15, i32 31>
  %i.cc = load <2 x i32>, ptr %i.bw, align 8, !tbaa !13
  %i.cd = add <2 x i32> %i.cc, %i.cb
  store <2 x i32> %i.cd, ptr %i.bw, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ch = lshr i32 %i.bq, 13
  %i.ci = lshr i32 %i.bq, 18
  %i.cj = lshr i32 %i.bq, 22
  %i.ck = lshr i32 %i.bq, 27
  %i.cl = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.cj, i64 1
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.ci, i64 2
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.ch, i64 3
  %i.cp = and <4 x i32> %i.co, <i32 -1, i32 31, i32 15, i32 31>
  %i.cq = load <4 x i32>, ptr %1, align 8, !tbaa !13
  %i.cr = add <4 x i32> %i.cq, %i.cp              ; 2 uses
  store <4 x i32> %i.cr, ptr %1, align 8, !tbaa !13
  %i.cs = bitcast <4 x i32> %i.cr to <16 x i8>
  %i.ct = extractelement <16 x i8> %i.cs, i64 0
  store i8 %i.ct, ptr %0, align 1, !tbaa !21
  %i.cu = load i32, ptr %1, align 8, !tbaa !13
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !21
  %i.cy = load i32, ptr %1, align 8, !tbaa !13
  %i.cz = lshr i32 %i.cy, 16
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.da, ptr %i.db, align 1, !tbaa !21
  %i.dc = load i32, ptr %1, align 8, !tbaa !13
  %i.dd = lshr i32 %i.dc, 24
  %i.de = trunc nuw i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.de, ptr %i.df, align 1, !tbaa !21
  %i.dg = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !21
  %i.dj = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.dk = lshr i32 %i.dj, 8
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !21
  %i.dn = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.do = lshr i32 %i.dn, 16
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !21
  %i.dr = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.ds = lshr i32 %i.dr, 24
  %i.dt = trunc nuw i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = load i32, ptr %i.cf, align 8, !tbaa !13
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !21
  %i.dy = load i32, ptr %i.cf, align 8, !tbaa !13
  %i.dz = lshr i32 %i.dy, 8
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !21
  %i.ec = load i32, ptr %i.cf, align 8, !tbaa !13
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !21
  %i.eg = load i32, ptr %i.cf, align 8, !tbaa !13
  %i.eh = lshr i32 %i.eg, 24
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !21
  %i.ek = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.el, ptr %i.em, align 1, !tbaa !21
  %i.en = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.eo = lshr i32 %i.en, 8
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !21
  %i.er = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.es = lshr i32 %i.er, 16
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !21
  %i.ev = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.ew = lshr i32 %i.ev, 24
  %i.ex = trunc nuw i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !21
  %i.ez = load i32, ptr %i.bw, align 8, !tbaa !13
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !21
  %i.fc = load i32, ptr %i.bw, align 8, !tbaa !13
  %i.fd = lshr i32 %i.fc, 8
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !21
  %i.fg = load i32, ptr %i.bw, align 8, !tbaa !13
  %i.fh = lshr i32 %i.fg, 16
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !21
  %i.fk = load i32, ptr %i.bw, align 8, !tbaa !13
  %i.fl = lshr i32 %i.fk, 24
  %i.fm = trunc nuw i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !21
  %i.fo = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !21
  %i.fr = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.fs = lshr i32 %i.fr, 8
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !21
  %i.fv = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.fw = lshr i32 %i.fv, 16
  %i.fx = trunc i32 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !21
  %i.fz = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.ga = lshr i32 %i.fz, 24
  %i.gb = trunc nuw i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !21
  %i.gd = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.ge = trunc i32 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !21
  %i.gg = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.gh = lshr i32 %i.gg, 8
  %i.gi = trunc i32 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !21
  %i.gk = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.gl = lshr i32 %i.gk, 16
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !21
  %i.go = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.gp = lshr i32 %i.go, 24
  %i.gq = trunc nuw i32 %i.gp to i8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL256Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 256, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL256Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %2 = or disjoint i8 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18   ; 2 uses
  %.tr = trunc i16 %i.g to i8
  %i.h = shl i8 %.tr, 6
  %i.i = or disjoint i8 %i.h, %2
  store i8 %i.i, ptr %i.a, align 1, !tbaa !21
  %i.j = lshr i16 %i.g, 2
  %i.k = trunc i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.m, align 1
  %i.p = load i32, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.q = lshr i32 %i.p, 3
  %i.r = and i32 %i.q, 127                        ; 5 uses
  %i.s = icmp samesign ult i32 %i.r, 118
  %.v = select i1 %i.s, i32 118, i32 246
  %i.t = sub nsw i32 %.v, %i.r                    ; 4 uses
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = shl nsw i32 %i.t, 3                      ; 2 uses
  %i.w = add i32 %i.v, %i.p                       ; 2 uses
  store i32 %i.w, ptr %i.n, align 8, !tbaa !13
  %i.x = icmp ult i32 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = zext i1 %i.x to i32
  %i.ab = lshr i32 %i.t, 29
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = add i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !13
  %i.ae = sub nuw nsw i32 128, %i.r               ; 2 uses
  %.not.i = icmp ult i32 %i.t, %i.ae
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.af = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ah = zext nneg i32 %i.r to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.af, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  tail call void %i.ak(ptr noundef nonnull %1, ptr noundef nonnull %i.ag) #6, !inline_history !22
  %i.al = add nuw nsw i64 %i.af, 127
  %i.am = icmp samesign ult i64 %i.al, %i.u
  br i1 %i.am, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.a ] ; 3 uses
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.an(ptr noundef nonnull %1, ptr noundef nonnull %i.ao) #6, !inline_history !22
  %i.ap = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.aq = add nuw nsw i64 %.033.i, 255
  %i.ar = icmp samesign ult i64 %i.aq, %i.u
  br i1 %i.ar, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.as = zext nneg i32 %i.r to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.as, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.a ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i
  %i.av = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.aw = sub i64 %i.u, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.av, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !13  ; 3 uses
  %i.ay = lshr i32 %i.ax, 3
  %i.az = and i32 %i.ay, 127                      ; 4 uses
  %i.ba = add i32 %i.ax, 80
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !13
  %i.bb = icmp ugt i32 %i.ax, -81
  %i.bc = load i32, ptr %i.y, align 4, !tbaa !13
  %i.bd = zext i1 %i.bb to i32
  %i.be = add i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.y, align 4, !tbaa !13
  %.not.i13 = icmp samesign ult i32 %i.az, 118
  br i1 %.not.i13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bf = sub nuw nsw i32 128, %i.az
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = zext nneg i32 %i.az to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bg, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  tail call void %i.bk(ptr noundef nonnull %1, ptr noundef nonnull %i.at) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit18

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bl = zext nneg i32 %i.az to i64
  br label %PHP_HAVALUpdate.exit18

PHP_HAVALUpdate.exit18:                           ; preds = %bb.d, %bb.c
  %.030.i14 = phi i64 [ %i.bl, %bb.d ], [ 0, %bb.c ]
  %.1.i15 = phi i64 [ 0, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 %.030.i14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i15
  %i.bo = sub nuw nsw i64 10, %.1.i15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.bo, i1 false)
  %i.bp = load i32, ptr %1, align 8, !tbaa !13
  %i.bq = trunc i32 %i.bp to i8
  store i8 %i.bq, ptr %0, align 1, !tbaa !21
  %i.br = load i32, ptr %1, align 8, !tbaa !13
  %i.bs = lshr i32 %i.br, 8
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !21
  %i.bv = load i32, ptr %1, align 8, !tbaa !13
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !21
  %i.bz = load i32, ptr %1, align 8, !tbaa !13
  %i.ca = lshr i32 %i.bz, 24
  %i.cb = trunc nuw i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !21
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !21
  %i.cl = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cm = lshr i32 %i.cl, 16
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !21
  %i.cp = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cq = lshr i32 %i.cp, 24
  %i.cr = trunc nuw i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !21
  %i.cx = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.cy = lshr i32 %i.cx, 8
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !21
  %i.db = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.dc = lshr i32 %i.db, 16
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !21
  %i.df = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.dg = lshr i32 %i.df, 24
  %i.dh = trunc nuw i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !13
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !21
  %i.dn = load i32, ptr %i.dj, align 4, !tbaa !13
  %i.do = lshr i32 %i.dn, 8
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !21
  %i.dr = load i32, ptr %i.dj, align 4, !tbaa !13
  %i.ds = lshr i32 %i.dr, 16
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = load i32, ptr %i.dj, align 4, !tbaa !13
  %i.dw = lshr i32 %i.dv, 24
  %i.dx = trunc nuw i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !21
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !13
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !21
  %i.ed = load i32, ptr %i.dz, align 8, !tbaa !13
  %i.ee = lshr i32 %i.ed, 8
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !21
  %i.eh = load i32, ptr %i.dz, align 8, !tbaa !13
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !21
  %i.el = load i32, ptr %i.dz, align 8, !tbaa !13
  %i.em = lshr i32 %i.el, 24
  %i.en = trunc nuw i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
end_hunk_1
