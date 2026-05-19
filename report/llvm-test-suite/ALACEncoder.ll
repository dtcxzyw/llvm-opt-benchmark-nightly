inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BitBuffer = type { ptr, ptr, i32, i32 }
%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.AudioFormatDescription = type { double, i32, i32, i32, i32, i32, i32, i32, i32 }

@_ZTV11ALACEncoder = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI11ALACEncoder, ptr @_ZN11ALACEncoderD2Ev, ptr @_ZN11ALACEncoderD0Ev, ptr @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi, ptr @_ZN11ALACEncoder6FinishEv, ptr @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription, ptr @_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_] }, align 8
@.str = private unnamed_addr constant [38 x i8] c"compressed frame too big: %u vs. %u \0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"compressed frame too big: %u vs. %u\0A\00", align 1
@_ZL12sChannelMaps = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 8, i32 8, i32 520, i32 520, i32 520, i32 33288], align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"That ain't right! (%u)\0A\00", align 1
@__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom = private unnamed_addr constant [12 x i8] c"\00\00\00\00chan\00\00\00\00", align 1
@_ZL21ALACChannelLayoutTags = internal unnamed_addr constant [8 x i32] [i32 6553601, i32 6619138, i32 7405571, i32 7602180, i32 7864325, i32 8126470, i32 9306119, i32 8323080], align 16
@_ZTI11ALACEncoder = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11ALACEncoder }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS11ALACEncoder = dso_local constant [14 x i8] c"11ALACEncoder\00", align 1

@_ZN11ALACEncoderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACEncoderC2Ev
@_ZN11ALACEncoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACEncoderD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11ALACEncoderC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8300) initializes((0, 11), (32, 80), (8272, 8288)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV11ALACEncoder, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 0, ptr %i.b, align 2, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 4096>, ptr %i.d, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN11ALACEncoderD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(8300) dereferenceable(8300) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV11ALACEncoder, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #14
  store ptr null, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #14
  store ptr null, ptr %i.c, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #14
  store ptr null, ptr %i.e, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.h) #14
  store ptr null, ptr %i.g, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %.not9 = icmp eq ptr %i.j, null
  br i1 %.not9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.j) #14
  store ptr null, ptr %i.i, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %.not10 = icmp eq ptr %i.l, null
  br i1 %.not10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.l) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11ALACEncoderD0Ev(ptr noundef nonnull align 8 dead_on_return(8300) dereferenceable(8300) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN11ALACEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(8300) dereferenceable(8300) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8304) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 align 2 {
bb.a:
  %6 = alloca %struct.BitBuffer, align 8          ; 8 uses
  %7 = alloca %struct.BitBuffer, align 8          ; 5 uses
  %8 = alloca %struct.AGParamRec, align 4         ; 14 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !10   ; 4 uses
  %9 = add i16 %i.d, -16                          ; 2 uses
  %i.e = tail call i16 @llvm.fshl.i16(i16 %9, i16 %9, i16 14)
  switch i16 %i.e, label %.loopexit294 [
    i16 0, label %bb.b
    i16 1, label %bb.b
    i16 2, label %bb.b
    i16 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = zext i32 %4 to i64                       ; 3 uses
  %i.h = getelementptr inbounds nuw [512 x i8], ptr %i.f, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.j = getelementptr inbounds nuw [512 x i8], ptr %i.i, i64 %i.g ; 4 uses
  %i.k = icmp eq i16 %i.d, 32
  %i.l = icmp sgt i16 %i.d, 23                    ; 3 uses
  %.288 = zext i1 %i.l to i32
  %.0264 = select i1 %i.k, i32 2, i32 %.288       ; 7 uses
  %i.m = sext i16 %i.d to i32
  %i.n = shl nuw nsw i32 %.0264, 3                ; 3 uses
  %i.o = sub nsw i32 %i.m, %i.n
  %i.p = add nsw i32 %i.o, 1                      ; 26 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27
  %.not282 = icmp eq i32 %5, %i.r                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.g ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !28
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 18 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.y = lshr i32 %5, 3                           ; 18 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8288 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.j
  %.0249298 = phi i32 [ %i.v, %bb.b ], [ %spec.select289, %bb.j ]
  %.0253297 = phi i32 [ 0, %bb.b ], [ %i.bh, %bb.j ] ; 6 uses
  %.0258296 = phi i32 [ -2147483648, %bb.b ], [ %spec.select, %bb.j ] ; 2 uses
  %i.ag = load i16, ptr %i.c, align 8, !tbaa !10
  %i.ah = sext i16 %i.ag to i32
  %10 = add nsw i32 %i.ah, -16                    ; 2 uses
  %i.ai = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 30)
  switch i32 %i.ai, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !20
  call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %i.aj, ptr noundef %i.ak, i32 noundef %i.y, i32 noundef 2, i32 noundef %.0253297)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !20
  call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %i.al, ptr noundef %i.am, i32 noundef %i.y, i32 noundef 2, i32 noundef %.0253297)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !23
  call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %i.an, ptr noundef %i.ao, i32 noundef %i.y, i32 noundef 2, i32 noundef %.0253297, ptr noundef %i.ap, i32 noundef %.0264)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !23
  call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %i.aq, ptr noundef %i.ar, i32 noundef %i.y, i32 noundef 2, i32 noundef %.0253297, ptr noundef %i.as, i32 noundef %.0264)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.au = load i32, ptr %i.ab, align 8, !tbaa !29
  call void @BitBufferInit(ptr noundef nonnull %6, ptr noundef %i.at, i32 noundef %i.au)
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.av, ptr noundef %i.aw, i32 noundef %i.y, ptr noundef nonnull %i.ad, i32 noundef 8, i32 noundef %i.p, i32 noundef 9)
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.ax, ptr noundef %i.ay, i32 noundef %i.y, ptr noundef nonnull %i.af, i32 noundef 8, i32 noundef %i.p, i32 noundef 9)
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %i.y, i32 noundef %i.y, i32 noundef 255)
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ba = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %i.az, ptr noundef nonnull %6, i32 noundef %i.y, i32 noundef %i.p, ptr noundef nonnull %i.a) ; 2 uses
  %.not286 = icmp eq i32 %i.ba, 0
  br i1 %.not286, label %bb.i, label %.loopexit294

bb.i:                                             ; preds = %bb.h
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %i.y, i32 noundef %i.y, i32 noundef 255)
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.bc = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %i.bb, ptr noundef nonnull %6, i32 noundef %i.y, i32 noundef %i.p, ptr noundef nonnull %i.b) ; 2 uses
  %.not287 = icmp eq i32 %i.bc, 0
  br i1 %.not287, label %bb.j, label %.loopexit294

bb.j:                                             ; preds = %bb.i
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !4
  %i.be = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bf = add i32 %i.be, %i.bd                    ; 2 uses
  %i.bg = icmp ult i32 %i.bf, %.0258296
  %spec.select = call i32 @llvm.umin.i32(i32 %i.bf, i32 %.0258296)
  %spec.select289 = select i1 %i.bg, i32 %.0253297, i32 %.0249298 ; 3 uses
  %i.bh = add nuw nsw i32 %.0253297, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, 5
  br i1 %exitcond.not, label %bb.k, label %bb.c, !llvm.loop !30

bb.k:                                             ; preds = %bb.j
  %i.bi = trunc i32 %spec.select289 to i16
  store i16 %i.bi, ptr %i.t, align 2, !tbaa !28
  %sext = shl i32 %spec.select289, 16
  %i.bj = ashr exact i32 %sext, 16                ; 5 uses
  %i.bk = load i16, ptr %i.c, align 8, !tbaa !10
  %i.bl = sext i16 %i.bk to i32
  %11 = add nsw i32 %i.bl, -16                    ; 2 uses
  %i.bm = call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 30)
  switch i32 %i.bm, label %bb.p [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 4, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.bo = load ptr, ptr %i.x, align 8, !tbaa !20
  call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %i.bn, ptr noundef %i.bo, i32 noundef %5, i32 noundef 2, i32 noundef %i.bj)
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.bq = load ptr, ptr %i.x, align 8, !tbaa !20
  call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %i.bp, ptr noundef %i.bq, i32 noundef %5, i32 noundef 2, i32 noundef %i.bj)
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.bs = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.bt = load ptr, ptr %i.z, align 8, !tbaa !23
  call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %i.br, ptr noundef %i.bs, i32 noundef %5, i32 noundef 2, i32 noundef %i.bj, ptr noundef %i.bt, i32 noundef %.0264)
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.bv = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.bw = load ptr, ptr %i.z, align 8, !tbaa !23
  call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %i.bu, ptr noundef %i.bv, i32 noundef %5, i32 noundef 2, i32 noundef %i.bj, ptr noundef %i.bw, i32 noundef %.0264)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.bx = lshr i32 %5, 5                          ; 16 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.by = select i1 %.not282, i32 0, i32 32       ; 2 uses
  %i.bz = shl i32 %5, 1                           ; 4 uses
  %i.ca = mul i32 %i.bz, %i.n
  %i.cb = add i32 %i.ca, 64
  %i.cc = select i1 %i.l, i32 %i.cb, i32 64
  %i.cd = add i32 %i.cc, %i.by
  %i.ce = add i32 %i.cd, %.1263
  %.0254 = add i32 %i.ce, %spec.select291
  %i.cf = load i16, ptr %i.c, align 8, !tbaa !10
  %i.cg = sext i16 %i.cf to i32
  %i.ch = mul i32 %i.bz, %i.cg
  %i.ci = or disjoint i32 %i.by, 16
  %i.cj = add i32 %i.ci, %i.ch                    ; 3 uses
  %.not = icmp ult i32 %.0254, %i.cj
  br i1 %.not, label %bb.s, label %bb.ab

bb.r:                                             ; preds = %bb.p, %bb.r
  %i.ck = phi i1 [ true, %bb.p ], [ false, %bb.r ]
  %indvars.iv = phi i64 [ 4, %bb.p ], [ 8, %bb.r ] ; 3 uses
  %.2260303 = phi i32 [ -2147483648, %bb.p ], [ %spec.select291, %bb.r ] ; 2 uses
  %.0262302 = phi i32 [ -2147483648, %bb.p ], [ %.1263, %bb.r ] ; 2 uses
  %.0265301 = phi i32 [ 4, %bb.p ], [ %spec.select290, %bb.r ]
  %.0267300 = phi i32 [ 4, %bb.p ], [ %.1268, %bb.r ]
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.cm = load i32, ptr %i.ab, align 8, !tbaa !29
  call void @BitBufferInit(ptr noundef nonnull %6, ptr noundef %i.cl, i32 noundef %i.cm)
  %i.cn = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.cn ; 8 uses
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.cn ; 8 uses
  %i.cq = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32    ; 18 uses
  call void @pc_block(ptr noundef %i.cq, ptr noundef %i.cr, i32 noundef %i.bx, ptr noundef nonnull %i.co, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.ct = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.cu = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.ct, ptr noundef %i.cu, i32 noundef %i.bx, ptr noundef nonnull %i.cp, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.cv = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.cw = load ptr, ptr %i.ac, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.cv, ptr noundef %i.cw, i32 noundef %i.bx, ptr noundef nonnull %i.co, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.cx = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.cy = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.cx, ptr noundef %i.cy, i32 noundef %i.bx, ptr noundef nonnull %i.cp, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.da = load ptr, ptr %i.ac, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.cz, ptr noundef %i.da, i32 noundef %i.bx, ptr noundef nonnull %i.co, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.db = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.dc = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.db, ptr noundef %i.dc, i32 noundef %i.bx, ptr noundef nonnull %i.cp, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dd = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.de = load ptr, ptr %i.ac, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.dd, ptr noundef %i.de, i32 noundef %i.bx, ptr noundef nonnull %i.co, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.df = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.dg = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.df, ptr noundef %i.dg, i32 noundef %i.bx, ptr noundef nonnull %i.cp, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dh = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.dh, ptr noundef %i.di, i32 noundef %i.bx, ptr noundef nonnull %i.co, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dj = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.dk = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.dj, ptr noundef %i.dk, i32 noundef %i.bx, ptr noundef nonnull %i.cp, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dl = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.dm = load ptr, ptr %i.ac, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.dl, ptr noundef %i.dm, i32 noundef %i.bx, ptr noundef nonnull %i.co, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dn = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.do = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.dn, ptr noundef %i.do, i32 noundef %i.bx, ptr noundef nonnull %i.cp, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dp = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.dq = load ptr, ptr %i.ac, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.dp, ptr noundef %i.dq, i32 noundef %i.bx, ptr noundef nonnull %i.co, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dr = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ds = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.dr, ptr noundef %i.ds, i32 noundef %i.bx, ptr noundef nonnull %i.cp, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.dt, ptr noundef %i.du, i32 noundef %i.bx, ptr noundef nonnull %i.co, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  %i.dv = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.dw = load ptr, ptr %i.ae, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.dv, ptr noundef %i.dw, i32 noundef %i.bx, ptr noundef nonnull %i.cp, i32 noundef %i.cs, i32 noundef %i.p, i32 noundef 9)
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %i.y, i32 noundef %i.y, i32 noundef 255)
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.dy = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %i.dx, ptr noundef nonnull %6, i32 noundef %i.y, i32 noundef %i.p, ptr noundef nonnull %i.a) ; 0 uses
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ea = shl i32 %i.dz, 3
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.eb = shl nuw nsw i32 %indvars.iv.tr, 4       ; 2 uses
  %i.ec = add i32 %i.ea, %i.eb                    ; 2 uses
  %i.ed = icmp ult i32 %i.ec, %.2260303
  %spec.select290 = select i1 %i.ed, i32 %i.cs, i32 %.0265301 ; 6 uses
  %spec.select291 = call i32 @llvm.umin.i32(i32 %i.ec, i32 %.2260303) ; 2 uses
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %i.y, i32 noundef %i.y, i32 noundef 255)
  %i.ee = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ef = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %i.ee, ptr noundef nonnull %6, i32 noundef %i.y, i32 noundef %i.p, ptr noundef nonnull %i.b) ; 0 uses
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !4
  %i.eh = shl i32 %i.eg, 3
  %i.ei = add i32 %i.eh, %i.eb                    ; 2 uses
  %i.ej = icmp ult i32 %i.ei, %.0262302
  %.1268 = select i1 %i.ej, i32 %i.cs, i32 %.0267300 ; 6 uses
  %.1263 = call i32 @llvm.umin.i32(i32 %i.ei, i32 %.0262302) ; 2 uses
  br i1 %i.ck, label %bb.r, label %bb.q, !llvm.loop !32

bb.s:                                             ; preds = %bb.q
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 12)
  %i.ek = select i1 %.not282, i32 0, i32 8
  %i.el = shl nuw nsw i32 %.0264, 1
  %i.em = or disjoint i32 %i.ek, %i.el
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.em, i32 noundef 4)
  br i1 %.not282, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %5, i32 noundef 32)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 2, i32 noundef 8)
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.bj, i32 noundef 8)
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 9, i32 noundef 8)
  %i.en = or disjoint i32 %spec.select290, 128
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.en, i32 noundef 8)
  %.not312 = icmp eq i32 %spec.select290, 0
  br i1 %.not312, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.eo = zext i32 %spec.select290 to i64         ; 2 uses
  %i.ep = getelementptr [32 x i8], ptr %i.h, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -32
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv317 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next318, %bb.v ] ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv317
  %i.es = load i16, ptr %i.er, align 2, !tbaa !28
  %i.et = sext i16 %i.es to i32
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.et, i32 noundef 16)
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %i.eo
  br i1 %exitcond321.not, label %._crit_edge, label %bb.v, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.v, %bb.u
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 9, i32 noundef 8)
  %i.eu = or disjoint i32 %.1268, 128
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.eu, i32 noundef 8)
  %.not313 = icmp eq i32 %.1268, 0
  br i1 %.not313, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %._crit_edge
  %i.ev = zext i32 %.1268 to i64                  ; 2 uses
  %i.ew = getelementptr [32 x i8], ptr %i.j, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 -32
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph308, %bb.w
  %indvars.iv322 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next323, %bb.w ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %indvars.iv322
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !28
  %i.fa = sext i16 %i.ez to i32
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.fa, i32 noundef 16)
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next323, %i.ev
  br i1 %exitcond327.not, label %._crit_edge309, label %bb.w, !llvm.loop !34

._crit_edge309:                                   ; preds = %bb.w, %._crit_edge
  %.not314 = icmp ne i32 %i.bz, 0
  %or.cond.not = and i1 %.not314, %i.l
  br i1 %or.cond.not, label %.lr.ph311, label %.loopexit

.lr.ph311:                                        ; preds = %._crit_edge309
  %i.fb = shl nuw nsw i32 %.0264, 4
  %i.fc = zext i32 %i.bz to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph311, %bb.x
  %indvars.iv328 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next329, %bb.x ] ; 3 uses
  %i.fd = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv328
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !28
  %i.fg = zext i16 %i.ff to i32
  %i.fh = shl nuw i32 %i.fg, %i.n
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv328
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !28
  %i.fl = zext i16 %i.fk to i32
  %i.fm = or i32 %i.fh, %i.fl
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.fm, i32 noundef %i.fb)
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 2 ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next329, %i.fc
  br i1 %i.fn, label %bb.x, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.x, %._crit_edge309
  %i.fo = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.fp = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.fq = zext nneg i32 %spec.select290 to i64
  %i.fr = getelementptr [32 x i8], ptr %i.h, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -32
  call void @pc_block(ptr noundef %i.fo, ptr noundef %i.fp, i32 noundef %5, ptr noundef %i.fs, i32 noundef %spec.select290, i32 noundef %i.p, i32 noundef 9)
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255)
  %i.ft = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.fu = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %i.ft, ptr noundef nonnull %1, i32 noundef %5, i32 noundef %i.p, ptr noundef nonnull %i.a) ; 2 uses
  %.not283 = icmp eq i32 %i.fu, 0
  br i1 %.not283, label %bb.y, label %.loopexit294

bb.y:                                             ; preds = %.loopexit
  %i.fv = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.fw = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.fx = zext nneg i32 %.1268 to i64
  %i.fy = getelementptr [32 x i8], ptr %i.j, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -32
  call void @pc_block(ptr noundef %i.fv, ptr noundef %i.fw, i32 noundef %5, ptr noundef %i.fz, i32 noundef %.1268, i32 noundef %i.p, i32 noundef 9)
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255)
  %i.ga = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.gb = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %i.ga, ptr noundef nonnull %1, i32 noundef %5, i32 noundef %i.p, ptr noundef nonnull %i.b) ; 2 uses
  %.not284 = icmp eq i32 %i.gb, 0
  br i1 %.not284, label %bb.z, label %.loopexit294

bb.z:                                             ; preds = %bb.y
  %i.gc = call i32 @BitBufferGetPosition(ptr noundef nonnull %1)
  %i.gd = call i32 @BitBufferGetPosition(ptr noundef nonnull %7)
  %i.ge = sub i32 %i.gc, %i.gd                    ; 2 uses
  %.not285 = icmp ult i32 %i.ge, %i.cj
  br i1 %.not285, label %.loopexit294, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !25
  %i.gf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ge, i32 noundef %i.cj) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %i.gg = call noundef i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, i32 noundef %5) ; 0 uses
  br label %.loopexit294

.loopexit294:                                     ; preds = %bb.h, %bb.i, %bb.z, %.loopexit, %bb.y, %bb.ab, %bb.a
  %.0 = phi i32 [ -50, %bb.a ], [ 0, %bb.ab ], [ 0, %bb.z ], [ %i.fu, %.loopexit ], [ %i.gb, %bb.y ], [ %i.bc, %bb.i ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @mix16(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @mix20(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @mix24(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @mix32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @BitBufferInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @pc_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @set_ag_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @dyn_comp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare void @BitBufferWrite(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @BitBufferGetPosition(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %.not = icmp eq i32 %4, %i.b                    ; 2 uses
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12)
  %i.c = select i1 %.not, i32 1, i32 9
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.c, i32 noundef 4)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %4, i32 noundef 32)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !10
  %i.f = sext i16 %i.e to i32
  %5 = add nsw i32 %i.f, -16                      ; 2 uses
  %i.g = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 30)
  switch i32 %i.g, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %.preheader53
  ]

.preheader53:                                     ; preds = %bb.c
  %i.h = mul i32 %4, %3                           ; 2 uses
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %i.i = mul i32 %4, %3                           ; 2 uses
  %.not65 = icmp eq i32 %i.i, 0
  br i1 %.not65, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %.preheader, %.lr.ph61
  %.060 = phi i32 [ %i.s, %.lr.ph61 ], [ 0, %.preheader ] ; 3 uses
  %i.j = zext i32 %.060 to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !28
  %i.m = sext i16 %i.l to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.m, i32 noundef 16)
  %i.n = add nuw i32 %.060, 1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !28
  %i.r = sext i16 %i.q to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.r, i32 noundef 16)
  %i.s = add i32 %.060, %3                        ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.i
  br i1 %i.t, label %.lr.ph61, label %.loopexit, !llvm.loop !36

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  tail call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %i.v, ptr noundef %i.x, i32 noundef %4, i32 noundef 0, i32 noundef 0)
  %.not64 = icmp eq i32 %4, 0
  br i1 %.not64, label %.loopexit, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %bb.d
  %wide.trip.count73 = zext i32 %4 to i64
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %indvars.iv70 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next71, %.lr.ph59 ] ; 3 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv70
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.aa, i32 noundef 20)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv70
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.ad, i32 noundef 20)
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %.loopexit, label %.lr.ph59, !llvm.loop !37

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  tail call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %i.af, ptr noundef %i.ah, i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %i.aj, i32 noundef 0)
  %.not63 = icmp eq i32 %4, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %bb.e
  %wide.trip.count = zext i32 %4 to i64
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %indvars.iv = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next, %.lr.ph57 ] ; 3 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.am, i32 noundef 24)
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.ap, i32 noundef 24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph57, !llvm.loop !38

.lr.ph:                                           ; preds = %.preheader53, %.lr.ph
  %.355 = phi i32 [ %i.ax, %.lr.ph ], [ 0, %.preheader53 ] ; 3 uses
  %i.aq = zext i32 %.355 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.as, i32 noundef 32)
  %i.at = add nuw i32 %.355, 1
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %i.aw, i32 noundef 32)
  %i.ax = add i32 %.355, %3                       ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %i.h
  br i1 %i.ay, label %.lr.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph57, %.lr.ph59, %.lr.ph61, %.preheader53, %bb.e, %bb.d, %.preheader, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 align 2 {
bb.a:
  %6 = alloca %struct.BitBuffer, align 8          ; 5 uses
  %7 = alloca %struct.AGParamRec, align 4         ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !10   ; 4 uses
  %8 = add i16 %i.d, -16                          ; 2 uses
  %i.e = tail call i16 @llvm.fshl.i16(i16 %8, i16 %8, i16 14)
  switch i16 %i.e, label %bb.n [
    i16 0, label %bb.b
    i16 1, label %bb.b
    i16 2, label %bb.b
    i16 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = zext i32 %4 to i64                       ; 2 uses
  %i.g = getelementptr inbounds nuw [512 x i8], ptr %0, i64 %i.f ; 8 uses
  %i.h = getelementptr inbounds nuw [512 x i8], ptr %0, i64 %i.f ; 8 uses
  %i.i = icmp eq i16 %i.d, 32
  %i.j = icmp sgt i16 %i.d, 23                    ; 3 uses
  %.140 = zext i1 %i.j to i32
  %.0128 = select i1 %i.i, i32 2, i32 %.140       ; 5 uses
  %i.k = sext i16 %i.d to i32                     ; 2 uses
  %i.l = shl nuw nsw i32 %.0128, 3                ; 3 uses
  %i.m = sub nsw i32 %i.k, %i.l
  %i.n = add nsw i32 %i.m, 1                      ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %.not138 = icmp eq i32 %5, %i.p                 ; 3 uses
  %9 = add nsw i32 %i.k, -16                      ; 2 uses
  %i.q = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 30)
  switch i32 %i.q, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  tail call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %i.s, ptr noundef %i.u, i32 noundef %5, i32 noundef 2, i32 noundef 0)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  tail call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %i.w, ptr noundef %i.y, i32 noundef %5, i32 noundef 2, i32 noundef 0)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  tail call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %i.aa, ptr noundef %i.ac, i32 noundef %5, i32 noundef 2, i32 noundef 0, ptr noundef %i.ae, i32 noundef %.0128)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  tail call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %i.ag, ptr noundef %i.ai, i32 noundef %5, i32 noundef 2, i32 noundef 0, ptr noundef %i.ak, i32 noundef %.0128)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 12)
  %i.al = select i1 %.not138, i32 0, i32 8
  %i.am = shl nuw nsw i32 %.0128, 1
  %i.an = or disjoint i32 %i.al, %i.am
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.an, i32 noundef 4)
  br i1 %.not138, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %5, i32 noundef 32)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 2, i32 noundef 8)
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 8)
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 9, i32 noundef 8)
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 136, i32 noundef 8)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !28
  %i.aq = sext i16 %i.ap to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.aq, i32 noundef 16)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 306
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !28
  %i.at = sext i16 %i.as to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.at, i32 noundef 16)
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 308
  %i.av = load i16, ptr %i.au, align 4, !tbaa !28
  %i.aw = sext i16 %i.av to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.aw, i32 noundef 16)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 310
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !28
  %i.az = sext i16 %i.ay to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.az, i32 noundef 16)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !28
  %i.bc = sext i16 %i.bb to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.bc, i32 noundef 16)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 314
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !28
  %i.bf = sext i16 %i.be to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.bf, i32 noundef 16)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 316
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !28
  %i.bi = sext i16 %i.bh to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.bi, i32 noundef 16)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 318
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !28
  %i.bl = sext i16 %i.bk to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.bl, i32 noundef 16)
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 9, i32 noundef 8)
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 136, i32 noundef 8)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 4400 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !28
  %i.bo = sext i16 %i.bn to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.bo, i32 noundef 16)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 4402
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !28
  %i.br = sext i16 %i.bq to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.br, i32 noundef 16)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 4404
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !28
  %i.bu = sext i16 %i.bt to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.bu, i32 noundef 16)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 4406
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !28
  %i.bx = sext i16 %i.bw to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.bx, i32 noundef 16)
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 4408
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !28
  %i.ca = sext i16 %i.bz to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.ca, i32 noundef 16)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 4410
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !28
  %i.cd = sext i16 %i.cc to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.cd, i32 noundef 16)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 4412
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !28
  %i.cg = sext i16 %i.cf to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.cg, i32 noundef 16)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 4414
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !28
  %i.cj = sext i16 %i.ci to i32
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.cj, i32 noundef 16)
  br i1 %i.j, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.i
  %i.ck = shl i32 %5, 1                           ; 2 uses
  %.not146 = icmp eq i32 %i.ck, 0
  br i1 %.not146, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cm = shl nuw nsw i32 %.0128, 4
  %i.cn = zext i32 %i.ck to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !28
  %i.cr = zext i16 %i.cq to i32
  %i.cs = shl nuw i32 %i.cr, %i.l
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !28
  %i.cw = zext i16 %i.cv to i32
  %i.cx = or i32 %i.cs, %i.cw
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.cx, i32 noundef %i.cm)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.cn
  br i1 %i.cy, label %bb.j, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !21
  tail call void @pc_block(ptr noundef %i.da, ptr noundef %i.dc, i32 noundef %5, ptr noundef nonnull %i.ao, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255)
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !21
  %i.de = call i32 @dyn_comp(ptr noundef nonnull %7, ptr noundef %i.dd, ptr noundef nonnull %1, i32 noundef %5, i32 noundef %i.n, ptr noundef nonnull %i.a) ; 2 uses
  %.not136 = icmp eq i32 %i.de, 0
  br i1 %.not136, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.loopexit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !22
  call void @pc_block(ptr noundef %i.dg, ptr noundef %i.di, i32 noundef %5, ptr noundef nonnull %i.bm, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255)
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.dk = call i32 @dyn_comp(ptr noundef nonnull %7, ptr noundef %i.dj, ptr noundef nonnull %1, i32 noundef %5, i32 noundef %i.n, ptr noundef nonnull %i.b) ; 2 uses
  %.not137 = icmp eq i32 %i.dk, 0
  br i1 %.not137, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !4
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !4
  %i.dn = select i1 %.not138, i32 0, i32 32       ; 2 uses
  %i.do = shl i32 %5, 1                           ; 2 uses
  %i.dp = mul i32 %i.do, %i.l
  %i.dq = add i32 %i.dp, 320
  %i.dr = select i1 %i.j, i32 %i.dq, i32 320
  %i.ds = add i32 %i.dr, %i.dn
  %i.dt = add i32 %i.ds, %i.dl
  %.0124 = add i32 %i.dt, %i.dm
  %i.du = load i16, ptr %i.c, align 8, !tbaa !10
  %i.dv = sext i16 %i.du to i32
  %i.dw = mul i32 %i.do, %i.dv
  %i.dx = or disjoint i32 %i.dn, 16
  %i.dy = add i32 %i.dx, %i.dw                    ; 3 uses
  %.not = icmp ult i32 %.0124, %i.dy
  br i1 %.not, label %bb.m, label %.critedge142

bb.m:                                             ; preds = %bb.l
  %i.dz = call i32 @BitBufferGetPosition(ptr noundef nonnull %1)
  %i.ea = call i32 @BitBufferGetPosition(ptr noundef nonnull %6)
  %i.eb = sub i32 %i.dz, %i.ea                    ; 2 uses
  %.not139 = icmp ult i32 %i.eb, %i.dy
  br i1 %.not139, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.m
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.eb, i32 noundef %i.dy) ; 0 uses
  br label %.critedge142

.critedge142:                                     ; preds = %bb.l, %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !25
  %i.ed = call noundef i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, i32 noundef %5) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit, %bb.k, %.critedge142, %bb.a
  %.0 = phi i32 [ -50, %bb.a ], [ %i.de, %.loopexit ], [ %i.dk, %bb.k ], [ 0, %.critedge142 ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %6 = alloca %struct.BitBuffer, align 8          ; 5 uses
  %7 = alloca %struct.AGParamRec, align 4         ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %struct.BitBuffer, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !10   ; 4 uses
  %9 = add i16 %i.d, -16                          ; 2 uses
  %i.e = tail call i16 @llvm.fshl.i16(i16 %9, i16 %9, i16 14)
  switch i16 %i.e, label %.loopexit [
    i16 0, label %bb.b
    i16 1, label %bb.b
    i16 2, label %bb.b
    i16 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = zext i32 %4 to i64
  %i.h = getelementptr inbounds nuw [512 x i8], ptr %i.f, i64 %i.g ; 4 uses
  %i.i = icmp eq i16 %i.d, 32
  %i.j = icmp sgt i16 %i.d, 23                    ; 3 uses
  %.201 = zext i1 %i.j to i32
  %.0192 = select i1 %i.i, i32 2, i32 %.201       ; 2 uses
  %i.k = shl nuw nsw i32 %.0192, 3                ; 10 uses
  %notmask = shl nsw i32 -1, %i.k
  %i.l = xor i32 %notmask, -1                     ; 6 uses
  %i.m = sext i16 %i.d to i32                     ; 2 uses
  %i.n = sub nsw i32 %i.m, %i.k                   ; 20 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %.not199 = icmp eq i32 %5, %i.p                 ; 5 uses
  %10 = add nsw i32 %i.m, -16                     ; 2 uses
  %i.q = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 30)
  switch i32 %i.q, label %.loopexit220 [
    i32 0, label %.preheader219
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %.preheader222
  ]

.preheader222:                                    ; preds = %bb.b
  %.not251 = icmp eq i32 %5, 0
  br i1 %.not251, label %.loopexit220, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader222
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 5 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %wide.trip.count = zext i32 %5 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %5, 8
  %ident.check.not = icmp ne i32 %3, 1
  %or.cond354.not357 = or i1 %min.iters.check, %ident.check.not
  %i.w = sub i64 %i.v, %i.a
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond355 = select i1 %or.cond354.not357, i1 true, i1 %diff.check
  br i1 %or.cond355, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.x = trunc nuw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert317 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat318 = shufflevector <4 x i32> %broadcast.splatinsert317, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = and i64 %index, 4294967288
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !4 ; 2 uses
  %wide.load319 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4 ; 2 uses
  %i.ab = and <4 x i32> %wide.load, %broadcast.splat
  %i.ac = and <4 x i32> %wide.load319, %broadcast.splat
  %i.ad = trunc nuw <4 x i32> %i.ab to <4 x i16>
  %i.ae = trunc nuw <4 x i32> %i.ac to <4 x i16>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store <4 x i16> %i.ad, ptr %i.af, align 2, !tbaa !28
  store <4 x i16> %i.ae, ptr %i.ag, align 2, !tbaa !28
  %i.ah = ashr <4 x i32> %wide.load, %broadcast.splat318
  %i.ai = ashr <4 x i32> %wide.load319, %broadcast.splat318
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !4
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit220, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.1191226.ph = phi i32 [ 0, %.lr.ph ], [ %i.x, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.am = zext i32 %.1191226.ph to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = and i32 %i.ao, %i.l
  %i.aq = trunc nuw i32 %i.ap to i16
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.ph
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !28
  %i.as = ashr i32 %i.ao, %i.k
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.ph
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  %i.au = add i32 %.1191226.ph, %3
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1191226.unr = phi i32 [ %.1191226.ph, %scalar.ph.preheader ], [ %i.au, %scalar.ph.prol ]
  %i.av = add nsw i64 %wide.trip.count, -1
  %i.aw = icmp eq i64 %indvars.iv.ph, %i.av
  br i1 %i.aw, label %.loopexit220, label %scalar.ph

.preheader219:                                    ; preds = %bb.b
  %.not253 = icmp eq i32 %5, 0
  br i1 %.not253, label %.loopexit220, label %.lr.ph232

.lr.ph232:                                        ; preds = %.preheader219
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 6 uses
  %wide.trip.count274 = zext i32 %5 to i64        ; 5 uses
  %min.iters.check341 = icmp ugt i32 %5, 7
  %ident.check339.not = icmp eq i32 %3, 1
  %or.cond356 = and i1 %min.iters.check341, %ident.check339.not
  br i1 %or.cond356, label %vector.ph342, label %scalar.ph340.preheader

vector.ph342:                                     ; preds = %.lr.ph232
  %n.vec344 = and i64 %wide.trip.count274, 4294967288 ; 4 uses
  %i.az = trunc nuw i64 %n.vec344 to i32
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph342
  %index346 = phi i64 [ 0, %vector.ph342 ], [ %index.next349, %vector.body345 ] ; 3 uses
  %i.ba = and i64 %index346, 4294967288
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %wide.load347 = load <4 x i16>, ptr %i.bb, align 2, !tbaa !28
  %wide.load348 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !28
  %i.bd = sext <4 x i16> %wide.load347 to <4 x i32>
  %i.be = sext <4 x i16> %wide.load348 to <4 x i32>
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index346 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x i32> %i.bd, ptr %i.bf, align 4, !tbaa !4
  store <4 x i32> %i.be, ptr %i.bg, align 4, !tbaa !4
  %index.next349 = add nuw i64 %index346, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next349, %n.vec344
  br i1 %i.bh, label %middle.block350, label %vector.body345, !llvm.loop !44

middle.block350:                                  ; preds = %vector.body345
  %cmp.n351 = icmp eq i64 %n.vec344, %wide.trip.count274
  br i1 %cmp.n351, label %.loopexit220, label %scalar.ph340.preheader

scalar.ph340.preheader:                           ; preds = %.lr.ph232, %middle.block350
  %indvars.iv271.ph = phi i64 [ 0, %.lr.ph232 ], [ %n.vec344, %middle.block350 ] ; 3 uses
  %.0190230.ph = phi i32 [ 0, %.lr.ph232 ], [ %i.az, %middle.block350 ] ; 2 uses
  %xtraiter363 = and i64 %wide.trip.count274, 3   ; 2 uses
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %scalar.ph340.prol.loopexit, label %scalar.ph340.prol

scalar.ph340.prol:                                ; preds = %scalar.ph340.preheader, %scalar.ph340.prol
  %indvars.iv271.prol = phi i64 [ %indvars.iv.next272.prol, %scalar.ph340.prol ], [ %indvars.iv271.ph, %scalar.ph340.preheader ] ; 2 uses
  %.0190230.prol = phi i32 [ %i.bn, %scalar.ph340.prol ], [ %.0190230.ph, %scalar.ph340.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph340.prol ], [ 0, %scalar.ph340.preheader ]
  %i.bi = zext i32 %.0190230.prol to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !28
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv271.prol
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !4
  %indvars.iv.next272.prol = add nuw nsw i64 %indvars.iv271.prol, 1 ; 2 uses
  %i.bn = add i32 %.0190230.prol, %3              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter363
  br i1 %prol.iter.cmp.not, label %scalar.ph340.prol.loopexit, label %scalar.ph340.prol, !llvm.loop !45

scalar.ph340.prol.loopexit:                       ; preds = %scalar.ph340.prol, %scalar.ph340.preheader
  %indvars.iv271.unr = phi i64 [ %indvars.iv271.ph, %scalar.ph340.preheader ], [ %indvars.iv.next272.prol, %scalar.ph340.prol ]
  %.0190230.unr = phi i32 [ %.0190230.ph, %scalar.ph340.preheader ], [ %i.bn, %scalar.ph340.prol ]
  %i.bo = sub nsw i64 %indvars.iv271.ph, %wide.trip.count274
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit220, label %scalar.ph340

scalar.ph340:                                     ; preds = %scalar.ph340.prol.loopexit, %scalar.ph340
  %indvars.iv271 = phi i64 [ %indvars.iv.next272.3, %scalar.ph340 ], [ %indvars.iv271.unr, %scalar.ph340.prol.loopexit ] ; 5 uses
  %.0190230 = phi i32 [ %i.cq, %scalar.ph340 ], [ %.0190230.unr, %scalar.ph340.prol.loopexit ] ; 2 uses
  %i.bq = zext i32 %.0190230 to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !28
  %i.bt = sext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv271
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !4
  %i.bv = add i32 %.0190230, %3                   ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !28
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv271
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !4
  %i.cc = add i32 %i.bv, %3                       ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !28
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv271
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !4
  %i.cj = add i32 %i.cc, %3                       ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !28
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv271
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !4
  %indvars.iv.next272.3 = add nuw nsw i64 %indvars.iv271, 4 ; 2 uses
  %i.cq = add i32 %i.cj, %3
  %exitcond275.not.3 = icmp eq i64 %indvars.iv.next272.3, %wide.trip.count274
  br i1 %exitcond275.not.3, label %.loopexit220, label %scalar.ph340, !llvm.loop !47

bb.c:                                             ; preds = %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !19
  tail call void @copy20ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %i.cs, i32 noundef %5)
  br label %.loopexit220
end_hunk_0
begin_hunk_1_@_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj:bb.a
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit220, label %scalar.ph, !llvm.loop !50

.loopexit220:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph321, %scalar.ph340.prol.loopexit, %scalar.ph340, %middle.block, %middle.block335, %middle.block350, %.preheader222, %bb.d, %.preheader219, %bb.c, %bb.b
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8288 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 21 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 20 uses
  %i.el = lshr i32 %5, 5                          ; 14 uses
  %i.em = lshr i32 %5, 3                          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !24
  %i.eo = load i32, ptr %i.ei, align 8, !tbaa !29
  call void @BitBufferInit(ptr noundef nonnull %8, ptr noundef %i.en, i32 noundef %i.eo)
  %i.ep = getelementptr i8, ptr %i.h, i64 96      ; 8 uses
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.eq, ptr noundef %i.er, i32 noundef %i.el, ptr noundef %i.ep, i32 noundef 4, i32 noundef %i.n, i32 noundef 9)
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.es, ptr noundef %i.et, i32 noundef %i.el, ptr noundef %i.ep, i32 noundef 4, i32 noundef %i.n, i32 noundef 9)
  %i.eu = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.eu, ptr noundef %i.ev, i32 noundef %i.el, ptr noundef %i.ep, i32 noundef 4, i32 noundef %i.n, i32 noundef 9)
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.ex = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.ew, ptr noundef %i.ex, i32 noundef %i.el, ptr noundef %i.ep, i32 noundef 4, i32 noundef %i.n, i32 noundef 9)
  %i.ey = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.ez = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.ey, ptr noundef %i.ez, i32 noundef %i.el, ptr noundef %i.ep, i32 noundef 4, i32 noundef %i.n, i32 noundef 9)
  %i.fa = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fb = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fa, ptr noundef %i.fb, i32 noundef %i.el, ptr noundef %i.ep, i32 noundef 4, i32 noundef %i.n, i32 noundef 9)
  %i.fc = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fd = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fc, ptr noundef %i.fd, i32 noundef %i.el, ptr noundef %i.ep, i32 noundef 4, i32 noundef %i.n, i32 noundef 9)
  %i.fe = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.ff = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fe, ptr noundef %i.ff, i32 noundef %i.em, ptr noundef %i.ep, i32 noundef 4, i32 noundef %i.n, i32 noundef 9)
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %i.em, i32 noundef %i.em, i32 noundef 255)
  %i.fg = load ptr, ptr %i.ek, align 8, !tbaa !21
  %i.fh = call i32 @dyn_comp(ptr noundef nonnull %7, ptr noundef %i.fg, ptr noundef nonnull %8, i32 noundef %i.em, i32 noundef %i.n, ptr noundef nonnull %i.b) ; 2 uses
  %.not200 = icmp eq i32 %i.fh, 0
  br i1 %.not200, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %.loopexit220
  %.lcssa = phi i32 [ %i.fh, %.loopexit220 ], [ %i.gd, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.loopexit

bb.f:                                             ; preds = %.loopexit220
  %i.fi = load i32, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.fj = load ptr, ptr %i.eh, align 8, !tbaa !24
  %i.fk = load i32, ptr %i.ei, align 8, !tbaa !29
  call void @BitBufferInit(ptr noundef nonnull %8, ptr noundef %i.fj, i32 noundef %i.fk)
  %i.fl = getelementptr i8, ptr %i.h, i64 224     ; 8 uses
  %i.fm = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fn = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fm, ptr noundef %i.fn, i32 noundef %i.el, ptr noundef %i.fl, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  %i.fo = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fp = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fo, ptr noundef %i.fp, i32 noundef %i.el, ptr noundef %i.fl, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  %i.fq = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fr = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fq, ptr noundef %i.fr, i32 noundef %i.el, ptr noundef %i.fl, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  %i.fs = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.ft = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fs, ptr noundef %i.ft, i32 noundef %i.el, ptr noundef %i.fl, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  %i.fu = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fv = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fu, ptr noundef %i.fv, i32 noundef %i.el, ptr noundef %i.fl, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  %i.fw = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fx = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fw, ptr noundef %i.fx, i32 noundef %i.el, ptr noundef %i.fl, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  %i.fy = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.fz = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.fy, ptr noundef %i.fz, i32 noundef %i.el, ptr noundef %i.fl, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  %i.ga = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.gb = load ptr, ptr %i.ek, align 8, !tbaa !21
  call void @pc_block(ptr noundef %i.ga, ptr noundef %i.gb, i32 noundef %i.em, ptr noundef %i.fl, i32 noundef 8, i32 noundef %i.n, i32 noundef 9)
  call void @set_ag_params(ptr noundef nonnull %7, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %i.em, i32 noundef %i.em, i32 noundef 255)
  %i.gc = load ptr, ptr %i.ek, align 8, !tbaa !21
  %i.gd = call i32 @dyn_comp(ptr noundef nonnull %7, ptr noundef %i.gc, ptr noundef nonnull %8, i32 noundef %i.em, i32 noundef %i.n, ptr noundef nonnull %i.b) ; 2 uses
  %.not200.1 = icmp eq i32 %i.gd, 0
  br i1 %.not200.1, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.ge = shl i32 %i.fi, 3
  %i.gf = add i32 %i.ge, 64
  %spec.select202 = call i32 @llvm.umin.i32(i32 %i.gf, i32 -2147483648) ; 2 uses
  %i.gg = load i32, ptr %i.b, align 4, !tbaa !4
  %i.gh = shl i32 %i.gg, 3
  %i.gi = add i32 %i.gh, 128                      ; 2 uses
  %i.gj = icmp ult i32 %i.gi, %spec.select202
  %spec.select.1 = select i1 %i.gj, i32 8, i32 4  ; 4 uses
  %spec.select202.1 = call i32 @llvm.umin.i32(i32 %i.gi, i32 %spec.select202)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.gk = select i1 %.not199, i32 0, i32 32       ; 2 uses
  %i.gl = mul i32 %i.k, %5
  %i.gm = add i32 %i.gl, 32
  %i.gn = select i1 %i.j, i32 %i.gm, i32 32
  %i.go = add i32 %i.gn, %i.gk
  %.3 = add i32 %i.go, %spec.select202.1
  %i.gp = load i16, ptr %i.c, align 8, !tbaa !10
  %i.gq = sext i16 %i.gp to i32
  %i.gr = mul i32 %5, %i.gq
  %i.gs = or disjoint i32 %i.gk, 16
  %i.gt = add i32 %i.gs, %i.gr                    ; 3 uses
  %.not = icmp ult i32 %.3, %i.gt
  br i1 %.not, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 12)
  %i.gu = select i1 %.not199, i32 0, i32 8
  %i.gv = shl nuw nsw i32 %.0192, 1
  %i.gw = or disjoint i32 %i.gu, %i.gv
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.gw, i32 noundef 4)
  br i1 %.not199, label %.lr.ph238, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %5, i32 noundef 32)
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.h, %bb.i
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 16)
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 9, i32 noundef 8)
  %i.gx = or disjoint i32 %spec.select.1, 128
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.gx, i32 noundef 8)
  %i.gy = zext nneg i32 %spec.select.1 to i64     ; 2 uses
  %i.gz = getelementptr [32 x i8], ptr %i.h, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 -32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph238, %bb.j
  %indvars.iv280 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next281, %bb.j ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %indvars.iv280
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !28
  %i.hd = sext i16 %i.hc to i32
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.hd, i32 noundef 16)
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %i.gy
  br i1 %exitcond284.not, label %._crit_edge, label %bb.j, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.j
  %i.he = icmp ne i32 %5, 0
  %or.cond = and i1 %i.j, %i.he
  br i1 %or.cond, label %.lr.ph240, label %.loopexit218

.lr.ph240:                                        ; preds = %._crit_edge
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.trip.count288 = zext i32 %5 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph240, %bb.k
  %indvars.iv285 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next286, %bb.k ] ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !23
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %indvars.iv285
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !28
  %i.hj = zext i16 %i.hi to i32
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.hj, i32 noundef %i.k)
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %.loopexit218, label %bb.k, !llvm.loop !52

.loopexit218:                                     ; preds = %bb.k, %._crit_edge
  %i.hk = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.hl = load ptr, ptr %i.ek, align 8, !tbaa !21
  %i.hm = zext nneg i32 %spec.select.1 to i64
  %i.hn = getelementptr [32 x i8], ptr %i.h, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -32
  call void @pc_block(ptr noundef %i.hk, ptr noundef %i.hl, i32 noundef %5, ptr noundef %i.ho, i32 noundef %spec.select.1, i32 noundef %i.n, i32 noundef 9)
  call void @set_standard_ag_params(ptr noundef nonnull %7, i32 noundef %5, i32 noundef %5)
  %i.hp = load ptr, ptr %i.ek, align 8, !tbaa !21
  %i.hq = call i32 @dyn_comp(ptr noundef nonnull %7, ptr noundef %i.hp, ptr noundef nonnull %1, i32 noundef %5, i32 noundef %i.n, ptr noundef nonnull %i.b) ; 2 uses
  %i.hr = call i32 @BitBufferGetPosition(ptr noundef nonnull %1)
  %i.hs = call i32 @BitBufferGetPosition(ptr noundef nonnull %6)
  %i.ht = sub i32 %i.hr, %i.hs                    ; 2 uses
  %.not198 = icmp ult i32 %i.ht, %i.gt
  br i1 %.not198, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.loopexit218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !25
  %i.hu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ht, i32 noundef %i.gt) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.1.ph = phi i32 [ 0, %bb.g ], [ %i.hq, %bb.l ] ; 9 uses
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 12)
  %i.hv = select i1 %.not199, i32 1, i32 9
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.hv, i32 noundef 4)
  br i1 %.not199, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %5, i32 noundef 32)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hw = load i16, ptr %i.c, align 8, !tbaa !10
  %i.hx = sext i16 %i.hw to i32
  %11 = add nsw i32 %i.hx, -16                    ; 2 uses
  %i.hy = call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 30)
  switch i32 %i.hy, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 4, label %.preheader215
  ]

.preheader215:                                    ; preds = %bb.o
  %i.hz = mul i32 %5, %3                          ; 2 uses
  %.not255 = icmp eq i32 %i.hz, 0
  br i1 %.not255, label %.loopexit, label %.lr.ph242

.preheader:                                       ; preds = %bb.o
  %i.ia = mul i32 %5, %3                          ; 2 uses
  %.not258 = icmp eq i32 %i.ia, 0
  br i1 %.not258, label %.loopexit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.preheader, %.lr.ph250
  %.5249 = phi i32 [ %i.if, %.lr.ph250 ], [ 0, %.preheader ] ; 2 uses
  %i.ib = zext i32 %.5249 to i64
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !28
  %i.ie = sext i16 %i.id to i32
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.ie, i32 noundef 16)
  %i.if = add i32 %.5249, %3                      ; 2 uses
  %i.ig = icmp ult i32 %i.if, %i.ia
  br i1 %i.ig, label %.lr.ph250, label %.loopexit, !llvm.loop !53

bb.p:                                             ; preds = %bb.o
  %i.ih = load ptr, ptr %i.ej, align 8, !tbaa !19
  call void @copy20ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %i.ih, i32 noundef %5)
  %.not257 = icmp eq i32 %5, 0
  br i1 %.not257, label %.loopexit, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.p
  %wide.trip.count298 = zext i32 %5 to i64
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %.lr.ph248
  %indvars.iv295 = phi i64 [ 0, %.lr.ph248.preheader ], [ %indvars.iv.next296, %.lr.ph248 ] ; 2 uses
  %i.ii = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv295
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.ik, i32 noundef 20)
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count298
  br i1 %exitcond299.not, label %.loopexit, label %.lr.ph248, !llvm.loop !54

bb.q:                                             ; preds = %bb.o
  %i.il = load ptr, ptr %i.ej, align 8, !tbaa !19
  call void @copy24ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %i.il, i32 noundef %5)
  %.not256 = icmp eq i32 %5, 0
  br i1 %.not256, label %.loopexit, label %.lr.ph245.preheader

.lr.ph245.preheader:                              ; preds = %bb.q
  %wide.trip.count293 = zext i32 %5 to i64
  br label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %.lr.ph245
  %indvars.iv290 = phi i64 [ 0, %.lr.ph245.preheader ], [ %indvars.iv.next291, %.lr.ph245 ] ; 2 uses
  %i.im = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv290
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.io, i32 noundef 24)
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %.loopexit, label %.lr.ph245, !llvm.loop !55

.lr.ph242:                                        ; preds = %.preheader215, %.lr.ph242
  %.8241 = phi i32 [ %i.is, %.lr.ph242 ], [ 0, %.preheader215 ] ; 2 uses
  %i.ip = zext i32 %.8241 to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %i.ir, i32 noundef 32)
  %i.is = add i32 %.8241, %3                      ; 2 uses
  %i.it = icmp ult i32 %i.is, %i.hz
  br i1 %i.it, label %.lr.ph242, label %.loopexit, !llvm.loop !56

.loopexit:                                        ; preds = %.lr.ph242, %.lr.ph245, %.lr.ph248, %.lr.ph250, %.preheader215, %bb.q, %bb.p, %.preheader, %.loopexit218, %bb.e, %bb.o, %bb.a
  %.0175 = phi i32 [ -50, %bb.a ], [ %.lcssa, %bb.e ], [ %.1.ph, %bb.o ], [ %i.hq, %.loopexit218 ], [ %.1.ph, %bb.q ], [ %.1.ph, %.preheader ], [ %.1.ph, %bb.p ], [ %.1.ph, %.preheader215 ], [ %.1.ph, %.lr.ph245 ], [ %.1.ph, %.lr.ph250 ], [ %.1.ph, %.lr.ph248 ], [ %.1.ph, %.lr.ph242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0175
}

declare void @copy20ToPredictor(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @copy24ToPredictor(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @set_standard_ag_params(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef readonly byval(%struct.AudioFormatDescription) align 8 captures(none) %1, ptr noundef readnone byval(%struct.AudioFormatDescription) align 8 captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef captures(none) %5) unnamed_addr #5 align 2 {
bb.a:
  %6 = alloca %struct.BitBuffer, align 8          ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = load i32, ptr %5, align 4, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57
  %i.d = udiv i32 %i.a, %i.c                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8288
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  call void @BitBufferInit(ptr noundef nonnull %6, ptr noundef %4, i32 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !60
  switch i32 %i.h, label %bb.g [
    i32 2, label %bb.b
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 3)
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 4)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !18, !range !61, !noundef !62
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %i.d)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = call noundef i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.058 = phi i32 [ %i.l, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.not68 = icmp eq i32 %.058, 0
  br i1 %.not68, label %.loopexit, label %.thread

bb.f:                                             ; preds = %bb.a
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 3)
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 4)
  %i.n = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %i.d) ; 2 uses
  %.not67 = icmp eq i32 %i.n, 0
  br i1 %.not67, label %.loopexit, label %.thread

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !10
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 7
  %i.s = sdiv i32 %i.r, 8                         ; 3 uses
  %i.t = shl nsw i32 %i.s, 1
  %i.u = load i32, ptr %i.g, align 4, !tbaa !60   ; 5 uses
  %i.v = add i32 %i.u, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZL12sChannelMaps, i64 %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %.060 = phi ptr [ %3, %bb.g ], [ %.161, %bb.n ] ; 4 uses
  %.056 = phi i32 [ 0, %bb.g ], [ %.157, %bb.n ]  ; 8 uses
  %.053 = phi i8 [ 0, %bb.g ], [ %.154, %bb.n ]   ; 4 uses
  %.051 = phi i8 [ 0, %bb.g ], [ %.152, %bb.n ]   ; 4 uses
  %.050 = phi i8 [ 0, %bb.g ], [ %.1, %bb.n ]     ; 4 uses
  %i.y = icmp ult i32 %.056, %i.u
  br i1 %i.y, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.x, align 4, !tbaa !4
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul i32 %.056, 3
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = shl i64 7, %i.ac
  %i.ae = and i64 %i.ad, %i.aa
  %i.af = lshr i64 %i.ae, %i.ac
  %i.ag = trunc nuw i64 %i.af to i32              ; 3 uses
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.ag, i32 noundef 3)
  switch i32 %i.ag, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 3, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ah = zext i8 %.051 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.ah, i32 noundef 4)
  %i.ai = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.u, i32 noundef %.056, i32 noundef %i.d)
  %i.aj = add nuw i32 %.056, 1
  %i.ak = add i8 %.051, 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.al = zext i8 %.053 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.al, i32 noundef 4)
  %i.am = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.u, i32 noundef %.056, i32 noundef %i.d)
  %i.an = add i32 %.056, 2
  %i.ao = add i8 %.053, 1
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ap = zext i8 %.050 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.ap, i32 noundef 4)
  %i.aq = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.u, i32 noundef %.056, i32 noundef %i.d)
  %i.ar = add nuw i32 %.056, 1
  %i.as = add i8 %.050, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ag) ; 0 uses
  br label %.thread

end_hunk_1
