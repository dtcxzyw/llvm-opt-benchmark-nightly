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
  store i32 %.sink, ptr %0, align 8, !tbaa !8
  %.b = load i1, ptr @aes_init_done, align 4
  br i1 %.b, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.1, %bb.f ] ; 4 uses
  %.07992.i = phi i8 [ 1, %bb.e ], [ %i.t, %bb.f ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %.07992.i, ptr %i.e, align 2, !tbaa !11
  %i.f = trunc i64 %indvars.iv.i to i8
  %i.g = zext i8 %.07992.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !11
  %i.i = shl i8 %.07992.i, 1
  %.not82.inv.i = icmp slt i8 %.07992.i, 0
  %i.j = select i1 %.not82.inv.i, i8 27, i8 0
  %i.k = xor i8 %i.i, %i.j
  %i.l = xor i8 %i.k, %.07992.i                   ; 5 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !11
  %i.n = trunc i64 %indvars.iv.next.i to i8
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  store i8 %i.n, ptr %i.p, align 1, !tbaa !11
  %i.q = shl i8 %i.l, 1
  %.not82.inv.i.1 = icmp slt i8 %i.l, 0
  %i.r = select i1 %.not82.inv.i.1, i8 27, i8 0
  %i.s = xor i8 %i.q, %i.r
  %i.t = xor i8 %i.s, %i.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader91.preheader.i, label %bb.f, !llvm.loop !12

.preheader91.preheader.i:                         ; preds = %bb.f
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, ptr @round_constants, align 16, !tbaa !14
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 16), align 16, !tbaa !14
  store i32 27, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 32), align 16, !tbaa !14
  store i32 54, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 36), align 4, !tbaa !14
  store i8 99, ptr @FSb, align 16, !tbaa !11
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RSb, i64 99), align 1, !tbaa !11
  br label %bb.g

.preheader.i:                                     ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %6 = load i8, ptr %i.u, align 2
  %i.w = load i8, ptr %i.v, align 1
  %7 = zext i8 %6 to i16
  %8 = zext i8 %i.w to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i16
  %9 = insertelement <4 x i16> poison, i16 %7, i64 0
  %10 = insertelement <4 x i16> %9, i16 %5, i64 1
  %11 = insertelement <4 x i16> %10, i16 %8, i64 2
  %12 = insertelement <4 x i16> %11, i16 %i.z, i64 3
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.preheader91.preheader.i
  %indvars.iv102.i = phi i64 [ 1, %.preheader91.preheader.i ], [ %indvars.iv.next103.i, %bb.g ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv102.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = xor i8 %i.ab, -1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11  ; 9 uses
  %i.ag = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 1)
  %i.ah = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 2)
  %i.ai = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 3)
  %i.aj = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 4)
  %i.ak = xor i8 %i.ag, %i.ah
  %i.al = xor i8 %i.ak, %i.ai
  %i.am = xor i8 %i.al, %i.aj
  %i.an = xor i8 %i.am, %i.af
  %i.ao = xor i8 %i.an, 99                        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr @FSb, i64 %indvars.iv102.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !11
  %i.aq = trunc i64 %indvars.iv102.i to i8
  %i.ar = zext i8 %i.ao to i64
  %i.as = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.ar
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !11
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 256
  br i1 %exitcond105.not.i, label %.preheader.i, label %bb.g, !llvm.loop !15

bb.h:                                             ; preds = %.thread84.i, %.preheader.i
  %indvars.iv106.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next107.i, %.thread84.i ] ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr @FSb, i64 %indvars.iv106.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11  ; 4 uses
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = shl i8 %i.au, 1
  %.not.inv.i = icmp slt i8 %i.au, 0
  %i.ax = select i1 %.not.inv.i, i8 27, i8 0
  %i.ay = xor i8 %i.ax, %i.aw                     ; 2 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = xor i8 %i.ay, %i.au
  %i.bb = shl nuw nsw i32 %i.av, 8
  %i.bc = or disjoint i32 %i.bb, %i.az
  %i.bd = shl nuw nsw i32 %i.av, 16
  %i.be = or disjoint i32 %i.bc, %i.bd            ; 2 uses
  %i.bf = zext i8 %i.ba to i32                    ; 2 uses
  %i.bg = shl nuw i32 %i.bf, 24
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @FT0, i64 %indvars.iv106.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !14
  %i.bj = shl nuw i32 %i.be, 8
  %i.bk = or disjoint i32 %i.bj, %i.bf            ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @FT1, i64 %indvars.iv106.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !14
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 8)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @FT2, i64 %indvars.iv106.i
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !14
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 16)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @FT3, i64 %indvars.iv106.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr @RSb, i64 %indvars.iv106.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11  ; 2 uses
  %.not.i = icmp eq i8 %i.br, 0
  br i1 %.not.i, label %.thread84.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = zext i8 %i.bu to i16
  %13 = insertelement <4 x i16> poison, i16 %i.bv, i64 0
  %14 = shufflevector <4 x i16> %13, <4 x i16> poison, <4 x i32> zeroinitializer
  %15 = add nuw nsw <4 x i16> %14, %12
  %16 = urem <4 x i16> %15, splat (i16 255)
  %17 = trunc nuw <4 x i16> %16 to <4 x i8>       ; 4 uses
  %18 = extractelement <4 x i8> %17, i64 0
  %i.bw = zext i8 %18 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.bz = zext i8 %i.by to i32
  %19 = extractelement <4 x i8> %17, i64 1
  %i.ca = zext i8 %19 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = or disjoint i32 %i.ce, %i.bz
  %20 = extractelement <4 x i8> %17, i64 2
  %i.cg = zext i8 %20 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !11
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = or disjoint i32 %i.cf, %i.ck
  %21 = extractelement <4 x i8> %17, i64 3
  %i.cm = zext i8 %21 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 24
  %i.cr = or disjoint i32 %i.cl, %i.cq
  br label %.thread84.i

.thread84.i:                                      ; preds = %bb.i, %bb.h
  %i.cs = phi i32 [ %i.cr, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @RT0, i64 %indvars.iv106.i
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !14
  %i.cu = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 8)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @RT1, i64 %indvars.iv106.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !14
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 16)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @RT2, i64 %indvars.iv106.i
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !14
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 24)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @RT3, i64 %indvars.iv106.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !14
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 256
  br i1 %exitcond109.not.i, label %aes_gen_tables.exit, label %bb.h, !llvm.loop !16

aes_gen_tables.exit:                              ; preds = %.thread84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  store i1 true, ptr @aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %aes_gen_tables.exit, %bb.d
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.db, align 8, !tbaa !17
  %i.dc = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #9
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %.preheader106, label %bb.k

.preheader106:                                    ; preds = %bb.j
  %i.dd = lshr i32 %2, 5                          ; 2 uses
  %.not114 = icmp eq i32 %i.dd, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader106
  %wide.trip.count = zext nneg i32 %i.dd to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.de = sub i64 %i.b, %i.a
  %i.df = add i64 %i.de, 15
  %diff.check = icmp ult i64 %i.df, 31
  br i1 %diff.check, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = shl nuw nsw i64 %index, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load = load <4 x i32>, ptr %i.dh, align 1
  %wide.load131 = load <4 x i32>, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x i32> %wide.load, ptr %i.dj, align 4, !tbaa !14
  store <4 x i32> %wide.load131, ptr %i.dk, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !18

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
  %i.dm = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %i.dm
  %.0.copyload.i.prol = load i32, ptr %i.dn, align 1
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.prol
  store i32 %.0.copyload.i.prol, ptr %i.do, align 4, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader132
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader132 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dp = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.dr = zext i32 %2 to i64
  %i.ds = tail call i32 @mbedtls_aesni_setkey_enc(ptr noundef nonnull %i.da, ptr noundef %1, i64 noundef %i.dr) #9
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader106
  %i.dt = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.dt, label %.loopexit [
    i32 10, label %.preheader.preheader
    i32 12, label %.preheader102.preheader
    i32 14, label %.preheader104.preheader
  ]

.preheader104.preheader:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %i.da, align 8, !tbaa !14
  br label %.preheader104

.preheader102.preheader:                          ; preds = %._crit_edge
  %i.du = load i32, ptr %i.da, align 8, !tbaa !14
  %i.dv = load i32, ptr @round_constants, align 16, !tbaa !14
  %i.dw = xor i32 %i.dv, %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !14 ; 6 uses
  %i.dz = lshr i32 %i.dy, 8
  %i.ea = and i32 %i.dz, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !11
  %i.ee = zext i8 %i.ed to i32
  %i.ef = xor i32 %i.dw, %i.ee
  %i.eg = lshr i32 %i.dy, 16
  %i.eh = and i32 %i.eg, 255
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !11
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = xor i32 %i.ef, %i.em
  %i.eo = lshr i32 %i.dy, 24
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 16
  %i.eu = xor i32 %i.en, %i.et
  %i.ev = and i32 %i.dy, 255
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw i32 %i.ez, 24
  %i.fb = xor i32 %i.eu, %i.fa                    ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !14
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !14 ; 2 uses
  %i.ff = xor i32 %i.fb, %i.fe                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !14
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !14
  %i.fj = xor i32 %i.fi, %i.ff                    ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.fj, ptr %i.fk, align 8, !tbaa !14
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !14 ; 3 uses
  %i.fn = xor i32 %i.fm, %i.fj                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !14
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !14
  %i.fr = xor i32 %i.fq, %i.fn                    ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.fr, ptr %i.fs, align 8, !tbaa !14
  %i.ft = xor i32 %i.fr, %i.dy                    ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !14
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 4), align 4, !tbaa !14
  %i.fw = lshr i32 %i.ft, 8
  %i.fx = and i32 %i.fw, 255
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !11
  %i.gb = zext i8 %i.ga to i32
  %i.gc = xor i32 %i.fv, %i.gb
  %i.gd = lshr i32 %i.ft, 16
  %i.ge = and i32 %i.gd, 255
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !11
  %i.gi = zext i8 %i.gh to i32
  %i.gj = shl nuw nsw i32 %i.gi, 8
  %i.gk = xor i32 %i.gc, %i.gj
  %i.gl = lshr i32 %i.ft, 24
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !11
  %i.gp = zext i8 %i.go to i32
end_hunk_0
begin_hunk_1_@mbedtls_aes_crypt_cfb128:bb.a
  %.2 = phi i64 [ %i.n, %bb.e ], [ %i.a, %.preheader ], [ %i.a, %.preheader52 ], [ %i.y, %bb.g ]
  store i64 %.2, ptr %3, align 8, !tbaa !30
  br label %.loopexit51

.loopexit51:                                      ; preds = %bb.f, %bb.d, %.loopexit, %bb.b, %bb.a
  %.038 = phi i32 [ -135, %bb.b ], [ -135, %bb.a ], [ %i.f, %bb.d ], [ 0, %.loopexit ], [ %i.q, %bb.f ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_crypt_cfb8(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not24 = icmp eq i64 %2, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.a = add i64 %2, -1                           ; 2 uses
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 2 uses
  %trunc = trunc nuw i32 %1 to i1
  br i1 %trunc, label %.lr.ph.split.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.b
  %i.b = phi i64 [ %i.i, %bb.b ], [ %i.a, %.lr.ph ] ; 2 uses
  %.01926.us = phi ptr [ %i.h, %bb.b ], [ %5, %.lr.ph ] ; 2 uses
  %.02025.us = phi ptr [ %i.f, %bb.b ], [ %4, %.lr.ph ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  %i.c = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %3) ; 2 uses
  %.not23.us = icmp eq i32 %i.c, 0
  br i1 %.not23.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.d = load i8, ptr %.02025.us, align 1, !tbaa !11 ; 2 uses
  %i.e = load i8, ptr %3, align 1, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %.02025.us, i64 1
  %i.g = xor i8 %i.d, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.01926.us, i64 1
  store i8 %i.g, ptr %.01926.us, align 1, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.d, ptr %.sroa.4.1..sroa_idx, align 1
  %i.i = add i64 %i.b, -1
  %.not.us = icmp eq i64 %i.b, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !33

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %i.q, %bb.c ], [ %i.a, %.lr.ph ] ; 2 uses
  %.01926.us32 = phi ptr [ %i.p, %bb.c ], [ %5, %.lr.ph ] ; 2 uses
  %.02025.us33 = phi ptr [ %i.m, %bb.c ], [ %4, %.lr.ph ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  %i.k = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %3) ; 2 uses
  %.not23.us34 = icmp eq i32 %i.k, 0
  br i1 %.not23.us34, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.split.split.us
  %i.l = load i8, ptr %3, align 1, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %.02025.us33, i64 1
  %i.n = load i8, ptr %.02025.us33, align 1, !tbaa !11
  %i.o = xor i8 %i.n, %i.l                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01926.us32, i64 1
  store i8 %i.o, ptr %.01926.us32, align 1, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.o, ptr %.sroa.4.1..sroa_idx, align 1
  %i.q = add i64 %i.j, -1
  %.not.us35 = icmp eq i64 %i.j, 0
  br i1 %.not.us35, label %.loopexit, label %.lr.ph.split.split.us, !llvm.loop !33

.loopexit:                                        ; preds = %bb.b, %.lr.ph.split.us.split, %bb.c, %.lr.ph.split.split.us, %.preheader, %bb.a
  %.0 = phi i32 [ -135, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ %i.k, %.lr.ph.split.split.us ], [ %i.c, %.lr.ph.split.us.split ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_crypt_ofb(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !30     ; 3 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not26 = icmp eq i64 %1, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.in = phi i64 [ %i.c, %bb.c ], [ %1, %.preheader ]
  %.029 = phi i64 [ %i.m, %bb.c ], [ %i.a, %.preheader ] ; 3 uses
  %.01728 = phi ptr [ %i.k, %bb.c ], [ %5, %.preheader ] ; 2 uses
  %.01827 = phi ptr [ %i.f, %bb.c ], [ %4, %.preheader ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = icmp eq i64 %.029, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %3) ; 2 uses
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.01827, i64 1
  %i.g = load i8, ptr %.01827, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = xor i8 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %.01728, i64 1
  store i8 %i.j, ptr %.01728, align 1, !tbaa !11
  %i.l = add nuw nsw i64 %.029, 1
  %i.m = and i64 %i.l, 15                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.0.lcssa = phi i64 [ %i.a, %.preheader ], [ %i.m, %bb.c ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge, %bb.a
  %.019 = phi i32 [ -135, %bb.a ], [ 0, %._crit_edge ], [ %i.e, %bb.b ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_crypt_ctr(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !30     ; 3 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.loopexit, label %.preheader57

.preheader57:                                     ; preds = %bb.a
  %.not66 = icmp eq i64 %1, 0
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %.preheader57
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.i, -32
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge
  %.03263 = phi i64 [ %i.cj, %._crit_edge ], [ 0, %.lr.ph64.preheader ] ; 5 uses
  %.03662 = phi i64 [ 0, %._crit_edge ], [ %i.d, %.lr.ph64.preheader ] ; 4 uses
  %i.j = icmp eq i64 %.03662, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph64
  %i.k = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.preheader56, label %.loopexit

.preheader56:                                     ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %i.f, align 1
  %i.l = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %i.n, ptr %i.f, align 1
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %.preheader56.1, label %mbedtls_ctr_increment_counter.exit

.preheader56.1:                                   ; preds = %.preheader56
  %.0.copyload.i.i.1 = load i32, ptr %i.g, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1)
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.r, ptr %i.g, align 1
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %.preheader56.2, label %mbedtls_ctr_increment_counter.exit

.preheader56.2:                                   ; preds = %.preheader56.1
  %.0.copyload.i.i.2 = load i32, ptr %i.h, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2)
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  store i32 %i.v, ptr %i.h, align 1
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %.preheader56.3, label %mbedtls_ctr_increment_counter.exit

.preheader56.3:                                   ; preds = %.preheader56.2
  %.0.copyload.i.i.3 = load i32, ptr %3, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.3)
  %i.y = add i32 %i.x, 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  store i32 %i.z, ptr %3, align 1
  br label %mbedtls_ctr_increment_counter.exit

bb.c:                                             ; preds = %.lr.ph64
  %i.aa = sub nuw nsw i64 16, %.03662
  br label %mbedtls_ctr_increment_counter.exit

mbedtls_ctr_increment_counter.exit:               ; preds = %.preheader56, %.preheader56.1, %.preheader56.2, %.preheader56.3, %bb.c
  %.0 = phi i64 [ %i.aa, %bb.c ], [ 16, %.preheader56.3 ], [ 16, %.preheader56.2 ], [ 16, %.preheader56.1 ], [ 16, %.preheader56 ]
  %i.ab = sub i64 %1, %.03263
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.ab) ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 %.03263 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 %.03263 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %.03662 ; 8 uses
  %.not.i58 = icmp samesign ult i64 %spec.select, 8
  br i1 %.not.i58, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.1, %mbedtls_ctr_increment_counter.exit
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_ctr_increment_counter.exit ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 6 uses
  %i.af = icmp samesign ult i64 %.0.i.lcssa, %spec.select
  br i1 %i.af, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ag = sub nuw nsw i64 %spec.select, %.0.i.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph61.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = add i64 %.03263, %i.c
  %i.ai = add i64 %.03662, %i.a
  %i.aj = sub i64 %i.ai, %i.ah
  %diff.check74 = icmp ugt i64 %i.aj, -32
  %conflict.rdx = or i1 %diff.check, %diff.check74
  br i1 %conflict.rdx, label %.lr.ph61.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.ak = and i64 %spec.select, 7                 ; 2 uses
  %n.vec79 = sub nsw i64 %i.ag, %i.ak             ; 2 uses
  %i.al = add i64 %.0.i.lcssa, %n.vec79
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 2 uses
  %i.am = add nuw i64 %.0.i.lcssa, %index80       ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %wide.load81 = load <8 x i8>, ptr %i.an, align 1, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.am
  %wide.load82 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !11
  %i.ap = xor <8 x i8> %wide.load82, %wide.load81
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  store <8 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !11
  %index.next83 = add nuw i64 %index80, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %i.ak, 0
  br i1 %cmp.n84, label %._crit_edge, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i60.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck ], [ %.0.i.lcssa, %iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 4 uses
  %i.as = sub i64 %spec.select, %.1.i60.ph
  %xtraiter = and i64 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader, %.lr.ph61.prol
  %.1.i60.prol = phi i64 [ %i.az, %.lr.ph61.prol ], [ %.1.i60.ph, %.lr.ph61.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph61.prol ], [ 0, %.lr.ph61.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i60.prol
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i60.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = xor i8 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i60.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !11
  %i.az = add nuw nsw i64 %.1.i60.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol, !llvm.loop !36

.lr.ph61.prol.loopexit:                           ; preds = %.lr.ph61.prol, %.lr.ph61.preheader
  %.1.i60.unr = phi i64 [ %.1.i60.ph, %.lr.ph61.preheader ], [ %i.az, %.lr.ph61.prol ]
  %i.ba = sub i64 %.1.i60.ph, %spec.select
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %mbedtls_ctr_increment_counter.exit
  %.0.copyload.i47 = load i64, ptr %i.ad, align 1
  %.0.copyload.i = load i64, ptr %i.ae, align 1
  %i.bc = xor i64 %.0.copyload.i, %.0.copyload.i47
  store i64 %i.bc, ptr %i.ac, align 1
  %.not.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i47.1 = load i64, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.be, align 1
  %i.bf = xor i64 %.0.copyload.i.1, %.0.copyload.i47.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.bf, ptr %i.bg, align 1
  br label %.preheader

.lr.ph61:                                         ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61
  %.1.i60 = phi i64 [ %i.ci, %.lr.ph61 ], [ %.1.i60.unr, %.lr.ph61.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i60
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i60
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = xor i8 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i60
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !11
  %i.bn = add nuw nsw i64 %.1.i60, 1              ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !11
  %i.bu = add nuw nsw i64 %.1.i60, 2              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bu
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.bz = xor i8 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !11
  %i.cb = add nuw nsw i64 %.1.i60, 3              ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cb
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = xor i8 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !11
  %i.ci = add nuw nsw i64 %.1.i60, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ci, %spec.select
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph61, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61, %vec.epilog.middle.block, %.preheader
  %i.cj = add i64 %spec.select, %.03263           ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %1
  br i1 %i.ck, label %.lr.ph64, label %._crit_edge65.loopexit, !llvm.loop !38

._crit_edge65.loopexit:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !30
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %._crit_edge65.loopexit, %.preheader57
  %i.cl = phi i64 [ %.pre, %._crit_edge65.loopexit ], [ %i.d, %.preheader57 ]
  %i.cm = add i64 %i.cl, %1
  %i.cn = and i64 %i.cm, 15
  store i64 %i.cn, ptr %2, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge65, %bb.a
  %.040 = phi i32 [ -135, %bb.a ], [ 0, %._crit_edge65 ], [ %i.k, %bb.b ]
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 13 uses
  %i.c = alloca [64 x i8], align 16               ; 33 uses
  %i.d = alloca [16 x i8], align 16               ; 18 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 3 uses
  %1 = alloca %struct.mbedtls_aes_context, align 8 ; 18 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %1, i8 0, i64 288, i1 false)
  %.not218 = icmp eq i32 %0, 0                    ; 16 uses
  br i1 %.not218, label %.backedge356.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #9
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts151 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %str.3.sink = phi ptr [ @str.3, %bb.c ], [ @str.1, %bb.b ]
  %puts152 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.3.sink) ; 0 uses
  br label %.backedge356.preheader

.backedge356.preheader:                           ; preds = %.sink.split, %bb.a
  br label %.backedge356

.backedge356:                                     ; preds = %.backedge356.backedge, %.backedge356.preheader
  %.0125246 = phi i32 [ 0, %.backedge356.preheader ], [ %.0125246.be, %.backedge356.backedge ] ; 5 uses
  %i.k = lshr i32 %.0125246, 1                    ; 2 uses
  %i.l = shl nuw nsw i32 %i.k, 6
end_hunk_1
