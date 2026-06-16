inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_nist_kw_context = type { %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { ptr, i32, i32, ptr, ptr, [16 x i8], i64, [16 x i8], i64, ptr, ptr }

@NIST_KW_ICV1 = internal constant [8 x i8] c"\A6\A6\A6\A6\A6\A6\A6\A6", align 1
@NIST_KW_ICV2 = internal constant [4 x i8] c"\A6YY\A6", align 1
@.str = private unnamed_addr constant [13 x i8] c"  KW-AES-%u \00", align 1
@key_len = internal unnamed_addr constant [3 x i32] [i32 16, i32 24, i32 32], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"  KW: setup failed \00", align 1
@kw_msg_len = internal unnamed_addr constant [3 x i64] [i64 16, i64 40, i64 24], align 16
@kw_out_len = internal unnamed_addr constant [3 x i64] [i64 24, i64 48, i64 32], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"failed. \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  KWP-AES-%u \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  KWP: setup failed \00", align 1
@kwp_msg_len = internal unnamed_addr constant [3 x i64] [i64 9, i64 31, i64 1], align 16
@kwp_out_len = internal unnamed_addr constant [3 x i64] [i64 24, i64 40, i64 16], align 16
@kw_key = internal constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"uu\DA:\93`|\C2\BF\D8\CE\C7\AA\DF\D9\A6", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"-\85&\08\1D\02\FB[\85\F6\9A\C2\86\EC\D5}@\DF]\F3IGD\D3", [8 x i8] zeroinitializer }>, [32 x i8] c"\11*\D4\1BHV\C7%J\98H\D3\0F\DDx3[\03\9AH\A8\96,M\1C\B7\8E\AB\D5\DA\D7\88" }>, align 16
@kw_msg = internal constant <{ <{ [16 x i8], [24 x i8] }>, [40 x i8], <{ [24 x i8], [16 x i8] }> }> <{ <{ [16 x i8], [24 x i8] }> <{ [16 x i8] c"B\13m<8J>\EA\C9Z\06o\D2\8F\ED?", [24 x i8] zeroinitializer }>, [40 x i8] c"\95\C1\1B\F55:\FE\DB\98\FD\D6\C8\CAo\DBm\A5Kt\B4\99\0F\DCE\C0\9D\15\8FQ\CEb\9D\E2\AF&\E3%\0EkL", <{ [24 x i8], [16 x i8] }> <{ [24 x i8] c"\1B \BF\19\90\B0e\D7\98\E1\B3\22d\ADP\A8tt\92\BA\09\A0M\D1", [16 x i8] zeroinitializer }> }>, align 16
@kw_res = internal constant <{ <{ [24 x i8], [24 x i8] }>, [48 x i8], <{ [32 x i8], [16 x i8] }> }> <{ <{ [24 x i8], [24 x i8] }> <{ [24 x i8] c"\03\1Fk\D7\E6\1Ed=\F6\85\94\81od\CA\A3\F5o\AB\EA%H\F5\FB", [24 x i8] zeroinitializer }>, [48 x i8] c"D<o\15\09\83q\91>\\\81L\A1\A0B\ECh/{\13m$:MlBo\C6\97\15c\E8\A1JU\8E\09d\16\19\BF\03\FC\AF\90\B1\FC-", <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\BA\8A%\9AG\1Bx}\D5\D5@\EC%\D4=\87 \0F\DA\DCm\1F\05\D9\16XO\A9\F6\CB\F5\12", [16 x i8] zeroinitializer }> }>, align 16
@kwp_key = internal constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"xe\E2\0F<!e\9A\B4i\0Bb\9C\DF<\C4", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\F5\F8\96\A3\BD/J\98#\EF\16+\00\B8\05\D7\DE\1E\A4f&\96\A2X", [8 x i8] zeroinitializer }>, [32 x i8] c"\95\DA'\00\CAo\D9\A5%T\EE*\8D\F18o[\94\A1\A6\0E\D8\A4\AE\F6\0A\8Da\AB_\22Z" }>, align 16
@kwp_msg = internal constant <{ <{ [9 x i8], [22 x i8] }>, [31 x i8], <{ i8, [30 x i8] }> }> <{ <{ [9 x i8], [22 x i8] }> <{ [9 x i8] c"\BDhC\D4 7\8D\C8\96", [22 x i8] zeroinitializer }>, [31 x i8] c"l\CD\D5\85\18@\97\EB\D5\C3\AF>G\D0,\19\14{M\99_\96Cf\91Vu\8C\13\16\8F", <{ i8, [30 x i8] }> <{ i8 -47, [30 x i8] zeroinitializer }> }>, align 16
@kwp_res = internal constant <{ <{ [23 x i8], [25 x i8] }>, <{ [40 x i8], [8 x i8] }>, <{ [16 x i8], [32 x i8] }> }> <{ <{ [23 x i8], [25 x i8] }> <{ [23 x i8] c"A\EC\A9V\D4\AA\04~\B5\CFN\FEe\96a\E7M\B6\F8\C5d\E25", [25 x i8] zeroinitializer }>, <{ [40 x i8], [8 x i8] }> <{ [40 x i8] c"N\9B\C2\BC\BCl\1E\13\D35\BC\C0\F7sj\88\FA\87Sf\15\BB\8Ec\8B\CC\81f\84h\17\90g\CF\A9\8A\9D\0E3&", [8 x i8] zeroinitializer }>, <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"\06\BAz\E6\F3$\8C\FD\CF&u\07\FA\00\1B\C4", [32 x i8] zeroinitializer }> }>, align 16
@str.1 = private unnamed_addr constant [8 x i8] c" passed\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_nist_kw_init(ptr nofree noundef writeonly captures(none) initializes((0, 96)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_nist_kw_setkey(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @mbedtls_cipher_info_from_values(i32 noundef %1, i32 noundef %3, i32 noundef 1) #9 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %.val = load i32, ptr %i.c, align 8
  %i.d = and i32 %.val, 31
  %.not = icmp eq i32 %i.d, 16
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not17 = icmp eq i32 %1, 2
  br i1 %.not17, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @mbedtls_cipher_free(ptr noundef %0) #9
  %i.e = tail call i32 @mbedtls_cipher_setup(ptr noundef %0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not19 = icmp ne i32 %4, 0
  %i.f = zext i1 %.not19 to i32
  %i.g = tail call i32 @mbedtls_cipher_setkey(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef %i.f) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.d ], [ -24832, %bb.a ], [ -24832, %bb.b ], [ -24704, %bb.c ], [ %i.g, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @mbedtls_cipher_info_from_values(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @mbedtls_cipher_free(ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_cipher_setup(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_cipher_setkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define void @mbedtls_nist_kw_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_cipher_free(ptr noundef nonnull %0) #9
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 96) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mbedtls_nist_kw_wrap(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %5, align 8, !tbaa !8
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %3, 8
  %i.f = icmp ult i64 %6, %i.e
  br i1 %i.f, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %3, -16
  %or.cond = icmp ult i64 %i.g, 144115188075855849
  %i.h = and i64 %3, 7
  %.not83 = icmp eq i64 %i.h, 0
  %or.cond89 = and i1 %or.cond, %.not83
  br i1 %or.cond89, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store i64 -6438275382588823898, ptr %4, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.j = and i64 %3, 7                            ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  %i.k = sub nuw nsw i64 8, %i.j
  %spec.select = select i1 %.not, i64 0, i64 %i.k ; 3 uses
  %i.l = add i64 %3, 8
  %i.m = add i64 %i.l, %spec.select
  %i.n = icmp ult i64 %6, %i.m
  %i.o = add i64 %3, -4294967296
  %or.cond3 = icmp ult i64 %i.o, -4294967295
  %or.cond92 = or i1 %or.cond3, %i.n
  br i1 %or.cond92, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 -1504093786, ptr %4, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = trunc nuw i64 %3 to i32
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.r, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %2, i64 %3, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %spec.select, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.171 = phi i64 [ 0, %bb.d ], [ %spec.select, %bb.f ]
  %i.u = add nuw nsw i64 %.171, %3                ; 2 uses
  %i.v = lshr i64 %i.u, 3                         ; 3 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 3 uses
  %i.x = mul nuw nsw i64 %i.v, 6
  %i.y = icmp eq i32 %1, 1
  %i.z = icmp samesign ult i64 %3, 9
  %or.cond5 = and i1 %i.y, %i.z
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  %i.aa = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not87 = icmp eq i32 %i.aa, 0
  br i1 %.not87, label %.loopexit, label %.thread

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.u, 16
  br i1 %i.ac, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.not84101 = icmp eq i64 %i.v, 0
  br i1 %.not84101, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = shl nuw nsw i64 %i.w, 3
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %i.am
  %7 = or disjoint i64 %i.x, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %7, i64 2)
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.k
  %.067103 = phi ptr [ %i.ab, %.lr.ph ], [ %spec.select90, %bb.k ] ; 3 uses
  %.069102 = phi i64 [ 1, %.lr.ph ], [ %i.by, %bb.k ] ; 9 uses
  %i.ao = load i64, ptr %4, align 1
  store i64 %i.ao, ptr %i.c, align 16
  %i.ap = load i64, ptr %.067103, align 1
  store i64 %i.ap, ptr %i.ad, align 8
  %i.aq = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not85 = icmp eq i32 %i.aq, 0
  br i1 %.not85, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.b, align 16            ; 8 uses
  %i.as = lshr i64 %.069102, 56
  %i.at = xor i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i8
  store i8 %i.au, ptr %4, align 1, !tbaa !10
  %i.av = lshr i64 %.069102, 48
  %i.aw = lshr i64 %i.ar, 8
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = trunc i64 %i.ax to i8
  store i8 %i.ay, ptr %i.ae, align 1, !tbaa !10
  %i.az = lshr i64 %.069102, 40
  %i.ba = lshr i64 %i.ar, 16
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = trunc i64 %i.bb to i8
  store i8 %i.bc, ptr %i.af, align 1, !tbaa !10
  %i.bd = lshr i64 %.069102, 32
  %i.be = lshr i64 %i.ar, 24
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = trunc i64 %i.bf to i8
  store i8 %i.bg, ptr %i.ag, align 1, !tbaa !10
  %i.bh = lshr i64 %.069102, 24
  %i.bi = lshr i64 %i.ar, 32
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = trunc i64 %i.bj to i8
  store i8 %i.bk, ptr %i.ah, align 1, !tbaa !10
  %i.bl = lshr i64 %.069102, 16
  %i.bm = lshr i64 %i.ar, 40
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = trunc i64 %i.bn to i8
  store i8 %i.bo, ptr %i.ai, align 1, !tbaa !10
  %i.bp = lshr i64 %.069102, 8
  %i.bq = lshr i64 %i.ar, 48
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = trunc i64 %i.br to i8
  store i8 %i.bs, ptr %i.aj, align 1, !tbaa !10
  %i.bt = lshr i64 %i.ar, 56
  %i.bu = xor i64 %i.bt, %.069102
  %i.bv = trunc i64 %i.bu to i8
  store i8 %i.bv, ptr %i.ak, align 1, !tbaa !10
  %i.bw = load i64, ptr %i.al, align 8
  store i64 %i.bw, ptr %.067103, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.067103, i64 8 ; 2 uses
  %.not86 = icmp ult ptr %i.bx, %i.an
  %spec.select90 = select i1 %.not86, ptr %i.bx, ptr %i.ab
  %i.by = add nuw i64 %.069102, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %umax
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !11

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.h
  %i.bz = shl i64 %i.w, 3
  store i64 %i.bz, ptr %5, align 8, !tbaa !8
  br label %bb.l

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h
  %.3.ph = phi i32 [ %i.aa, %bb.h ], [ -24832, %bb.i ], [ %i.aq, %bb.j ]
  %i.ca = shl i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %i.ca, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %.thread
  %.3100 = phi i32 [ %.3.ph, %.thread ], [ 0, %.loopexit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 16) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.l
  %.0 = phi i32 [ -24832, %bb.e ], [ -24832, %bb.b ], [ %.3100, %bb.l ], [ -24832, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

declare i32 @mbedtls_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mbedtls_nist_kw_unwrap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %5, align 8, !tbaa !8
  %i.f = add i64 %3, -8                           ; 2 uses
  %i.g = icmp ult i64 %6, %i.f
  br i1 %i.g, label %.thread81, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %.thread85 [
    i32 0, label %bb.c
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %3, -24
  %or.cond = icmp ult i64 %i.h, 144115188075855849
  %i.i = and i64 %3, 7
  %.not70 = icmp eq i64 %i.i, 0
  %or.cond74 = and i1 %or.cond, %.not70
  br i1 %or.cond74, label %bb.d, label %.thread81

bb.d:                                             ; preds = %bb.c
  %i.j = lshr exact i64 %3, 3
  %i.k = call fastcc i32 @unwrap(ptr noundef %0, ptr noundef %2, i64 noundef %i.j, ptr noundef %i.b, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %.not71 = icmp eq i32 %i.k, 0
  br i1 %.not71, label %bb.e, label %.thread85

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV1, ptr noundef nonnull %i.b, i64 noundef 8) #9 ; 2 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !4
  %.not72 = icmp eq i32 %i.l, 0
  br i1 %.not72, label %.thread90, label %.thread85

bb.f:                                             ; preds = %bb.b
  %i.m = add i64 %3, -16
  %or.cond3 = icmp ult i64 %i.m, 4294967281
  %i.n = and i64 %3, 7
  %.not = icmp eq i64 %i.n, 0
  %or.cond75 = and i1 %or.cond3, %.not
  br i1 %or.cond75, label %bb.g, label %.thread81

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i64 %3, 16
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.p = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not66 = icmp eq i32 %i.p, 0
  br i1 %.not66, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.q = load i64, ptr %i.d, align 16
  store i64 %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %4, align 1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.d, i64 noundef 16) #9
  store i64 8, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread85

bb.j:                                             ; preds = %bb.g
  %i.t = lshr exact i64 %3, 3
  %i.u = call fastcc i32 @unwrap(ptr noundef %0, ptr noundef %2, i64 noundef %i.t, ptr noundef %i.b, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %.not65 = icmp eq i32 %i.u, 0
  br i1 %.not65, label %bb.k, label %.thread85

bb.k:                                             ; preds = %.thread, %bb.j
  %i.v = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull @NIST_KW_ICV2, ptr noundef nonnull %i.b, i64 noundef 4) #9 ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !4
  %.not67 = icmp eq i32 %i.v, 0
  %spec.select76.neg = select i1 %.not67, i64 0, i64 25344
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.0.copyload.i = load i32, ptr %i.w, align 4
  %i.x = call i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = sub nsw i64 %i.f, %i.y                   ; 2 uses
  %i.aa = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 7, i64 %i.z) #9, !srcloc !13
  %i.ab = extractvalue { i64, i64, i64 } %i.aa, 1
  %i.ac = call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab, i64 25344, i64 range(i64 -2147483647, 2147483648) %spec.select76.neg) #9, !srcloc !14
  %i.ad = extractvalue { i64, i64, i64 } %i.ac, 2
  %i.ae = trunc i64 %i.ad to i32
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = and i64 %i.z, 7                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i64 0, ptr %i.e, align 8
  %i.ah = load i64, ptr %5, align 8, !tbaa !8
  %i.ai = getelementptr i8, ptr %4, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = sub nuw nsw i64 8, %i.ag
  %i.al = call i32 @mbedtls_ct_memcmp_partial(ptr noundef %i.aj, ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef %i.ak, i64 noundef 0) #9 ; 2 uses
  store i32 %i.al, ptr %i.c, align 4, !tbaa !4
  %.not68 = icmp eq i32 %i.al, 0
  %.257 = select i1 %.not68, i32 %i.af, i32 -25344 ; 2 uses
  %.not69 = icmp eq i32 %.257, 0
  br i1 %.not69, label %.thread93, label %bb.l

.thread93:                                        ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.ag, i1 false)
  store i64 %i.y, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.thread90

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.thread85

.thread85:                                        ; preds = %bb.j, %bb.i, %bb.e, %bb.b, %bb.d, %bb.l
  %.488 = phi i32 [ %.257, %bb.l ], [ %i.k, %bb.d ], [ -25344, %bb.e ], [ -24704, %bb.b ], [ %i.u, %bb.j ], [ %i.p, %bb.i ]
  %i.an = load i64, ptr %5, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.an, i1 false)
  store i64 0, ptr %5, align 8, !tbaa !8
  br label %.thread90

.thread90:                                        ; preds = %bb.e, %.thread93, %.thread85
  %.489 = phi i32 [ %.488, %.thread85 ], [ 0, %.thread93 ], [ 0, %bb.e ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 4) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 8) #9
  br label %.thread81

.thread81:                                        ; preds = %bb.f, %bb.c, %bb.a, %.thread90
  %.1 = phi i32 [ -24832, %bb.c ], [ -24832, %bb.a ], [ %.489, %.thread90 ], [ -24832, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unwrap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 2, 18014398509481985) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(address) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %5, align 8, !tbaa !8
  %i.d = icmp samesign ult i64 %2, 3
  br i1 %i.d, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  %i.f = load i64, ptr %1, align 1
  store i64 %i.f, ptr %3, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 3 uses
end_hunk_0
begin_hunk_1_@mbedtls_nist_kw_self_test:bb.a
  br label %.loopexit115

mbedtls_nist_kw_unwrap.exit:                      ; preds = %.mbedtls_nist_kw_unwrap.exit_crit_edge, %.thread85.i
  %i.ai = phi i64 [ 0, %.thread85.i ], [ %.pre131, %.mbedtls_nist_kw_unwrap.exit_crit_edge ]
  %.not78 = phi i1 [ false, %.thread85.i ], [ true, %.mbedtls_nist_kw_unwrap.exit_crit_edge ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 4) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not79 = icmp eq i64 %i.ai, %i.p
  %or.cond = select i1 %.not78, i1 %.not79, i1 false
  br i1 %or.cond, label %bb.s, label %.loopexit115

bb.s:                                             ; preds = %mbedtls_nist_kw_unwrap.exit
  %bcmp80 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.n, i64 %i.p)
  %.not81 = icmp eq i32 %bcmp80, 0
  br i1 %.not81, label %bb.u, label %.loopexit115

.loopexit115:                                     ; preds = %bb.s, %mbedtls_nist_kw_unwrap.exit, %mbedtls_nist_kw_unwrap.exit.thread
  br i1 %.not71, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.loopexit115
  %puts83 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  br i1 %.not71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %puts82 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !16

.preheader:                                       ; preds = %bb.w, %bb.aq
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %bb.aq ], [ 0, %bb.w ] ; 7 uses
  %.phi.trans.insert133 = getelementptr inbounds nuw [4 x i8], ptr @key_len, i64 %indvars.iv127
  %.pre134 = load i32, ptr %.phi.trans.insert133, align 4, !tbaa !4
  %.pre136 = shl i32 %.pre134, 3                  ; 5 uses
  br i1 %.not71, label %._crit_edge132, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.pre136) ; 0 uses
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.preheader, %bb.x
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr @kwp_key, i64 %indvars.iv127 ; 2 uses
  %i.al = call ptr @mbedtls_cipher_info_from_values(i32 noundef 2, i32 noundef %.pre136, i32 noundef 1) #9 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %mbedtls_nist_kw_setkey.exit94.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge132
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %.val.i90 = load i32, ptr %i.an, align 8
  %i.ao = and i32 %.val.i90, 31
  %.not.i91 = icmp eq i32 %i.ao, 16
  br i1 %.not.i91, label %bb.z, label %mbedtls_nist_kw_setkey.exit94.thread

bb.z:                                             ; preds = %bb.y
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  %i.ap = call i32 @mbedtls_cipher_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.al) #9 ; 2 uses
  %.not18.i93 = icmp eq i32 %i.ap, 0
  br i1 %.not18.i93, label %mbedtls_nist_kw_setkey.exit94, label %mbedtls_nist_kw_setkey.exit94.thread

mbedtls_nist_kw_setkey.exit94:                    ; preds = %bb.z
  %i.aq = call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %1, ptr noundef nonnull %i.ak, i32 noundef %.pre136, i32 noundef 1) #9 ; 2 uses
  %.not62 = icmp eq i32 %i.aq, 0
  br i1 %.not62, label %bb.ab, label %mbedtls_nist_kw_setkey.exit94.thread

mbedtls_nist_kw_setkey.exit94.thread:             ; preds = %bb.y, %._crit_edge132, %bb.z, %mbedtls_nist_kw_setkey.exit94
  %.0.i92110 = phi i32 [ %i.aq, %mbedtls_nist_kw_setkey.exit94 ], [ -24832, %bb.y ], [ -24832, %._crit_edge132 ], [ %i.ap, %bb.z ] ; 2 uses
  br i1 %.not71, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %mbedtls_nist_kw_setkey.exit94.thread
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  br label %.loopexit

bb.ab:                                            ; preds = %mbedtls_nist_kw_setkey.exit94
  %i.as = getelementptr inbounds nuw [31 x i8], ptr @kwp_msg, i64 %indvars.iv127 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @kwp_msg_len, i64 %indvars.iv127
  %i.au = load i64, ptr %i.at, align 8, !tbaa !8  ; 3 uses
  %i.av = call i32 @mbedtls_nist_kw_wrap(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.as, i64 noundef %i.au, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 48)
  %.not63 = icmp eq i32 %i.av, 0
  br i1 %.not63, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @kwp_out_len, i64 %indvars.iv127
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !8  ; 3 uses
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !8
  %.not64 = icmp eq i64 %i.ax, %i.ay
  br i1 %.not64, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.az = getelementptr inbounds nuw [48 x i8], ptr @kwp_res, i64 %indvars.iv127
  %bcmp = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.az, i64 %i.ax)
  %.not65 = icmp eq i32 %bcmp, 0
  br i1 %.not65, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not71, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ad
  %i.bb = call ptr @mbedtls_cipher_info_from_values(i32 noundef 2, i32 noundef %.pre136, i32 noundef 1) #9 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %mbedtls_nist_kw_setkey.exit99.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val.i95 = load i32, ptr %i.bd, align 8
  %i.be = and i32 %.val.i95, 31
  %.not.i96 = icmp eq i32 %i.be, 16
  br i1 %.not.i96, label %bb.ai, label %mbedtls_nist_kw_setkey.exit99.thread

bb.ai:                                            ; preds = %bb.ah
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  %i.bf = call i32 @mbedtls_cipher_setup(ptr noundef nonnull %1, ptr noundef nonnull %i.bb) #9 ; 2 uses
  %.not18.i98 = icmp eq i32 %i.bf, 0
  br i1 %.not18.i98, label %mbedtls_nist_kw_setkey.exit99, label %mbedtls_nist_kw_setkey.exit99.thread

mbedtls_nist_kw_setkey.exit99:                    ; preds = %bb.ai
  %i.bg = call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %1, ptr noundef nonnull %i.ak, i32 noundef %.pre136, i32 noundef 0) #9 ; 2 uses
  %.not66 = icmp eq i32 %i.bg, 0
  br i1 %.not66, label %bb.ak, label %mbedtls_nist_kw_setkey.exit99.thread

mbedtls_nist_kw_setkey.exit99.thread:             ; preds = %bb.ah, %bb.ag, %bb.ai, %mbedtls_nist_kw_setkey.exit99
  %.0.i97113 = phi i32 [ %i.bg, %mbedtls_nist_kw_setkey.exit99 ], [ -24832, %bb.ah ], [ -24832, %bb.ag ], [ %i.bf, %bb.ai ] ; 2 uses
  br i1 %.not71, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %mbedtls_nist_kw_setkey.exit99.thread
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  br label %.loopexit

bb.ak:                                            ; preds = %mbedtls_nist_kw_setkey.exit99
  %i.bi = call i32 @mbedtls_nist_kw_unwrap(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef %i.ax, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 48)
  %.not67 = icmp eq i32 %i.bi, 0
  %i.bj = load i64, ptr %i.d, align 8
  %.not68 = icmp eq i64 %i.bj, %i.au
  %or.cond114 = select i1 %.not67, i1 %.not68, i1 false
  br i1 %or.cond114, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %bcmp69 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.as, i64 %i.au)
  %.not70 = icmp eq i32 %bcmp69, 0
  br i1 %.not70, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.not71, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  br label %.loopexit

bb.ao:                                            ; preds = %bb.al
  br i1 %.not71, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, 3
  br i1 %exitcond130.not, label %.loopexit, label %.preheader, !llvm.loop !17

.loopexit:                                        ; preds = %bb.aq, %bb.am, %bb.an, %bb.ae, %bb.af, %.loopexit115, %bb.t, %bb.j, %bb.k, %mbedtls_nist_kw_setkey.exit99.thread, %bb.aj, %mbedtls_nist_kw_setkey.exit94.thread, %bb.aa, %mbedtls_nist_kw_setkey.exit89.thread, %bb.o, %mbedtls_nist_kw_setkey.exit.thread, %bb.f
  %.2 = phi i32 [ %.0.i102, %bb.f ], [ %.0.i102, %mbedtls_nist_kw_setkey.exit.thread ], [ 1, %bb.am ], [ %.0.i87105, %bb.o ], [ %.0.i87105, %mbedtls_nist_kw_setkey.exit89.thread ], [ 1, %bb.j ], [ %.0.i92110, %bb.aa ], [ %.0.i92110, %mbedtls_nist_kw_setkey.exit94.thread ], [ 1, %.loopexit115 ], [ %.0.i97113, %bb.aj ], [ %.0.i97113, %mbedtls_nist_kw_setkey.exit99.thread ], [ 1, %bb.ae ], [ 1, %bb.k ], [ 1, %bb.t ], [ 1, %bb.af ], [ 1, %bb.an ], [ 0, %bb.aq ]
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 96) #9
  br i1 %.not71, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 1048337, i64 1048387, i64 1048459, i64 1048531, i64 1048603, i64 1048675, i64 1048747, i64 1048819, i64 1048891}
!14 = !{i64 1045105, i64 1045155, i64 1045227, i64 1045299, i64 1045371}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
end_hunk_1
