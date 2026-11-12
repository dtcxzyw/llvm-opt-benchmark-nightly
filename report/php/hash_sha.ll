Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_sha?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"l5l2b64.\00", align 1
@php_hash_sha1_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str, ptr @PHP_SHA1InitArgs, ptr @PHP_SHA1Update, ptr @PHP_SHA1Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.1, i64 20, i64 64, i64 92, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"l8l2b64.\00", align 1
@php_hash_sha256_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.2, ptr @PHP_SHA256InitArgs, ptr @PHP_SHA256Update, ptr @PHP_SHA256Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.3, i64 32, i64 64, i64 104, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@php_hash_sha224_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.4, ptr @PHP_SHA224InitArgs, ptr @PHP_SHA224Update, ptr @PHP_SHA224Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.3, i64 28, i64 64, i64 104, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"q8q2b128.\00", align 1
@php_hash_sha384_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.5, ptr @PHP_SHA384InitArgs, ptr @PHP_SHA384Update, ptr @PHP_SHA384Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.6, i64 48, i64 128, i64 208, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@php_hash_sha512_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.7, ptr @PHP_SHA512InitArgs, ptr @PHP_SHA512Update, ptr @PHP_SHA512Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.6, i64 64, i64 128, i64 208, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"sha512/256\00", align 1
@php_hash_sha512_256_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.8, ptr @PHP_SHA512_256InitArgs, ptr @PHP_SHA512Update, ptr @PHP_SHA512_256Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.6, i64 32, i64 128, i64 208, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"sha512/224\00", align 1
@php_hash_sha512_224_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.9, ptr @PHP_SHA512_224InitArgs, ptr @PHP_SHA512Update, ptr @PHP_SHA512_224Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.6, i64 28, i64 128, i64 208, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@PADDING = internal constant <{ i8, [127 x i8] }> <{ i8 -128, [127 x i8] zeroinitializer }>, align 16
@SHA512_K = internal unnamed_addr constant <{ [80 x i64], [48 x i64] }> <{ [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], [48 x i64] zeroinitializer }>, align 16

declare void @PHP_SHA1InitArgs(ptr noundef, ptr noundef) #0

declare void @PHP_SHA1Update(ptr noundef, ptr noundef, i64 noundef) #0

declare void @PHP_SHA1Final(ptr noundef, ptr noundef) #0

declare i32 @php_hash_copy(ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @php_hash_serialize(ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @php_hash_unserialize(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_SHA256InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !14
  store i32 0, ptr %i.a, align 4, !tbaa !14
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.c, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA256Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 {
._crit_edge:
  %i.a = alloca [72 x i32], align 16              ; 5 uses
  %i.b = alloca [72 x i32], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 63                         ; 3 uses
  %i.g = trunc i64 %2 to i32
  %i.h = shl i32 %i.g, 3                          ; 2 uses
  %i.i = add i32 %i.d, %i.h                       ; 2 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !14
  %i.j = icmp ult i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = zext i1 %i.j to i32
  %i.n = add i32 %i.l, %i.m
  %i.o = lshr i64 %2, 29
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = add i32 %i.n, %i.p
  store i32 %i.r, ptr %i.q, align 4, !tbaa !14
  %i.s = sub nuw nsw i32 64, %i.f
  %i.t = zext nneg i32 %i.s to i64                ; 5 uses
  %.not = icmp ult i64 %2, %i.t
  br i1 %.not, label %bb.i, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = zext nneg i32 %i.f to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.t, i1 false)
  %i.x = tail call i32 @zend_cpu_supports(i32 noundef 512) #7
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = tail call i32 @zend_cpu_supports(i32 noundef 1610612736) #7
  %.not4.i = icmp eq i32 %i.y, 0
  br i1 %.not4.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SHA256_Transform_shani(ptr noundef nonnull %0, ptr noundef nonnull %i.u) #7
  br label %SHA256Transform.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  call void @SHA256_Transform_sse2(ptr noundef nonnull %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.z) #7
  call void @explicit_bzero(ptr noundef nonnull %i.b, i64 noundef 288) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %SHA256Transform.exit

SHA256Transform.exit:                             ; preds = %bb.c, %bb.d
  %i.aa = add nuw nsw i64 %i.t, 63
  %i.ab = icmp ult i64 %i.aa, %2
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %SHA256Transform.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %SHA256Transform.exit33
  %.034 = phi i64 [ %i.t, %.lr.ph ], [ %i.ag, %SHA256Transform.exit33 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.034 ; 2 uses
  %i.ae = call i32 @zend_cpu_supports(i32 noundef 512) #7
  %.not.i31 = icmp eq i32 %i.ae, 0
  br i1 %.not.i31, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = call i32 @zend_cpu_supports(i32 noundef 1610612736) #7
  %.not4.i32 = icmp eq i32 %i.af, 0
  br i1 %.not4.i32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @SHA256_Transform_shani(ptr noundef %0, ptr noundef nonnull %i.ad) #7
  br label %SHA256Transform.exit33

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @SHA256_Transform_sse2(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac) #7
  call void @explicit_bzero(ptr noundef nonnull %i.a, i64 noundef 288) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %SHA256Transform.exit33

SHA256Transform.exit33:                           ; preds = %bb.g, %bb.h
  %i.ag = add i64 %.034, 64                       ; 2 uses
  %i.ah = add i64 %.034, 127
  %i.ai = icmp ult i64 %i.ah, %2
  br i1 %i.ai, label %bb.e, label %.loopexit, !llvm.loop !19

bb.i:                                             ; preds = %._crit_edge
  %i.aj = zext nneg i32 %i.f to i64
  br label %.loopexit

.loopexit:                                        ; preds = %SHA256Transform.exit33, %SHA256Transform.exit, %bb.i
  %.028 = phi i64 [ %i.aj, %bb.i ], [ 0, %SHA256Transform.exit ], [ 0, %SHA256Transform.exit33 ]
  %.1 = phi i64 [ 0, %bb.i ], [ %i.t, %SHA256Transform.exit ], [ %i.ag, %SHA256Transform.exit33 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.028
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.an = sub i64 %2, %.1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.am, i64 %i.an, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA256Final(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1) #2 {
SHAEncode32.exit:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %i.e, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %i.a, align 4, !tbaa !16
  %i.i = lshr i32 %i.c, 3
  %i.j = and i32 %i.i, 63                         ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 56
  %.v = select i1 %i.k, i32 56, i32 120
  %i.l = sub nsw i32 %.v, %i.j
  %i.m = zext i32 %i.l to i64
  tail call void @PHP_SHA256Update(ptr noundef %1, ptr noundef nonnull @PADDING, i64 noundef %i.m)
  call void @PHP_SHA256Update(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.n = load i32, ptr %1, align 4, !tbaa !14
  %i.o = lshr i32 %i.n, 24
  %i.p = trunc nuw i32 %i.o to i8
  store i8 %i.p, ptr %0, align 1, !tbaa !16
  %i.q = load i32, ptr %1, align 4, !tbaa !14
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !16
  %i.u = load i32, ptr %1, align 4, !tbaa !14
  %i.v = lshr i32 %i.u, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !16
  %i.y = load i32, ptr %1, align 4, !tbaa !14
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %2 = getelementptr i8, ptr %1, i64 7
  %3 = load i8, ptr %2, align 1, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %3, ptr %i.ac, align 1, !tbaa !16
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !16
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ai = lshr i32 %i.ah, 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !16
  %i.al = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.am, ptr %i.an, align 1, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %4 = getelementptr i8, ptr %1, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %5, ptr %i.ap, align 1, !tbaa !16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.ar = lshr i32 %i.aq, 16
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.as, ptr %i.at, align 1, !tbaa !16
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.av = lshr i32 %i.au, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !16
  %i.ay = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %6 = getelementptr i8, ptr %1, i64 15
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %7, ptr %i.bc, align 1, !tbaa !16
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.be = lshr i32 %i.bd, 16
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !16
  %i.bh = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bi = lshr i32 %i.bh, 8
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !16
  %i.bl = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %8 = getelementptr i8, ptr %1, i64 19
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %9, ptr %i.bp, align 1, !tbaa !16
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.br = lshr i32 %i.bq, 16
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !16
  %i.bu = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !16
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %10 = getelementptr i8, ptr %1, i64 23
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %11, ptr %i.cc, align 1, !tbaa !16
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !14
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = load i32, ptr %i.cb, align 4, !tbaa !14
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  %i.cl = load i32, ptr %i.cb, align 4, !tbaa !14
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %12 = getelementptr i8, ptr %1, i64 27
  %13 = load i8, ptr %12, align 1, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %13, ptr %i.cp, align 1, !tbaa !16
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cr = lshr i32 %i.cq, 16
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !16
  %i.cu = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !16
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %14 = getelementptr i8, ptr %1, i64 31
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %15, ptr %i.dc, align 1, !tbaa !16
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !14
  %i.de = lshr i32 %i.dd, 16
  %i.df = trunc i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !16
  %i.dh = load i32, ptr %i.db, align 4, !tbaa !14
  %i.di = lshr i32 %i.dh, 8
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !16
  %i.dl = load i32, ptr %i.db, align 4, !tbaa !14
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !16
  call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 104) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_SHA224InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !14
  store i32 0, ptr %i.a, align 4, !tbaa !14
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %0, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.c, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA224Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 {
._crit_edge:
  %i.a = alloca [72 x i32], align 16              ; 5 uses
  %i.b = alloca [72 x i32], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 63                         ; 3 uses
  %i.g = trunc i64 %2 to i32
  %i.h = shl i32 %i.g, 3                          ; 2 uses
  %i.i = add i32 %i.d, %i.h                       ; 2 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !14
  %i.j = icmp ult i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = zext i1 %i.j to i32
  %i.n = add i32 %i.l, %i.m
  %i.o = lshr i64 %2, 29
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = add i32 %i.n, %i.p
  store i32 %i.r, ptr %i.q, align 4, !tbaa !14
  %i.s = sub nuw nsw i32 64, %i.f
  %i.t = zext nneg i32 %i.s to i64                ; 5 uses
  %.not = icmp ult i64 %2, %i.t
  br i1 %.not, label %bb.i, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = zext nneg i32 %i.f to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.t, i1 false)
  %i.x = tail call i32 @zend_cpu_supports(i32 noundef 512) #7
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = tail call i32 @zend_cpu_supports(i32 noundef 1610612736) #7
  %.not4.i = icmp eq i32 %i.y, 0
  br i1 %.not4.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SHA256_Transform_shani(ptr noundef nonnull %0, ptr noundef nonnull %i.u) #7
  br label %SHA256Transform.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  call void @SHA256_Transform_sse2(ptr noundef nonnull %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.z) #7
  call void @explicit_bzero(ptr noundef nonnull %i.b, i64 noundef 288) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %SHA256Transform.exit

SHA256Transform.exit:                             ; preds = %bb.c, %bb.d
  %i.aa = add nuw nsw i64 %i.t, 63
  %i.ab = icmp ult i64 %i.aa, %2
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %SHA256Transform.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %SHA256Transform.exit33
  %.034 = phi i64 [ %i.t, %.lr.ph ], [ %i.ag, %SHA256Transform.exit33 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.034 ; 2 uses
  %i.ae = call i32 @zend_cpu_supports(i32 noundef 512) #7
  %.not.i31 = icmp eq i32 %i.ae, 0
  br i1 %.not.i31, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = call i32 @zend_cpu_supports(i32 noundef 1610612736) #7
  %.not4.i32 = icmp eq i32 %i.af, 0
  br i1 %.not4.i32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @SHA256_Transform_shani(ptr noundef %0, ptr noundef nonnull %i.ad) #7
  br label %SHA256Transform.exit33

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @SHA256_Transform_sse2(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac) #7
  call void @explicit_bzero(ptr noundef nonnull %i.a, i64 noundef 288) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %SHA256Transform.exit33

SHA256Transform.exit33:                           ; preds = %bb.g, %bb.h
  %i.ag = add i64 %.034, 64                       ; 2 uses
  %i.ah = add i64 %.034, 127
  %i.ai = icmp ult i64 %i.ah, %2
  br i1 %i.ai, label %bb.e, label %.loopexit, !llvm.loop !20

bb.i:                                             ; preds = %._crit_edge
  %i.aj = zext nneg i32 %i.f to i64
  br label %.loopexit

.loopexit:                                        ; preds = %SHA256Transform.exit33, %SHA256Transform.exit, %bb.i
  %.028 = phi i64 [ %i.aj, %bb.i ], [ 0, %SHA256Transform.exit ], [ 0, %SHA256Transform.exit33 ]
  %.1 = phi i64 [ 0, %bb.i ], [ %i.t, %SHA256Transform.exit ], [ %i.ag, %SHA256Transform.exit33 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.028
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.an = sub i64 %2, %.1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.am, i64 %i.an, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA224Final(ptr nofree noundef writeonly captures(none) initializes((0, 28)) %0, ptr noundef %1) #2 {
SHAEncode32.exit:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %i.e, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %i.a, align 4, !tbaa !16
  %i.i = lshr i32 %i.c, 3
  %i.j = and i32 %i.i, 63                         ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 56
  %.v = select i1 %i.k, i32 56, i32 120
  %i.l = sub nsw i32 %.v, %i.j
  %i.m = zext i32 %i.l to i64
  tail call void @PHP_SHA224Update(ptr noundef %1, ptr noundef nonnull @PADDING, i64 noundef %i.m)
  call void @PHP_SHA224Update(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.n = load i32, ptr %1, align 4, !tbaa !14
  %i.o = lshr i32 %i.n, 24
  %i.p = trunc nuw i32 %i.o to i8
  store i8 %i.p, ptr %0, align 1, !tbaa !16
  %i.q = load i32, ptr %1, align 4, !tbaa !14
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !16
  %i.u = load i32, ptr %1, align 4, !tbaa !14
  %i.v = lshr i32 %i.u, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !16
  %i.y = load i32, ptr %1, align 4, !tbaa !14
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %2 = getelementptr i8, ptr %1, i64 7
  %3 = load i8, ptr %2, align 1, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %3, ptr %i.ac, align 1, !tbaa !16
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !16
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ai = lshr i32 %i.ah, 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !16
  %i.al = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.am, ptr %i.an, align 1, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %4 = getelementptr i8, ptr %1, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %5, ptr %i.ap, align 1, !tbaa !16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.ar = lshr i32 %i.aq, 16
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.as, ptr %i.at, align 1, !tbaa !16
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.av = lshr i32 %i.au, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !16
  %i.ay = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %6 = getelementptr i8, ptr %1, i64 15
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %7, ptr %i.bc, align 1, !tbaa !16
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.be = lshr i32 %i.bd, 16
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !16
  %i.bh = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bi = lshr i32 %i.bh, 8
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !16
  %i.bl = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %8 = getelementptr i8, ptr %1, i64 19
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %9, ptr %i.bp, align 1, !tbaa !16
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.br = lshr i32 %i.bq, 16
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !16
  %i.bu = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !16
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %10 = getelementptr i8, ptr %1, i64 23
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %11, ptr %i.cc, align 1, !tbaa !16
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !14
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = load i32, ptr %i.cb, align 4, !tbaa !14
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  %i.cl = load i32, ptr %i.cb, align 4, !tbaa !14
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %12 = getelementptr i8, ptr %1, i64 27
  %13 = load i8, ptr %12, align 1, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %13, ptr %i.cp, align 1, !tbaa !16
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cr = lshr i32 %i.cq, 16
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !16
  %i.cu = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !16
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !16
  call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 104) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare void @explicit_bzero(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_SHA384InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 -3766243637369397544, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7105036623409894663, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -7973340178411365097, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1526699215303891257, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 7436329637833083697, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -8163818279084223215, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -2662702644619276377, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 5167115440072839076, ptr %i.h, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA384Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 127                        ; 3 uses
  %i.f = shl i64 %2, 3                            ; 2 uses
  %i.g = add i64 %i.b, %i.f                       ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !18
  %i.h = icmp ult i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = zext i1 %i.h to i64
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %2, 61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = add i64 %i.l, %i.m
  store i64 %i.o, ptr %i.n, align 8, !tbaa !18
  %i.p = sub nuw nsw i32 128, %i.e
  %i.q = zext nneg i32 %i.p to i64                ; 5 uses
  %.not = icmp ult i64 %2, %i.q
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = zext nneg i32 %i.e to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.q, i1 false)
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.r)
  %i.u = add nuw nsw i64 %i.q, 127
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i64 [ %i.x, %.lr.ph ], [ %i.q, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.031
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.w)
  %i.x = add i64 %.031, 128                       ; 2 uses
  %i.y = add i64 %.031, 255
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %._crit_edge
  %.028 = phi i32 [ %i.e, %._crit_edge ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.1 = phi i64 [ 0, %._crit_edge ], [ %i.q, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = zext nneg i32 %.028 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.ae = sub i64 %2, %.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SHA512Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 5 uses
  %i.b = alloca [80 x i64], align 16              ; 5 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv24.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next25.i, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 8
  %i.z = or disjoint i64 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 16
  %i.ae = or disjoint i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 24
  %i.aj = or disjoint i64 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %i.ao = or disjoint i64 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 40
  %i.at = or i64 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 48
  %i.ay = or i64 %i.at, %i.ax
  %i.az = load i8, ptr %i.r, align 1, !tbaa !16
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw i64 %i.ba, 56
  %i.bc = or i64 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv24.i
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !18
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next25.i, 16
  br i1 %exitcond.not.i, label %SHADecode64.exit.preheader, label %bb.b, !llvm.loop !21

SHADecode64.exit.preheader:                       ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false), !tbaa !18
  br label %.preheader88

.preheader88:                                     ; preds = %SHADecode64.exit.preheader, %.preheader88
  %indvars.iv = phi i64 [ 16, %SHADecode64.exit.preheader ], [ %indvars.iv.next, %.preheader88 ] ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !18 ; 5 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 45)
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 3)
  %i.bj = xor i64 %i.bh, %i.bi
  %i.bk = lshr i64 %i.bg, 6
  %i.bl = xor i64 %i.bj, %i.bk
  %i.bm = getelementptr i8, ptr %i.be, i64 -56
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = add i64 %i.bl, %i.bn
  %i.bp = getelementptr i8, ptr %i.be, i64 -120
end_hunk_0
