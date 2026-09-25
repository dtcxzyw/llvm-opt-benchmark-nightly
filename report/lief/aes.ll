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
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.y = load i8, ptr %i.u, align 2
  %3 = load i8, ptr %i.w, align 1
  %i.z = load i8, ptr %i.x, align 1
  %4 = load i8, ptr %i.v, align 1
  %5 = zext i8 %i.y to i16
  %i.aa = zext i8 %4 to i16
  %6 = zext i8 %3 to i16
  %i.ab = zext i8 %i.z to i16
  %i.ac = insertelement <4 x i16> poison, i16 %i.aa, i64 0
  %i.ad = insertelement <4 x i16> %i.ac, i16 %i.ab, i64 1
  %i.ae = insertelement <4 x i16> %i.ad, i16 %6, i64 2
  %i.af = insertelement <4 x i16> %i.ae, i16 %5, i64 3
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.preheader91.preheader.i
  %indvars.iv102.i = phi i64 [ 1, %.preheader91.preheader.i ], [ %indvars.iv.next103.i, %bb.g ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv102.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = xor i8 %i.ah, -1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14  ; 9 uses
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 1)
  %i.an = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 2)
  %i.ao = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 3)
  %i.ap = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 4)
  %i.aq = xor i8 %i.am, %i.an
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = xor i8 %i.ar, %i.ap
  %i.at = xor i8 %i.as, %i.al
  %i.au = xor i8 %i.at, 99                        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr @FSb, i64 %indvars.iv102.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !14
  %i.aw = trunc i64 %indvars.iv102.i to i8
  %i.ax = zext i8 %i.au to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.ax
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !14
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 256
  br i1 %exitcond105.not.i, label %.preheader.i, label %bb.g, !llvm.loop !23

bb.h:                                             ; preds = %.thread84.i, %.preheader.i
  %indvars.iv106.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next107.i, %.thread84.i ] ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr @FSb, i64 %indvars.iv106.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 4 uses
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = shl i8 %i.ba, 1
  %.not.inv.i = icmp slt i8 %i.ba, 0
  %i.bd = select i1 %.not.inv.i, i8 27, i8 0
  %i.be = xor i8 %i.bd, %i.bc                     ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = xor i8 %i.be, %i.ba
  %i.bh = shl nuw nsw i32 %i.bb, 8
  %i.bi = or disjoint i32 %i.bh, %i.bf
  %i.bj = shl nuw nsw i32 %i.bb, 16
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bl = zext i8 %i.bg to i32                    ; 2 uses
  %i.bm = shl nuw i32 %i.bl, 24
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @FT0, i64 %indvars.iv106.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !16
  %i.bp = shl nuw i32 %i.bk, 8
  %i.bq = or disjoint i32 %i.bp, %i.bl            ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @FT1, i64 %indvars.iv106.i
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !16
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 8)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @FT2, i64 %indvars.iv106.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !16
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 16)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @FT3, i64 %indvars.iv106.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr @RSb, i64 %indvars.iv106.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14  ; 2 uses
  %.not.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i, label %.thread84.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = zext i8 %i.ca to i16
  %i.cc = insertelement <4 x i16> poison, i16 %i.cb, i64 0
  %i.cd = shufflevector <4 x i16> %i.cc, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ce = add nuw nsw <4 x i16> %i.cd, %i.af
  %i.cf = urem <4 x i16> %i.ce, splat (i16 255)   ; 4 uses
  %i.cg = extractelement <4 x i16> %i.cf, i64 3
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.ck = zext i8 %i.cj to i32
  %i.cl = extractelement <4 x i16> %i.cf, i64 0
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !14
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 8
  %i.cr = or disjoint i32 %i.cq, %i.ck
  %i.cs = extractelement <4 x i16> %i.cf, i64 2
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 16
  %i.cy = or disjoint i32 %i.cr, %i.cx
  %i.cz = extractelement <4 x i16> %i.cf, i64 1
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !14
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl nuw i32 %i.dd, 24
  %i.df = or disjoint i32 %i.cy, %i.de
  br label %.thread84.i

.thread84.i:                                      ; preds = %bb.i, %bb.h
  %i.dg = phi i32 [ %i.df, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @RT0, i64 %indvars.iv106.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !16
  %i.di = tail call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 8)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @RT1, i64 %indvars.iv106.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !16
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 16)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @RT2, i64 %indvars.iv106.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !16
  %i.dm = tail call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 24)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @RT3, i64 %indvars.iv106.i
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !16
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 256
  br i1 %exitcond109.not.i, label %aes_gen_tables.exit, label %bb.h, !llvm.loop !24

aes_gen_tables.exit:                              ; preds = %.thread84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  store i1 true, ptr @aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %aes_gen_tables.exit, %bb.d
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !17
  %i.dq = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #9
  %.not = icmp eq i32 %i.dq, 0
  br i1 %.not, label %.preheader106, label %bb.k

.preheader106:                                    ; preds = %bb.j
  %i.dr = lshr i32 %2, 5                          ; 2 uses
  %.not114 = icmp eq i32 %i.dr, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader106
  %wide.trip.count = zext nneg i32 %i.dr to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ds = sub i64 %i.b, %i.a
  %i.dt = add i64 %i.ds, 15
  %diff.check = icmp ult i64 %i.dt, 31
  br i1 %diff.check, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl nuw nsw i64 %index, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load = load <4 x i32>, ptr %i.dv, align 1
  %wide.load131 = load <4 x i32>, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x i32> %wide.load, ptr %i.dx, align 4, !tbaa !16
  store <4 x i32> %wide.load131, ptr %i.dy, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !25

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
  %i.ea = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ea
  %.0.copyload.i.prol = load i32, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.prol
  store i32 %.0.copyload.i.prol, ptr %i.ec, align 4, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !26

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader132
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader132 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ed = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.ef = zext i32 %2 to i64
  %i.eg = tail call i32 @mbedtls_aesni_setkey_enc(ptr noundef nonnull %i.do, ptr noundef %1, i64 noundef %i.ef) #9
  br label %.loopexit
end_hunk_0
