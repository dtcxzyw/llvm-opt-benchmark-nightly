Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2sRawInterpolator?download=true
inline.NumInlined: 607
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.81" = type { [8192 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv = comdat any

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi0EEEvi = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi1EEEvi = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi = comdat any

$_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [44 x i8] c"%s, line 542: Unknown subsampling: (%i; %i)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed19Cr2sRawInterpolator11interpolateEi = private unnamed_addr constant [53 x i8] c"void rawspeed::Cr2sRawInterpolator::interpolate(int)\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.81" zeroinitializer, comdat, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed19Cr2sRawInterpolator11interpolateEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp samesign ult i32 %1, 3
  tail call void @llvm.assume(i1 %i.a)
  %i.b = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %.pre = load i32, ptr %i.d, align 4, !tbaa !118 ; 3 uses
  switch i32 %i.f, label %.thread [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %.pre, 2
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !96, !noalias !19 ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  switch i32 %1, label %default.unreachable19 [
    i32 0, label %.preheader
    i32 1, label %.preheader22
    i32 2, label %.preheader24
  ]

.preheader:                                       ; preds = %bb.c, %.preheader
  %.018.i = phi i32 [ %i.k, %.preheader ], [ %1, %bb.c ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi0EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.018.i)
  %i.k = add nuw nsw i32 %.018.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.k, %i.i
  br i1 %exitcond.not.i, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader, !llvm.loop !114

.preheader22:                                     ; preds = %bb.c, %.preheader22
  %.018.i10 = phi i32 [ %i.l, %.preheader22 ], [ 0, %bb.c ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.018.i10)
  %i.l = add nuw nsw i32 %.018.i10, 1             ; 2 uses
  %exitcond.not.i11 = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i11, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader22, !llvm.loop !115

.preheader24:                                     ; preds = %bb.c, %.preheader24
  %.018.i12 = phi i32 [ %i.m, %.preheader24 ], [ 0, %bb.c ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.018.i12)
  %i.m = add nuw nsw i32 %.018.i12, 1             ; 2 uses
  %exitcond.not.i13 = icmp eq i32 %i.m, %i.i
  br i1 %exitcond.not.i13, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader24, !llvm.loop !116

default.unreachable19:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %.pre, 2
  br i1 %i.n, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i32 %1, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19Cr2sRawInterpolator11interpolateEi, i32 noundef %.pre, i32 noundef %i.f) #10
  unreachable

_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit: ; preds = %.preheader24, %.preheader22, %.preheader, %bb.g, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !130 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !130
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !130
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !130 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !130
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103  ; 4 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %i.y = icmp sge i32 %i.x, %i.s
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = udiv i32 %i.s, 6                        ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.0116.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 3 uses
  %i.ac = icmp samesign ugt i32 %i.u, 1
  br i1 %i.ac, label %.lr.ph, label %.lr.ph232

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.051221 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.051221)
  %i.ad = add nuw nsw i32 %.051221, 1             ; 3 uses
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !103 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nsw i32 %i.ae, -1
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.lr.ph232, !llvm.loop !121

.lr.ph232:                                        ; preds = %.lr.ph, %bb.a
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %.lr.ph ] ; 4 uses
  %i.ai = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.aj = icmp samesign ult i32 %.051.lcssa, %i.u
  tail call void @llvm.assume(i1 %i.aj), !noalias !131
  %i.ak = mul i32 %.051.lcssa, %i.x
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr [2 x i8], ptr %.sroa.0116.0.copyload, i64 %i.al ; 20 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !106
  %i.ap = add i32 %i.ao, -16384                   ; 2 uses
  %i.aq = shl nuw nsw i32 %.051.lcssa, 1          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load <3 x i32>, ptr %i.ar, align 8, !tbaa !107 ; 5 uses
  %i.at = shufflevector <3 x i32> %i.as, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !107
  %i.av = zext nneg i32 %invariant.op to i64
  %i.aw = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ax = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.ay = zext i32 %i.n to i64                    ; 4 uses
  %i.az = zext nneg i32 %i.k to i64
  %i.ba = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 4 uses
  %i.bb = icmp samesign ult i32 %i.aq, %i.k
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = mul nuw nsw i64 %i.ax, %i.ay            ; 2 uses
  %i.bd = getelementptr [2 x i8], ptr %i.d, i64 %i.bc ; 15 uses
  %i.be = or disjoint i64 %i.ax, 1                ; 3 uses
  %i.bf = icmp samesign ult i64 %i.be, %i.az
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = mul nuw nsw i64 %i.be, %i.ay            ; 2 uses
  %i.bh = getelementptr [2 x i8], ptr %i.d, i64 %i.bg ; 15 uses
  %min.iters.check = icmp ult i32 %i.ai, 33
  br i1 %min.iters.check, label %.preheader217.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph232
  %i.bi = zext nneg i32 %.051.lcssa to i64
  %i.bj = mul nuw nsw i64 %i.bi, %i.ay
  %i.bk = shl i64 %i.bj, 2                        ; 8 uses
  %i.bl = mul nuw nsw i64 %wide.trip.count, 12    ; 7 uses
  %i.bm = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bn, i64 -10 ; 12 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep398 = getelementptr i8, ptr %i.bo, i64 2 ; 12 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bm
  %scevgep399 = getelementptr i8, ptr %i.bp, i64 -8 ; 12 uses
  %i.bq = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep400 = getelementptr i8, ptr %i.bq, i64 4 ; 12 uses
  %i.br = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br
  %scevgep401 = getelementptr i8, ptr %i.bs, i64 -6 ; 12 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep402 = getelementptr i8, ptr %i.bt, i64 6 ; 12 uses
  %i.bu = getelementptr i8, ptr %i.d, i64 %i.br
  %scevgep403 = getelementptr i8, ptr %i.bu, i64 -4 ; 12 uses
  %i.bv = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep404 = getelementptr i8, ptr %i.bv, i64 8 ; 12 uses
  %i.bw = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep405 = getelementptr i8, ptr %i.bx, i64 -2 ; 12 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep406 = getelementptr i8, ptr %i.by, i64 10 ; 12 uses
  %scevgep407 = getelementptr i8, ptr %i.d, i64 %i.bw ; 12 uses
  %i.bz = mul nuw nsw i64 %i.be, %i.ay
  %i.ca = shl nuw i64 %i.bz, 1                    ; 8 uses
  %i.cb = add i64 %i.ca, %i.bl                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.d, i64 %i.cb
  %scevgep408 = getelementptr i8, ptr %i.cc, i64 -10 ; 12 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep409 = getelementptr i8, ptr %i.cd, i64 2 ; 12 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.cb
  %scevgep410 = getelementptr i8, ptr %i.ce, i64 -8 ; 12 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep411 = getelementptr i8, ptr %i.cf, i64 4 ; 12 uses
  %i.cg = add i64 %i.ca, %i.bl                    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %scevgep412 = getelementptr i8, ptr %i.ch, i64 -6 ; 12 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep413 = getelementptr i8, ptr %i.ci, i64 6 ; 12 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cg
  %scevgep414 = getelementptr i8, ptr %i.cj, i64 -4 ; 12 uses
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep415 = getelementptr i8, ptr %i.ck, i64 8 ; 12 uses
  %i.cl = add i64 %i.ca, %i.bl                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.cl
  %scevgep416 = getelementptr i8, ptr %i.cm, i64 -2 ; 12 uses
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep417 = getelementptr i8, ptr %i.cn, i64 10 ; 12 uses
  %scevgep418 = getelementptr i8, ptr %i.d, i64 %i.cl ; 12 uses
  %i.co = shl nuw nsw i64 %i.al, 1
  %i.cp = getelementptr i8, ptr %.sroa.0116.0.copyload, i64 %i.bl
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %scevgep419 = getelementptr i8, ptr %i.cq, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.bd, %scevgep399
  %bound1 = icmp ult ptr %scevgep398, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0420 = icmp ult ptr %i.bd, %scevgep401
  %bound1421 = icmp ult ptr %scevgep400, %scevgep
  %found.conflict422 = and i1 %bound0420, %bound1421
  %conflict.rdx = or i1 %found.conflict, %found.conflict422
  %bound0423 = icmp ult ptr %i.bd, %scevgep403
  %bound1424 = icmp ult ptr %scevgep402, %scevgep
  %found.conflict425 = and i1 %bound0423, %bound1424
  %conflict.rdx426 = or i1 %conflict.rdx, %found.conflict425
  %bound0427 = icmp ult ptr %i.bd, %scevgep405
  %bound1428 = icmp ult ptr %scevgep404, %scevgep
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx430 = or i1 %conflict.rdx426, %found.conflict429
  %bound0431 = icmp ult ptr %i.bd, %scevgep407
  %bound1432 = icmp ult ptr %scevgep406, %scevgep
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %conflict.rdx430, %found.conflict433
  %bound0435 = icmp ult ptr %i.bd, %scevgep408
  %bound1436 = icmp ult ptr %i.bh, %scevgep
  %found.conflict437 = and i1 %bound0435, %bound1436
  %conflict.rdx438 = or i1 %conflict.rdx434, %found.conflict437
  %bound0439 = icmp ult ptr %i.bd, %scevgep410
  %bound1440 = icmp ult ptr %scevgep409, %scevgep
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %conflict.rdx438, %found.conflict441
  %bound0443 = icmp ult ptr %i.bd, %scevgep412
  %bound1444 = icmp ult ptr %scevgep411, %scevgep
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict445
  %bound0447 = icmp ult ptr %i.bd, %scevgep414
  %bound1448 = icmp ult ptr %scevgep413, %scevgep
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %conflict.rdx446, %found.conflict449
  %bound0451 = icmp ult ptr %i.bd, %scevgep416
  %bound1452 = icmp ult ptr %scevgep415, %scevgep
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0455 = icmp ult ptr %i.bd, %scevgep418
  %bound1456 = icmp ult ptr %scevgep417, %scevgep
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  %bound0459 = icmp ult ptr %i.bd, %scevgep419
  %bound1460 = icmp ult ptr %i.am, %scevgep
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx458, %found.conflict461
  %bound0463 = icmp ult ptr %scevgep398, %scevgep401
  %bound1464 = icmp ult ptr %scevgep400, %scevgep399
  %found.conflict465 = and i1 %bound0463, %bound1464
  %conflict.rdx466 = or i1 %conflict.rdx462, %found.conflict465
  %bound0467 = icmp ult ptr %scevgep398, %scevgep403
  %bound1468 = icmp ult ptr %scevgep402, %scevgep399
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx470 = or i1 %conflict.rdx466, %found.conflict469
  %bound0471 = icmp ult ptr %scevgep398, %scevgep405
  %bound1472 = icmp ult ptr %scevgep404, %scevgep399
  %found.conflict473 = and i1 %bound0471, %bound1472
  %conflict.rdx474 = or i1 %conflict.rdx470, %found.conflict473
  %bound0475 = icmp ult ptr %scevgep398, %scevgep407
  %bound1476 = icmp ult ptr %scevgep406, %scevgep399
  %found.conflict477 = and i1 %bound0475, %bound1476
  %conflict.rdx478 = or i1 %conflict.rdx474, %found.conflict477
  %bound0479 = icmp ult ptr %scevgep398, %scevgep408
  %bound1480 = icmp ult ptr %i.bh, %scevgep399
  %found.conflict481 = and i1 %bound0479, %bound1480
  %conflict.rdx482 = or i1 %conflict.rdx478, %found.conflict481
  %bound0483 = icmp ult ptr %scevgep398, %scevgep410
  %bound1484 = icmp ult ptr %scevgep409, %scevgep399
  %found.conflict485 = and i1 %bound0483, %bound1484
  %conflict.rdx486 = or i1 %conflict.rdx482, %found.conflict485
  %bound0487 = icmp ult ptr %scevgep398, %scevgep412
  %bound1488 = icmp ult ptr %scevgep411, %scevgep399
  %found.conflict489 = and i1 %bound0487, %bound1488
  %conflict.rdx490 = or i1 %conflict.rdx486, %found.conflict489
  %bound0491 = icmp ult ptr %scevgep398, %scevgep414
  %bound1492 = icmp ult ptr %scevgep413, %scevgep399
  %found.conflict493 = and i1 %bound0491, %bound1492
  %conflict.rdx494 = or i1 %conflict.rdx490, %found.conflict493
  %bound0495 = icmp ult ptr %scevgep398, %scevgep416
  %bound1496 = icmp ult ptr %scevgep415, %scevgep399
  %found.conflict497 = and i1 %bound0495, %bound1496
  %conflict.rdx498 = or i1 %conflict.rdx494, %found.conflict497
  %bound0499 = icmp ult ptr %scevgep398, %scevgep418
  %bound1500 = icmp ult ptr %scevgep417, %scevgep399
  %found.conflict501 = and i1 %bound0499, %bound1500
  %conflict.rdx502 = or i1 %conflict.rdx498, %found.conflict501
  %bound0503 = icmp ult ptr %scevgep398, %scevgep419
  %bound1504 = icmp ult ptr %i.am, %scevgep399
  %found.conflict505 = and i1 %bound0503, %bound1504
  %conflict.rdx506 = or i1 %conflict.rdx502, %found.conflict505
  %bound0507 = icmp ult ptr %scevgep400, %scevgep403
  %bound1508 = icmp ult ptr %scevgep402, %scevgep401
  %found.conflict509 = and i1 %bound0507, %bound1508
  %conflict.rdx510 = or i1 %conflict.rdx506, %found.conflict509
  %bound0511 = icmp ult ptr %scevgep400, %scevgep405
  %bound1512 = icmp ult ptr %scevgep404, %scevgep401
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx514 = or i1 %conflict.rdx510, %found.conflict513
  %bound0515 = icmp ult ptr %scevgep400, %scevgep407
  %bound1516 = icmp ult ptr %scevgep406, %scevgep401
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx518 = or i1 %conflict.rdx514, %found.conflict517
  %bound0519 = icmp ult ptr %scevgep400, %scevgep408
  %bound1520 = icmp ult ptr %i.bh, %scevgep401
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx522 = or i1 %conflict.rdx518, %found.conflict521
  %bound0523 = icmp ult ptr %scevgep400, %scevgep410
end_hunk_0
begin_hunk_1_@_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv:bb.a
  %i.dm = ashr <8 x i32> %i.dl, splat (i32 1)     ; 3 uses
  %i.dn = add nsw <8 x i32> %i.dk, %i.di
  %i.do = ashr <8 x i32> %i.dn, splat (i32 1)     ; 3 uses
  %i.dp = mul nsw <8 x i32> %i.dh, splat (i32 50)
  %i.dq = mul nsw <8 x i32> %i.di, splat (i32 22929)
  %i.dr = add nsw <8 x i32> %i.dq, %i.dp
  %i.ds = ashr <8 x i32> %i.dr, splat (i32 12)    ; 2 uses
  %i.dt = add nsw <8 x i32> %i.ds, %i.cx
  %i.du = mul nsw <8 x i32> %i.dt, %broadcast.splat728
  %i.dv = mul nsw <8 x i32> %i.dh, splat (i32 -5640)
  %i.dw = mul <8 x i32> %i.di, splat (i32 -11751)
  %i.dx = add <8 x i32> %i.dw, %i.dv
  %i.dy = ashr <8 x i32> %i.dx, splat (i32 12)    ; 2 uses
  %i.dz = add nsw <8 x i32> %i.dy, %i.cx
  %i.ea = mul nsw <8 x i32> %i.dz, %broadcast.splat730
  %i.eb = mul nsw <8 x i32> %i.dh, splat (i32 29040)
  %i.ec = mul <8 x i32> %i.di, splat (i32 -101)
  %i.ed = add <8 x i32> %i.ec, %i.eb
  %i.ee = ashr <8 x i32> %i.ed, splat (i32 12)    ; 2 uses
  %i.ef = add nsw <8 x i32> %i.ee, %i.cx
  %i.eg = mul nsw <8 x i32> %i.ef, %broadcast.splat732
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cv
  %i.ei = mul nsw <8 x i32> %i.dm, splat (i32 50)
  %i.ej = mul nsw <8 x i32> %i.do, splat (i32 22929)
  %i.ek = add nsw <8 x i32> %i.ej, %i.ei
  %i.el = ashr <8 x i32> %i.ek, splat (i32 12)    ; 2 uses
  %i.em = add nsw <8 x i32> %i.el, %i.cy
  %i.en = mul nsw <8 x i32> %i.em, %broadcast.splat728
  %i.eo = mul nsw <8 x i32> %i.dm, splat (i32 -5640)
  %i.ep = mul <8 x i32> %i.do, splat (i32 -11751)
  %i.eq = add <8 x i32> %i.ep, %i.eo
  %i.er = ashr <8 x i32> %i.eq, splat (i32 12)    ; 2 uses
  %i.es = add nsw <8 x i32> %i.er, %i.cy
  %i.et = mul nsw <8 x i32> %i.es, %broadcast.splat730
  %i.eu = mul nsw <8 x i32> %i.dm, splat (i32 29040)
  %i.ev = mul <8 x i32> %i.do, splat (i32 -101)
  %i.ew = add <8 x i32> %i.ev, %i.eu
  %i.ex = ashr <8 x i32> %i.ew, splat (i32 12)    ; 2 uses
  %i.ey = add nsw <8 x i32> %i.ex, %i.cy
  %i.ez = mul nsw <8 x i32> %i.ey, %broadcast.splat732
  %i.fa = ashr <8 x i32> %i.et, splat (i32 8)
  %i.fb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fa, <8 x i32> zeroinitializer)
  %i.fc = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fb, <8 x i32> splat (i32 65535))
  %i.fd = trunc nuw <8 x i32> %i.fc to <8 x i16>
  %i.fe = ashr <8 x i32> %i.ez, splat (i32 8)
  %i.ff = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fe, <8 x i32> zeroinitializer)
  %i.fg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ff, <8 x i32> splat (i32 65535))
  %i.fh = trunc nuw <8 x i32> %i.fg to <8 x i16>
  %i.fi = shufflevector <8 x i32> %i.du, <8 x i32> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fj = shufflevector <8 x i32> %i.eg, <8 x i32> %i.en, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fk = shufflevector <16 x i32> %i.fi, <16 x i32> %i.fj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fl = ashr <32 x i32> %i.fk, splat (i32 8)
  %i.fm = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.fl, <32 x i32> zeroinitializer)
  %i.fn = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.fm, <32 x i32> splat (i32 65535))
  %i.fo = trunc nuw <32 x i32> %i.fn to <32 x i16>
  %i.fp = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.fo, <32 x i16> %i.fp, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.eh, align 2, !tbaa !109
  %i.fq = add nsw <8 x i32> %i.ds, %i.cz
  %i.fr = mul nsw <8 x i32> %i.fq, %broadcast.splat728
  %i.fs = add nsw <8 x i32> %i.dy, %i.cz
  %i.ft = mul nsw <8 x i32> %i.fs, %broadcast.splat730
  %i.fu = add nsw <8 x i32> %i.ee, %i.cz
  %i.fv = mul nsw <8 x i32> %i.fu, %broadcast.splat732
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.cv
  %i.fx = add nsw <8 x i32> %i.el, %i.da
  %i.fy = mul nsw <8 x i32> %i.fx, %broadcast.splat728
  %i.fz = add nsw <8 x i32> %i.er, %i.da
  %i.ga = mul nsw <8 x i32> %i.fz, %broadcast.splat730
  %i.gb = add nsw <8 x i32> %i.ex, %i.da
  %i.gc = mul nsw <8 x i32> %i.gb, %broadcast.splat732
  %i.gd = ashr <8 x i32> %i.ga, splat (i32 8)
  %i.ge = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gd, <8 x i32> zeroinitializer)
  %i.gf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ge, <8 x i32> splat (i32 65535))
  %i.gg = trunc nuw <8 x i32> %i.gf to <8 x i16>
  %i.gh = ashr <8 x i32> %i.gc, splat (i32 8)
  %i.gi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gh, <8 x i32> zeroinitializer)
  %i.gj = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gi, <8 x i32> splat (i32 65535))
  %i.gk = trunc nuw <8 x i32> %i.gj to <8 x i16>
  %i.gl = shufflevector <8 x i32> %i.fr, <8 x i32> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gm = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gn = shufflevector <16 x i32> %i.gl, <16 x i32> %i.gm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.go = ashr <32 x i32> %i.gn, splat (i32 8)
  %i.gp = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.go, <32 x i32> zeroinitializer)
  %i.gq = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.gp, <32 x i32> splat (i32 65535))
  %i.gr = trunc nuw <32 x i32> %i.gq to <32 x i16>
  %i.gs = shufflevector <8 x i16> %i.gg, <8 x i16> %i.gk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec747 = shufflevector <32 x i16> %i.gr, <32 x i16> %i.gs, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec747, ptr %i.fw, align 2, !tbaa !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gt = add nuw nsw i64 %i.cu, 8
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %.preheader217.preheader, label %vector.body, !llvm.loop !126

.preheader217.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph232
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph232 ], [ %n.vec, %vector.body ]
  %i.gv = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.gw = shufflevector <4 x i32> %i.gv, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gx = shufflevector <4 x i32> %i.gw, <4 x i32> %i.at, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gy = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.gz = shufflevector <2 x i32> %i.gy, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = shufflevector <3 x i32> %i.as, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.preheader, %.preheader217
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader217 ], [ %indvars.iv.ph, %.preheader217.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.hb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hc
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hc
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 6
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hc
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load <2 x i16>, ptr %i.hl, align 2, !tbaa !109, !noalias !131
  %i.hn = zext <2 x i16> %i.hm to <2 x i32>
  %i.ho = mul nuw nsw i64 %indvars.iv.next, 6     ; 2 uses
  %i.hp = icmp samesign ule i64 %i.ho, %i.av
  tail call void @llvm.assume(i1 %i.hp), !noalias !131
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load <2 x i16>, ptr %i.hr, align 2, !tbaa !109, !noalias !131
  %i.ht = zext <2 x i16> %i.hs to <2 x i32>
  %i.hu = add nuw nsw i64 %i.hc, 3                ; 3 uses
  %i.hv = icmp samesign ule i64 %i.hu, %i.aw
  tail call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.hc
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.hu
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.hc
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.hu
  %i.ib = load i16, ptr %i.hj, align 2, !tbaa !109, !noalias !131
  %i.ic = load <2 x i16>, ptr %i.hh, align 2, !tbaa !109, !noalias !131
  %i.id = shufflevector <2 x i16> %i.ic, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ie = zext i16 %i.ib to i32
  %i.if = zext <4 x i16> %i.id to <4 x i32>
  %i.ig = load i16, ptr %i.hf, align 2, !tbaa !109, !noalias !131
  %i.ih = load <2 x i16>, ptr %i.hd, align 2, !tbaa !109, !noalias !131
  %i.ii = shufflevector <2 x i16> %i.ih, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ij = zext i16 %i.ig to i32
  %i.ik = zext <4 x i16> %i.ii to <4 x i32>
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.im = add <2 x i32> %i.gz, %i.ht
  %i.in = add <2 x i32> %i.gz, %i.hn              ; 3 uses
  %i.io = add nsw <2 x i32> %i.im, %i.in
  %i.ip = ashr <2 x i32> %i.io, splat (i32 1)     ; 4 uses
  %i.iq = shufflevector <2 x i32> %i.in, <2 x i32> %i.ip, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.ir = mul <4 x i32> %i.iq, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.is = shufflevector <2 x i32> %i.in, <2 x i32> %i.ip, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.it = mul <4 x i32> %i.is, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.iu = add <4 x i32> %i.it, %i.ir
  %i.iv = ashr <4 x i32> %i.iu, splat (i32 12)    ; 2 uses
  %i.iw = mul <2 x i32> %i.ip, <i32 29040, i32 -11751>
  %i.ix = shufflevector <2 x i32> %i.iw, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.iy = mul <2 x i32> %i.ip, <i32 -5640, i32 -101>
  %i.iz = add <2 x i32> %i.iy, %i.ix
  %i.ja = ashr <2 x i32> %i.iz, splat (i32 12)    ; 2 uses
  %i.jb = add nsw <4 x i32> %i.iv, %i.ik
  %i.jc = mul nsw <4 x i32> %i.jb, %i.gx
  %i.jd = ashr <4 x i32> %i.jc, splat (i32 8)
  %i.je = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jd, <4 x i32> zeroinitializer)
  %i.jf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.je, <4 x i32> splat (i32 65535))
  %i.jg = trunc nuw <4 x i32> %i.jf to <4 x i16>
  store <4 x i16> %i.jg, ptr %i.hw, align 2, !tbaa !109
  %i.jh = insertelement <2 x i32> poison, i32 %i.ij, i64 0
  %i.ji = shufflevector <2 x i32> %i.jh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jj = add nsw <2 x i32> %i.ja, %i.ji
  %i.jk = mul nsw <2 x i32> %i.jj, %i.ha
  %i.jl = ashr <2 x i32> %i.jk, splat (i32 8)
  %i.jm = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jl, <2 x i32> zeroinitializer)
  %i.jn = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jm, <2 x i32> splat (i32 65535))
  %i.jo = trunc nuw <2 x i32> %i.jn to <2 x i16>
  store <2 x i16> %i.jo, ptr %i.hy, align 2, !tbaa !109
  %i.jp = add nsw <4 x i32> %i.iv, %i.if
  %i.jq = mul nsw <4 x i32> %i.jp, %i.at
  %i.jr = insertelement <2 x i32> poison, i32 %i.ie, i64 0
  %i.js = shufflevector <2 x i32> %i.jr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jt = add nsw <2 x i32> %i.ja, %i.js
  %i.ju = mul nsw <2 x i32> %i.jt, %i.ha
  %i.jv = ashr <4 x i32> %i.jq, splat (i32 8)
  %i.jw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jv, <4 x i32> zeroinitializer)
  %i.jx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.jw, <4 x i32> splat (i32 65535))
  %i.jy = trunc nuw <4 x i32> %i.jx to <4 x i16>
  store <4 x i16> %i.jy, ptr %i.hz, align 2, !tbaa !109
  %i.jz = ashr <2 x i32> %i.ju, splat (i32 8)
  %i.ka = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jz, <2 x i32> zeroinitializer)
  %i.kb = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ka, <2 x i32> splat (i32 65535))
  %i.kc = trunc nuw <2 x i32> %i.kb to <2 x i16>
  store <2 x i16> %i.kc, ptr %i.il, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge233, label %.preheader217, !llvm.loop !127

._crit_edge233:                                   ; preds = %.preheader217
  %i.kd = zext nneg i32 %i.s to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0116.0.copyload, i64 %i.al ; 5 uses
  %1 = mul nuw nsw i32 %i.ai, 6                   ; 3 uses
  %i.kf = zext nneg i32 %1 to i64                 ; 7 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.kf
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.kf
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = add nuw nsw i64 %i.kf, 3                ; 2 uses
  %i.km = icmp samesign ult i64 %i.kl, %i.kd
  tail call void @llvm.assume(i1 %i.km), !noalias !133
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.kl
  %2 = add nuw nsw i32 %1, 6
  %3 = icmp samesign ule i32 %2, %i.s
  tail call void @llvm.assume(i1 %3), !noalias !133
  %i.ko = zext nneg i32 %1 to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !106
  %i.kt = add i32 %i.ks, -16384
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kv = add nuw nsw i64 %i.kf, 3                ; 3 uses
  %i.kw = icmp samesign ule i64 %i.kv, %i.aw
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  tail call void @llvm.assume(i1 %i.kw)
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.kf
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.kv
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bg ; 2 uses
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.kf
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.kv
  %i.le = load i16, ptr %i.kn, align 2, !tbaa !109, !noalias !133
  %i.lf = load <2 x i16>, ptr %i.kk, align 2, !tbaa !109, !noalias !133
  %i.lg = shufflevector <2 x i16> %i.lf, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lh = zext i16 %i.le to i32
  %i.li = zext <4 x i16> %i.lg to <4 x i32>
  %i.lj = load <2 x i16>, ptr %i.kq, align 2, !tbaa !109, !noalias !133
  %i.lk = zext <2 x i16> %i.lj to <2 x i32>
  %i.ll = insertelement <2 x i32> poison, i32 %i.kt, i64 0
  %i.lm = shufflevector <2 x i32> %i.ll, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ln = add <2 x i32> %i.lm, %i.lk              ; 2 uses
  %i.lo = shufflevector <2 x i32> %i.ln, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lp = load <3 x i32>, ptr %i.ku, align 8, !tbaa !107 ; 2 uses
  %i.lq = shufflevector <3 x i32> %i.lp, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.lr = load i32, ptr %i.ku, align 8, !tbaa !107
  %i.ls = mul <4 x i32> %i.lo, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.lt = shufflevector <2 x i32> %i.ln, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.lu = mul <4 x i32> %i.lt, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.lv = add <4 x i32> %i.ls, %i.lu
  %i.lw = ashr <4 x i32> %i.lv, splat (i32 12)    ; 3 uses
  %i.lx = load i16, ptr %i.ki, align 2, !tbaa !109, !noalias !133
  %i.ly = load <2 x i16>, ptr %i.kg, align 2, !tbaa !109, !noalias !133
  %i.lz = shufflevector <2 x i16> %i.ly, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ma = zext i16 %i.lx to i32
  %i.mb = zext <4 x i16> %i.lz to <4 x i32>
  %i.mc = shufflevector <4 x i32> %i.lw, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.md = add nsw <4 x i32> %i.mc, %i.mb
  %i.me = insertelement <4 x i32> poison, i32 %i.lr, i64 0
  %i.mf = shufflevector <4 x i32> %i.me, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.mg = shufflevector <4 x i32> %i.mf, <4 x i32> %i.lq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mh = mul nsw <4 x i32> %i.md, %i.mg
  %i.mi = ashr <4 x i32> %i.mh, splat (i32 8)
  %i.mj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mi, <4 x i32> zeroinitializer)
  %i.mk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mj, <4 x i32> splat (i32 65535))
  %i.ml = trunc nuw <4 x i32> %i.mk to <4 x i16>
  store <4 x i16> %i.ml, ptr %i.ky, align 2, !tbaa !109
  %i.mm = shufflevector <4 x i32> %i.lw, <4 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mn = insertelement <2 x i32> poison, i32 %i.ma, i64 0
  %i.mo = shufflevector <2 x i32> %i.mn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mp = add nsw <2 x i32> %i.mm, %i.mo
  %i.mq = shufflevector <3 x i32> %i.lp, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mr = mul nsw <2 x i32> %i.mp, %i.mq
  %i.ms = ashr <2 x i32> %i.mr, splat (i32 8)
  %i.mt = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ms, <2 x i32> zeroinitializer)
  %i.mu = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mt, <2 x i32> splat (i32 65535))
  %i.mv = trunc nuw <2 x i32> %i.mu to <2 x i16>
  store <2 x i16> %i.mv, ptr %i.la, align 2, !tbaa !109
  %i.mw = add nsw <4 x i32> %i.lw, %i.li
  %i.mx = mul nsw <4 x i32> %i.mw, %i.lq
  %i.my = ashr <4 x i32> %i.mx, splat (i32 8)
  %i.mz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.my, <4 x i32> zeroinitializer)
  %i.na = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mz, <4 x i32> splat (i32 65535))
  %i.nb = trunc nuw <4 x i32> %i.na to <4 x i16>
  store <4 x i16> %i.nb, ptr %i.lc, align 2, !tbaa !109
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.nd = insertelement <2 x i32> poison, i32 %i.lh, i64 0
  %i.ne = shufflevector <2 x i32> %i.nd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.nf = add nsw <2 x i32> %i.mm, %i.ne
  %i.ng = mul nsw <2 x i32> %i.nf, %i.mq
  %i.nh = ashr <2 x i32> %i.ng, splat (i32 8)
  %i.ni = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nh, <2 x i32> zeroinitializer)
  %i.nj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ni, <2 x i32> splat (i32 65535))
  %i.nk = trunc nuw <2 x i32> %i.nj to <2 x i16>
  store <2 x i16> %i.nk, ptr %i.nc, align 2, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !145 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !145
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !145
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !145 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !145
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103  ; 4 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %i.y = icmp sge i32 %i.x, %i.s
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = udiv i32 %i.s, 6                        ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.0114.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 3 uses
  %i.ac = icmp samesign ugt i32 %i.u, 1
  br i1 %i.ac, label %.lr.ph, label %.lr.ph230

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.051219 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.051219)
  %i.ad = add nuw nsw i32 %.051219, 1             ; 3 uses
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !103 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nsw i32 %i.ae, -1
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.lr.ph230, !llvm.loop !136

.lr.ph230:                                        ; preds = %.lr.ph, %bb.a
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %.lr.ph ] ; 4 uses
  %i.ai = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.aj = icmp samesign ult i32 %.051.lcssa, %i.u
  tail call void @llvm.assume(i1 %i.aj), !noalias !146
  %i.ak = mul i32 %.051.lcssa, %i.x
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.al ; 20 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !106
  %i.ap = add i32 %i.ao, -16384                   ; 5 uses
  %i.aq = shl nuw nsw i32 %.051.lcssa, 1          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load <3 x i32>, ptr %i.ar, align 8, !tbaa !107 ; 5 uses
  %i.at = shufflevector <3 x i32> %i.as, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !107
  %i.av = zext nneg i32 %invariant.op to i64
  %i.aw = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ax = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.ay = zext i32 %i.n to i64                    ; 4 uses
  %i.az = zext nneg i32 %i.k to i64
  %i.ba = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 4 uses
  %i.bb = icmp samesign ult i32 %i.aq, %i.k
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = mul nuw nsw i64 %i.ax, %i.ay            ; 2 uses
  %i.bd = getelementptr [2 x i8], ptr %i.d, i64 %i.bc ; 15 uses
  %i.be = or disjoint i64 %i.ax, 1                ; 3 uses
  %i.bf = icmp samesign ult i64 %i.be, %i.az
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = mul nuw nsw i64 %i.be, %i.ay            ; 2 uses
  %i.bh = getelementptr [2 x i8], ptr %i.d, i64 %i.bg ; 15 uses
  %min.iters.check = icmp ult i32 %i.ai, 41
  br i1 %min.iters.check, label %.preheader215.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph230
  %i.bi = zext nneg i32 %.051.lcssa to i64
  %i.bj = mul nuw nsw i64 %i.bi, %i.ay
  %i.bk = shl i64 %i.bj, 2                        ; 8 uses
  %i.bl = mul nuw nsw i64 %wide.trip.count, 12    ; 7 uses
  %i.bm = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bn, i64 -10 ; 12 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep392 = getelementptr i8, ptr %i.bo, i64 2 ; 12 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bm
  %scevgep393 = getelementptr i8, ptr %i.bp, i64 -8 ; 12 uses
  %i.bq = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep394 = getelementptr i8, ptr %i.bq, i64 4 ; 12 uses
  %i.br = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br
  %scevgep395 = getelementptr i8, ptr %i.bs, i64 -6 ; 12 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep396 = getelementptr i8, ptr %i.bt, i64 6 ; 12 uses
  %i.bu = getelementptr i8, ptr %i.d, i64 %i.br
  %scevgep397 = getelementptr i8, ptr %i.bu, i64 -4 ; 12 uses
  %i.bv = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep398 = getelementptr i8, ptr %i.bv, i64 8 ; 12 uses
  %i.bw = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep399 = getelementptr i8, ptr %i.bx, i64 -2 ; 12 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bk
  %scevgep400 = getelementptr i8, ptr %i.by, i64 10 ; 12 uses
  %scevgep401 = getelementptr i8, ptr %i.d, i64 %i.bw ; 12 uses
  %i.bz = mul nuw nsw i64 %i.be, %i.ay
  %i.ca = shl nuw i64 %i.bz, 1                    ; 8 uses
  %i.cb = add i64 %i.ca, %i.bl                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.d, i64 %i.cb
  %scevgep402 = getelementptr i8, ptr %i.cc, i64 -10 ; 12 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep403 = getelementptr i8, ptr %i.cd, i64 2 ; 12 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.cb
  %scevgep404 = getelementptr i8, ptr %i.ce, i64 -8 ; 12 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep405 = getelementptr i8, ptr %i.cf, i64 4 ; 12 uses
  %i.cg = add i64 %i.ca, %i.bl                    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %scevgep406 = getelementptr i8, ptr %i.ch, i64 -6 ; 12 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep407 = getelementptr i8, ptr %i.ci, i64 6 ; 12 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cg
  %scevgep408 = getelementptr i8, ptr %i.cj, i64 -4 ; 12 uses
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep409 = getelementptr i8, ptr %i.ck, i64 8 ; 12 uses
  %i.cl = add i64 %i.ca, %i.bl                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.cl
  %scevgep410 = getelementptr i8, ptr %i.cm, i64 -2 ; 12 uses
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep411 = getelementptr i8, ptr %i.cn, i64 10 ; 12 uses
  %scevgep412 = getelementptr i8, ptr %i.d, i64 %i.cl ; 12 uses
  %i.co = shl nuw nsw i64 %i.al, 1
  %i.cp = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.bl
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %scevgep413 = getelementptr i8, ptr %i.cq, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.bd, %scevgep393
  %bound1 = icmp ult ptr %scevgep392, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0414 = icmp ult ptr %i.bd, %scevgep395
  %bound1415 = icmp ult ptr %scevgep394, %scevgep
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx = or i1 %found.conflict, %found.conflict416
  %bound0417 = icmp ult ptr %i.bd, %scevgep397
  %bound1418 = icmp ult ptr %scevgep396, %scevgep
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %conflict.rdx, %found.conflict419
  %bound0421 = icmp ult ptr %i.bd, %scevgep399
  %bound1422 = icmp ult ptr %scevgep398, %scevgep
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %conflict.rdx420, %found.conflict423
  %bound0425 = icmp ult ptr %i.bd, %scevgep401
  %bound1426 = icmp ult ptr %scevgep400, %scevgep
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %conflict.rdx424, %found.conflict427
  %bound0429 = icmp ult ptr %i.bd, %scevgep402
  %bound1430 = icmp ult ptr %i.bh, %scevgep
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %conflict.rdx428, %found.conflict431
  %bound0433 = icmp ult ptr %i.bd, %scevgep404
  %bound1434 = icmp ult ptr %scevgep403, %scevgep
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx436 = or i1 %conflict.rdx432, %found.conflict435
  %bound0437 = icmp ult ptr %i.bd, %scevgep406
  %bound1438 = icmp ult ptr %scevgep405, %scevgep
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %conflict.rdx436, %found.conflict439
  %bound0441 = icmp ult ptr %i.bd, %scevgep408
  %bound1442 = icmp ult ptr %scevgep407, %scevgep
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx444 = or i1 %conflict.rdx440, %found.conflict443
  %bound0445 = icmp ult ptr %i.bd, %scevgep410
  %bound1446 = icmp ult ptr %scevgep409, %scevgep
  %found.conflict447 = and i1 %bound0445, %bound1446
  %conflict.rdx448 = or i1 %conflict.rdx444, %found.conflict447
  %bound0449 = icmp ult ptr %i.bd, %scevgep412
  %bound1450 = icmp ult ptr %scevgep411, %scevgep
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx452 = or i1 %conflict.rdx448, %found.conflict451
  %bound0453 = icmp ult ptr %i.bd, %scevgep413
  %bound1454 = icmp ult ptr %i.am, %scevgep
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx456 = or i1 %conflict.rdx452, %found.conflict455
  %bound0457 = icmp ult ptr %scevgep392, %scevgep395
  %bound1458 = icmp ult ptr %scevgep394, %scevgep393
  %found.conflict459 = and i1 %bound0457, %bound1458
  %conflict.rdx460 = or i1 %conflict.rdx456, %found.conflict459
  %bound0461 = icmp ult ptr %scevgep392, %scevgep397
  %bound1462 = icmp ult ptr %scevgep396, %scevgep393
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx464 = or i1 %conflict.rdx460, %found.conflict463
  %bound0465 = icmp ult ptr %scevgep392, %scevgep399
  %bound1466 = icmp ult ptr %scevgep398, %scevgep393
  %found.conflict467 = and i1 %bound0465, %bound1466
  %conflict.rdx468 = or i1 %conflict.rdx464, %found.conflict467
  %bound0469 = icmp ult ptr %scevgep392, %scevgep401
  %bound1470 = icmp ult ptr %scevgep400, %scevgep393
  %found.conflict471 = and i1 %bound0469, %bound1470
  %conflict.rdx472 = or i1 %conflict.rdx468, %found.conflict471
  %bound0473 = icmp ult ptr %scevgep392, %scevgep402
  %bound1474 = icmp ult ptr %i.bh, %scevgep393
  %found.conflict475 = and i1 %bound0473, %bound1474
  %conflict.rdx476 = or i1 %conflict.rdx472, %found.conflict475
  %bound0477 = icmp ult ptr %scevgep392, %scevgep404
  %bound1478 = icmp ult ptr %scevgep403, %scevgep393
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %conflict.rdx476, %found.conflict479
  %bound0481 = icmp ult ptr %scevgep392, %scevgep406
  %bound1482 = icmp ult ptr %scevgep405, %scevgep393
  %found.conflict483 = and i1 %bound0481, %bound1482
  %conflict.rdx484 = or i1 %conflict.rdx480, %found.conflict483
  %bound0485 = icmp ult ptr %scevgep392, %scevgep408
  %bound1486 = icmp ult ptr %scevgep407, %scevgep393
  %found.conflict487 = and i1 %bound0485, %bound1486
  %conflict.rdx488 = or i1 %conflict.rdx484, %found.conflict487
  %bound0489 = icmp ult ptr %scevgep392, %scevgep410
  %bound1490 = icmp ult ptr %scevgep409, %scevgep393
  %found.conflict491 = and i1 %bound0489, %bound1490
  %conflict.rdx492 = or i1 %conflict.rdx488, %found.conflict491
  %bound0493 = icmp ult ptr %scevgep392, %scevgep412
  %bound1494 = icmp ult ptr %scevgep411, %scevgep393
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx496 = or i1 %conflict.rdx492, %found.conflict495
  %bound0497 = icmp ult ptr %scevgep392, %scevgep413
  %bound1498 = icmp ult ptr %i.am, %scevgep393
  %found.conflict499 = and i1 %bound0497, %bound1498
  %conflict.rdx500 = or i1 %conflict.rdx496, %found.conflict499
  %bound0501 = icmp ult ptr %scevgep394, %scevgep397
  %bound1502 = icmp ult ptr %scevgep396, %scevgep395
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %conflict.rdx500, %found.conflict503
  %bound0505 = icmp ult ptr %scevgep394, %scevgep399
  %bound1506 = icmp ult ptr %scevgep398, %scevgep395
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %conflict.rdx504, %found.conflict507
  %bound0509 = icmp ult ptr %scevgep394, %scevgep401
  %bound1510 = icmp ult ptr %scevgep400, %scevgep395
  %found.conflict511 = and i1 %bound0509, %bound1510
  %conflict.rdx512 = or i1 %conflict.rdx508, %found.conflict511
  %bound0513 = icmp ult ptr %scevgep394, %scevgep402
  %bound1514 = icmp ult ptr %i.bh, %scevgep395
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx516 = or i1 %conflict.rdx512, %found.conflict515
  %bound0517 = icmp ult ptr %scevgep394, %scevgep404
end_hunk_1
begin_hunk_2_@_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv:bb.a
  %i.di = add <8 x i32> %broadcast.splat, %i.dc   ; 4 uses
  %i.dj = add <8 x i32> %broadcast.splat, %i.df
  %i.dk = add <8 x i32> %broadcast.splat, %i.dg
  %i.dl = add nsw <8 x i32> %i.dj, %i.dh
  %i.dm = ashr <8 x i32> %i.dl, splat (i32 1)     ; 3 uses
  %i.dn = add nsw <8 x i32> %i.dk, %i.di
  %i.do = ashr <8 x i32> %i.dn, splat (i32 1)     ; 3 uses
  %i.dp = add nsw <8 x i32> %i.di, %i.cx
  %i.dq = mul nsw <8 x i32> %i.dp, %broadcast.splat722
  %i.dr = mul nsw <8 x i32> %i.dh, splat (i32 -778)
  %i.ds = shl nsw <8 x i32> %i.di, splat (i32 11)
  %i.dt = sub nsw <8 x i32> %i.dr, %i.ds
  %i.du = ashr <8 x i32> %i.dt, splat (i32 12)    ; 2 uses
  %i.dv = add nsw <8 x i32> %i.du, %i.cx
  %i.dw = mul nsw <8 x i32> %i.dv, %broadcast.splat724
  %i.dx = add nsw <8 x i32> %i.dh, %i.cx
  %i.dy = mul nsw <8 x i32> %broadcast.splat726, %i.dx
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cv
  %i.ea = add nsw <8 x i32> %i.do, %i.cy
  %i.eb = mul nsw <8 x i32> %i.ea, %broadcast.splat722
  %i.ec = mul nsw <8 x i32> %i.dm, splat (i32 -778)
  %i.ed = shl nsw <8 x i32> %i.do, splat (i32 11)
  %i.ee = sub nsw <8 x i32> %i.ec, %i.ed
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 12)    ; 2 uses
  %i.eg = add nsw <8 x i32> %i.ef, %i.cy
  %i.eh = mul nsw <8 x i32> %i.eg, %broadcast.splat724
  %i.ei = add nsw <8 x i32> %i.dm, %i.cy
  %i.ej = mul nsw <8 x i32> %broadcast.splat726, %i.ei
  %i.ek = ashr <8 x i32> %i.eh, splat (i32 8)
  %i.el = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ek, <8 x i32> zeroinitializer)
  %i.em = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.el, <8 x i32> splat (i32 65535))
  %i.en = trunc nuw <8 x i32> %i.em to <8 x i16>
  %i.eo = ashr <8 x i32> %i.ej, splat (i32 8)
  %i.ep = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eo, <8 x i32> zeroinitializer)
  %i.eq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ep, <8 x i32> splat (i32 65535))
  %i.er = trunc nuw <8 x i32> %i.eq to <8 x i16>
  %i.es = shufflevector <8 x i32> %i.dq, <8 x i32> %i.dw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.et = shufflevector <8 x i32> %i.dy, <8 x i32> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eu = shufflevector <16 x i32> %i.es, <16 x i32> %i.et, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ev = ashr <32 x i32> %i.eu, splat (i32 8)
  %i.ew = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.ev, <32 x i32> zeroinitializer)
  %i.ex = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.ew, <32 x i32> splat (i32 65535))
  %i.ey = trunc nuw <32 x i32> %i.ex to <32 x i16>
  %i.ez = shufflevector <8 x i16> %i.en, <8 x i16> %i.er, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.ey, <32 x i16> %i.ez, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.dz, align 2, !tbaa !109
  %i.fa = add nsw <8 x i32> %i.di, %i.cz
  %i.fb = mul nsw <8 x i32> %i.fa, %broadcast.splat722
  %i.fc = add nsw <8 x i32> %i.du, %i.cz
  %i.fd = mul nsw <8 x i32> %i.fc, %broadcast.splat724
  %i.fe = add nsw <8 x i32> %i.dh, %i.cz
  %i.ff = mul nsw <8 x i32> %broadcast.splat726, %i.fe
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.cv
  %i.fh = add nsw <8 x i32> %i.do, %i.da
  %i.fi = mul nsw <8 x i32> %i.fh, %broadcast.splat722
  %i.fj = add nsw <8 x i32> %i.ef, %i.da
  %i.fk = mul nsw <8 x i32> %i.fj, %broadcast.splat724
  %i.fl = add nsw <8 x i32> %i.dm, %i.da
  %i.fm = mul nsw <8 x i32> %broadcast.splat726, %i.fl
  %i.fn = ashr <8 x i32> %i.fk, splat (i32 8)
  %i.fo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fn, <8 x i32> zeroinitializer)
  %i.fp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fo, <8 x i32> splat (i32 65535))
  %i.fq = trunc nuw <8 x i32> %i.fp to <8 x i16>
  %i.fr = ashr <8 x i32> %i.fm, splat (i32 8)
  %i.fs = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fr, <8 x i32> zeroinitializer)
  %i.ft = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fs, <8 x i32> splat (i32 65535))
  %i.fu = trunc nuw <8 x i32> %i.ft to <8 x i16>
  %i.fv = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fw = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fx = shufflevector <16 x i32> %i.fv, <16 x i32> %i.fw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fy = ashr <32 x i32> %i.fx, splat (i32 8)
  %i.fz = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.fy, <32 x i32> zeroinitializer)
  %i.ga = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.fz, <32 x i32> splat (i32 65535))
  %i.gb = trunc nuw <32 x i32> %i.ga to <32 x i16>
  %i.gc = shufflevector <8 x i16> %i.fq, <8 x i16> %i.fu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec741 = shufflevector <32 x i16> %i.gb, <32 x i16> %i.gc, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec741, ptr %i.fg, align 2, !tbaa !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gd = add nuw nsw i64 %i.cu, 8
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %.preheader215.preheader, label %vector.body, !llvm.loop !141

.preheader215.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph230
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph230 ], [ %n.vec, %vector.body ]
  %i.gf = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.gg = shufflevector <4 x i32> %i.gf, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gh = shufflevector <4 x i32> %i.gg, <4 x i32> %i.at, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gi = shufflevector <3 x i32> %i.as, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.preheader, %.preheader215
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader215 ], [ %indvars.iv.ph, %.preheader215.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.gj = icmp samesign ult i64 %indvars.iv.next, %i.ba
  tail call void @llvm.assume(i1 %i.gj)
  %i.gk = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gk
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gk
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gk
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 6
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gk ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !109, !noalias !146
  %i.gv = zext i16 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 10
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !109, !noalias !146
  %i.gy = zext i16 %i.gx to i32
  %i.gz = mul nuw nsw i64 %indvars.iv.next, 6     ; 2 uses
  %i.ha = icmp samesign ule i64 %i.gz, %i.av
  tail call void @llvm.assume(i1 %i.ha), !noalias !146
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gz ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !109, !noalias !146
  %i.he = zext i16 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 10
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !109, !noalias !146
  %i.hh = zext i16 %i.hg to i32
  %i.hi = add i32 %i.ap, %i.he
  %i.hj = add i32 %i.ap, %i.hh
  %i.hk = add nuw nsw i64 %i.gk, 3                ; 3 uses
  %i.hl = icmp samesign ule i64 %i.hk, %i.aw
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.gk
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.hk
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.gk
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.hk
  %i.hr = load i16, ptr %i.gr, align 2, !tbaa !109, !noalias !146
  %i.hs = load <2 x i16>, ptr %i.gp, align 2, !tbaa !109, !noalias !146
  %i.ht = shufflevector <2 x i16> %i.hs, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hu = zext i16 %i.hr to i32                   ; 2 uses
  %i.hv = zext <4 x i16> %i.ht to <4 x i32>
  %i.hw = load i16, ptr %i.gn, align 2, !tbaa !109, !noalias !146
  %i.hx = load <2 x i16>, ptr %i.gl, align 2, !tbaa !109, !noalias !146
  %i.hy = shufflevector <2 x i16> %i.hx, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hz = zext i16 %i.hw to i32
  %i.ia = zext <4 x i16> %i.hy to <4 x i32>
  %i.ib = add i32 %i.ap, %i.gv                    ; 3 uses
  %i.ic = add i32 %i.ap, %i.gy                    ; 3 uses
  %i.id = add nsw i32 %i.hi, %i.ib
  %i.ie = add nsw i32 %i.hj, %i.ic
  %i.if = ashr i32 %i.ie, 1                       ; 2 uses
  %i.ig = mul nsw i32 %i.ib, -778
  %i.ih = shl nsw i32 %i.ic, 11
  %i.ii = sub nsw i32 %i.ig, %i.ih
  %i.ij = ashr i32 %i.ii, 12
  %i.ik = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %i.il = insertelement <4 x i32> %i.ik, i32 %i.ij, i64 1
  %i.im = insertelement <4 x i32> %i.il, i32 %i.ib, i64 2
  %i.in = insertelement <4 x i32> %i.im, i32 %i.if, i64 3 ; 2 uses
  %i.io = add nsw <4 x i32> %i.in, %i.ia
  %i.ip = mul nsw <4 x i32> %i.io, %i.gh
  %i.iq = shl nsw i32 %i.if, 11
  %i.ir = ashr <4 x i32> %i.ip, splat (i32 8)
  %i.is = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ir, <4 x i32> zeroinitializer)
  %i.it = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.is, <4 x i32> splat (i32 65535))
  %i.iu = trunc nuw <4 x i32> %i.it to <4 x i16>
  store <4 x i16> %i.iu, ptr %i.hm, align 2, !tbaa !109
  %i.iv = add nsw <4 x i32> %i.in, %i.hv
  %i.iw = mul nsw <4 x i32> %i.at, %i.iv
  %i.ix = ashr <4 x i32> %i.iw, splat (i32 8)
  %i.iy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ix, <4 x i32> zeroinitializer)
  %i.iz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iy, <4 x i32> splat (i32 65535))
  %i.ja = trunc nuw <4 x i32> %i.iz to <4 x i16>
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.jc = ashr i32 %i.id, 1                       ; 3 uses
  %i.jd = mul nsw i32 %i.jc, -778
  %i.je = sub nsw i32 %i.jd, %i.iq
  %i.jf = ashr i32 %i.je, 12                      ; 2 uses
  %i.jg = insertelement <2 x i32> poison, i32 %i.jf, i64 0
  %i.jh = insertelement <2 x i32> %i.jg, i32 %i.jc, i64 1
  %i.ji = insertelement <2 x i32> poison, i32 %i.hz, i64 0
  %i.jj = shufflevector <2 x i32> %i.ji, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jk = add nsw <2 x i32> %i.jh, %i.jj
  %i.jl = mul nsw <2 x i32> %i.jk, %i.gi
  %i.jm = ashr <2 x i32> %i.jl, splat (i32 8)
  %i.jn = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jm, <2 x i32> zeroinitializer)
  %i.jo = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jn, <2 x i32> splat (i32 65535))
  %i.jp = trunc nuw <2 x i32> %i.jo to <2 x i16>
  store <2 x i16> %i.jp, ptr %i.ho, align 2, !tbaa !109
  %i.jq = add nsw i32 %i.jc, %i.hu
  %i.jr = add nsw i32 %i.jf, %i.hu
  %i.js = insertelement <2 x i32> poison, i32 %i.jr, i64 0
  %i.jt = insertelement <2 x i32> %i.js, i32 %i.jq, i64 1
  %i.ju = mul nsw <2 x i32> %i.jt, %i.gi
  store <4 x i16> %i.ja, ptr %i.hp, align 2, !tbaa !109
  %i.jv = ashr <2 x i32> %i.ju, splat (i32 8)
  %i.jw = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jv, <2 x i32> zeroinitializer)
  %i.jx = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jw, <2 x i32> splat (i32 65535))
  %i.jy = trunc nuw <2 x i32> %i.jx to <2 x i16>
  store <2 x i16> %i.jy, ptr %i.jb, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge231, label %.preheader215, !llvm.loop !142

._crit_edge231:                                   ; preds = %.preheader215
  %i.jz = zext nneg i32 %i.s to i64
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.al ; 5 uses
  %1 = mul nuw nsw i32 %i.ai, 6                   ; 3 uses
  %i.kb = zext nneg i32 %1 to i64                 ; 7 uses
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kb
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = add nuw nsw i64 %i.kb, 3                ; 2 uses
  %i.ki = icmp samesign ult i64 %i.kh, %i.jz
  tail call void @llvm.assume(i1 %i.ki), !noalias !148
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kh
  %2 = add nuw nsw i32 %1, 6
  %3 = icmp samesign ule i32 %2, %i.s
  tail call void @llvm.assume(i1 %3), !noalias !148
  %i.kk = zext nneg i32 %1 to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !109, !noalias !148
  %i.ko = zext i16 %i.kn to i32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 10
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !109, !noalias !148
  %i.kr = zext i16 %i.kq to i32
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !106
  %i.ku = add i32 %i.kt, -16384                   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kw = add nuw nsw i64 %i.kb, 3                ; 3 uses
  %i.kx = icmp samesign ule i64 %i.kw, %i.aw
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  tail call void @llvm.assume(i1 %i.kx)
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.kb
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.kw
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bg ; 2 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.kb
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.kw
  %i.lf = load i16, ptr %i.kj, align 2, !tbaa !109, !noalias !148
  %i.lg = load <2 x i16>, ptr %i.kg, align 2, !tbaa !109, !noalias !148
  %i.lh = shufflevector <2 x i16> %i.lg, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.li = zext i16 %i.lf to i32                   ; 2 uses
  %i.lj = zext <4 x i16> %i.lh to <4 x i32>
  %i.lk = load <3 x i32>, ptr %i.kv, align 8, !tbaa !107 ; 2 uses
  %i.ll = shufflevector <3 x i32> %i.lk, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.lm = load i32, ptr %i.kv, align 8, !tbaa !107
  %i.ln = load i16, ptr %i.ke, align 2, !tbaa !109, !noalias !148
  %i.lo = load <2 x i16>, ptr %i.kc, align 2, !tbaa !109, !noalias !148
  %i.lp = shufflevector <2 x i16> %i.lo, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lq = zext i16 %i.ln to i32
  %i.lr = zext <4 x i16> %i.lp to <4 x i32>
  %i.ls = add i32 %i.ku, %i.kr                    ; 2 uses
  %i.lt = shl nsw i32 %i.ls, 11
  %i.lu = insertelement <4 x i32> poison, i32 %i.ls, i64 0
  %i.lv = insertelement <4 x i32> poison, i32 %i.lm, i64 0
  %i.lw = shufflevector <4 x i32> %i.lv, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.lx = shufflevector <4 x i32> %i.lw, <4 x i32> %i.ll, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ly = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  %i.lz = add i32 %i.ku, %i.ko                    ; 4 uses
  %i.ma = mul nsw i32 %i.lz, -778
  %i.mb = sub nsw i32 %i.ma, %i.lt
  %i.mc = ashr i32 %i.mb, 12                      ; 3 uses
  %i.md = insertelement <4 x i32> %i.lu, i32 %i.mc, i64 1
  %i.me = insertelement <4 x i32> %i.md, i32 %i.lz, i64 2
  %i.mf = shufflevector <4 x i32> %i.me, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.mg = add nsw <4 x i32> %i.mf, %i.lr
  %i.mh = mul nsw <4 x i32> %i.mg, %i.lx
  %i.mi = insertelement <2 x i32> poison, i32 %i.mc, i64 0
  %i.mj = insertelement <2 x i32> %i.mi, i32 %i.lz, i64 1
  %i.mk = insertelement <2 x i32> poison, i32 %i.lq, i64 0
  %i.ml = shufflevector <2 x i32> %i.mk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mm = add nsw <2 x i32> %i.mj, %i.ml
  %i.mn = shufflevector <3 x i32> %i.lk, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mo = mul nsw <2 x i32> %i.mm, %i.mn
  %i.mp = ashr <4 x i32> %i.mh, splat (i32 8)
  %i.mq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mp, <4 x i32> zeroinitializer)
  %i.mr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mq, <4 x i32> splat (i32 65535))
  %i.ms = trunc nuw <4 x i32> %i.mr to <4 x i16>
  store <4 x i16> %i.ms, ptr %i.kz, align 2, !tbaa !109
  %i.mt = ashr <2 x i32> %i.mo, splat (i32 8)
  %i.mu = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mt, <2 x i32> zeroinitializer)
  %i.mv = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mu, <2 x i32> splat (i32 65535))
  %i.mw = trunc nuw <2 x i32> %i.mv to <2 x i16>
  store <2 x i16> %i.mw, ptr %i.lb, align 2, !tbaa !109
  %i.mx = add nsw <4 x i32> %i.mf, %i.lj
  %i.my = mul nsw <4 x i32> %i.ll, %i.mx
  %i.mz = add nsw i32 %i.lz, %i.li
  %i.na = add nsw i32 %i.mc, %i.li
  %i.nb = insertelement <2 x i32> poison, i32 %i.na, i64 0
  %i.nc = insertelement <2 x i32> %i.nb, i32 %i.mz, i64 1
  %i.nd = mul nsw <2 x i32> %i.nc, %i.mn
  %i.ne = ashr <4 x i32> %i.my, splat (i32 8)
  %i.nf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ne, <4 x i32> zeroinitializer)
  %i.ng = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nf, <4 x i32> splat (i32 65535))
  %i.nh = trunc nuw <4 x i32> %i.ng to <4 x i16>
  store <4 x i16> %i.nh, ptr %i.ld, align 2, !tbaa !109
  %i.ni = ashr <2 x i32> %i.nd, splat (i32 8)
  %i.nj = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ni, <2 x i32> zeroinitializer)
  %i.nk = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.nj, <2 x i32> splat (i32 65535))
  %i.nl = trunc nuw <2 x i32> %i.nk to <2 x i16>
  store <2 x i16> %i.nl, ptr %i.ly, align 2, !tbaa !109
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi0EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !160 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !160
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !160
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !160
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !160
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 3 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = and i32 %i.s, 3
  %i.z = icmp eq i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr exact i32 %i.s, 2
  %i.ab = icmp samesign ugt i32 %i.s, 4
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.050.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !106
  %i.aj = add i32 %i.ai, -16384                   ; 5 uses
  %i.ak = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = mul i32 %i.n, %1
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr [2 x i8], ptr %i.d, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aq = load <3 x i32>, ptr %i.ao, align 8, !tbaa !107 ; 5 uses
  %i.ar = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !107
  %i.at = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count = zext i32 %i.ac to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.am, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ax = zext i32 %i.w to i64
  %i.ay = zext i32 %1 to i64
  %i.az = mul nuw i64 %i.ax, %i.ay
  %i.ba = shl i64 %i.az, 1
  %i.bb = shl nuw nsw i64 %wide.trip.count, 3
  %i.bc = getelementptr i8, ptr %.sroa.050.0.copyload, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %scevgep88 = getelementptr i8, ptr %i.bd, i64 8
  %bound0 = icmp ult ptr %i.an, %scevgep88
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.be = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = select i1 %i.bf, i64 8, i64 %i.be
  %n.vec = sub nsw i64 %wide.trip.count, %i.bg    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat90 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat92 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi:.lr.ph
  %i.cw = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cv, <8 x i32> splat (i32 65535))
  %i.cx = trunc nuw <8 x i32> %i.cw to <8 x i16>
  %i.cy = ashr <8 x i32> %i.ct, splat (i32 8)
  %i.cz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cy, <8 x i32> zeroinitializer)
  %i.da = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cz, <8 x i32> splat (i32 65535))
  %i.db = trunc nuw <8 x i32> %i.da to <8 x i16>
  %i.dc = shufflevector <8 x i32> %i.ca, <8 x i32> %i.cg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dd = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.de = shufflevector <16 x i32> %i.dc, <16 x i32> %i.dd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.df = ashr <32 x i32> %i.de, splat (i32 8)
  %i.dg = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.df, <32 x i32> zeroinitializer)
  %i.dh = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.dg, <32 x i32> splat (i32 65535))
  %i.di = trunc nuw <32 x i32> %i.dh to <32 x i16>
  %i.dj = shufflevector <8 x i16> %i.cx, <8 x i16> %i.db, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.di, <32 x i16> %i.dj, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.cj, align 2, !tbaa !109, !alias.scope !195, !noalias !193
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = add nuw nsw i64 %i.bh, 8
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !188

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.dm = extractelement <3 x i32> %i.aq, i64 2
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.dy, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dn = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dn ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !109, !noalias !194
  %i.du = zext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 6
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !109, !noalias !194
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %.idx105 = shl nuw nsw i64 %i.dy, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx105 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !109, !noalias !194
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 6
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !109, !noalias !194
  %i.ef = zext i16 %i.ee to i32
  %i.eg = add i32 %i.aj, %i.ec
  %i.eh = add i32 %i.aj, %i.ef
  %i.ei = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ej = add nuw nsw i64 %i.ei, 3                ; 2 uses
  %i.ek = icmp samesign ule i64 %i.ej, %i.at
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ei
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ej ; 2 uses
  %i.en = load i16, ptr %i.dq, align 2, !tbaa !109, !noalias !194
  %i.eo = load <2 x i16>, ptr %i.do, align 2, !tbaa !109, !noalias !194
  %i.ep = shufflevector <2 x i16> %i.eo, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eq = zext i16 %i.en to i32                   ; 2 uses
  %i.er = zext <4 x i16> %i.ep to <4 x i32>
  %i.es = add i32 %i.aj, %i.du                    ; 3 uses
  %i.et = add i32 %i.aj, %i.dx                    ; 3 uses
  %i.eu = add nsw i32 %i.eg, %i.es
  %i.ev = ashr i32 %i.eu, 1                       ; 2 uses
  %i.ew = add nsw i32 %i.eh, %i.et
  %i.ex = ashr i32 %i.ew, 1                       ; 2 uses
  %i.ey = mul nsw i32 %i.es, -778
  %i.ez = shl nsw i32 %i.et, 11
  %i.fa = sub nsw i32 %i.ey, %i.ez
  %i.fb = ashr i32 %i.fa, 12
  %i.fc = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.fb, i64 1
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.es, i64 2
  %i.ff = insertelement <4 x i32> %i.fe, i32 %i.ex, i64 3
  %i.fg = add nsw <4 x i32> %i.ff, %i.er
  %i.fh = mul nsw <4 x i32> %i.fg, %i.ar
  %i.fi = mul nsw i32 %i.ev, -778
  %i.fj = shl nsw i32 %i.ex, 11
  %i.fk = sub nsw i32 %i.fi, %i.fj
  %i.fl = ashr i32 %i.fk, 12
  %i.fm = add nsw i32 %i.fl, %i.eq
  %i.fn = mul nsw i32 %i.fm, %i.as
  %i.fo = add nsw i32 %i.ev, %i.eq
  %i.fp = mul nsw i32 %i.fo, %i.dm
  %i.fq = ashr <4 x i32> %i.fh, splat (i32 8)
  %i.fr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fq, <4 x i32> zeroinitializer)
  %i.fs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fr, <4 x i32> splat (i32 65535))
  %i.ft = trunc nuw <4 x i32> %i.fs to <4 x i16>
  store <4 x i16> %i.ft, ptr %i.el, align 2, !tbaa !109
  %i.fu = ashr i32 %i.fn, 8
  %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %i.fv = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i, i32 65535)
  %i.fw = trunc nuw i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !109
  %i.fy = ashr i32 %i.fp, 8
  %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.fy, i32 0)
  %i.fz = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i, i32 65535)
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.dy, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %scalar.ph
  %i.gc = zext nneg i32 %i.s to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 3 uses
  %i.ge = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gf = zext nneg i32 %i.ge to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gf
  %i.gh = or disjoint i64 %i.gf, 1                ; 2 uses
  %i.gi = icmp samesign ult i64 %i.gh, %i.gc
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gh
  %i.gk = icmp samesign ult i32 %i.ge, %i.s
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = zext nneg i32 %i.ge to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !109, !noalias !196
  %i.gp = zext i16 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !109, !noalias !196
  %i.gs = zext i16 %i.gr to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !106
  %i.gv = add i32 %i.gu, -16384                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.gx = mul nuw nsw i32 %i.ac, 6
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gz = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.ha = add nuw nsw i64 %i.gz, 3                ; 2 uses
  %i.hb = icmp samesign ule i64 %i.ha, %i.at
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.ha
  %i.he = load i16, ptr %i.gj, align 2, !tbaa !109, !noalias !196
  %i.hf = load <2 x i16>, ptr %i.gg, align 2, !tbaa !109, !noalias !196
  %i.hg = shufflevector <2 x i16> %i.hf, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hh = zext i16 %i.he to i32
  %i.hi = zext <4 x i16> %i.hg to <4 x i32>
  %i.hj = add i32 %i.gv, %i.gs                    ; 2 uses
  %i.hk = load <3 x i32>, ptr %i.gy, align 8, !tbaa !107 ; 2 uses
  %i.hl = shufflevector <3 x i32> %i.hk, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hm = shl nsw i32 %i.hj, 11
  %i.hn = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hp = add i32 %i.gv, %i.gp                    ; 3 uses
  %i.hq = mul nsw i32 %i.hp, -778
  %i.hr = sub nsw i32 %i.hq, %i.hm
  %i.hs = ashr i32 %i.hr, 12                      ; 2 uses
  %i.ht = insertelement <4 x i32> %i.hn, i32 %i.hs, i64 1
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hp, i64 2
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hw = add nsw <4 x i32> %i.hv, %i.hi
  %i.hx = mul nsw <4 x i32> %i.hw, %i.hl
  %i.hy = insertelement <2 x i32> poison, i32 %i.hs, i64 0
  %i.hz = insertelement <2 x i32> %i.hy, i32 %i.hp, i64 1
  %i.ia = insertelement <2 x i32> poison, i32 %i.hh, i64 0
  %i.ib = shufflevector <2 x i32> %i.ia, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ic = add nsw <2 x i32> %i.hz, %i.ib
  %i.id = shufflevector <3 x i32> %i.hk, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ie = mul nsw <2 x i32> %i.ic, %i.id
  %i.if = ashr <4 x i32> %i.hx, splat (i32 8)
  %i.ig = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.if, <4 x i32> zeroinitializer)
  %i.ih = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ig, <4 x i32> splat (i32 65535))
  %i.ii = trunc nuw <4 x i32> %i.ih to <4 x i16>
  store <4 x i16> %i.ii, ptr %i.hc, align 2, !tbaa !109
  %i.ij = ashr <2 x i32> %i.ie, splat (i32 8)
  %i.ik = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ij, <2 x i32> zeroinitializer)
  %i.il = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ik, <2 x i32> splat (i32 65535))
  %i.im = trunc nuw <2 x i32> %i.il to <2 x i16>
  store <2 x i16> %i.im, ptr %i.ho, align 2, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !208 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !208
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !208
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !208
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %2 = udiv i32 %i.s, 6
  %i.y = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.y)
  %.sroa.0114.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 7 uses
  %i.z = icmp slt i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i32 %2, -1                      ; 3 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !106
  %i.ad = add i32 %i.ac, -16384                   ; 3 uses
  %i.ae = shl nsw i32 %1, 1                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load <3 x i32>, ptr %i.af, align 8, !tbaa !107 ; 5 uses
  %i.ah = shufflevector <3 x i32> %i.ag, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !107
  %i.aj = zext nneg i32 %invariant.op to i64
  %i.ak = sext i32 %1 to i64                      ; 3 uses
  %i.al = zext nneg i32 %i.u to i64
  %i.am = zext i32 %i.w to i64                    ; 4 uses
  %i.an = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ao = zext i32 %i.ae to i64                   ; 3 uses
  %i.ap = zext i32 %i.n to i64                    ; 4 uses
  %i.aq = zext nneg i32 %i.k to i64
  %wide.trip.count = zext i32 %i.aa to i64        ; 4 uses
  %i.ar = mul nuw nsw i64 %i.ak, %i.am            ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.ar ; 20 uses
  %i.at = add nuw nsw i64 %i.ak, 1                ; 3 uses
  %i.au = icmp samesign ult i64 %i.at, %i.al
  tail call void @llvm.assume(i1 %i.au), !noalias !209
  %i.av = mul nuw nsw i64 %i.at, %i.am            ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.av ; 4 uses
  %i.ax = icmp ult i32 %i.ae, %i.k
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = mul nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.az = getelementptr [2 x i8], ptr %i.d, i64 %i.ay ; 16 uses
  %i.ba = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.bb = icmp samesign ult i64 %i.ba, %i.aq
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = mul nuw i64 %i.ba, %i.ap                ; 2 uses
  %i.bd = getelementptr [2 x i8], ptr %i.d, i64 %i.bc ; 16 uses
  %min.iters.check = icmp ult i32 %i.aa, 33
  br i1 %min.iters.check, label %.preheader215.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.be = mul nuw i64 %i.ap, %i.ao
  %i.bf = shl i64 %i.be, 1                        ; 8 uses
  %i.bg = mul nuw nsw i64 %wide.trip.count, 12    ; 8 uses
  %i.bh = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.d, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 -10 ; 13 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep544 = getelementptr i8, ptr %i.bj, i64 2 ; 13 uses
  %i.bk = getelementptr i8, ptr %i.d, i64 %i.bh
  %scevgep545 = getelementptr i8, ptr %i.bk, i64 -8 ; 13 uses
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep546 = getelementptr i8, ptr %i.bl, i64 4 ; 13 uses
  %i.bm = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bm
  %scevgep547 = getelementptr i8, ptr %i.bn, i64 -6 ; 13 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep548 = getelementptr i8, ptr %i.bo, i64 6 ; 13 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bm
  %scevgep549 = getelementptr i8, ptr %i.bp, i64 -4 ; 13 uses
  %i.bq = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep550 = getelementptr i8, ptr %i.bq, i64 8 ; 13 uses
  %i.br = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br
  %scevgep551 = getelementptr i8, ptr %i.bs, i64 -2 ; 13 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep552 = getelementptr i8, ptr %i.bt, i64 10 ; 13 uses
  %scevgep553 = getelementptr i8, ptr %i.d, i64 %i.br ; 13 uses
  %i.bu = mul nuw i64 %i.ba, %i.ap
  %i.bv = shl i64 %i.bu, 1                        ; 8 uses
  %i.bw = add i64 %i.bv, %i.bg                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep554 = getelementptr i8, ptr %i.bx, i64 -10 ; 13 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep555 = getelementptr i8, ptr %i.by, i64 2 ; 13 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep556 = getelementptr i8, ptr %i.bz, i64 -8 ; 13 uses
  %i.ca = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep557 = getelementptr i8, ptr %i.ca, i64 4 ; 13 uses
  %i.cb = add i64 %i.bv, %i.bg                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.d, i64 %i.cb
  %scevgep558 = getelementptr i8, ptr %i.cc, i64 -6 ; 13 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep559 = getelementptr i8, ptr %i.cd, i64 6 ; 13 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.cb
  %scevgep560 = getelementptr i8, ptr %i.ce, i64 -4 ; 13 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep561 = getelementptr i8, ptr %i.cf, i64 8 ; 13 uses
  %i.cg = add i64 %i.bv, %i.bg                    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %scevgep562 = getelementptr i8, ptr %i.ch, i64 -2 ; 13 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep563 = getelementptr i8, ptr %i.ci, i64 10 ; 13 uses
  %scevgep564 = getelementptr i8, ptr %i.d, i64 %i.cg ; 13 uses
  %i.cj = mul i64 %i.at, %i.am
  %i.ck = shl i64 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.ck
  %scevgep565 = getelementptr i8, ptr %i.cl, i64 8 ; 12 uses
  %i.cm = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.bg
  %scevgep566 = getelementptr i8, ptr %i.cn, i64 12 ; 12 uses
  %i.co = mul nsw i64 %i.ak, %i.am
  %i.cp = shl i64 %i.co, 1
  %i.cq = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.bg
  %scevgep567 = getelementptr i8, ptr %i.cr, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.az, %scevgep545
  %bound1 = icmp ult ptr %scevgep544, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0568 = icmp ult ptr %i.az, %scevgep547
  %bound1569 = icmp ult ptr %scevgep546, %scevgep
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx = or i1 %found.conflict, %found.conflict570
  %bound0571 = icmp ult ptr %i.az, %scevgep549
  %bound1572 = icmp ult ptr %scevgep548, %scevgep
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx574 = or i1 %conflict.rdx, %found.conflict573
  %bound0575 = icmp ult ptr %i.az, %scevgep551
  %bound1576 = icmp ult ptr %scevgep550, %scevgep
  %found.conflict577 = and i1 %bound0575, %bound1576
  %conflict.rdx578 = or i1 %conflict.rdx574, %found.conflict577
  %bound0579 = icmp ult ptr %i.az, %scevgep553
  %bound1580 = icmp ult ptr %scevgep552, %scevgep
  %found.conflict581 = and i1 %bound0579, %bound1580
  %conflict.rdx582 = or i1 %conflict.rdx578, %found.conflict581
  %bound0583 = icmp ult ptr %i.az, %scevgep554
  %bound1584 = icmp ult ptr %i.bd, %scevgep
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %conflict.rdx582, %found.conflict585
  %bound0587 = icmp ult ptr %i.az, %scevgep556
  %bound1588 = icmp ult ptr %scevgep555, %scevgep
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx590 = or i1 %conflict.rdx586, %found.conflict589
  %bound0591 = icmp ult ptr %i.az, %scevgep558
  %bound1592 = icmp ult ptr %scevgep557, %scevgep
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx594 = or i1 %conflict.rdx590, %found.conflict593
  %bound0595 = icmp ult ptr %i.az, %scevgep560
  %bound1596 = icmp ult ptr %scevgep559, %scevgep
  %found.conflict597 = and i1 %bound0595, %bound1596
  %conflict.rdx598 = or i1 %conflict.rdx594, %found.conflict597
  %bound0599 = icmp ult ptr %i.az, %scevgep562
  %bound1600 = icmp ult ptr %scevgep561, %scevgep
  %found.conflict601 = and i1 %bound0599, %bound1600
  %conflict.rdx602 = or i1 %conflict.rdx598, %found.conflict601
  %bound0603 = icmp ult ptr %i.az, %scevgep564
  %bound1604 = icmp ult ptr %scevgep563, %scevgep
  %found.conflict605 = and i1 %bound0603, %bound1604
  %conflict.rdx606 = or i1 %conflict.rdx602, %found.conflict605
  %bound0607 = icmp ult ptr %i.az, %scevgep566
  %bound1608 = icmp ult ptr %scevgep565, %scevgep
  %found.conflict609 = and i1 %bound0607, %bound1608
  %conflict.rdx610 = or i1 %conflict.rdx606, %found.conflict609
  %bound0611 = icmp ult ptr %i.az, %scevgep567
  %bound1612 = icmp ult ptr %i.as, %scevgep
  %found.conflict613 = and i1 %bound0611, %bound1612
  %conflict.rdx614 = or i1 %conflict.rdx610, %found.conflict613
  %bound0615 = icmp ult ptr %scevgep544, %scevgep547
  %bound1616 = icmp ult ptr %scevgep546, %scevgep545
  %found.conflict617 = and i1 %bound0615, %bound1616
  %conflict.rdx618 = or i1 %conflict.rdx614, %found.conflict617
  %bound0619 = icmp ult ptr %scevgep544, %scevgep549
  %bound1620 = icmp ult ptr %scevgep548, %scevgep545
  %found.conflict621 = and i1 %bound0619, %bound1620
  %conflict.rdx622 = or i1 %conflict.rdx618, %found.conflict621
  %bound0623 = icmp ult ptr %scevgep544, %scevgep551
  %bound1624 = icmp ult ptr %scevgep550, %scevgep545
  %found.conflict625 = and i1 %bound0623, %bound1624
  %conflict.rdx626 = or i1 %conflict.rdx622, %found.conflict625
  %bound0627 = icmp ult ptr %scevgep544, %scevgep553
  %bound1628 = icmp ult ptr %scevgep552, %scevgep545
  %found.conflict629 = and i1 %bound0627, %bound1628
  %conflict.rdx630 = or i1 %conflict.rdx626, %found.conflict629
  %bound0631 = icmp ult ptr %scevgep544, %scevgep554
  %bound1632 = icmp ult ptr %i.bd, %scevgep545
  %found.conflict633 = and i1 %bound0631, %bound1632
  %conflict.rdx634 = or i1 %conflict.rdx630, %found.conflict633
  %bound0635 = icmp ult ptr %scevgep544, %scevgep556
  %bound1636 = icmp ult ptr %scevgep555, %scevgep545
  %found.conflict637 = and i1 %bound0635, %bound1636
  %conflict.rdx638 = or i1 %conflict.rdx634, %found.conflict637
  %bound0639 = icmp ult ptr %scevgep544, %scevgep558
  %bound1640 = icmp ult ptr %scevgep557, %scevgep545
  %found.conflict641 = and i1 %bound0639, %bound1640
  %conflict.rdx642 = or i1 %conflict.rdx638, %found.conflict641
  %bound0643 = icmp ult ptr %scevgep544, %scevgep560
  %bound1644 = icmp ult ptr %scevgep559, %scevgep545
  %found.conflict645 = and i1 %bound0643, %bound1644
  %conflict.rdx646 = or i1 %conflict.rdx642, %found.conflict645
  %bound0647 = icmp ult ptr %scevgep544, %scevgep562
  %bound1648 = icmp ult ptr %scevgep561, %scevgep545
  %found.conflict649 = and i1 %bound0647, %bound1648
  %conflict.rdx650 = or i1 %conflict.rdx646, %found.conflict649
  %bound0651 = icmp ult ptr %scevgep544, %scevgep564
  %bound1652 = icmp ult ptr %scevgep563, %scevgep545
  %found.conflict653 = and i1 %bound0651, %bound1652
  %conflict.rdx654 = or i1 %conflict.rdx650, %found.conflict653
  %bound0655 = icmp ult ptr %scevgep544, %scevgep566
  %bound1656 = icmp ult ptr %scevgep565, %scevgep545
  %found.conflict657 = and i1 %bound0655, %bound1656
  %conflict.rdx658 = or i1 %conflict.rdx654, %found.conflict657
  %bound0659 = icmp ult ptr %scevgep544, %scevgep567
  %bound1660 = icmp ult ptr %i.as, %scevgep545
end_hunk_3
begin_hunk_4_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi:.lr.ph
  %i.go = mul nsw <8 x i32> %i.ef, splat (i32 22929)
  %i.gp = add nsw <8 x i32> %i.go, %i.gn
  %i.gq = ashr <8 x i32> %i.gp, splat (i32 12)
  %i.gr = add nsw <8 x i32> %i.gq, %i.da
  %i.gs = mul nsw <8 x i32> %i.gr, %broadcast.splat924
  %i.gt = mul nsw <8 x i32> %i.ed, splat (i32 -5640)
  %i.gu = mul <8 x i32> %i.ef, splat (i32 -11751)
  %i.gv = add <8 x i32> %i.gu, %i.gt
  %i.gw = ashr <8 x i32> %i.gv, splat (i32 12)
  %i.gx = add nsw <8 x i32> %i.gw, %i.da
  %i.gy = mul nsw <8 x i32> %i.gx, %broadcast.splat926
  %i.gz = mul nsw <8 x i32> %i.ed, splat (i32 29040)
  %i.ha = mul <8 x i32> %i.ef, splat (i32 -101)
  %i.hb = add <8 x i32> %i.ha, %i.gz
  %i.hc = ashr <8 x i32> %i.hb, splat (i32 12)
  %i.hd = add nsw <8 x i32> %i.hc, %i.da
  %i.he = mul nsw <8 x i32> %i.hd, %broadcast.splat928
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cw
  %i.hg = mul nsw <8 x i32> %i.ei, splat (i32 50)
  %i.hh = mul nsw <8 x i32> %i.el, splat (i32 22929)
  %i.hi = add nsw <8 x i32> %i.hh, %i.hg
  %i.hj = ashr <8 x i32> %i.hi, splat (i32 12)
  %i.hk = add nsw <8 x i32> %i.hj, %i.db
  %i.hl = mul nsw <8 x i32> %i.hk, %broadcast.splat924
  %i.hm = mul nsw <8 x i32> %i.ei, splat (i32 -5640)
  %i.hn = mul <8 x i32> %i.el, splat (i32 -11751)
  %i.ho = add <8 x i32> %i.hn, %i.hm
  %i.hp = ashr <8 x i32> %i.ho, splat (i32 12)
  %i.hq = add nsw <8 x i32> %i.hp, %i.db
  %i.hr = mul nsw <8 x i32> %i.hq, %broadcast.splat926
  %i.hs = mul nsw <8 x i32> %i.ei, splat (i32 29040)
  %i.ht = mul <8 x i32> %i.el, splat (i32 -101)
  %i.hu = add <8 x i32> %i.ht, %i.hs
  %i.hv = ashr <8 x i32> %i.hu, splat (i32 12)
  %i.hw = add nsw <8 x i32> %i.hv, %i.db
  %i.hx = mul nsw <8 x i32> %i.hw, %broadcast.splat928
  %i.hy = ashr <8 x i32> %i.hr, splat (i32 8)
  %i.hz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hy, <8 x i32> zeroinitializer)
  %i.ia = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hz, <8 x i32> splat (i32 65535))
  %i.ib = trunc nuw <8 x i32> %i.ia to <8 x i16>
  %i.ic = ashr <8 x i32> %i.hx, splat (i32 8)
  %i.id = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ic, <8 x i32> zeroinitializer)
  %i.ie = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.id, <8 x i32> splat (i32 65535))
  %i.if = trunc nuw <8 x i32> %i.ie to <8 x i16>
  %i.ig = shufflevector <8 x i32> %i.gs, <8 x i32> %i.gy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ih = shufflevector <8 x i32> %i.he, <8 x i32> %i.hl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ii = shufflevector <16 x i32> %i.ig, <16 x i32> %i.ih, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ij = ashr <32 x i32> %i.ii, splat (i32 8)
  %i.ik = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.ij, <32 x i32> zeroinitializer)
  %i.il = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.ik, <32 x i32> splat (i32 65535))
  %i.im = trunc nuw <32 x i32> %i.il to <32 x i16>
  %i.in = shufflevector <8 x i16> %i.ib, <8 x i16> %i.if, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec947 = shufflevector <32 x i16> %i.im, <32 x i16> %i.in, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec947, ptr %i.hf, align 2, !tbaa !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.io = add nuw nsw i64 %i.cv, 8
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %.preheader215.preheader, label %vector.body, !llvm.loop !204

.preheader215.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.iq = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.ir = shufflevector <4 x i32> %i.iq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.is = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.it = shufflevector <4 x i32> %i.is, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.iu = shufflevector <4 x i32> %i.it, <4 x i32> %i.ah, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.iv = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.iw = shufflevector <2 x i32> %i.iv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ix = shufflevector <3 x i32> %i.ag, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.preheader, %.preheader215
  %indvars.iv = phi i64 [ %i.ji, %.preheader215 ], [ %indvars.iv.ph, %.preheader215.preheader ] ; 2 uses
  %i.iy = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.iy
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.iy
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.iy
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.iy
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 6
  %i.jg = add nuw nsw i64 %i.iy, 4                ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.jg
  %i.ji = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.jj = mul nuw nsw i64 %i.ji, 6                ; 2 uses
  %i.jk = add nuw nsw i64 %i.jj, 4                ; 2 uses
  %i.jl = icmp samesign ule i64 %i.jj, %i.aj
  tail call void @llvm.assume(i1 %i.jl), !noalias !209
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.jk
  %i.jn = load <2 x i16>, ptr %i.jm, align 2, !tbaa !109, !noalias !209
  %i.jo = zext <2 x i16> %i.jn to <2 x i32>
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.jg
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.jk
  %i.jr = add nuw nsw i64 %i.iy, 3                ; 3 uses
  %i.js = icmp samesign ule i64 %i.jr, %i.an
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.iy
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.jr
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.iy
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.jr
  %i.jy = load i16, ptr %i.jf, align 2, !tbaa !109, !noalias !209
  %i.jz = load <2 x i16>, ptr %i.jd, align 2, !tbaa !109, !noalias !209
  %i.ka = shufflevector <2 x i16> %i.jz, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kb = zext i16 %i.jy to i32
  %i.kc = zext <4 x i16> %i.ka to <4 x i32>
  %i.kd = load <2 x i16>, ptr %i.jh, align 2, !tbaa !109, !noalias !209 ; 2 uses
  %i.ke = load <2 x i16>, ptr %i.jp, align 2, !tbaa !109, !noalias !209 ; 2 uses
  %i.kf = load <2 x i16>, ptr %i.jq, align 2, !tbaa !109, !noalias !209
  %i.kg = shufflevector <2 x i16> %i.kd, <2 x i16> %i.ke, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.kh = shufflevector <2 x i16> %i.kf, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ki = shufflevector <4 x i16> %i.kg, <4 x i16> %i.kh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kj = zext <4 x i16> %i.ki to <4 x i32>
  %i.kk = shufflevector <2 x i16> %i.kd, <2 x i16> %i.ke, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.kl = shufflevector <4 x i16> %i.kk, <4 x i16> %i.kh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.km = zext <4 x i16> %i.kl to <4 x i32>
  %i.kn = add <4 x i32> %i.ir, %i.kj              ; 4 uses
  %i.ko = add <4 x i32> %i.ir, %i.km              ; 7 uses
  %i.kp = shufflevector <4 x i32> %i.kn, <4 x i32> %i.ko, <4 x i32> <i32 2, i32 6, i32 0, i32 poison>
  %i.kq = load i16, ptr %i.jb, align 2, !tbaa !109, !noalias !209
  %i.kr = load <2 x i16>, ptr %i.iz, align 2, !tbaa !109, !noalias !209
  %i.ks = shufflevector <2 x i16> %i.kr, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kt = zext i16 %i.kq to i32
  %i.ku = zext <4 x i16> %i.ks to <4 x i32>
  %i.kv = shufflevector <4 x i32> %i.ko, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.kw = shufflevector <4 x i32> %i.ko, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison>
  %i.kx = add <2 x i32> %i.iw, %i.jo
  %i.ky = shufflevector <4 x i32> %i.ko, <4 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.kz = add nsw <2 x i32> %i.kx, %i.ky          ; 2 uses
  %i.la = shufflevector <4 x i32> %i.kn, <4 x i32> %i.ko, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.lb = shufflevector <2 x i32> %i.kz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lc = add nsw <4 x i32> %i.la, %i.lb          ; 2 uses
  %i.ld = shufflevector <4 x i32> %i.kp, <4 x i32> %i.lc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.le = add nsw <4 x i32> %i.ld, %i.kn
  %i.lf = shufflevector <4 x i32> %i.ko, <4 x i32> %i.kn, <4 x i32> <i32 2, i32 6, i32 0, i32 poison>
  %i.lg = shufflevector <4 x i32> %i.lf, <4 x i32> %i.lc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lh = add nsw <4 x i32> %i.lg, %i.ko
  %i.li = ashr <4 x i32> %i.le, <i32 1, i32 1, i32 1, i32 2> ; 2 uses
  %i.lj = ashr <4 x i32> %i.lh, <i32 1, i32 1, i32 1, i32 2> ; 2 uses
  %i.lk = ashr <2 x i32> %i.kz, splat (i32 1)     ; 3 uses
  %i.ll = shufflevector <2 x i32> %i.lk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.lm = shufflevector <4 x i32> %i.kv, <4 x i32> %i.ll, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ln = mul <4 x i32> %i.lm, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.lo = shufflevector <4 x i32> %i.kw, <4 x i32> %i.ll, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lp = mul <4 x i32> %i.lo, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.lq = add <4 x i32> %i.lp, %i.ln
  %i.lr = ashr <4 x i32> %i.lq, splat (i32 12)
  %i.ls = add nsw <4 x i32> %i.lr, %i.ku
  %i.lt = mul nsw <4 x i32> %i.ls, %i.iu
  %i.lu = mul <2 x i32> %i.lk, <i32 29040, i32 -11751>
  %i.lv = shufflevector <2 x i32> %i.lu, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.lw = mul <2 x i32> %i.lk, <i32 -5640, i32 -101>
  %i.lx = add <2 x i32> %i.lw, %i.lv
  %i.ly = ashr <2 x i32> %i.lx, splat (i32 12)
  %i.lz = insertelement <2 x i32> poison, i32 %i.kt, i64 0
  %i.ma = shufflevector <2 x i32> %i.lz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mb = add nsw <2 x i32> %i.ly, %i.ma
  %i.mc = mul nsw <2 x i32> %i.mb, %i.ix
  %i.md = ashr <4 x i32> %i.lt, splat (i32 8)
  %i.me = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.md, <4 x i32> zeroinitializer)
  %i.mf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.me, <4 x i32> splat (i32 65535))
  %i.mg = trunc nuw <4 x i32> %i.mf to <4 x i16>
  store <4 x i16> %i.mg, ptr %i.jt, align 2, !tbaa !109
  %i.mh = ashr <2 x i32> %i.mc, splat (i32 8)
  %i.mi = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mh, <2 x i32> zeroinitializer)
  %i.mj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mi, <2 x i32> splat (i32 65535))
  %i.mk = trunc nuw <2 x i32> %i.mj to <2 x i16>
  store <2 x i16> %i.mk, ptr %i.jv, align 2, !tbaa !109
  %i.ml = mul <4 x i32> %i.li, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.mm = mul <4 x i32> %i.lj, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.mn = add <4 x i32> %i.mm, %i.ml
  %i.mo = ashr <4 x i32> %i.mn, splat (i32 12)
  %i.mp = add nsw <4 x i32> %i.mo, %i.kc
  %i.mq = mul nsw <4 x i32> %i.mp, %i.ah
  %i.mr = ashr <4 x i32> %i.mq, splat (i32 8)
  %i.ms = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mr, <4 x i32> zeroinitializer)
  %i.mt = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ms, <4 x i32> splat (i32 65535))
  %i.mu = trunc nuw <4 x i32> %i.mt to <4 x i16>
  store <4 x i16> %i.mu, ptr %i.jw, align 2, !tbaa !109
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.mw = shufflevector <4 x i32> %i.li, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.mx = mul nsw <2 x i32> %i.mw, <i32 -5640, i32 29040>
  %i.my = shufflevector <4 x i32> %i.lj, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.mz = mul <2 x i32> %i.my, <i32 -11751, i32 -101>
  %i.na = add <2 x i32> %i.mz, %i.mx
  %i.nb = ashr <2 x i32> %i.na, splat (i32 12)
  %i.nc = insertelement <2 x i32> poison, i32 %i.kb, i64 0
  %i.nd = shufflevector <2 x i32> %i.nc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ne = add nsw <2 x i32> %i.nb, %i.nd
  %i.nf = mul nsw <2 x i32> %i.ne, %i.ix
  %i.ng = ashr <2 x i32> %i.nf, splat (i32 8)
  %i.nh = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ng, <2 x i32> zeroinitializer)
  %i.ni = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.nh, <2 x i32> splat (i32 65535))
  %i.nj = trunc nuw <2 x i32> %i.ni to <2 x i16>
  store <2 x i16> %i.nj, ptr %i.mv, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.ji, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader215, !llvm.loop !205

._crit_edge:                                      ; preds = %.preheader215
  %i.nk = zext nneg i32 %i.s to i64
  %3 = mul nuw nsw i32 %i.aa, 6                   ; 3 uses
  %i.nl = add nuw nsw i32 %3, 4
  %i.nm = add nuw nsw i32 %3, 6
  %4 = icmp samesign ule i32 %i.nm, %i.s
  tail call void @llvm.assume(i1 %4), !noalias !212
  %i.nn = zext nneg i32 %i.nl to i64              ; 2 uses
  %i.no = zext nneg i32 %3 to i64                 ; 7 uses
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.ar ; 5 uses
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.no
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.no
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.no
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nv = add nuw nsw i64 %i.no, 3                ; 2 uses
  %i.nw = icmp samesign ult i64 %i.nv, %i.nk
  tail call void @llvm.assume(i1 %i.nw), !noalias !212
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.nv
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.nn
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.av
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %i.nn
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !106
  %i.od = add i32 %i.oc, -16384
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.of = add nuw nsw i64 %i.no, 3                ; 3 uses
  %i.og = icmp samesign ule i64 %i.of, %i.an
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ay ; 2 uses
  tail call void @llvm.assume(i1 %i.og)
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.oh, i64 %i.no
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.oh, i64 %i.of
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %i.no
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %i.of
  %i.oo = load i16, ptr %i.nx, align 2, !tbaa !109, !noalias !212
  %i.op = load <2 x i16>, ptr %i.nu, align 2, !tbaa !109, !noalias !212
  %i.oq = shufflevector <2 x i16> %i.op, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.or = zext i16 %i.oo to i32
  %i.os = zext <4 x i16> %i.oq to <4 x i32>
  %i.ot = load <3 x i32>, ptr %i.oe, align 8, !tbaa !107 ; 2 uses
  %i.ou = shufflevector <3 x i32> %i.ot, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ov = load i32, ptr %i.oe, align 8, !tbaa !107
  %i.ow = load i16, ptr %i.ns, align 2, !tbaa !109, !noalias !212
  %i.ox = load <2 x i16>, ptr %i.nq, align 2, !tbaa !109, !noalias !212
  %i.oy = shufflevector <2 x i16> %i.ox, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oz = zext i16 %i.ow to i32
  %i.pa = zext <4 x i16> %i.oy to <4 x i32>
  %i.pb = load <2 x i16>, ptr %i.ny, align 2, !tbaa !109, !noalias !212
  %i.pc = zext <2 x i16> %i.pb to <2 x i32>
  %i.pd = insertelement <2 x i32> poison, i32 %i.od, i64 0
  %i.pe = shufflevector <2 x i32> %i.pd, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pf = add <2 x i32> %i.pe, %i.pc              ; 3 uses
  %i.pg = shufflevector <2 x i32> %i.pf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ph = load <2 x i16>, ptr %i.oa, align 2, !tbaa !109, !noalias !212
  %i.pi = zext <2 x i16> %i.ph to <2 x i32>
  %i.pj = add <2 x i32> %i.pe, %i.pi
  %i.pk = add nsw <2 x i32> %i.pj, %i.pf
  %i.pl = shufflevector <2 x i32> %i.pk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pm = ashr <4 x i32> %i.pl, splat (i32 1)     ; 2 uses
  %i.pn = mul <4 x i32> %i.pg, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.po = shufflevector <2 x i32> %i.pf, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.pp = mul <4 x i32> %i.po, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.pq = add <4 x i32> %i.pn, %i.pp
  %i.pr = ashr <4 x i32> %i.pq, splat (i32 12)    ; 2 uses
  %i.ps = add nsw <4 x i32> %i.pr, %i.pa
  %i.pt = insertelement <4 x i32> poison, i32 %i.ov, i64 0
  %i.pu = shufflevector <4 x i32> %i.pt, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.pv = shufflevector <4 x i32> %i.pu, <4 x i32> %i.ou, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.pw = mul nsw <4 x i32> %i.ps, %i.pv
  %i.px = ashr <4 x i32> %i.pw, splat (i32 8)
  %i.py = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.px, <4 x i32> zeroinitializer)
  %i.pz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.py, <4 x i32> splat (i32 65535))
  %i.qa = trunc nuw <4 x i32> %i.pz to <4 x i16>
  store <4 x i16> %i.qa, ptr %i.oi, align 2, !tbaa !109
  %i.qb = shufflevector <4 x i32> %i.pr, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.qc = insertelement <2 x i32> poison, i32 %i.oz, i64 0
  %i.qd = shufflevector <2 x i32> %i.qc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.qe = add nsw <2 x i32> %i.qb, %i.qd
  %i.qf = shufflevector <3 x i32> %i.ot, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.qg = mul nsw <2 x i32> %i.qe, %i.qf
  %i.qh = ashr <2 x i32> %i.qg, splat (i32 8)
  %i.qi = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.qh, <2 x i32> zeroinitializer)
  %i.qj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.qi, <2 x i32> splat (i32 65535))
  %i.qk = trunc nuw <2 x i32> %i.qj to <2 x i16>
  store <2 x i16> %i.qk, ptr %i.ok, align 2, !tbaa !109
  %i.ql = mul <4 x i32> %i.pm, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.qm = shufflevector <4 x i32> %i.pm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.qn = mul <4 x i32> %i.qm, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.qo = add <4 x i32> %i.ql, %i.qn
  %i.qp = ashr <4 x i32> %i.qo, splat (i32 12)    ; 2 uses
  %i.qq = add nsw <4 x i32> %i.qp, %i.os
  %i.qr = mul nsw <4 x i32> %i.qq, %i.ou
  %i.qs = ashr <4 x i32> %i.qr, splat (i32 8)
  %i.qt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qs, <4 x i32> zeroinitializer)
  %i.qu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qt, <4 x i32> splat (i32 65535))
  %i.qv = trunc nuw <4 x i32> %i.qu to <4 x i16>
  store <4 x i16> %i.qv, ptr %i.om, align 2, !tbaa !109
  %i.qw = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.qx = shufflevector <4 x i32> %i.qp, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.qy = insertelement <2 x i32> poison, i32 %i.or, i64 0
  %i.qz = shufflevector <2 x i32> %i.qy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ra = add nsw <2 x i32> %i.qx, %i.qz
  %i.rb = mul nsw <2 x i32> %i.ra, %i.qf
  %i.rc = ashr <2 x i32> %i.rb, splat (i32 8)
  %i.rd = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.rc, <2 x i32> zeroinitializer)
  %i.re = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.rd, <2 x i32> splat (i32 65535))
  %i.rf = trunc nuw <2 x i32> %i.re to <2 x i16>
  store <2 x i16> %i.rf, ptr %i.qw, align 2, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !224 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !224
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !224
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !224 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !224
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %2 = udiv i32 %i.s, 6
  %i.y = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.y)
  %.sroa.0112.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 7 uses
  %i.z = icmp slt i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i32 %2, -1                      ; 3 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !106
  %i.ad = add i32 %i.ac, -16384                   ; 9 uses
  %i.ae = shl nsw i32 %1, 1                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load <3 x i32>, ptr %i.af, align 8, !tbaa !107 ; 5 uses
  %i.ah = shufflevector <3 x i32> %i.ag, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !107
  %i.aj = zext nneg i32 %invariant.op to i64
  %i.ak = sext i32 %1 to i64                      ; 3 uses
  %i.al = zext nneg i32 %i.u to i64
  %i.am = zext i32 %i.w to i64                    ; 4 uses
  %i.an = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ao = zext i32 %i.ae to i64                   ; 3 uses
  %i.ap = zext i32 %i.n to i64                    ; 4 uses
  %i.aq = zext nneg i32 %i.k to i64
  %wide.trip.count = zext i32 %i.aa to i64        ; 4 uses
  %i.ar = mul nuw nsw i64 %i.ak, %i.am            ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.ar ; 20 uses
  %i.at = add nuw nsw i64 %i.ak, 1                ; 3 uses
  %i.au = icmp samesign ult i64 %i.at, %i.al
  tail call void @llvm.assume(i1 %i.au), !noalias !225
  %i.av = mul nuw nsw i64 %i.at, %i.am            ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.av ; 4 uses
  %i.ax = icmp ult i32 %i.ae, %i.k
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = mul nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.az = getelementptr [2 x i8], ptr %i.d, i64 %i.ay ; 16 uses
  %i.ba = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.bb = icmp samesign ult i64 %i.ba, %i.aq
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = mul nuw i64 %i.ba, %i.ap                ; 2 uses
  %i.bd = getelementptr [2 x i8], ptr %i.d, i64 %i.bc ; 16 uses
  %min.iters.check = icmp ult i32 %i.aa, 33
  br i1 %min.iters.check, label %.preheader213.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.be = mul nuw i64 %i.ap, %i.ao
  %i.bf = shl i64 %i.be, 1                        ; 8 uses
  %i.bg = mul nuw nsw i64 %wide.trip.count, 12    ; 8 uses
  %i.bh = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.d, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 -10 ; 13 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep538 = getelementptr i8, ptr %i.bj, i64 2 ; 13 uses
  %i.bk = getelementptr i8, ptr %i.d, i64 %i.bh
  %scevgep539 = getelementptr i8, ptr %i.bk, i64 -8 ; 13 uses
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep540 = getelementptr i8, ptr %i.bl, i64 4 ; 13 uses
  %i.bm = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bm
  %scevgep541 = getelementptr i8, ptr %i.bn, i64 -6 ; 13 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep542 = getelementptr i8, ptr %i.bo, i64 6 ; 13 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bm
  %scevgep543 = getelementptr i8, ptr %i.bp, i64 -4 ; 13 uses
  %i.bq = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep544 = getelementptr i8, ptr %i.bq, i64 8 ; 13 uses
  %i.br = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br
  %scevgep545 = getelementptr i8, ptr %i.bs, i64 -2 ; 13 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bf
  %scevgep546 = getelementptr i8, ptr %i.bt, i64 10 ; 13 uses
  %scevgep547 = getelementptr i8, ptr %i.d, i64 %i.br ; 13 uses
  %i.bu = mul nuw i64 %i.ba, %i.ap
  %i.bv = shl i64 %i.bu, 1                        ; 8 uses
  %i.bw = add i64 %i.bv, %i.bg                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep548 = getelementptr i8, ptr %i.bx, i64 -10 ; 13 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep549 = getelementptr i8, ptr %i.by, i64 2 ; 13 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep550 = getelementptr i8, ptr %i.bz, i64 -8 ; 13 uses
  %i.ca = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep551 = getelementptr i8, ptr %i.ca, i64 4 ; 13 uses
  %i.cb = add i64 %i.bv, %i.bg                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.d, i64 %i.cb
  %scevgep552 = getelementptr i8, ptr %i.cc, i64 -6 ; 13 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep553 = getelementptr i8, ptr %i.cd, i64 6 ; 13 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.cb
  %scevgep554 = getelementptr i8, ptr %i.ce, i64 -4 ; 13 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep555 = getelementptr i8, ptr %i.cf, i64 8 ; 13 uses
  %i.cg = add i64 %i.bv, %i.bg                    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %scevgep556 = getelementptr i8, ptr %i.ch, i64 -2 ; 13 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep557 = getelementptr i8, ptr %i.ci, i64 10 ; 13 uses
  %scevgep558 = getelementptr i8, ptr %i.d, i64 %i.cg ; 13 uses
  %i.cj = mul i64 %i.at, %i.am
  %i.ck = shl i64 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.ck
  %scevgep559 = getelementptr i8, ptr %i.cl, i64 8 ; 12 uses
  %i.cm = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.bg
  %scevgep560 = getelementptr i8, ptr %i.cn, i64 12 ; 12 uses
  %i.co = mul nsw i64 %i.ak, %i.am
  %i.cp = shl i64 %i.co, 1
  %i.cq = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.bg
  %scevgep561 = getelementptr i8, ptr %i.cr, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.az, %scevgep539
  %bound1 = icmp ult ptr %scevgep538, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0562 = icmp ult ptr %i.az, %scevgep541
  %bound1563 = icmp ult ptr %scevgep540, %scevgep
  %found.conflict564 = and i1 %bound0562, %bound1563
  %conflict.rdx = or i1 %found.conflict, %found.conflict564
  %bound0565 = icmp ult ptr %i.az, %scevgep543
  %bound1566 = icmp ult ptr %scevgep542, %scevgep
  %found.conflict567 = and i1 %bound0565, %bound1566
  %conflict.rdx568 = or i1 %conflict.rdx, %found.conflict567
  %bound0569 = icmp ult ptr %i.az, %scevgep545
  %bound1570 = icmp ult ptr %scevgep544, %scevgep
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx572 = or i1 %conflict.rdx568, %found.conflict571
  %bound0573 = icmp ult ptr %i.az, %scevgep547
  %bound1574 = icmp ult ptr %scevgep546, %scevgep
  %found.conflict575 = and i1 %bound0573, %bound1574
  %conflict.rdx576 = or i1 %conflict.rdx572, %found.conflict575
  %bound0577 = icmp ult ptr %i.az, %scevgep548
  %bound1578 = icmp ult ptr %i.bd, %scevgep
  %found.conflict579 = and i1 %bound0577, %bound1578
  %conflict.rdx580 = or i1 %conflict.rdx576, %found.conflict579
  %bound0581 = icmp ult ptr %i.az, %scevgep550
  %bound1582 = icmp ult ptr %scevgep549, %scevgep
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx584 = or i1 %conflict.rdx580, %found.conflict583
  %bound0585 = icmp ult ptr %i.az, %scevgep552
  %bound1586 = icmp ult ptr %scevgep551, %scevgep
  %found.conflict587 = and i1 %bound0585, %bound1586
  %conflict.rdx588 = or i1 %conflict.rdx584, %found.conflict587
  %bound0589 = icmp ult ptr %i.az, %scevgep554
  %bound1590 = icmp ult ptr %scevgep553, %scevgep
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx592 = or i1 %conflict.rdx588, %found.conflict591
  %bound0593 = icmp ult ptr %i.az, %scevgep556
  %bound1594 = icmp ult ptr %scevgep555, %scevgep
  %found.conflict595 = and i1 %bound0593, %bound1594
  %conflict.rdx596 = or i1 %conflict.rdx592, %found.conflict595
  %bound0597 = icmp ult ptr %i.az, %scevgep558
  %bound1598 = icmp ult ptr %scevgep557, %scevgep
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %conflict.rdx596, %found.conflict599
  %bound0601 = icmp ult ptr %i.az, %scevgep560
  %bound1602 = icmp ult ptr %scevgep559, %scevgep
  %found.conflict603 = and i1 %bound0601, %bound1602
  %conflict.rdx604 = or i1 %conflict.rdx600, %found.conflict603
  %bound0605 = icmp ult ptr %i.az, %scevgep561
  %bound1606 = icmp ult ptr %i.as, %scevgep
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx608 = or i1 %conflict.rdx604, %found.conflict607
  %bound0609 = icmp ult ptr %scevgep538, %scevgep541
  %bound1610 = icmp ult ptr %scevgep540, %scevgep539
  %found.conflict611 = and i1 %bound0609, %bound1610
  %conflict.rdx612 = or i1 %conflict.rdx608, %found.conflict611
  %bound0613 = icmp ult ptr %scevgep538, %scevgep543
  %bound1614 = icmp ult ptr %scevgep542, %scevgep539
  %found.conflict615 = and i1 %bound0613, %bound1614
  %conflict.rdx616 = or i1 %conflict.rdx612, %found.conflict615
  %bound0617 = icmp ult ptr %scevgep538, %scevgep545
  %bound1618 = icmp ult ptr %scevgep544, %scevgep539
  %found.conflict619 = and i1 %bound0617, %bound1618
  %conflict.rdx620 = or i1 %conflict.rdx616, %found.conflict619
  %bound0621 = icmp ult ptr %scevgep538, %scevgep547
  %bound1622 = icmp ult ptr %scevgep546, %scevgep539
  %found.conflict623 = and i1 %bound0621, %bound1622
  %conflict.rdx624 = or i1 %conflict.rdx620, %found.conflict623
  %bound0625 = icmp ult ptr %scevgep538, %scevgep548
  %bound1626 = icmp ult ptr %i.bd, %scevgep539
  %found.conflict627 = and i1 %bound0625, %bound1626
  %conflict.rdx628 = or i1 %conflict.rdx624, %found.conflict627
  %bound0629 = icmp ult ptr %scevgep538, %scevgep550
  %bound1630 = icmp ult ptr %scevgep549, %scevgep539
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %conflict.rdx628, %found.conflict631
  %bound0633 = icmp ult ptr %scevgep538, %scevgep552
  %bound1634 = icmp ult ptr %scevgep551, %scevgep539
  %found.conflict635 = and i1 %bound0633, %bound1634
  %conflict.rdx636 = or i1 %conflict.rdx632, %found.conflict635
  %bound0637 = icmp ult ptr %scevgep538, %scevgep554
  %bound1638 = icmp ult ptr %scevgep553, %scevgep539
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx640 = or i1 %conflict.rdx636, %found.conflict639
  %bound0641 = icmp ult ptr %scevgep538, %scevgep556
  %bound1642 = icmp ult ptr %scevgep555, %scevgep539
  %found.conflict643 = and i1 %bound0641, %bound1642
  %conflict.rdx644 = or i1 %conflict.rdx640, %found.conflict643
  %bound0645 = icmp ult ptr %scevgep538, %scevgep558
  %bound1646 = icmp ult ptr %scevgep557, %scevgep539
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %conflict.rdx644, %found.conflict647
  %bound0649 = icmp ult ptr %scevgep538, %scevgep560
  %bound1650 = icmp ult ptr %scevgep559, %scevgep539
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx652 = or i1 %conflict.rdx648, %found.conflict651
  %bound0653 = icmp ult ptr %scevgep538, %scevgep561
  %bound1654 = icmp ult ptr %i.as, %scevgep539
end_hunk_4
begin_hunk_5_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi:.lr.ph
  %i.fm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fl, <8 x i32> zeroinitializer)
  %i.fn = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fm, <8 x i32> splat (i32 65535))
  %i.fo = trunc nuw <8 x i32> %i.fn to <8 x i16>
  %i.fp = shufflevector <8 x i32> %i.en, <8 x i32> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fq = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fr = shufflevector <16 x i32> %i.fp, <16 x i32> %i.fq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fs = ashr <32 x i32> %i.fr, splat (i32 8)
  %i.ft = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.fs, <32 x i32> zeroinitializer)
  %i.fu = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.ft, <32 x i32> splat (i32 65535))
  %i.fv = trunc nuw <32 x i32> %i.fu to <32 x i16>
  %i.fw = shufflevector <8 x i16> %i.fk, <8 x i16> %i.fo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.fv, <32 x i16> %i.fw, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ew, align 2, !tbaa !109
  %i.fx = add nsw <8 x i32> %i.ef, %i.da
  %i.fy = mul nsw <8 x i32> %i.fx, %broadcast.splat918
  %i.fz = mul nsw <8 x i32> %i.ed, splat (i32 -778)
  %i.ga = shl nsw <8 x i32> %i.ef, splat (i32 11)
  %i.gb = sub nsw <8 x i32> %i.fz, %i.ga
  %i.gc = ashr <8 x i32> %i.gb, splat (i32 12)
  %i.gd = add nsw <8 x i32> %i.gc, %i.da
  %i.ge = mul nsw <8 x i32> %i.gd, %broadcast.splat920
  %i.gf = add nsw <8 x i32> %i.ed, %i.da
  %i.gg = mul nsw <8 x i32> %broadcast.splat922, %i.gf
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cw
  %i.gi = add nsw <8 x i32> %i.el, %i.db
  %i.gj = mul nsw <8 x i32> %i.gi, %broadcast.splat918
  %i.gk = mul nsw <8 x i32> %i.ei, splat (i32 -778)
  %i.gl = shl nsw <8 x i32> %i.el, splat (i32 11)
  %i.gm = sub nsw <8 x i32> %i.gk, %i.gl
  %i.gn = ashr <8 x i32> %i.gm, splat (i32 12)
  %i.go = add nsw <8 x i32> %i.gn, %i.db
  %i.gp = mul nsw <8 x i32> %i.go, %broadcast.splat920
  %i.gq = add nsw <8 x i32> %i.ei, %i.db
  %i.gr = mul nsw <8 x i32> %broadcast.splat922, %i.gq
  %i.gs = ashr <8 x i32> %i.gp, splat (i32 8)
  %i.gt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gs, <8 x i32> zeroinitializer)
  %i.gu = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gt, <8 x i32> splat (i32 65535))
  %i.gv = trunc nuw <8 x i32> %i.gu to <8 x i16>
  %i.gw = ashr <8 x i32> %i.gr, splat (i32 8)
  %i.gx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gw, <8 x i32> zeroinitializer)
  %i.gy = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gx, <8 x i32> splat (i32 65535))
  %i.gz = trunc nuw <8 x i32> %i.gy to <8 x i16>
  %i.ha = shufflevector <8 x i32> %i.fy, <8 x i32> %i.ge, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hb = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hc = shufflevector <16 x i32> %i.ha, <16 x i32> %i.hb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hd = ashr <32 x i32> %i.hc, splat (i32 8)
  %i.he = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.hd, <32 x i32> zeroinitializer)
  %i.hf = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.he, <32 x i32> splat (i32 65535))
  %i.hg = trunc nuw <32 x i32> %i.hf to <32 x i16>
  %i.hh = shufflevector <8 x i16> %i.gv, <8 x i16> %i.gz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec941 = shufflevector <32 x i16> %i.hg, <32 x i16> %i.hh, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec941, ptr %i.gh, align 2, !tbaa !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hi = add nuw nsw i64 %i.cv, 8
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %.preheader213.preheader, label %vector.body, !llvm.loop !220

.preheader213.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.hk = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.hl = shufflevector <4 x i32> %i.hk, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.hm = shufflevector <4 x i32> %i.hl, <4 x i32> %i.ah, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hn = shufflevector <3 x i32> %i.ag, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213.preheader, %.preheader213
  %indvars.iv = phi i64 [ %i.id, %.preheader213 ], [ %indvars.iv.ph, %.preheader213.preheader ] ; 2 uses
  %i.ho = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ho
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ho
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ho
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 6
  %i.hw = add nuw nsw i64 %i.ho, 4                ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.hw ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !109, !noalias !225
  %i.hz = zext i16 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !109, !noalias !225
  %i.ic = zext i16 %i.ib to i32
  %i.id = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ie = mul nuw nsw i64 %i.id, 6                ; 2 uses
  %i.if = add nuw nsw i64 %i.ie, 4                ; 2 uses
  %i.ig = icmp samesign ule i64 %i.ie, %i.aj
  tail call void @llvm.assume(i1 %i.ig), !noalias !225
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.if ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !109, !noalias !225
  %i.ij = zext i16 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !109, !noalias !225
  %i.im = zext i16 %i.il to i32
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.hw ; 2 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !109, !noalias !225
  %i.ip = zext i16 %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !109, !noalias !225
  %i.is = zext i16 %i.ir to i32
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.if ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !109, !noalias !225
  %i.iv = zext i16 %i.iu to i32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !109, !noalias !225
  %i.iy = zext i16 %i.ix to i32
  %i.iz = add i32 %i.ad, %i.ij
  %i.ja = add i32 %i.ad, %i.im
  %i.jb = add i32 %i.ad, %i.ip                    ; 2 uses
  %i.jc = add i32 %i.ad, %i.is                    ; 2 uses
  %i.jd = add i32 %i.ad, %i.iv
  %i.je = add i32 %i.ad, %i.iy
  %i.jf = add nuw nsw i64 %i.ho, 3                ; 3 uses
  %i.jg = icmp samesign ule i64 %i.jf, %i.an
  tail call void @llvm.assume(i1 %i.jg)
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ho
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.jf
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.ho
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.jf
  %i.jm = load i16, ptr %i.hv, align 2, !tbaa !109, !noalias !225
  %i.jn = load <2 x i16>, ptr %i.ht, align 2, !tbaa !109, !noalias !225
  %i.jo = shufflevector <2 x i16> %i.jn, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jp = zext i16 %i.jm to i32                   ; 2 uses
  %i.jq = zext <4 x i16> %i.jo to <4 x i32>
  %i.jr = load i16, ptr %i.hr, align 2, !tbaa !109, !noalias !225
  %i.js = load <2 x i16>, ptr %i.hp, align 2, !tbaa !109, !noalias !225
  %i.jt = shufflevector <2 x i16> %i.js, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ju = zext i16 %i.jr to i32
  %i.jv = zext <4 x i16> %i.jt to <4 x i32>
  %i.jw = insertelement <2 x i32> poison, i32 %i.ju, i64 0
  %i.jx = shufflevector <2 x i32> %i.jw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.jz = add i32 %i.ad, %i.hz                    ; 4 uses
  %i.ka = add i32 %i.ad, %i.ic                    ; 3 uses
  %i.kb = add nsw i32 %i.iz, %i.jz                ; 2 uses
  %i.kc = add nsw i32 %i.ja, %i.ka                ; 2 uses
  %i.kd = add nsw i32 %i.jb, %i.jz
  %i.ke = add nsw i32 %i.jc, %i.ka
  %i.kf = add nsw i32 %i.jb, %i.kb
  %i.kg = add nsw i32 %i.kf, %i.jd                ; 2 uses
  %i.kh = add nsw i32 %i.jc, %i.kc
  %i.ki = add nsw i32 %i.kh, %i.je
  %i.kj = insertelement <4 x i32> poison, i32 %i.ka, i64 0 ; 2 uses
  %i.kk = insertelement <4 x i32> %i.kj, i32 %i.kc, i64 1
  %i.kl = insertelement <4 x i32> %i.kk, i32 %i.ke, i64 2
  %i.km = insertelement <4 x i32> %i.kl, i32 %i.ki, i64 3
  %i.kn = ashr <4 x i32> %i.km, <i32 0, i32 1, i32 1, i32 2> ; 3 uses
  %i.ko = shl nsw <4 x i32> %i.kn, splat (i32 11)
  %i.kp = ashr i32 %i.kg, 2
  %i.kq = insertelement <4 x i32> poison, i32 %i.jz, i64 0
  %i.kr = insertelement <4 x i32> %i.kq, i32 %i.kb, i64 1
  %i.ks = insertelement <4 x i32> %i.kr, i32 %i.kd, i64 2
  %i.kt = insertelement <4 x i32> %i.ks, i32 %i.kg, i64 3
  %i.ku = ashr <4 x i32> %i.kt, <i32 0, i32 1, i32 1, i32 2> ; 3 uses
  %i.kv = mul nsw <4 x i32> %i.ku, splat (i32 -778)
  %i.kw = sub nsw <4 x i32> %i.kv, %i.ko
  %i.kx = ashr <4 x i32> %i.kw, splat (i32 12)    ; 4 uses
  %i.ky = shufflevector <4 x i32> %i.kj, <4 x i32> %i.kx, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.kz = shufflevector <4 x i32> %i.ky, <4 x i32> %i.kn, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.la = insertelement <4 x i32> %i.kz, i32 %i.jz, i64 2
  %i.lb = add nsw <4 x i32> %i.la, %i.jv
  %i.lc = mul nsw <4 x i32> %i.lb, %i.hm
  %i.ld = ashr <4 x i32> %i.lc, splat (i32 8)
  %i.le = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ld, <4 x i32> zeroinitializer)
  %i.lf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.le, <4 x i32> splat (i32 65535))
  %i.lg = trunc nuw <4 x i32> %i.lf to <4 x i16>
  store <4 x i16> %i.lg, ptr %i.jh, align 2, !tbaa !109
  %i.lh = shufflevector <4 x i32> %i.kx, <4 x i32> %i.ku, <2 x i32> <i32 1, i32 5>
  %i.li = add nsw <2 x i32> %i.lh, %i.jx
  %i.lj = mul nsw <2 x i32> %i.li, %i.hn
  %i.lk = ashr <2 x i32> %i.lj, splat (i32 8)
  %i.ll = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.lk, <2 x i32> zeroinitializer)
  %i.lm = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ll, <2 x i32> splat (i32 65535))
  %i.ln = trunc nuw <2 x i32> %i.lm to <2 x i16>
  store <2 x i16> %i.ln, ptr %i.jj, align 2, !tbaa !109
  %i.lo = shufflevector <4 x i32> %i.kx, <4 x i32> %i.ku, <4 x i32> <i32 poison, i32 2, i32 6, i32 poison>
  %i.lp = shufflevector <4 x i32> %i.lo, <4 x i32> %i.kn, <4 x i32> <i32 6, i32 1, i32 2, i32 7>
  %i.lq = add nsw <4 x i32> %i.lp, %i.jq
  %i.lr = mul nsw <4 x i32> %i.ah, %i.lq
  %i.ls = ashr <4 x i32> %i.lr, splat (i32 8)
  %i.lt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ls, <4 x i32> zeroinitializer)
  %i.lu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lt, <4 x i32> splat (i32 65535))
  %i.lv = trunc nuw <4 x i32> %i.lu to <4 x i16>
  store <4 x i16> %i.lv, ptr %i.jk, align 2, !tbaa !109
  %i.lw = add nsw i32 %i.kp, %i.jp
  %i.lx = extractelement <4 x i32> %i.kx, i64 3
  %i.ly = add nsw i32 %i.lx, %i.jp
  %i.lz = insertelement <2 x i32> poison, i32 %i.ly, i64 0
  %i.ma = insertelement <2 x i32> %i.lz, i32 %i.lw, i64 1
  %i.mb = mul nsw <2 x i32> %i.ma, %i.hn
  %i.mc = ashr <2 x i32> %i.mb, splat (i32 8)
  %i.md = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mc, <2 x i32> zeroinitializer)
  %i.me = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.md, <2 x i32> splat (i32 65535))
  %i.mf = trunc nuw <2 x i32> %i.me to <2 x i16>
  store <2 x i16> %i.mf, ptr %i.jy, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.id, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader213, !llvm.loop !221

._crit_edge:                                      ; preds = %.preheader213
  %i.mg = zext nneg i32 %i.s to i64
  %3 = mul nuw nsw i32 %i.aa, 6                   ; 3 uses
  %i.mh = add nuw nsw i32 %3, 4
  %i.mi = add nuw nsw i32 %3, 6
  %4 = icmp samesign ule i32 %i.mi, %i.s
  tail call void @llvm.assume(i1 %4), !noalias !228
  %i.mj = zext nneg i32 %i.mh to i64              ; 2 uses
  %i.mk = zext nneg i32 %3 to i64                 ; 7 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.ar ; 5 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.mk
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.mk
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.mr = add nuw nsw i64 %i.mk, 3                ; 2 uses
  %i.ms = icmp samesign ult i64 %i.mr, %i.mg
  tail call void @llvm.assume(i1 %i.ms), !noalias !228
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.mr
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.mj ; 2 uses
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !109, !noalias !228
  %i.mw = zext i16 %i.mv to i32
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !109, !noalias !228
  %i.mz = zext i16 %i.my to i32
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.av
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %i.na, i64 %i.mj ; 2 uses
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !109, !noalias !228
  %i.nd = zext i16 %i.nc to i32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !109, !noalias !228
  %i.ng = zext i16 %i.nf to i32
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !106
  %i.nj = add i32 %i.ni, -16384                   ; 4 uses
  %i.nk = add i32 %i.nj, %i.nd
  %i.nl = add i32 %i.nj, %i.ng
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.nn = add nuw nsw i64 %i.mk, 3                ; 3 uses
  %i.no = icmp samesign ule i64 %i.nn, %i.an
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ay ; 2 uses
  tail call void @llvm.assume(i1 %i.no)
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.mk
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.nn
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.nt, i64 %i.mk
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.nt, i64 %i.nn
  %i.nw = load i16, ptr %i.mt, align 2, !tbaa !109, !noalias !228
  %i.nx = load <2 x i16>, ptr %i.mq, align 2, !tbaa !109, !noalias !228
  %i.ny = shufflevector <2 x i16> %i.nx, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.nz = zext i16 %i.nw to i32                   ; 2 uses
  %i.oa = zext <4 x i16> %i.ny to <4 x i32>
  %i.ob = load <3 x i32>, ptr %i.nm, align 8, !tbaa !107 ; 2 uses
  %i.oc = shufflevector <3 x i32> %i.ob, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.od = load i32, ptr %i.nm, align 8, !tbaa !107
  %i.oe = load i16, ptr %i.mo, align 2, !tbaa !109, !noalias !228
  %i.of = load <2 x i16>, ptr %i.mm, align 2, !tbaa !109, !noalias !228
  %i.og = shufflevector <2 x i16> %i.of, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oh = zext i16 %i.oe to i32
  %i.oi = zext <4 x i16> %i.og to <4 x i32>
  %i.oj = add i32 %i.nj, %i.mz                    ; 3 uses
  %i.ok = add nsw i32 %i.nl, %i.oj
  %i.ol = shl nsw i32 %i.oj, 11
  %i.om = insertelement <4 x i32> poison, i32 %i.oj, i64 0
  %i.on = ashr i32 %i.ok, 1                       ; 2 uses
  %i.oo = insertelement <4 x i32> poison, i32 %i.od, i64 0
  %i.op = shufflevector <4 x i32> %i.oo, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.oq = shufflevector <4 x i32> %i.op, <4 x i32> %i.oc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.or = add i32 %i.nj, %i.mw                    ; 4 uses
  %i.os = add nsw i32 %i.nk, %i.or
  %i.ot = mul nsw i32 %i.or, -778
  %i.ou = sub nsw i32 %i.ot, %i.ol
  %i.ov = ashr i32 %i.ou, 12                      ; 2 uses
  %i.ow = insertelement <4 x i32> %i.om, i32 %i.ov, i64 1
  %i.ox = insertelement <4 x i32> %i.ow, i32 %i.or, i64 2
  %i.oy = shufflevector <4 x i32> %i.ox, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.oz = add nsw <4 x i32> %i.oy, %i.oi
  %i.pa = insertelement <2 x i32> poison, i32 %i.ov, i64 0
  %i.pb = insertelement <2 x i32> %i.pa, i32 %i.or, i64 1
  %i.pc = insertelement <2 x i32> poison, i32 %i.oh, i64 0
  %i.pd = shufflevector <2 x i32> %i.pc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.pe = add nsw <2 x i32> %i.pb, %i.pd
  %i.pf = mul nsw <4 x i32> %i.oz, %i.oq
  %i.pg = shufflevector <3 x i32> %i.ob, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ph = mul nsw <2 x i32> %i.pe, %i.pg
  %i.pi = ashr <4 x i32> %i.pf, splat (i32 8)
  %i.pj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.pi, <4 x i32> zeroinitializer)
  %i.pk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.pj, <4 x i32> splat (i32 65535))
  %i.pl = trunc nuw <4 x i32> %i.pk to <4 x i16>
  store <4 x i16> %i.pl, ptr %i.nq, align 2, !tbaa !109
  %i.pm = ashr <2 x i32> %i.ph, splat (i32 8)
  %i.pn = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.pm, <2 x i32> zeroinitializer)
  %i.po = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.pn, <2 x i32> splat (i32 65535))
  %i.pp = trunc nuw <2 x i32> %i.po to <2 x i16>
  store <2 x i16> %i.pp, ptr %i.ns, align 2, !tbaa !109
  %i.pq = shl nsw i32 %i.on, 11
  %i.pr = insertelement <4 x i32> poison, i32 %i.on, i64 0
  %i.ps = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %i.pt = ashr i32 %i.os, 1                       ; 3 uses
  %i.pu = mul nsw i32 %i.pt, -778
  %i.pv = sub nsw i32 %i.pu, %i.pq
  %i.pw = ashr i32 %i.pv, 12                      ; 2 uses
  %i.px = insertelement <4 x i32> %i.pr, i32 %i.pw, i64 1
  %i.py = insertelement <4 x i32> %i.px, i32 %i.pt, i64 2
  %i.pz = shufflevector <4 x i32> %i.py, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.qa = add nsw <4 x i32> %i.pz, %i.oa
  %i.qb = mul nsw <4 x i32> %i.oc, %i.qa
  %i.qc = add nsw i32 %i.pt, %i.nz
  %i.qd = add nsw i32 %i.pw, %i.nz
  %i.qe = insertelement <2 x i32> poison, i32 %i.qd, i64 0
  %i.qf = insertelement <2 x i32> %i.qe, i32 %i.qc, i64 1
  %i.qg = mul nsw <2 x i32> %i.qf, %i.pg
  %i.qh = ashr <4 x i32> %i.qb, splat (i32 8)
  %i.qi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qh, <4 x i32> zeroinitializer)
  %i.qj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qi, <4 x i32> splat (i32 65535))
  %i.qk = trunc nuw <4 x i32> %i.qj to <4 x i16>
  store <4 x i16> %i.qk, ptr %i.nu, align 2, !tbaa !109
  %i.ql = ashr <2 x i32> %i.qg, splat (i32 8)
  %i.qm = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ql, <2 x i32> zeroinitializer)
  %i.qn = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.qm, <2 x i32> splat (i32 65535))
  %i.qo = trunc nuw <2 x i32> %i.qn to <2 x i16>
  store <2 x i16> %i.qo, ptr %i.ps, align 2, !tbaa !109
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !113
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !113
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #15
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.1, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #12

end_hunk_5
