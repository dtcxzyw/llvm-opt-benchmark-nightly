Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/aes?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_aes_context = type { i32, i64, [68 x i32] }
%struct.anon.0 = type { [4 x i32], [4 x i32] }
%struct.anon = type { [4 x i32], [4 x i32] }

@aes_init_done = internal unnamed_addr global i1 false, align 4
@round_constants = internal unnamed_addr global [10 x i32] zeroinitializer, align 16
@FSb = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@RT0 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@RT1 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@RT2 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@RT3 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"  AES-ECB-%3u (%s): \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@aes_test_ecb_dec = internal constant [3 x [16 x i8]] [[16 x i8] c"DAj\C2\D1\F5<X3\03\91~k\E9\EB\E0", [16 x i8] c"H\E3\1E\9E%g\18\F2\92)1\9C\19\F1[\A4", [16 x i8] c"\05\8C\CF\FD\BB\CB8-\1FoVX]\8AJ\DE"], align 16
@aes_test_ecb_enc = internal constant [3 x [16 x i8]] [[16 x i8] c"\C3L\05,\C0\DA\8DsE\1A\FE_\03\BE)\7F", [16 x i8] c"\F3\F6u*\E8\D7\83\118\F0AV\061\B1\14", [16 x i8] c"\8By\EE\CC\93\A0\EE]\FF0\B4\EA!cm\A4"], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"  AES-CBC-%3u (%s): \00", align 1
@aes_test_cbc_dec = internal constant [3 x [16 x i8]] [[16 x i8] c"\FA\CA7\E0\B0\C8Ss\DFpns\F7\C9\AF\86", [16 x i8] c"]\F6x\DD\17\BANu\B6\17h\C6\AD\EF|{", [16 x i8] c"H\04\E1\81\8F\E6)u\19\A3\E8\8CW1\04\13"], align 16
@aes_test_cbc_enc = internal constant [3 x [16 x i8]] [[16 x i8] c"\8A\05\FC^\09Z\F4\84\8A\08\D3(\D3h\8E=", [16 x i8] c"{\D9f\D5:\D8\C1\BB\85\D2\AD\FA\E8{\B1\04", [16 x i8] c"\FE<Se>/E\B5o\CD\88\B2\CC\89\8F\F0"], align 16
@.str.14 = private unnamed_addr constant [24 x i8] c"  AES-CFB128-%3u (%s): \00", align 1
@aes_test_cfb128_ct = internal constant [3 x [64 x i8]] [[64 x i8] c";?\D9.\B7-\AD 34I\F8\E8<\FBJ\C8\A6E7\A0\B3\A9?\CD\E3\CD\AD\9F\1C\E5\8B&u\1Fg\A3\CB\B1@\B1\80\8C\F1\87\A4\F4\DF\C0K\055|]\1C\0E\EA\C4\C6o\9F\F7\F2\E6", [64 x i8] c"\CD\C8\0Do\DD\F1\8C\AB4\C2Y\09\C9\9AAtg\CE\7F\7F\81\176!\96\1A+p\17\1D=z.\1E\8A\1D\D5\9B\88\B1\C8\E6\0F\ED\1E\FA\C4\C9\C0_\9F\9C\A9\83O\A0B\AE\8F\BAXK\09\FF", [64 x i8] c"\DC~\84\BF\DAy\16K~\CD\84\86\98]8`9\FF\ED\14;(\B1\C82\11<c1\E5@{\DF\10\13$\15\E5K\92\A1>\D0\A8&z\E2\F9u\A3\85t\1A\B9\CE\F8 1b=U\B1\E4q"], align 16
@aes_test_cfb128_pt = internal constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"  AES-OFB-%3u (%s): \00", align 1
@aes_test_ofb_iv = internal unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@aes_test_ofb_ct = internal constant [3 x [64 x i8]] [[64 x i8] c";?\D9.\B7-\AD 34I\F8\E8<\FBJw\89P\8D\16\91\8F\03\F5<R\DA\C5N\D8%\97@\05\1E\9C_\EC\F6CD\F7\A8\22`\ED\CC0Le(\F6Y\C7xf\A5\10\D9\C1\D6\AE^", [64 x i8] c"\CD\C8\0Do\DD\F1\8C\AB4\C2Y\09\C9\9AAt\FC\C2\8B\8DLc\83|\09\E8\17\00\C1\10\04\01\8D\9A\9A\EA\C0\F6YoU\9CmM\AFY\A5\F2m\9F \08W\CAl>\9C\ACRK\D9\AC\C9*", [64 x i8] c"\DC~\84\BF\DAy\16K~\CD\84\86\98]8`O\EB\DCg@\D2\0B:\C8\8Fj\D8*O\B0\8Dq\ABG\A0\86\E8n\ED\F3\9D\1C[\BA\97\C4\08\01&\14\1Dg\F3{\E8S\8FZ\8B\E7@\E4\84"], align 16
@aes_test_ofb_pt = internal constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 16
@.str.18 = private unnamed_addr constant [21 x i8] c"  AES-CTR-128 (%s): \00", align 1
@aes_test_ctr_nonce_counter = internal unnamed_addr constant [3 x [16 x i8]] [[16 x i8] c"\00\00\000\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8] c"\00l\B6\DB\C0T;Y\DAH\D9\0B\00\00\00\01", [16 x i8] c"\00\E0\01{'w\7F?J\17\86\F0\00\00\00\01"], align 16
@aes_test_ctr_key = internal unnamed_addr constant [3 x [16 x i8]] [[16 x i8] c"\AEhR\F8\12\10g\CCK\F7\A5vUw\F3\9E", [16 x i8] c"~$\06x\17\FA\E0\D7C\D6\CE\1F2S\91c", [16 x i8] c"v\91\BE\03^P \A8\ACna\85)\F9\A0\DC"], align 16
@aes_test_ctr_len = internal unnamed_addr constant [3 x i32] [i32 16, i32 32, i32 36], align 4
@RSb = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@FT0 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@FT1 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@FT2 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@FT3 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@aes_test_ofb_key = internal unnamed_addr constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\8Es\B0\F7\DA\0EdR\C8\10\F3+\80\90y\E5b\F8\EA\D2R,k{", [8 x i8] zeroinitializer }>, [32 x i8] c"`=\EB\10\15\CAq\BE+s\AE\F0\85}w\81\1F5,\07;a\08\D7-\98\10\A3\09\14\DF\F4" }>, align 16
@aes_test_ctr_ct = internal constant <{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"\E4\09]O\B7\A7\B3y-au\A3&\13\11\B8", [32 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"Q\04\A1\06\16\8Ar\D9y\0DA\EE\8E\DA\D3\88\EB.\1E\FCF\DAW\C8\FC\E60\DF\91A\BE(", [16 x i8] zeroinitializer }>, <{ [36 x i8], [12 x i8] }> <{ [36 x i8] c"\C1\CFH\A8\9F/\FD\D9\CFFR\E9\EF\DBr\D7E@\A4+\DEmx6\D5\9A\\\EA\AE\F3\10S%\B2\07/", [12 x i8] zeroinitializer }> }>, align 16
@aes_test_ctr_pt = internal constant <{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"Single block msg", [32 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", [16 x i8] zeroinitializer }>, <{ [36 x i8], [12 x i8] }> <{ [36 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#", [12 x i8] zeroinitializer }> }>, align 16
@str.1 = private unnamed_addr constant [37 x i8] c"  AES note: built-in implementation.\00", align 1
@str.2 = private unnamed_addr constant [58 x i8] c"  AES note: AESNI code present (assembly implementation).\00", align 1
@str.3 = private unnamed_addr constant [25 x i8] c"  AES note: using AESNI.\00", align 1
@str.11 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@str.12 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@str.13 = private unnamed_addr constant [8 x i8] c"skipped\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_aes_init(ptr nofree noundef writeonly captures(none) initializes((0, 288)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, i8 0, i64 288, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_aes_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 288) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @mbedtls_aes_get_implementation() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #9
  %.not = icmp eq i32 %i.a, 0
  %. = select i1 %.not, i32 0, i32 2
  ret i32 %.
}

declare i32 @mbedtls_aesni_has_support(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_setkey_enc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca [256 x i8], align 16              ; 9 uses
  %i.d = alloca [256 x i8], align 16              ; 10 uses
  switch i32 %2, label %.loopexit [
    i32 128, label %bb.d
    i32 192, label %bb.b
    i32 256, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ 14, %bb.c ], [ 12, %bb.b ], [ 10, %bb.a ]
  store i32 %.sink, ptr %0, align 8, !tbaa !13
  %.b = load i1, ptr @aes_init_done, align 4
  br i1 %.b, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.1, %bb.f ] ; 4 uses
  %.093.i = phi i8 [ 1, %bb.e ], [ %i.t, %bb.f ]  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %.093.i, ptr %i.e, align 2, !tbaa !14
  %i.f = trunc i64 %indvars.iv.i to i8
  %i.g = zext i8 %.093.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !14
  %i.i = shl i8 %.093.i, 1
  %.not82.inv.i = icmp slt i8 %.093.i, 0
  %i.j = select i1 %.not82.inv.i, i8 27, i8 0
  %i.k = xor i8 %i.i, %i.j
  %i.l = xor i8 %i.k, %.093.i                     ; 5 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !14
  %i.n = trunc i64 %indvars.iv.next.i to i8
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  store i8 %i.n, ptr %i.p, align 1, !tbaa !14
  %i.q = shl i8 %i.l, 1
  %.not82.inv.i.1 = icmp slt i8 %i.l, 0
  %i.r = select i1 %.not82.inv.i.1, i8 27, i8 0
  %i.s = xor i8 %i.q, %i.r
  %i.t = xor i8 %i.s, %i.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader91.preheader.i, label %bb.f, !llvm.loop !22

.preheader91.preheader.i:                         ; preds = %bb.f
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, ptr @round_constants, align 16, !tbaa !16
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 16), align 16, !tbaa !16
  store i32 27, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 32), align 16, !tbaa !16
  store i32 54, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 36), align 4, !tbaa !16
  store i8 99, ptr @FSb, align 16, !tbaa !14
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RSb, i64 99), align 1, !tbaa !14
  br label %bb.g

.preheader.i:                                     ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %3 = load i8, ptr %i.v, align 1
  %4 = zext i8 %3 to i16
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.w = load i8, ptr %i.u, align 2
  %i.x = load i8, ptr %5, align 1
  %6 = zext i8 %i.w to i16
  %i.y = zext i8 %i.x to i16
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %8 = load i8, ptr %7, align 1
  %i.z = zext i8 %8 to i16
  %i.aa = insertelement <4 x i16> poison, i16 %6, i64 0
  %i.ab = insertelement <4 x i16> %i.aa, i16 %4, i64 1
  %i.ac = insertelement <4 x i16> %i.ab, i16 %i.y, i64 2
  %i.ad = insertelement <4 x i16> %i.ac, i16 %i.z, i64 3
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.preheader91.preheader.i
  %indvars.iv102.i = phi i64 [ 1, %.preheader91.preheader.i ], [ %indvars.iv.next103.i, %bb.g ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv102.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = xor i8 %i.af, -1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14  ; 9 uses
  %i.ak = tail call i8 @llvm.fshl.i8(i8 %i.aj, i8 %i.aj, i8 1)
  %i.al = tail call i8 @llvm.fshl.i8(i8 %i.aj, i8 %i.aj, i8 2)
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.aj, i8 %i.aj, i8 3)
  %i.an = tail call i8 @llvm.fshl.i8(i8 %i.aj, i8 %i.aj, i8 4)
  %i.ao = xor i8 %i.ak, %i.al
  %i.ap = xor i8 %i.ao, %i.am
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = xor i8 %i.aq, %i.aj
  %i.as = xor i8 %i.ar, 99                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr @FSb, i64 %indvars.iv102.i
  store i8 %i.as, ptr %i.at, align 1, !tbaa !14
  %i.au = trunc i64 %indvars.iv102.i to i8
  %i.av = zext i8 %i.as to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.av
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !14
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 256
  br i1 %exitcond105.not.i, label %.preheader.i, label %bb.g, !llvm.loop !23

bb.h:                                             ; preds = %.thread84.i, %.preheader.i
  %indvars.iv106.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next107.i, %.thread84.i ] ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @FSb, i64 %indvars.iv106.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14  ; 4 uses
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = shl i8 %i.ay, 1
  %.not.inv.i = icmp slt i8 %i.ay, 0
  %i.bb = select i1 %.not.inv.i, i8 27, i8 0
  %i.bc = xor i8 %i.bb, %i.ba                     ; 2 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = xor i8 %i.bc, %i.ay
  %i.bf = shl nuw nsw i32 %i.az, 8
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = shl nuw nsw i32 %i.az, 16
  %i.bi = or disjoint i32 %i.bg, %i.bh            ; 2 uses
  %i.bj = zext i8 %i.be to i32                    ; 2 uses
  %i.bk = shl nuw i32 %i.bj, 24
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @FT0, i64 %indvars.iv106.i
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !16
  %i.bn = shl nuw i32 %i.bi, 8
  %i.bo = or disjoint i32 %i.bn, %i.bj            ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @FT1, i64 %indvars.iv106.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !16
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 8)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @FT2, i64 %indvars.iv106.i
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !16
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 16)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @FT3, i64 %indvars.iv106.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr @RSb, i64 %indvars.iv106.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14  ; 2 uses
  %.not.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i, label %.thread84.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = zext i8 %i.by to i16
  %i.ca = insertelement <4 x i16> poison, i16 %i.bz, i64 0
  %i.cb = shufflevector <4 x i16> %i.ca, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cc = add nuw nsw <4 x i16> %i.cb, %i.ad
  %i.cd = urem <4 x i16> %i.cc, splat (i16 255)   ; 4 uses
  %i.ce = extractelement <4 x i16> %i.cd, i64 0
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = zext i8 %i.ch to i32
  %i.cj = extractelement <4 x i16> %i.cd, i64 1
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 8
  %i.cp = or disjoint i32 %i.co, %i.ci
  %i.cq = extractelement <4 x i16> %i.cd, i64 2
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !14
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 16
  %i.cw = or disjoint i32 %i.cp, %i.cv
  %i.cx = extractelement <4 x i16> %i.cd, i64 3
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 24
  %i.dd = or disjoint i32 %i.cw, %i.dc
  br label %.thread84.i

.thread84.i:                                      ; preds = %bb.i, %bb.h
  %i.de = phi i32 [ %i.dd, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @RT0, i64 %indvars.iv106.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !16
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 8)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @RT1, i64 %indvars.iv106.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !16
  %i.di = tail call i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 16)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @RT2, i64 %indvars.iv106.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !16
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 24)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @RT3, i64 %indvars.iv106.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !16
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 256
  br i1 %exitcond109.not.i, label %aes_gen_tables.exit, label %bb.h, !llvm.loop !24

aes_gen_tables.exit:                              ; preds = %.thread84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  store i1 true, ptr @aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %aes_gen_tables.exit, %bb.d
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dn, align 8, !tbaa !17
  %i.do = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #9
  %.not = icmp eq i32 %i.do, 0
  br i1 %.not, label %.preheader106, label %bb.k

.preheader106:                                    ; preds = %bb.j
  %i.dp = lshr i32 %2, 5                          ; 2 uses
  %.not114 = icmp eq i32 %i.dp, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader106
  %wide.trip.count = zext nneg i32 %i.dp to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dq = sub i64 %i.b, %i.a
  %i.dr = add i64 %i.dq, 15
  %diff.check = icmp ult i64 %i.dr, 31
  br i1 %diff.check, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = shl nuw nsw i64 %index, 2
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load = load <4 x i32>, ptr %i.dt, align 1
  %wide.load131 = load <4 x i32>, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x i32> %wide.load, ptr %i.dv, align 4, !tbaa !16
  store <4 x i32> %wide.load131, ptr %i.dw, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader132

.lr.ph.preheader132:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader132, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader132 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader132 ]
  %i.dy = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %i.dy
  %.0.copyload.i.prol = load i32, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.prol
  store i32 %.0.copyload.i.prol, ptr %i.ea, align 4, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !26

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader132
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader132 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.eb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.ed = zext i32 %2 to i64
  %i.ee = tail call i32 @mbedtls_aesni_setkey_enc(ptr noundef nonnull %i.dm, ptr noundef %1, i64 noundef %i.ed) #9
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader106
  %i.ef = load i32, ptr %0, align 8, !tbaa !13
  switch i32 %i.ef, label %.loopexit [
    i32 10, label %.preheader.preheader
    i32 12, label %.preheader102.preheader
    i32 14, label %.preheader104.preheader
  ]

.preheader104.preheader:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %i.dm, align 8, !tbaa !16
  br label %.preheader104

.preheader102.preheader:                          ; preds = %._crit_edge
  %i.eg = load i32, ptr %i.dm, align 8, !tbaa !16
  %i.eh = load i32, ptr @round_constants, align 16, !tbaa !16
  %i.ei = xor i32 %i.eh, %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !16 ; 6 uses
  %i.el = lshr i32 %i.ek, 8
  %i.em = and i32 %i.el, 255
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !14
  %i.eq = zext i8 %i.ep to i32
  %i.er = xor i32 %i.ei, %i.eq
  %i.es = lshr i32 %i.ek, 16
  %i.et = and i32 %i.es, 255
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 8
  %i.ez = xor i32 %i.er, %i.ey
  %i.fa = lshr i32 %i.ek, 24
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !14
  %i.fe = zext i8 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 16
  %i.fg = xor i32 %i.ez, %i.ff
  %i.fh = and i32 %i.ek, 255
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !14
  %i.fl = zext i8 %i.fk to i32
  %i.fm = shl nuw i32 %i.fl, 24
  %i.fn = xor i32 %i.fg, %i.fm                    ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !16 ; 2 uses
  %i.fr = xor i32 %i.fn, %i.fq                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !16
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !16
  %i.fv = xor i32 %i.fu, %i.fr                    ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !16
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !16 ; 3 uses
  %i.fz = xor i32 %i.fy, %i.fv                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !16
  %i.gd = xor i32 %i.gc, %i.fz                    ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !16
  %i.gf = xor i32 %i.gd, %i.ek                    ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !16
  %i.gh = load i32, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 4), align 4, !tbaa !16
  %i.gi = lshr i32 %i.gf, 8
  %i.gj = and i32 %i.gi, 255
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !14
  %i.gn = zext i8 %i.gm to i32
  %i.go = xor i32 %i.gh, %i.gn
  %i.gp = lshr i32 %i.gf, 16
  %i.gq = and i32 %i.gp, 255
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !14
  %i.gu = zext i8 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 8
  %i.gw = xor i32 %i.go, %i.gv
  %i.gx = lshr i32 %i.gf, 24
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !14
end_hunk_0
