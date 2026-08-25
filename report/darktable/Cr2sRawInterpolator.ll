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
  %i.b = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 2 uses
  %.pre = load i32, ptr %i.d, align 4, !tbaa !28  ; 3 uses
  switch i32 %i.f, label %.thread [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %.pre, 2
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !29, !noalias !19 ; 4 uses
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
  br i1 %exitcond.not.i, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader, !llvm.loop !99

.preheader22:                                     ; preds = %bb.c, %.preheader22
  %.018.i10 = phi i32 [ %i.l, %.preheader22 ], [ 0, %bb.c ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.018.i10)
  %i.l = add nuw nsw i32 %.018.i10, 1             ; 2 uses
  %exitcond.not.i11 = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i11, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader22, !llvm.loop !101

.preheader24:                                     ; preds = %bb.c, %.preheader24
  %.018.i12 = phi i32 [ %i.m, %.preheader24 ], [ 0, %bb.c ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.018.i12)
  %i.m = add nuw nsw i32 %.018.i12, 1             ; 2 uses
  %exitcond.not.i13 = icmp eq i32 %i.m, %i.i
  br i1 %exitcond.not.i13, label %_ZN8rawspeed19Cr2sRawInterpolator15interpolate_422ILi0EEEvv.exit, label %.preheader24, !llvm.loop !102

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
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !104 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !104
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !104
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111  ; 4 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !112  ; 2 uses
  %i.y = icmp sge i32 %i.x, %i.s
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = udiv i32 %i.s, 6                        ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.0116.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.ac = icmp samesign ugt i32 %i.u, 1
  br i1 %i.ac, label %.lr.ph, label %.lr.ph232

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.051221 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.051221)
  %i.ad = add nuw nsw i32 %.051221, 1             ; 3 uses
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !111 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nsw i32 %i.ae, -1
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.lr.ph232, !llvm.loop !114

.lr.ph232:                                        ; preds = %.lr.ph, %bb.a
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %.lr.ph ] ; 4 uses
  %i.ai = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.aj = icmp samesign ult i32 %.051.lcssa, %i.u
  tail call void @llvm.assume(i1 %i.aj), !noalias !115
  %i.ak = mul i32 %.051.lcssa, %i.x
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr [2 x i8], ptr %.sroa.0116.0.copyload, i64 %i.al ; 20 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !118
  %i.ap = add i32 %i.ao, -16384                   ; 2 uses
  %i.aq = shl nuw nsw i32 %.051.lcssa, 1          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load <3 x i32>, ptr %i.ar, align 8, !tbaa !119 ; 5 uses
  %i.at = shufflevector <3 x i32> %i.as, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %1 = load <4 x i32>, ptr %i.ar, align 8
  %i.au = zext nneg i32 %invariant.op to i64
  %i.av = zext nneg i32 %i.i to i64               ; 2 uses
  %i.aw = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.ax = zext i32 %i.n to i64                    ; 4 uses
  %i.ay = zext nneg i32 %i.k to i64
  %i.az = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 4 uses
  %i.ba = icmp samesign ult i32 %i.aq, %i.k
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = mul nuw nsw i64 %i.aw, %i.ax            ; 2 uses
  %i.bc = getelementptr [2 x i8], ptr %i.d, i64 %i.bb ; 15 uses
  %i.bd = or disjoint i64 %i.aw, 1                ; 3 uses
  %i.be = icmp samesign ult i64 %i.bd, %i.ay
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = mul nuw nsw i64 %i.bd, %i.ax            ; 2 uses
  %i.bg = getelementptr [2 x i8], ptr %i.d, i64 %i.bf ; 15 uses
  %min.iters.check = icmp ult i32 %i.ai, 33
  br i1 %min.iters.check, label %.preheader217.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph232
  %i.bh = zext nneg i32 %.051.lcssa to i64
  %i.bi = mul nuw nsw i64 %i.bh, %i.ax
  %i.bj = shl i64 %i.bi, 2                        ; 8 uses
  %i.bk = mul nuw nsw i64 %wide.trip.count, 12    ; 7 uses
  %i.bl = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.d, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bm, i64 -10 ; 12 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep398 = getelementptr i8, ptr %i.bn, i64 2 ; 12 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bl
  %scevgep399 = getelementptr i8, ptr %i.bo, i64 -8 ; 12 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep400 = getelementptr i8, ptr %i.bp, i64 4 ; 12 uses
  %i.bq = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bq
  %scevgep401 = getelementptr i8, ptr %i.br, i64 -6 ; 12 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep402 = getelementptr i8, ptr %i.bs, i64 6 ; 12 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bq
  %scevgep403 = getelementptr i8, ptr %i.bt, i64 -4 ; 12 uses
  %i.bu = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep404 = getelementptr i8, ptr %i.bu, i64 8 ; 12 uses
  %i.bv = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep405 = getelementptr i8, ptr %i.bw, i64 -2 ; 12 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep406 = getelementptr i8, ptr %i.bx, i64 10 ; 12 uses
  %scevgep407 = getelementptr i8, ptr %i.d, i64 %i.bv ; 12 uses
  %i.by = mul nuw nsw i64 %i.bd, %i.ax
  %i.bz = shl nuw i64 %i.by, 1                    ; 8 uses
  %i.ca = add i64 %i.bz, %i.bk                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep408 = getelementptr i8, ptr %i.cb, i64 -10 ; 12 uses
  %i.cc = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep409 = getelementptr i8, ptr %i.cc, i64 2 ; 12 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep410 = getelementptr i8, ptr %i.cd, i64 -8 ; 12 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep411 = getelementptr i8, ptr %i.ce, i64 4 ; 12 uses
  %i.cf = add i64 %i.bz, %i.bk                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.cf
  %scevgep412 = getelementptr i8, ptr %i.cg, i64 -6 ; 12 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep413 = getelementptr i8, ptr %i.ch, i64 6 ; 12 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.cf
  %scevgep414 = getelementptr i8, ptr %i.ci, i64 -4 ; 12 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep415 = getelementptr i8, ptr %i.cj, i64 8 ; 12 uses
  %i.ck = add i64 %i.bz, %i.bk                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.ck
  %scevgep416 = getelementptr i8, ptr %i.cl, i64 -2 ; 12 uses
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep417 = getelementptr i8, ptr %i.cm, i64 10 ; 12 uses
  %scevgep418 = getelementptr i8, ptr %i.d, i64 %i.ck ; 12 uses
  %i.cn = shl nuw nsw i64 %i.al, 1
  %i.co = getelementptr i8, ptr %.sroa.0116.0.copyload, i64 %i.bk
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cn
  %scevgep419 = getelementptr i8, ptr %i.cp, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.bc, %scevgep399
  %bound1 = icmp ult ptr %scevgep398, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0420 = icmp ult ptr %i.bc, %scevgep401
  %bound1421 = icmp ult ptr %scevgep400, %scevgep
  %found.conflict422 = and i1 %bound0420, %bound1421
  %conflict.rdx = or i1 %found.conflict, %found.conflict422
  %bound0423 = icmp ult ptr %i.bc, %scevgep403
  %bound1424 = icmp ult ptr %scevgep402, %scevgep
  %found.conflict425 = and i1 %bound0423, %bound1424
  %conflict.rdx426 = or i1 %conflict.rdx, %found.conflict425
  %bound0427 = icmp ult ptr %i.bc, %scevgep405
  %bound1428 = icmp ult ptr %scevgep404, %scevgep
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx430 = or i1 %conflict.rdx426, %found.conflict429
  %bound0431 = icmp ult ptr %i.bc, %scevgep407
  %bound1432 = icmp ult ptr %scevgep406, %scevgep
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %conflict.rdx430, %found.conflict433
  %bound0435 = icmp ult ptr %i.bc, %scevgep408
  %bound1436 = icmp ult ptr %i.bg, %scevgep
  %found.conflict437 = and i1 %bound0435, %bound1436
  %conflict.rdx438 = or i1 %conflict.rdx434, %found.conflict437
  %bound0439 = icmp ult ptr %i.bc, %scevgep410
  %bound1440 = icmp ult ptr %scevgep409, %scevgep
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %conflict.rdx438, %found.conflict441
  %bound0443 = icmp ult ptr %i.bc, %scevgep412
  %bound1444 = icmp ult ptr %scevgep411, %scevgep
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict445
  %bound0447 = icmp ult ptr %i.bc, %scevgep414
  %bound1448 = icmp ult ptr %scevgep413, %scevgep
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %conflict.rdx446, %found.conflict449
  %bound0451 = icmp ult ptr %i.bc, %scevgep416
  %bound1452 = icmp ult ptr %scevgep415, %scevgep
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0455 = icmp ult ptr %i.bc, %scevgep418
  %bound1456 = icmp ult ptr %scevgep417, %scevgep
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  %bound0459 = icmp ult ptr %i.bc, %scevgep419
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
  %bound1480 = icmp ult ptr %i.bg, %scevgep399
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
  %bound1520 = icmp ult ptr %i.bg, %scevgep401
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx522 = or i1 %conflict.rdx518, %found.conflict521
  %bound0523 = icmp ult ptr %scevgep400, %scevgep410
  %bound1524 = icmp ult ptr %scevgep409, %scevgep401
  %found.conflict525 = and i1 %bound0523, %bound1524
  %conflict.rdx526 = or i1 %conflict.rdx522, %found.conflict525
  %bound0527 = icmp ult ptr %scevgep400, %scevgep412
  %bound1528 = icmp ult ptr %scevgep411, %scevgep401
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx530 = or i1 %conflict.rdx526, %found.conflict529
  %bound0531 = icmp ult ptr %scevgep400, %scevgep414
  %bound1532 = icmp ult ptr %scevgep413, %scevgep401
  %found.conflict533 = and i1 %bound0531, %bound1532
  %conflict.rdx534 = or i1 %conflict.rdx530, %found.conflict533
  %bound0535 = icmp ult ptr %scevgep400, %scevgep416
  %bound1536 = icmp ult ptr %scevgep415, %scevgep401
  %found.conflict537 = and i1 %bound0535, %bound1536
end_hunk_0
begin_hunk_1_@_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv:bb.a
  %bound1668 = icmp ult ptr %scevgep411, %scevgep410
  %found.conflict669 = and i1 %bound0667, %bound1668
  %conflict.rdx670 = or i1 %conflict.rdx666, %found.conflict669
  %bound0671 = icmp ult ptr %scevgep409, %scevgep414
  %bound1672 = icmp ult ptr %scevgep413, %scevgep410
  %found.conflict673 = and i1 %bound0671, %bound1672
  %conflict.rdx674 = or i1 %conflict.rdx670, %found.conflict673
  %bound0675 = icmp ult ptr %scevgep409, %scevgep416
  %bound1676 = icmp ult ptr %scevgep415, %scevgep410
  %found.conflict677 = and i1 %bound0675, %bound1676
  %conflict.rdx678 = or i1 %conflict.rdx674, %found.conflict677
  %bound0679 = icmp ult ptr %scevgep409, %scevgep418
  %bound1680 = icmp ult ptr %scevgep417, %scevgep410
  %found.conflict681 = and i1 %bound0679, %bound1680
  %conflict.rdx682 = or i1 %conflict.rdx678, %found.conflict681
  %bound0683 = icmp ult ptr %scevgep409, %scevgep419
  %bound1684 = icmp ult ptr %i.am, %scevgep410
  %found.conflict685 = and i1 %bound0683, %bound1684
  %conflict.rdx686 = or i1 %conflict.rdx682, %found.conflict685
  %bound0687 = icmp ult ptr %scevgep411, %scevgep414
  %bound1688 = icmp ult ptr %scevgep413, %scevgep412
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx690 = or i1 %conflict.rdx686, %found.conflict689
  %bound0691 = icmp ult ptr %scevgep411, %scevgep416
  %bound1692 = icmp ult ptr %scevgep415, %scevgep412
  %found.conflict693 = and i1 %bound0691, %bound1692
  %conflict.rdx694 = or i1 %conflict.rdx690, %found.conflict693
  %bound0695 = icmp ult ptr %scevgep411, %scevgep418
  %bound1696 = icmp ult ptr %scevgep417, %scevgep412
  %found.conflict697 = and i1 %bound0695, %bound1696
  %conflict.rdx698 = or i1 %conflict.rdx694, %found.conflict697
  %bound0699 = icmp ult ptr %scevgep411, %scevgep419
  %bound1700 = icmp ult ptr %i.am, %scevgep412
  %found.conflict701 = and i1 %bound0699, %bound1700
  %conflict.rdx702 = or i1 %conflict.rdx698, %found.conflict701
  %bound0703 = icmp ult ptr %scevgep413, %scevgep416
  %bound1704 = icmp ult ptr %scevgep415, %scevgep414
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx706 = or i1 %conflict.rdx702, %found.conflict705
  %bound0707 = icmp ult ptr %scevgep413, %scevgep418
  %bound1708 = icmp ult ptr %scevgep417, %scevgep414
  %found.conflict709 = and i1 %bound0707, %bound1708
  %conflict.rdx710 = or i1 %conflict.rdx706, %found.conflict709
  %bound0711 = icmp ult ptr %scevgep413, %scevgep419
  %bound1712 = icmp ult ptr %i.am, %scevgep414
  %found.conflict713 = and i1 %bound0711, %bound1712
  %conflict.rdx714 = or i1 %conflict.rdx710, %found.conflict713
  %bound0715 = icmp ult ptr %scevgep415, %scevgep418
  %bound1716 = icmp ult ptr %scevgep417, %scevgep416
  %found.conflict717 = and i1 %bound0715, %bound1716
  %conflict.rdx718 = or i1 %conflict.rdx714, %found.conflict717
  %bound0719 = icmp ult ptr %scevgep415, %scevgep419
  %bound1720 = icmp ult ptr %i.am, %scevgep416
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %conflict.rdx718, %found.conflict721
  %bound0723 = icmp ult ptr %scevgep417, %scevgep419
  %bound1724 = icmp ult ptr %i.am, %scevgep418
  %found.conflict725 = and i1 %bound0723, %bound1724
  %conflict.rdx726 = or i1 %conflict.rdx722, %found.conflict725
  br i1 %conflict.rdx726, label %.preheader217.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cq = and i64 %wide.trip.count, 7             ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 8, i64 %i.cq
  %n.vec = sub nsw i64 %wide.trip.count, %i.cs    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat728 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat730 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat732 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.ct = phi i64 [ 0, %vector.ph ], [ %i.gs, %vector.body ] ; 3 uses
  %i.cu = mul nuw nsw i64 %i.ct, 6                ; 3 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.cu
  %wide.vec = load <48 x i16>, ptr %i.cv, align 2, !tbaa !120, !alias.scope !122, !noalias !115 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec739 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec740 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec741 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec742 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec743 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.cw = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.cx = zext <8 x i16> %strided.vec739 to <8 x i32> ; 3 uses
  %i.cy = zext <8 x i16> %strided.vec740 to <8 x i32> ; 3 uses
  %i.cz = zext <8 x i16> %strided.vec741 to <8 x i32> ; 3 uses
  %i.da = zext <8 x i16> %strided.vec742 to <8 x i32>
  %i.db = zext <8 x i16> %strided.vec743 to <8 x i32>
  %.idx = mul nuw i64 %i.ct, 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %wide.vec744 = load <48 x i16>, ptr %i.dd, align 2, !tbaa !120, !alias.scope !122, !noalias !115 ; 2 uses
  %strided.vec745 = shufflevector <48 x i16> %wide.vec744, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec746 = shufflevector <48 x i16> %wide.vec744, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.de = zext <8 x i16> %strided.vec745 to <8 x i32>
  %i.df = zext <8 x i16> %strided.vec746 to <8 x i32>
  %i.dg = add <8 x i32> %broadcast.splat, %i.da   ; 4 uses
  %i.dh = add <8 x i32> %broadcast.splat, %i.db   ; 4 uses
  %i.di = add <8 x i32> %broadcast.splat, %i.de
  %i.dj = add <8 x i32> %broadcast.splat, %i.df
  %i.dk = add nsw <8 x i32> %i.di, %i.dg
  %i.dl = ashr <8 x i32> %i.dk, splat (i32 1)     ; 3 uses
  %i.dm = add nsw <8 x i32> %i.dj, %i.dh
  %i.dn = ashr <8 x i32> %i.dm, splat (i32 1)     ; 3 uses
  %i.do = mul nsw <8 x i32> %i.dg, splat (i32 50)
  %i.dp = mul nsw <8 x i32> %i.dh, splat (i32 22929)
  %i.dq = add nsw <8 x i32> %i.dp, %i.do
  %i.dr = ashr <8 x i32> %i.dq, splat (i32 12)    ; 2 uses
  %i.ds = add nsw <8 x i32> %i.dr, %i.cw
  %i.dt = mul nsw <8 x i32> %i.ds, %broadcast.splat728
  %i.du = mul nsw <8 x i32> %i.dg, splat (i32 -5640)
  %i.dv = mul <8 x i32> %i.dh, splat (i32 -11751)
  %i.dw = add <8 x i32> %i.dv, %i.du
  %i.dx = ashr <8 x i32> %i.dw, splat (i32 12)    ; 2 uses
  %i.dy = add nsw <8 x i32> %i.dx, %i.cw
  %i.dz = mul nsw <8 x i32> %i.dy, %broadcast.splat730
  %i.ea = mul nsw <8 x i32> %i.dg, splat (i32 29040)
  %i.eb = mul <8 x i32> %i.dh, splat (i32 -101)
  %i.ec = add <8 x i32> %i.eb, %i.ea
  %i.ed = ashr <8 x i32> %i.ec, splat (i32 12)    ; 2 uses
  %i.ee = add nsw <8 x i32> %i.ed, %i.cw
  %i.ef = mul nsw <8 x i32> %i.ee, %broadcast.splat732
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.cu
  %i.eh = mul nsw <8 x i32> %i.dl, splat (i32 50)
  %i.ei = mul nsw <8 x i32> %i.dn, splat (i32 22929)
  %i.ej = add nsw <8 x i32> %i.ei, %i.eh
  %i.ek = ashr <8 x i32> %i.ej, splat (i32 12)    ; 2 uses
  %i.el = add nsw <8 x i32> %i.ek, %i.cx
  %i.em = mul nsw <8 x i32> %i.el, %broadcast.splat728
  %i.en = mul nsw <8 x i32> %i.dl, splat (i32 -5640)
  %i.eo = mul <8 x i32> %i.dn, splat (i32 -11751)
  %i.ep = add <8 x i32> %i.eo, %i.en
  %i.eq = ashr <8 x i32> %i.ep, splat (i32 12)    ; 2 uses
  %i.er = add nsw <8 x i32> %i.eq, %i.cx
  %i.es = mul nsw <8 x i32> %i.er, %broadcast.splat730
  %i.et = mul nsw <8 x i32> %i.dl, splat (i32 29040)
  %i.eu = mul <8 x i32> %i.dn, splat (i32 -101)
  %i.ev = add <8 x i32> %i.eu, %i.et
  %i.ew = ashr <8 x i32> %i.ev, splat (i32 12)    ; 2 uses
  %i.ex = add nsw <8 x i32> %i.ew, %i.cx
  %i.ey = mul nsw <8 x i32> %i.ex, %broadcast.splat732
  %i.ez = ashr <8 x i32> %i.es, splat (i32 8)
  %i.fa = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ez, <8 x i32> zeroinitializer)
  %i.fb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fa, <8 x i32> splat (i32 65535))
  %i.fc = trunc nuw <8 x i32> %i.fb to <8 x i16>
  %i.fd = ashr <8 x i32> %i.ey, splat (i32 8)
  %i.fe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fd, <8 x i32> zeroinitializer)
  %i.ff = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fe, <8 x i32> splat (i32 65535))
  %i.fg = trunc nuw <8 x i32> %i.ff to <8 x i16>
  %i.fh = shufflevector <8 x i32> %i.dt, <8 x i32> %i.dz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fi = shufflevector <8 x i32> %i.ef, <8 x i32> %i.em, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fj = shufflevector <16 x i32> %i.fh, <16 x i32> %i.fi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fk = ashr <32 x i32> %i.fj, splat (i32 8)
  %i.fl = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.fk, <32 x i32> zeroinitializer)
  %i.fm = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.fl, <32 x i32> splat (i32 65535))
  %i.fn = trunc nuw <32 x i32> %i.fm to <32 x i16>
  %i.fo = shufflevector <8 x i16> %i.fc, <8 x i16> %i.fg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.fn, <32 x i16> %i.fo, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.eg, align 2, !tbaa !120
  %i.fp = add nsw <8 x i32> %i.dr, %i.cy
  %i.fq = mul nsw <8 x i32> %i.fp, %broadcast.splat728
  %i.fr = add nsw <8 x i32> %i.dx, %i.cy
  %i.fs = mul nsw <8 x i32> %i.fr, %broadcast.splat730
  %i.ft = add nsw <8 x i32> %i.ed, %i.cy
  %i.fu = mul nsw <8 x i32> %i.ft, %broadcast.splat732
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.cu
  %i.fw = add nsw <8 x i32> %i.ek, %i.cz
  %i.fx = mul nsw <8 x i32> %i.fw, %broadcast.splat728
  %i.fy = add nsw <8 x i32> %i.eq, %i.cz
  %i.fz = mul nsw <8 x i32> %i.fy, %broadcast.splat730
  %i.ga = add nsw <8 x i32> %i.ew, %i.cz
  %i.gb = mul nsw <8 x i32> %i.ga, %broadcast.splat732
  %i.gc = ashr <8 x i32> %i.fz, splat (i32 8)
  %i.gd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gc, <8 x i32> zeroinitializer)
  %i.ge = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gd, <8 x i32> splat (i32 65535))
  %i.gf = trunc nuw <8 x i32> %i.ge to <8 x i16>
  %i.gg = ashr <8 x i32> %i.gb, splat (i32 8)
  %i.gh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gg, <8 x i32> zeroinitializer)
  %i.gi = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gh, <8 x i32> splat (i32 65535))
  %i.gj = trunc nuw <8 x i32> %i.gi to <8 x i16>
  %i.gk = shufflevector <8 x i32> %i.fq, <8 x i32> %i.fs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gl = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gm = shufflevector <16 x i32> %i.gk, <16 x i32> %i.gl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gn = ashr <32 x i32> %i.gm, splat (i32 8)
  %i.go = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.gn, <32 x i32> zeroinitializer)
  %i.gp = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.go, <32 x i32> splat (i32 65535))
  %i.gq = trunc nuw <32 x i32> %i.gp to <32 x i16>
  %i.gr = shufflevector <8 x i16> %i.gf, <8 x i16> %i.gj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec747 = shufflevector <32 x i16> %i.gq, <32 x i16> %i.gr, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec747, ptr %i.fv, align 2, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gs = add nuw nsw i64 %i.ct, 8
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %.preheader217.preheader, label %vector.body, !llvm.loop !125

.preheader217.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph232
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph232 ], [ %n.vec, %vector.body ]
  %i.gu = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gv = shufflevector <4 x i32> %i.gu, <4 x i32> %i.at, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gw = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.gx = shufflevector <2 x i32> %i.gw, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gy = shufflevector <3 x i32> %i.as, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.preheader, %.preheader217
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader217 ], [ %indvars.iv.ph, %.preheader217.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.gz = icmp samesign ult i64 %indvars.iv.next, %i.az
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ha
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ha
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 6
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ha
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load <2 x i16>, ptr %i.hj, align 2, !tbaa !120, !noalias !115
  %i.hl = zext <2 x i16> %i.hk to <2 x i32>
  %i.hm = mul nuw nsw i64 %indvars.iv.next, 6     ; 2 uses
  %i.hn = icmp samesign ule i64 %i.hm, %i.au
  tail call void @llvm.assume(i1 %i.hn), !noalias !115
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load <2 x i16>, ptr %i.hp, align 2, !tbaa !120, !noalias !115
  %i.hr = zext <2 x i16> %i.hq to <2 x i32>
  %i.hs = add nuw nsw i64 %i.ha, 3                ; 3 uses
  %i.ht = icmp samesign ule i64 %i.hs, %i.av
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.ha
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.hs
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.ha
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.hs
  %i.hz = load i16, ptr %i.hh, align 2, !tbaa !120, !noalias !115
  %i.ia = load <2 x i16>, ptr %i.hf, align 2, !tbaa !120, !noalias !115
  %i.ib = zext i16 %i.hz to i32
  %i.ic = shufflevector <2 x i16> %i.ia, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.id = zext <4 x i16> %i.ic to <4 x i32>
  %i.ie = load i16, ptr %i.hd, align 2, !tbaa !120, !noalias !115
  %i.if = load <2 x i16>, ptr %i.hb, align 2, !tbaa !120, !noalias !115
  %i.ig = zext i16 %i.ie to i32
  %i.ih = shufflevector <2 x i16> %i.if, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ii = zext <4 x i16> %i.ih to <4 x i32>
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ik = add <2 x i32> %i.gx, %i.hr
  %i.il = add <2 x i32> %i.gx, %i.hl              ; 3 uses
  %i.im = add nsw <2 x i32> %i.ik, %i.il
  %i.in = ashr <2 x i32> %i.im, splat (i32 1)     ; 4 uses
  %i.io = shufflevector <2 x i32> %i.il, <2 x i32> %i.in, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.ip = mul <4 x i32> %i.io, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.iq = shufflevector <2 x i32> %i.il, <2 x i32> %i.in, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.ir = mul <4 x i32> %i.iq, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.is = add <4 x i32> %i.ir, %i.ip
  %i.it = ashr <4 x i32> %i.is, splat (i32 12)    ; 2 uses
  %i.iu = mul <2 x i32> %i.in, <i32 29040, i32 -11751>
  %i.iv = shufflevector <2 x i32> %i.iu, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.iw = mul <2 x i32> %i.in, <i32 -5640, i32 -101>
  %i.ix = add <2 x i32> %i.iw, %i.iv
  %i.iy = ashr <2 x i32> %i.ix, splat (i32 12)    ; 2 uses
  %i.iz = add nsw <4 x i32> %i.it, %i.ii
  %i.ja = mul nsw <4 x i32> %i.iz, %i.gv
  %i.jb = ashr <4 x i32> %i.ja, splat (i32 8)
  %i.jc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jb, <4 x i32> zeroinitializer)
  %i.jd = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.jc, <4 x i32> splat (i32 65535))
  %i.je = trunc nuw <4 x i32> %i.jd to <4 x i16>
  store <4 x i16> %i.je, ptr %i.hu, align 2, !tbaa !120
  %i.jf = insertelement <2 x i32> poison, i32 %i.ig, i64 0
  %i.jg = shufflevector <2 x i32> %i.jf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jh = add nsw <2 x i32> %i.iy, %i.jg
  %i.ji = mul nsw <2 x i32> %i.jh, %i.gy
  %i.jj = ashr <2 x i32> %i.ji, splat (i32 8)
  %i.jk = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jj, <2 x i32> zeroinitializer)
  %i.jl = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jk, <2 x i32> splat (i32 65535))
  %i.jm = trunc nuw <2 x i32> %i.jl to <2 x i16>
  store <2 x i16> %i.jm, ptr %i.hw, align 2, !tbaa !120
  %i.jn = add nsw <4 x i32> %i.it, %i.id
  %i.jo = mul nsw <4 x i32> %i.jn, %i.at
  %i.jp = insertelement <2 x i32> poison, i32 %i.ib, i64 0
  %i.jq = shufflevector <2 x i32> %i.jp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jr = add nsw <2 x i32> %i.iy, %i.jq
  %i.js = mul nsw <2 x i32> %i.jr, %i.gy
  %i.jt = ashr <4 x i32> %i.jo, splat (i32 8)
  %i.ju = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jt, <4 x i32> zeroinitializer)
  %i.jv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ju, <4 x i32> splat (i32 65535))
  %i.jw = trunc nuw <4 x i32> %i.jv to <4 x i16>
  store <4 x i16> %i.jw, ptr %i.hx, align 2, !tbaa !120
  %i.jx = ashr <2 x i32> %i.js, splat (i32 8)
  %i.jy = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jx, <2 x i32> zeroinitializer)
  %i.jz = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jy, <2 x i32> splat (i32 65535))
  %i.ka = trunc nuw <2 x i32> %i.jz to <2 x i16>
  store <2 x i16> %i.ka, ptr %i.ij, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge233, label %.preheader217, !llvm.loop !128

._crit_edge233:                                   ; preds = %.preheader217
  %i.kb = zext nneg i32 %i.s to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0116.0.copyload, i64 %i.al ; 5 uses
  %i.kd = mul nuw nsw i32 %i.ai, 6                ; 3 uses
  %i.ke = zext nneg i32 %i.kd to i64              ; 7 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %i.ke
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = add nuw nsw i64 %i.ke, 3                ; 2 uses
  %i.kl = icmp samesign ult i64 %i.kk, %i.kb
  tail call void @llvm.assume(i1 %i.kl), !noalias !129
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %i.kk
  %i.kn = add nuw nsw i32 %i.kd, 6
  %i.ko = icmp samesign ule i32 %i.kn, %i.s
  tail call void @llvm.assume(i1 %i.ko), !noalias !129
  %i.kp = zext nneg i32 %i.kd to i64
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !118
  %i.ku = add i32 %i.kt, -16384
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kw = add nuw nsw i64 %i.ke, 3                ; 3 uses
  %i.kx = icmp samesign ule i64 %i.kw, %i.av
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bb ; 2 uses
  tail call void @llvm.assume(i1 %i.kx)
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.ke
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.kw
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bf ; 2 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.ke
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.kw
  %i.lf = load i16, ptr %i.km, align 2, !tbaa !120, !noalias !129
  %i.lg = load <2 x i16>, ptr %i.kj, align 2, !tbaa !120, !noalias !129
  %i.lh = zext i16 %i.lf to i32
  %i.li = shufflevector <2 x i16> %i.lg, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lj = zext <4 x i16> %i.li to <4 x i32>
  %i.lk = load <2 x i16>, ptr %i.kr, align 2, !tbaa !120, !noalias !129
  %i.ll = zext <2 x i16> %i.lk to <2 x i32>
  %i.lm = insertelement <2 x i32> poison, i32 %i.ku, i64 0
  %i.ln = shufflevector <2 x i32> %i.lm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.lo = add <2 x i32> %i.ln, %i.ll              ; 2 uses
  %i.lp = shufflevector <2 x i32> %i.lo, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lq = load <3 x i32>, ptr %i.kv, align 8, !tbaa !119 ; 2 uses
  %i.lr = shufflevector <3 x i32> %i.lq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %2 = load <4 x i32>, ptr %i.kv, align 8
  %i.ls = mul <4 x i32> %i.lp, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.lt = shufflevector <2 x i32> %i.lo, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.lu = mul <4 x i32> %i.lt, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.lv = add <4 x i32> %i.ls, %i.lu
  %i.lw = ashr <4 x i32> %i.lv, splat (i32 12)    ; 3 uses
  %i.lx = load i16, ptr %i.kh, align 2, !tbaa !120, !noalias !129
  %i.ly = load <2 x i16>, ptr %i.kf, align 2, !tbaa !120, !noalias !129
  %i.lz = zext i16 %i.lx to i32
  %i.ma = shufflevector <2 x i16> %i.ly, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mb = zext <4 x i16> %i.ma to <4 x i32>
  %i.mc = shufflevector <4 x i32> %i.lw, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.md = add nsw <4 x i32> %i.mc, %i.mb
  %i.me = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.mf = shufflevector <4 x i32> %i.me, <4 x i32> %i.lr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mg = mul nsw <4 x i32> %i.md, %i.mf
  %i.mh = ashr <4 x i32> %i.mg, splat (i32 8)
  %i.mi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mh, <4 x i32> zeroinitializer)
  %i.mj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mi, <4 x i32> splat (i32 65535))
  %i.mk = trunc nuw <4 x i32> %i.mj to <4 x i16>
  store <4 x i16> %i.mk, ptr %i.kz, align 2, !tbaa !120
  %i.ml = shufflevector <4 x i32> %i.lw, <4 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mm = insertelement <2 x i32> poison, i32 %i.lz, i64 0
  %i.mn = shufflevector <2 x i32> %i.mm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mo = add nsw <2 x i32> %i.ml, %i.mn
  %i.mp = shufflevector <3 x i32> %i.lq, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mq = mul nsw <2 x i32> %i.mo, %i.mp
  %i.mr = ashr <2 x i32> %i.mq, splat (i32 8)
  %i.ms = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mr, <2 x i32> zeroinitializer)
  %i.mt = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ms, <2 x i32> splat (i32 65535))
  %i.mu = trunc nuw <2 x i32> %i.mt to <2 x i16>
  store <2 x i16> %i.mu, ptr %i.lb, align 2, !tbaa !120
  %i.mv = add nsw <4 x i32> %i.lw, %i.lj
  %i.mw = mul nsw <4 x i32> %i.mv, %i.lr
  %i.mx = ashr <4 x i32> %i.mw, splat (i32 8)
  %i.my = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mx, <4 x i32> zeroinitializer)
  %i.mz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.my, <4 x i32> splat (i32 65535))
  %i.na = trunc nuw <4 x i32> %i.mz to <4 x i16>
  store <4 x i16> %i.na, ptr %i.ld, align 2, !tbaa !120
  %i.nb = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  %i.nc = insertelement <2 x i32> poison, i32 %i.lh, i64 0
  %i.nd = shufflevector <2 x i32> %i.nc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ne = add nsw <2 x i32> %i.ml, %i.nd
  %i.nf = mul nsw <2 x i32> %i.ne, %i.mp
  %i.ng = ashr <2 x i32> %i.nf, splat (i32 8)
  %i.nh = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ng, <2 x i32> zeroinitializer)
  %i.ni = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.nh, <2 x i32> splat (i32 65535))
  %i.nj = trunc nuw <2 x i32> %i.ni to <2 x i16>
  store <2 x i16> %i.nj, ptr %i.nb, align 2, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !132 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !132
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !132
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !132 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !132
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111  ; 4 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !112  ; 2 uses
  %i.y = icmp sge i32 %i.x, %i.s
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = udiv i32 %i.s, 6                        ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.0114.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.ac = icmp samesign ugt i32 %i.u, 1
  br i1 %i.ac, label %.lr.ph, label %.lr.ph230

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.051219 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.051219)
  %i.ad = add nuw nsw i32 %.051219, 1             ; 3 uses
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !111 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nsw i32 %i.ae, -1
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.lr.ph230, !llvm.loop !135

.lr.ph230:                                        ; preds = %.lr.ph, %bb.a
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %.lr.ph ] ; 4 uses
  %i.ai = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.aj = icmp samesign ult i32 %.051.lcssa, %i.u
  tail call void @llvm.assume(i1 %i.aj), !noalias !136
  %i.ak = mul i32 %.051.lcssa, %i.x
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.al ; 20 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !118
  %i.ap = add i32 %i.ao, -16384                   ; 5 uses
  %i.aq = shl nuw nsw i32 %.051.lcssa, 1          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load <3 x i32>, ptr %i.ar, align 8, !tbaa !119 ; 5 uses
  %i.at = shufflevector <3 x i32> %i.as, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %1 = load <4 x i32>, ptr %i.ar, align 8
  %i.au = zext nneg i32 %invariant.op to i64
  %i.av = zext nneg i32 %i.i to i64               ; 2 uses
  %i.aw = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.ax = zext i32 %i.n to i64                    ; 4 uses
  %i.ay = zext nneg i32 %i.k to i64
  %i.az = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 4 uses
  %i.ba = icmp samesign ult i32 %i.aq, %i.k
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = mul nuw nsw i64 %i.aw, %i.ax            ; 2 uses
  %i.bc = getelementptr [2 x i8], ptr %i.d, i64 %i.bb ; 15 uses
  %i.bd = or disjoint i64 %i.aw, 1                ; 3 uses
  %i.be = icmp samesign ult i64 %i.bd, %i.ay
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = mul nuw nsw i64 %i.bd, %i.ax            ; 2 uses
  %i.bg = getelementptr [2 x i8], ptr %i.d, i64 %i.bf ; 15 uses
  %min.iters.check = icmp ult i32 %i.ai, 41
  br i1 %min.iters.check, label %.preheader215.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph230
  %i.bh = zext nneg i32 %.051.lcssa to i64
  %i.bi = mul nuw nsw i64 %i.bh, %i.ax
  %i.bj = shl i64 %i.bi, 2                        ; 8 uses
  %i.bk = mul nuw nsw i64 %wide.trip.count, 12    ; 7 uses
  %i.bl = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.d, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bm, i64 -10 ; 12 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep392 = getelementptr i8, ptr %i.bn, i64 2 ; 12 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bl
  %scevgep393 = getelementptr i8, ptr %i.bo, i64 -8 ; 12 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep394 = getelementptr i8, ptr %i.bp, i64 4 ; 12 uses
  %i.bq = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bq
  %scevgep395 = getelementptr i8, ptr %i.br, i64 -6 ; 12 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep396 = getelementptr i8, ptr %i.bs, i64 6 ; 12 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bq
  %scevgep397 = getelementptr i8, ptr %i.bt, i64 -4 ; 12 uses
  %i.bu = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep398 = getelementptr i8, ptr %i.bu, i64 8 ; 12 uses
  %i.bv = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.d, i64 %i.bv
  %scevgep399 = getelementptr i8, ptr %i.bw, i64 -2 ; 12 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bj
  %scevgep400 = getelementptr i8, ptr %i.bx, i64 10 ; 12 uses
  %scevgep401 = getelementptr i8, ptr %i.d, i64 %i.bv ; 12 uses
  %i.by = mul nuw nsw i64 %i.bd, %i.ax
  %i.bz = shl nuw i64 %i.by, 1                    ; 8 uses
  %i.ca = add i64 %i.bz, %i.bk                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep402 = getelementptr i8, ptr %i.cb, i64 -10 ; 12 uses
  %i.cc = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep403 = getelementptr i8, ptr %i.cc, i64 2 ; 12 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.ca
  %scevgep404 = getelementptr i8, ptr %i.cd, i64 -8 ; 12 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep405 = getelementptr i8, ptr %i.ce, i64 4 ; 12 uses
  %i.cf = add i64 %i.bz, %i.bk                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.cf
  %scevgep406 = getelementptr i8, ptr %i.cg, i64 -6 ; 12 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep407 = getelementptr i8, ptr %i.ch, i64 6 ; 12 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.cf
  %scevgep408 = getelementptr i8, ptr %i.ci, i64 -4 ; 12 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep409 = getelementptr i8, ptr %i.cj, i64 8 ; 12 uses
  %i.ck = add i64 %i.bz, %i.bk                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.ck
  %scevgep410 = getelementptr i8, ptr %i.cl, i64 -2 ; 12 uses
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.bz
  %scevgep411 = getelementptr i8, ptr %i.cm, i64 10 ; 12 uses
  %scevgep412 = getelementptr i8, ptr %i.d, i64 %i.ck ; 12 uses
  %i.cn = shl nuw nsw i64 %i.al, 1
  %i.co = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.bk
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cn
  %scevgep413 = getelementptr i8, ptr %i.cp, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.bc, %scevgep393
  %bound1 = icmp ult ptr %scevgep392, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0414 = icmp ult ptr %i.bc, %scevgep395
  %bound1415 = icmp ult ptr %scevgep394, %scevgep
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx = or i1 %found.conflict, %found.conflict416
  %bound0417 = icmp ult ptr %i.bc, %scevgep397
  %bound1418 = icmp ult ptr %scevgep396, %scevgep
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %conflict.rdx, %found.conflict419
  %bound0421 = icmp ult ptr %i.bc, %scevgep399
  %bound1422 = icmp ult ptr %scevgep398, %scevgep
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %conflict.rdx420, %found.conflict423
  %bound0425 = icmp ult ptr %i.bc, %scevgep401
  %bound1426 = icmp ult ptr %scevgep400, %scevgep
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %conflict.rdx424, %found.conflict427
  %bound0429 = icmp ult ptr %i.bc, %scevgep402
  %bound1430 = icmp ult ptr %i.bg, %scevgep
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %conflict.rdx428, %found.conflict431
  %bound0433 = icmp ult ptr %i.bc, %scevgep404
  %bound1434 = icmp ult ptr %scevgep403, %scevgep
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx436 = or i1 %conflict.rdx432, %found.conflict435
  %bound0437 = icmp ult ptr %i.bc, %scevgep406
  %bound1438 = icmp ult ptr %scevgep405, %scevgep
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %conflict.rdx436, %found.conflict439
  %bound0441 = icmp ult ptr %i.bc, %scevgep408
  %bound1442 = icmp ult ptr %scevgep407, %scevgep
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx444 = or i1 %conflict.rdx440, %found.conflict443
  %bound0445 = icmp ult ptr %i.bc, %scevgep410
  %bound1446 = icmp ult ptr %scevgep409, %scevgep
  %found.conflict447 = and i1 %bound0445, %bound1446
  %conflict.rdx448 = or i1 %conflict.rdx444, %found.conflict447
  %bound0449 = icmp ult ptr %i.bc, %scevgep412
  %bound1450 = icmp ult ptr %scevgep411, %scevgep
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx452 = or i1 %conflict.rdx448, %found.conflict451
  %bound0453 = icmp ult ptr %i.bc, %scevgep413
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
  %bound1474 = icmp ult ptr %i.bg, %scevgep393
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
  %bound1514 = icmp ult ptr %i.bg, %scevgep395
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx516 = or i1 %conflict.rdx512, %found.conflict515
  %bound0517 = icmp ult ptr %scevgep394, %scevgep404
  %bound1518 = icmp ult ptr %scevgep403, %scevgep395
  %found.conflict519 = and i1 %bound0517, %bound1518
  %conflict.rdx520 = or i1 %conflict.rdx516, %found.conflict519
  %bound0521 = icmp ult ptr %scevgep394, %scevgep406
  %bound1522 = icmp ult ptr %scevgep405, %scevgep395
  %found.conflict523 = and i1 %bound0521, %bound1522
  %conflict.rdx524 = or i1 %conflict.rdx520, %found.conflict523
  %bound0525 = icmp ult ptr %scevgep394, %scevgep408
  %bound1526 = icmp ult ptr %scevgep407, %scevgep395
  %found.conflict527 = and i1 %bound0525, %bound1526
  %conflict.rdx528 = or i1 %conflict.rdx524, %found.conflict527
  %bound0529 = icmp ult ptr %scevgep394, %scevgep410
  %bound1530 = icmp ult ptr %scevgep409, %scevgep395
  %found.conflict531 = and i1 %bound0529, %bound1530
end_hunk_1
begin_hunk_2_@_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv:bb.a
  %bound1646 = icmp ult ptr %scevgep407, %scevgep402
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %conflict.rdx644, %found.conflict647
  %bound0649 = icmp ult ptr %i.bg, %scevgep410
  %bound1650 = icmp ult ptr %scevgep409, %scevgep402
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx652 = or i1 %conflict.rdx648, %found.conflict651
  %bound0653 = icmp ult ptr %i.bg, %scevgep412
  %bound1654 = icmp ult ptr %scevgep411, %scevgep402
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %conflict.rdx652, %found.conflict655
  %bound0657 = icmp ult ptr %i.bg, %scevgep413
  %bound1658 = icmp ult ptr %i.am, %scevgep402
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %bound0661 = icmp ult ptr %scevgep403, %scevgep406
  %bound1662 = icmp ult ptr %scevgep405, %scevgep404
  %found.conflict663 = and i1 %bound0661, %bound1662
  %conflict.rdx664 = or i1 %conflict.rdx660, %found.conflict663
  %bound0665 = icmp ult ptr %scevgep403, %scevgep408
  %bound1666 = icmp ult ptr %scevgep407, %scevgep404
  %found.conflict667 = and i1 %bound0665, %bound1666
  %conflict.rdx668 = or i1 %conflict.rdx664, %found.conflict667
  %bound0669 = icmp ult ptr %scevgep403, %scevgep410
  %bound1670 = icmp ult ptr %scevgep409, %scevgep404
  %found.conflict671 = and i1 %bound0669, %bound1670
  %conflict.rdx672 = or i1 %conflict.rdx668, %found.conflict671
  %bound0673 = icmp ult ptr %scevgep403, %scevgep412
  %bound1674 = icmp ult ptr %scevgep411, %scevgep404
  %found.conflict675 = and i1 %bound0673, %bound1674
  %conflict.rdx676 = or i1 %conflict.rdx672, %found.conflict675
  %bound0677 = icmp ult ptr %scevgep403, %scevgep413
  %bound1678 = icmp ult ptr %i.am, %scevgep404
  %found.conflict679 = and i1 %bound0677, %bound1678
  %conflict.rdx680 = or i1 %conflict.rdx676, %found.conflict679
  %bound0681 = icmp ult ptr %scevgep405, %scevgep408
  %bound1682 = icmp ult ptr %scevgep407, %scevgep406
  %found.conflict683 = and i1 %bound0681, %bound1682
  %conflict.rdx684 = or i1 %conflict.rdx680, %found.conflict683
  %bound0685 = icmp ult ptr %scevgep405, %scevgep410
  %bound1686 = icmp ult ptr %scevgep409, %scevgep406
  %found.conflict687 = and i1 %bound0685, %bound1686
  %conflict.rdx688 = or i1 %conflict.rdx684, %found.conflict687
  %bound0689 = icmp ult ptr %scevgep405, %scevgep412
  %bound1690 = icmp ult ptr %scevgep411, %scevgep406
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx692 = or i1 %conflict.rdx688, %found.conflict691
  %bound0693 = icmp ult ptr %scevgep405, %scevgep413
  %bound1694 = icmp ult ptr %i.am, %scevgep406
  %found.conflict695 = and i1 %bound0693, %bound1694
  %conflict.rdx696 = or i1 %conflict.rdx692, %found.conflict695
  %bound0697 = icmp ult ptr %scevgep407, %scevgep410
  %bound1698 = icmp ult ptr %scevgep409, %scevgep408
  %found.conflict699 = and i1 %bound0697, %bound1698
  %conflict.rdx700 = or i1 %conflict.rdx696, %found.conflict699
  %bound0701 = icmp ult ptr %scevgep407, %scevgep412
  %bound1702 = icmp ult ptr %scevgep411, %scevgep408
  %found.conflict703 = and i1 %bound0701, %bound1702
  %conflict.rdx704 = or i1 %conflict.rdx700, %found.conflict703
  %bound0705 = icmp ult ptr %scevgep407, %scevgep413
  %bound1706 = icmp ult ptr %i.am, %scevgep408
  %found.conflict707 = and i1 %bound0705, %bound1706
  %conflict.rdx708 = or i1 %conflict.rdx704, %found.conflict707
  %bound0709 = icmp ult ptr %scevgep409, %scevgep412
  %bound1710 = icmp ult ptr %scevgep411, %scevgep410
  %found.conflict711 = and i1 %bound0709, %bound1710
  %conflict.rdx712 = or i1 %conflict.rdx708, %found.conflict711
  %bound0713 = icmp ult ptr %scevgep409, %scevgep413
  %bound1714 = icmp ult ptr %i.am, %scevgep410
  %found.conflict715 = and i1 %bound0713, %bound1714
  %conflict.rdx716 = or i1 %conflict.rdx712, %found.conflict715
  %bound0717 = icmp ult ptr %scevgep411, %scevgep413
  %bound1718 = icmp ult ptr %i.am, %scevgep412
  %found.conflict719 = and i1 %bound0717, %bound1718
  %conflict.rdx720 = or i1 %conflict.rdx716, %found.conflict719
  br i1 %conflict.rdx720, label %.preheader215.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cq = and i64 %wide.trip.count, 7             ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 8, i64 %i.cq
  %n.vec = sub nsw i64 %wide.trip.count, %i.cs    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat722 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat724 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat726 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.ct = phi i64 [ 0, %vector.ph ], [ %i.gc, %vector.body ] ; 3 uses
  %i.cu = mul nuw nsw i64 %i.ct, 6                ; 3 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.cu
  %wide.vec = load <48 x i16>, ptr %i.cv, align 2, !tbaa !120, !alias.scope !139, !noalias !136 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec733 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec734 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec735 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec736 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec737 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.cw = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.cx = zext <8 x i16> %strided.vec733 to <8 x i32> ; 3 uses
  %i.cy = zext <8 x i16> %strided.vec734 to <8 x i32> ; 3 uses
  %i.cz = zext <8 x i16> %strided.vec735 to <8 x i32> ; 3 uses
  %i.da = zext <8 x i16> %strided.vec736 to <8 x i32>
  %i.db = zext <8 x i16> %strided.vec737 to <8 x i32>
  %.idx = mul nuw i64 %i.ct, 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %wide.vec738 = load <48 x i16>, ptr %i.dd, align 2, !tbaa !120, !alias.scope !139, !noalias !136 ; 2 uses
  %strided.vec739 = shufflevector <48 x i16> %wide.vec738, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec740 = shufflevector <48 x i16> %wide.vec738, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.de = zext <8 x i16> %strided.vec739 to <8 x i32>
  %i.df = zext <8 x i16> %strided.vec740 to <8 x i32>
  %i.dg = add <8 x i32> %broadcast.splat, %i.da   ; 4 uses
  %i.dh = add <8 x i32> %broadcast.splat, %i.db   ; 4 uses
  %i.di = add <8 x i32> %broadcast.splat, %i.de
  %i.dj = add <8 x i32> %broadcast.splat, %i.df
  %i.dk = add nsw <8 x i32> %i.di, %i.dg
  %i.dl = ashr <8 x i32> %i.dk, splat (i32 1)     ; 3 uses
  %i.dm = add nsw <8 x i32> %i.dj, %i.dh
  %i.dn = ashr <8 x i32> %i.dm, splat (i32 1)     ; 3 uses
  %i.do = add nsw <8 x i32> %i.dh, %i.cw
  %i.dp = mul nsw <8 x i32> %i.do, %broadcast.splat722
  %i.dq = mul nsw <8 x i32> %i.dg, splat (i32 -778)
  %i.dr = shl nsw <8 x i32> %i.dh, splat (i32 11)
  %i.ds = sub nsw <8 x i32> %i.dq, %i.dr
  %i.dt = ashr <8 x i32> %i.ds, splat (i32 12)    ; 2 uses
  %i.du = add nsw <8 x i32> %i.dt, %i.cw
  %i.dv = mul nsw <8 x i32> %i.du, %broadcast.splat724
  %i.dw = add nsw <8 x i32> %i.dg, %i.cw
  %i.dx = mul nsw <8 x i32> %broadcast.splat726, %i.dw
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.cu
  %i.dz = add nsw <8 x i32> %i.dn, %i.cx
  %i.ea = mul nsw <8 x i32> %i.dz, %broadcast.splat722
  %i.eb = mul nsw <8 x i32> %i.dl, splat (i32 -778)
  %i.ec = shl nsw <8 x i32> %i.dn, splat (i32 11)
  %i.ed = sub nsw <8 x i32> %i.eb, %i.ec
  %i.ee = ashr <8 x i32> %i.ed, splat (i32 12)    ; 2 uses
  %i.ef = add nsw <8 x i32> %i.ee, %i.cx
  %i.eg = mul nsw <8 x i32> %i.ef, %broadcast.splat724
  %i.eh = add nsw <8 x i32> %i.dl, %i.cx
  %i.ei = mul nsw <8 x i32> %broadcast.splat726, %i.eh
  %i.ej = ashr <8 x i32> %i.eg, splat (i32 8)
  %i.ek = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ej, <8 x i32> zeroinitializer)
  %i.el = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ek, <8 x i32> splat (i32 65535))
  %i.em = trunc nuw <8 x i32> %i.el to <8 x i16>
  %i.en = ashr <8 x i32> %i.ei, splat (i32 8)
  %i.eo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.en, <8 x i32> zeroinitializer)
  %i.ep = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.eo, <8 x i32> splat (i32 65535))
  %i.eq = trunc nuw <8 x i32> %i.ep to <8 x i16>
  %i.er = shufflevector <8 x i32> %i.dp, <8 x i32> %i.dv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = shufflevector <8 x i32> %i.dx, <8 x i32> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.et = shufflevector <16 x i32> %i.er, <16 x i32> %i.es, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.eu = ashr <32 x i32> %i.et, splat (i32 8)
  %i.ev = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.eu, <32 x i32> zeroinitializer)
  %i.ew = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.ev, <32 x i32> splat (i32 65535))
  %i.ex = trunc nuw <32 x i32> %i.ew to <32 x i16>
  %i.ey = shufflevector <8 x i16> %i.em, <8 x i16> %i.eq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.ex, <32 x i16> %i.ey, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.dy, align 2, !tbaa !120
  %i.ez = add nsw <8 x i32> %i.dh, %i.cy
  %i.fa = mul nsw <8 x i32> %i.ez, %broadcast.splat722
  %i.fb = add nsw <8 x i32> %i.dt, %i.cy
  %i.fc = mul nsw <8 x i32> %i.fb, %broadcast.splat724
  %i.fd = add nsw <8 x i32> %i.dg, %i.cy
  %i.fe = mul nsw <8 x i32> %broadcast.splat726, %i.fd
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.cu
  %i.fg = add nsw <8 x i32> %i.dn, %i.cz
  %i.fh = mul nsw <8 x i32> %i.fg, %broadcast.splat722
  %i.fi = add nsw <8 x i32> %i.ee, %i.cz
  %i.fj = mul nsw <8 x i32> %i.fi, %broadcast.splat724
  %i.fk = add nsw <8 x i32> %i.dl, %i.cz
  %i.fl = mul nsw <8 x i32> %broadcast.splat726, %i.fk
  %i.fm = ashr <8 x i32> %i.fj, splat (i32 8)
  %i.fn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fm, <8 x i32> zeroinitializer)
  %i.fo = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fn, <8 x i32> splat (i32 65535))
  %i.fp = trunc nuw <8 x i32> %i.fo to <8 x i16>
  %i.fq = ashr <8 x i32> %i.fl, splat (i32 8)
  %i.fr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fq, <8 x i32> zeroinitializer)
  %i.fs = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fr, <8 x i32> splat (i32 65535))
  %i.ft = trunc nuw <8 x i32> %i.fs to <8 x i16>
  %i.fu = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fv = shufflevector <8 x i32> %i.fe, <8 x i32> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fw = shufflevector <16 x i32> %i.fu, <16 x i32> %i.fv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fx = ashr <32 x i32> %i.fw, splat (i32 8)
  %i.fy = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.fx, <32 x i32> zeroinitializer)
  %i.fz = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.fy, <32 x i32> splat (i32 65535))
  %i.ga = trunc nuw <32 x i32> %i.fz to <32 x i16>
  %i.gb = shufflevector <8 x i16> %i.fp, <8 x i16> %i.ft, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec741 = shufflevector <32 x i16> %i.ga, <32 x i16> %i.gb, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec741, ptr %i.ff, align 2, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = add nuw nsw i64 %i.ct, 8
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %.preheader215.preheader, label %vector.body, !llvm.loop !142

.preheader215.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph230
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph230 ], [ %n.vec, %vector.body ]
  %i.ge = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> %i.at, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gg = shufflevector <3 x i32> %i.as, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.preheader, %.preheader215
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader215 ], [ %indvars.iv.ph, %.preheader215.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.gh = icmp samesign ult i64 %indvars.iv.next, %i.az
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gi
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gi
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gi
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 6
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gi ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !120, !noalias !136
  %i.gt = zext i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 10
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !120, !noalias !136
  %i.gw = zext i16 %i.gv to i32
  %i.gx = mul nuw nsw i64 %indvars.iv.next, 6     ; 2 uses
  %i.gy = icmp samesign ule i64 %i.gx, %i.au
  tail call void @llvm.assume(i1 %i.gy), !noalias !136
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gx ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !120, !noalias !136
  %i.hc = zext i16 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 10
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !120, !noalias !136
  %i.hf = zext i16 %i.he to i32
  %i.hg = add i32 %i.ap, %i.hc
  %i.hh = add i32 %i.ap, %i.hf
  %i.hi = add nuw nsw i64 %i.gi, 3                ; 3 uses
  %i.hj = icmp samesign ule i64 %i.hi, %i.av
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.gi
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.hi
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.gi
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.hi
  %i.hp = load i16, ptr %i.gp, align 2, !tbaa !120, !noalias !136
  %i.hq = load <2 x i16>, ptr %i.gn, align 2, !tbaa !120, !noalias !136
  %i.hr = zext i16 %i.hp to i32                   ; 2 uses
  %i.hs = shufflevector <2 x i16> %i.hq, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ht = zext <4 x i16> %i.hs to <4 x i32>
  %i.hu = load i16, ptr %i.gl, align 2, !tbaa !120, !noalias !136
  %i.hv = load <2 x i16>, ptr %i.gj, align 2, !tbaa !120, !noalias !136
  %i.hw = zext i16 %i.hu to i32
  %i.hx = shufflevector <2 x i16> %i.hv, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hy = zext <4 x i16> %i.hx to <4 x i32>
  %i.hz = add i32 %i.ap, %i.gt                    ; 3 uses
  %i.ia = add i32 %i.ap, %i.gw                    ; 3 uses
  %i.ib = add nsw i32 %i.hg, %i.hz
  %i.ic = add nsw i32 %i.hh, %i.ia
  %i.id = ashr i32 %i.ic, 1                       ; 2 uses
  %i.ie = mul nsw i32 %i.hz, -778
  %i.if = shl nsw i32 %i.ia, 11
  %i.ig = sub nsw i32 %i.ie, %i.if
  %i.ih = ashr i32 %i.ig, 12
  %i.ii = insertelement <4 x i32> poison, i32 %i.ia, i64 0
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.ih, i64 1
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.hz, i64 2
  %i.il = insertelement <4 x i32> %i.ik, i32 %i.id, i64 3 ; 2 uses
  %i.im = add nsw <4 x i32> %i.il, %i.hy
  %i.in = mul nsw <4 x i32> %i.im, %i.gf
  %i.io = shl nsw i32 %i.id, 11
  %i.ip = ashr <4 x i32> %i.in, splat (i32 8)
  %i.iq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ip, <4 x i32> zeroinitializer)
  %i.ir = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iq, <4 x i32> splat (i32 65535))
  %i.is = trunc nuw <4 x i32> %i.ir to <4 x i16>
  store <4 x i16> %i.is, ptr %i.hk, align 2, !tbaa !120
  %i.it = add nsw <4 x i32> %i.il, %i.ht
  %i.iu = mul nsw <4 x i32> %i.at, %i.it
  %i.iv = ashr <4 x i32> %i.iu, splat (i32 8)
  %i.iw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.iv, <4 x i32> zeroinitializer)
  %i.ix = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iw, <4 x i32> splat (i32 65535))
  %i.iy = trunc nuw <4 x i32> %i.ix to <4 x i16>
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.ja = ashr i32 %i.ib, 1                       ; 3 uses
  %i.jb = mul nsw i32 %i.ja, -778
  %i.jc = sub nsw i32 %i.jb, %i.io
  %i.jd = ashr i32 %i.jc, 12                      ; 2 uses
  %i.je = insertelement <2 x i32> poison, i32 %i.jd, i64 0
  %i.jf = insertelement <2 x i32> %i.je, i32 %i.ja, i64 1
  %i.jg = insertelement <2 x i32> poison, i32 %i.hw, i64 0
  %i.jh = shufflevector <2 x i32> %i.jg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ji = add nsw <2 x i32> %i.jf, %i.jh
  %i.jj = mul nsw <2 x i32> %i.ji, %i.gg
  %i.jk = ashr <2 x i32> %i.jj, splat (i32 8)
  %i.jl = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jk, <2 x i32> zeroinitializer)
  %i.jm = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jl, <2 x i32> splat (i32 65535))
  %i.jn = trunc nuw <2 x i32> %i.jm to <2 x i16>
  store <2 x i16> %i.jn, ptr %i.hm, align 2, !tbaa !120
  %i.jo = add nsw i32 %i.ja, %i.hr
  %i.jp = add nsw i32 %i.jd, %i.hr
  %i.jq = insertelement <2 x i32> poison, i32 %i.jp, i64 0
  %i.jr = insertelement <2 x i32> %i.jq, i32 %i.jo, i64 1
  %i.js = mul nsw <2 x i32> %i.jr, %i.gg
  store <4 x i16> %i.iy, ptr %i.hn, align 2, !tbaa !120
  %i.jt = ashr <2 x i32> %i.js, splat (i32 8)
  %i.ju = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jt, <2 x i32> zeroinitializer)
  %i.jv = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ju, <2 x i32> splat (i32 65535))
  %i.jw = trunc nuw <2 x i32> %i.jv to <2 x i16>
  store <2 x i16> %i.jw, ptr %i.iz, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge231, label %.preheader215, !llvm.loop !143

._crit_edge231:                                   ; preds = %.preheader215
  %i.jx = zext nneg i32 %i.s to i64
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.al ; 5 uses
  %i.jz = mul nuw nsw i32 %i.ai, 6                ; 3 uses
  %i.ka = zext nneg i32 %i.jz to i64              ; 7 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.ka
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.ka
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = add nuw nsw i64 %i.ka, 3                ; 2 uses
  %i.kh = icmp samesign ult i64 %i.kg, %i.jx
  tail call void @llvm.assume(i1 %i.kh), !noalias !144
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.kg
  %i.kj = add nuw nsw i32 %i.jz, 6
  %i.kk = icmp samesign ule i32 %i.kj, %i.s
  tail call void @llvm.assume(i1 %i.kk), !noalias !144
  %i.kl = zext nneg i32 %i.jz to i64
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !120, !noalias !144
  %i.kp = zext i16 %i.ko to i32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 10
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !120, !noalias !144
  %i.ks = zext i16 %i.kr to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !118
  %i.kv = add i32 %i.ku, -16384                   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kx = add nuw nsw i64 %i.ka, 3                ; 3 uses
  %i.ky = icmp samesign ule i64 %i.kx, %i.av
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bb ; 2 uses
  tail call void @llvm.assume(i1 %i.ky)
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %i.ka
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %i.kx
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bf ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %i.ka
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %i.kx
  %i.lg = load i16, ptr %i.ki, align 2, !tbaa !120, !noalias !144
  %i.lh = load <2 x i16>, ptr %i.kf, align 2, !tbaa !120, !noalias !144
  %i.li = zext i16 %i.lg to i32                   ; 2 uses
  %i.lj = shufflevector <2 x i16> %i.lh, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lk = zext <4 x i16> %i.lj to <4 x i32>
  %i.ll = load <3 x i32>, ptr %i.kw, align 8, !tbaa !119 ; 2 uses
  %i.lm = shufflevector <3 x i32> %i.ll, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %2 = load <4 x i32>, ptr %i.kw, align 8
  %i.ln = load i16, ptr %i.kd, align 2, !tbaa !120, !noalias !144
  %i.lo = load <2 x i16>, ptr %i.kb, align 2, !tbaa !120, !noalias !144
  %i.lp = zext i16 %i.ln to i32
  %i.lq = shufflevector <2 x i16> %i.lo, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lr = zext <4 x i16> %i.lq to <4 x i32>
  %i.ls = add i32 %i.kv, %i.ks                    ; 2 uses
  %i.lt = shl nsw i32 %i.ls, 11
  %i.lu = insertelement <4 x i32> poison, i32 %i.ls, i64 0
  %i.lv = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.lw = shufflevector <4 x i32> %i.lv, <4 x i32> %i.lm, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.ly = add i32 %i.kv, %i.kp                    ; 4 uses
  %i.lz = mul nsw i32 %i.ly, -778
  %i.ma = sub nsw i32 %i.lz, %i.lt
  %i.mb = ashr i32 %i.ma, 12                      ; 3 uses
  %i.mc = insertelement <4 x i32> %i.lu, i32 %i.mb, i64 1
  %i.md = insertelement <4 x i32> %i.mc, i32 %i.ly, i64 2
  %i.me = shufflevector <4 x i32> %i.md, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.mf = add nsw <4 x i32> %i.me, %i.lr
  %i.mg = mul nsw <4 x i32> %i.mf, %i.lw
  %i.mh = insertelement <2 x i32> poison, i32 %i.mb, i64 0
  %i.mi = insertelement <2 x i32> %i.mh, i32 %i.ly, i64 1
  %i.mj = insertelement <2 x i32> poison, i32 %i.lp, i64 0
  %i.mk = shufflevector <2 x i32> %i.mj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ml = add nsw <2 x i32> %i.mi, %i.mk
  %i.mm = shufflevector <3 x i32> %i.ll, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mn = mul nsw <2 x i32> %i.ml, %i.mm
  %i.mo = ashr <4 x i32> %i.mg, splat (i32 8)
  %i.mp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mo, <4 x i32> zeroinitializer)
  %i.mq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mp, <4 x i32> splat (i32 65535))
  %i.mr = trunc nuw <4 x i32> %i.mq to <4 x i16>
  store <4 x i16> %i.mr, ptr %i.la, align 2, !tbaa !120
  %i.ms = ashr <2 x i32> %i.mn, splat (i32 8)
  %i.mt = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ms, <2 x i32> zeroinitializer)
  %i.mu = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mt, <2 x i32> splat (i32 65535))
  %i.mv = trunc nuw <2 x i32> %i.mu to <2 x i16>
  store <2 x i16> %i.mv, ptr %i.lc, align 2, !tbaa !120
  %i.mw = add nsw <4 x i32> %i.me, %i.lk
  %i.mx = mul nsw <4 x i32> %i.lm, %i.mw
  %i.my = add nsw i32 %i.ly, %i.li
  %i.mz = add nsw i32 %i.mb, %i.li
  %i.na = insertelement <2 x i32> poison, i32 %i.mz, i64 0
  %i.nb = insertelement <2 x i32> %i.na, i32 %i.my, i64 1
  %i.nc = mul nsw <2 x i32> %i.nb, %i.mm
  %i.nd = ashr <4 x i32> %i.mx, splat (i32 8)
  %i.ne = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nd, <4 x i32> zeroinitializer)
  %i.nf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ne, <4 x i32> splat (i32 65535))
  %i.ng = trunc nuw <4 x i32> %i.nf to <4 x i16>
  store <4 x i16> %i.ng, ptr %i.le, align 2, !tbaa !120
  %i.nh = ashr <2 x i32> %i.nc, splat (i32 8)
  %i.ni = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nh, <2 x i32> zeroinitializer)
  %i.nj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ni, <2 x i32> splat (i32 65535))
  %i.nk = trunc nuw <2 x i32> %i.nj to <2 x i16>
  store <2 x i16> %i.nk, ptr %i.lx, align 2, !tbaa !120
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !147 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !147
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !147
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !147
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112  ; 3 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = and i32 %i.s, 3
  %i.z = icmp eq i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr exact i32 %i.s, 2                  ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 4
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.050.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !118
  %i.aj = add i32 %i.ai, -16384                   ; 5 uses
  %i.ak = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = mul i32 %i.n, %1
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr [2 x i8], ptr %i.d, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aq = load <3 x i32>, ptr %i.ao, align 8, !tbaa !119 ; 5 uses
  %i.ar = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !119
  %i.at = zext nneg i32 %i.i to i64               ; 2 uses
  %i.au = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ac to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.av = mul nuw nsw i64 %wide.trip.count, 12
  %i.aw = shl nuw nsw i64 %i.am, 1
  %i.ax = getelementptr i8, ptr %i.d, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.aw
  %i.ay = zext i32 %i.w to i64
  %i.az = zext i32 %1 to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 1
  %i.bc = shl nuw nsw i64 %wide.trip.count, 3
  %i.bd = getelementptr i8, ptr %.sroa.050.0.copyload, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %scevgep88 = getelementptr i8, ptr %i.be, i64 8
  %bound0 = icmp ult ptr %i.an, %scevgep88
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bf = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = select i1 %i.bg, i64 8, i64 %i.bf
  %n.vec = sub nsw i64 %wide.trip.count, %i.bh    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat90 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat92 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = phi i64 [ 0, %vector.ph ], [ %i.dn, %vector.body ] ; 2 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bj, align 2, !tbaa !120, !alias.scope !150, !noalias !153 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec99 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec100 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec101 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bk = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bl = zext <8 x i16> %strided.vec99 to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec100 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec101 to <8 x i32>
  %.idx105 = shl i64 %index, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx105
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %wide.vec102 = load <32 x i16>, ptr %i.bp, align 2, !tbaa !120, !alias.scope !150, !noalias !153 ; 2 uses
  %strided.vec103 = shufflevector <32 x i16> %wide.vec102, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec104 = shufflevector <32 x i16> %wide.vec102, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.bq = zext <8 x i16> %strided.vec103 to <8 x i32>
  %i.br = zext <8 x i16> %strided.vec104 to <8 x i32>
  %i.bs = add <8 x i32> %broadcast.splat, %i.bm   ; 3 uses
  %i.bt = add <8 x i32> %broadcast.splat, %i.bn   ; 3 uses
  %i.bu = add <8 x i32> %broadcast.splat, %i.bq
  %i.bv = add <8 x i32> %broadcast.splat, %i.br
  %i.bw = add nsw <8 x i32> %i.bu, %i.bs
  %i.bx = ashr <8 x i32> %i.bw, splat (i32 1)     ; 2 uses
  %i.by = add nsw <8 x i32> %i.bv, %i.bt
  %i.bz = ashr <8 x i32> %i.by, splat (i32 1)     ; 2 uses
  %i.ca = add nsw <8 x i32> %i.bk, splat (i32 -512) ; 3 uses
  %i.cb = add <8 x i32> %i.ca, %i.bt
  %i.cc = mul nsw <8 x i32> %i.cb, %broadcast.splat90
  %i.cd = mul nsw <8 x i32> %i.bs, splat (i32 -778)
  %i.ce = shl nsw <8 x i32> %i.bt, splat (i32 11)
  %i.cf = sub nsw <8 x i32> %i.cd, %i.ce
  %i.cg = ashr <8 x i32> %i.cf, splat (i32 12)
  %i.ch = add nsw <8 x i32> %i.ca, %i.cg
end_hunk_2
begin_hunk_3_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi:.lr.ph
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.ea, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.do = icmp samesign ult i64 %indvars.iv, %i.au
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !120, !noalias !185
  %i.dw = zext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !120, !noalias !185
  %i.dz = zext i16 %i.dy to i32
  %i.ea = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %.idx107 = shl nuw nsw i64 %i.ea, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx107 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !120, !noalias !185
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 6
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !120, !noalias !185
  %i.eh = zext i16 %i.eg to i32
  %i.ei = add i32 %i.aj, %i.ee
  %i.ej = add i32 %i.aj, %i.eh
  %i.ek = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.el = add nuw nsw i64 %i.ek, 3                ; 2 uses
  %i.em = icmp samesign ule i64 %i.el, %i.at
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ek
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.el ; 2 uses
  %i.ep = load i16, ptr %i.ds, align 2, !tbaa !120, !noalias !185
  %i.eq = load <2 x i16>, ptr %i.dq, align 2, !tbaa !120, !noalias !185
  %i.er = zext i16 %i.ep to i32                   ; 2 uses
  %i.es = shufflevector <2 x i16> %i.eq, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.et = zext <4 x i16> %i.es to <4 x i32>
  %i.eu = add i32 %i.aj, %i.dw                    ; 3 uses
  %i.ev = add i32 %i.aj, %i.dz                    ; 3 uses
  %i.ew = add nsw i32 %i.ei, %i.eu
  %i.ex = ashr i32 %i.ew, 1                       ; 2 uses
  %i.ey = add nsw i32 %i.ej, %i.ev
  %i.ez = ashr i32 %i.ey, 1                       ; 2 uses
  %i.fa = mul nsw i32 %i.eu, -778
  %i.fb = shl nsw i32 %i.ev, 11
  %i.fc = sub nsw i32 %i.fa, %i.fb
  %i.fd = ashr i32 %i.fc, 12
  %i.fe = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %i.ff = insertelement <4 x i32> %i.fe, i32 %i.fd, i64 1
  %i.fg = insertelement <4 x i32> %i.ff, i32 %i.eu, i64 2
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.ez, i64 3
  %i.fi = add nsw <4 x i32> %i.fh, %i.et
  %i.fj = mul nsw <4 x i32> %i.fi, %i.ar
  %i.fk = mul nsw i32 %i.ex, -778
  %i.fl = shl nsw i32 %i.ez, 11
  %i.fm = sub nsw i32 %i.fk, %i.fl
  %i.fn = ashr i32 %i.fm, 12
  %i.fo = add nsw i32 %i.fn, %i.er
  %i.fp = mul nsw i32 %i.fo, %i.as
  %i.fq = add nsw i32 %i.ex, %i.er
  %i.fr = mul nsw i32 %i.fq, %i.dn
  %i.fs = ashr <4 x i32> %i.fj, splat (i32 8)
  %i.ft = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fs, <4 x i32> zeroinitializer)
  %i.fu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ft, <4 x i32> splat (i32 65535))
  %i.fv = trunc nuw <4 x i32> %i.fu to <4 x i16>
  store <4 x i16> %i.fv, ptr %i.en, align 2, !tbaa !120
  %i.fw = ashr i32 %i.fp, 8
  %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 0)
  %i.fx = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i, i32 65535)
  %i.fy = trunc nuw i32 %i.fx to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !120
  %i.ga = ashr i32 %i.fr, 8
  %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.ga, i32 0)
  %i.gb = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i, i32 65535)
  %i.gc = trunc nuw i32 %i.gb to i16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %i.ea, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !191

._crit_edge:                                      ; preds = %scalar.ph
  %i.ge = zext nneg i32 %i.s to i64
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 3 uses
  %i.gg = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %i.gh
  %i.gj = or disjoint i64 %i.gh, 1                ; 2 uses
  %i.gk = icmp samesign ult i64 %i.gj, %i.ge
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %i.gj
  %i.gm = icmp samesign ult i32 %i.gg, %i.s
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = zext nneg i32 %i.gg to i64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !120, !noalias !192
  %i.gr = zext i16 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 6
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !120, !noalias !192
  %i.gu = zext i16 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !118
  %i.gx = add i32 %i.gw, -16384                   ; 2 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.gz = mul nuw nsw i32 %i.ac, 6
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hb = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hc = add nuw nsw i64 %i.hb, 3                ; 2 uses
  %i.hd = icmp samesign ule i64 %i.hc, %i.at
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.hb
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.hc
  %i.hg = load i16, ptr %i.gl, align 2, !tbaa !120, !noalias !192
  %i.hh = load <2 x i16>, ptr %i.gi, align 2, !tbaa !120, !noalias !192
  %i.hi = zext i16 %i.hg to i32
  %i.hj = shufflevector <2 x i16> %i.hh, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hk = zext <4 x i16> %i.hj to <4 x i32>
  %i.hl = add i32 %i.gx, %i.gu                    ; 2 uses
  %i.hm = load <3 x i32>, ptr %i.ha, align 8, !tbaa !119 ; 2 uses
  %i.hn = shufflevector <3 x i32> %i.hm, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ho = shl nsw i32 %i.hl, 11
  %i.hp = insertelement <4 x i32> poison, i32 %i.hl, i64 0
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.hr = add i32 %i.gx, %i.gr                    ; 3 uses
  %i.hs = mul nsw i32 %i.hr, -778
  %i.ht = sub nsw i32 %i.hs, %i.ho
  %i.hu = ashr i32 %i.ht, 12                      ; 2 uses
  %i.hv = insertelement <4 x i32> %i.hp, i32 %i.hu, i64 1
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hr, i64 2
  %i.hx = shufflevector <4 x i32> %i.hw, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hy = add nsw <4 x i32> %i.hx, %i.hk
  %i.hz = mul nsw <4 x i32> %i.hy, %i.hn
  %i.ia = insertelement <2 x i32> poison, i32 %i.hu, i64 0
  %i.ib = insertelement <2 x i32> %i.ia, i32 %i.hr, i64 1
  %i.ic = insertelement <2 x i32> poison, i32 %i.hi, i64 0
  %i.id = shufflevector <2 x i32> %i.ic, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ie = add nsw <2 x i32> %i.ib, %i.id
  %i.if = shufflevector <3 x i32> %i.hm, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ig = mul nsw <2 x i32> %i.ie, %i.if
  %i.ih = ashr <4 x i32> %i.hz, splat (i32 8)
  %i.ii = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ih, <4 x i32> zeroinitializer)
  %i.ij = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ii, <4 x i32> splat (i32 65535))
  %i.ik = trunc nuw <4 x i32> %i.ij to <4 x i16>
  store <4 x i16> %i.ik, ptr %i.he, align 2, !tbaa !120
  %i.il = ashr <2 x i32> %i.ig, splat (i32 8)
  %i.im = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.il, <2 x i32> zeroinitializer)
  %i.in = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.im, <2 x i32> splat (i32 65535))
  %i.io = trunc nuw <2 x i32> %i.in to <2 x i16>
  store <2 x i16> %i.io, ptr %i.hq, align 2, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !195 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !195
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !195 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !195
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = udiv i32 %i.s, 6                         ; 2 uses
  %i.z = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.0114.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 7 uses
  %i.aa = icmp slt i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i32 %i.y, -1                    ; 3 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !118
  %i.ae = add i32 %i.ad, -16384                   ; 3 uses
  %i.af = shl nsw i32 %1, 1                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load <3 x i32>, ptr %i.ag, align 8, !tbaa !119 ; 5 uses
  %i.ai = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %2 = load <4 x i32>, ptr %i.ag, align 8
  %i.aj = zext nneg i32 %invariant.op to i64
  %i.ak = sext i32 %1 to i64                      ; 3 uses
  %i.al = zext nneg i32 %i.u to i64
  %i.am = zext i32 %i.w to i64                    ; 4 uses
  %i.an = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ao = zext i32 %i.af to i64                   ; 3 uses
  %i.ap = zext i32 %i.n to i64                    ; 4 uses
  %i.aq = zext nneg i32 %i.k to i64
  %i.ar = zext nneg i32 %i.y to i64
  %wide.trip.count = zext i32 %i.ab to i64        ; 4 uses
  %i.as = mul nsw i64 %i.ak, %i.am                ; 2 uses
  %i.at = getelementptr [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.as ; 20 uses
  %i.au = add nuw nsw i64 %i.ak, 1                ; 3 uses
  %i.av = icmp samesign ult i64 %i.au, %i.al
  tail call void @llvm.assume(i1 %i.av), !noalias !198
  %i.aw = mul nuw nsw i64 %i.au, %i.am            ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.aw ; 4 uses
  %i.ay = icmp ult i32 %i.af, %i.k
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = mul nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.d, i64 %i.az ; 16 uses
  %i.bb = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.aq
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = mul nuw i64 %i.bb, %i.ap                ; 2 uses
  %i.be = getelementptr [2 x i8], ptr %i.d, i64 %i.bd ; 16 uses
  %min.iters.check = icmp ult i32 %i.ab, 33
  br i1 %min.iters.check, label %.preheader215.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bf = mul nuw i64 %i.ap, %i.ao
  %i.bg = shl i64 %i.bf, 1                        ; 8 uses
  %i.bh = mul nuw nsw i64 %wide.trip.count, 12    ; 8 uses
  %i.bi = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bj, i64 -10 ; 13 uses
  %i.bk = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep544 = getelementptr i8, ptr %i.bk, i64 2 ; 13 uses
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bi
  %scevgep545 = getelementptr i8, ptr %i.bl, i64 -8 ; 13 uses
  %i.bm = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep546 = getelementptr i8, ptr %i.bm, i64 4 ; 13 uses
  %i.bn = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bn
  %scevgep547 = getelementptr i8, ptr %i.bo, i64 -6 ; 13 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep548 = getelementptr i8, ptr %i.bp, i64 6 ; 13 uses
  %i.bq = getelementptr i8, ptr %i.d, i64 %i.bn
  %scevgep549 = getelementptr i8, ptr %i.bq, i64 -4 ; 13 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep550 = getelementptr i8, ptr %i.br, i64 8 ; 13 uses
  %i.bs = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bs
  %scevgep551 = getelementptr i8, ptr %i.bt, i64 -2 ; 13 uses
  %i.bu = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep552 = getelementptr i8, ptr %i.bu, i64 10 ; 13 uses
  %scevgep553 = getelementptr i8, ptr %i.d, i64 %i.bs ; 13 uses
  %i.bv = mul nuw i64 %i.bb, %i.ap
  %i.bw = shl i64 %i.bv, 1                        ; 8 uses
  %i.bx = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bx
  %scevgep554 = getelementptr i8, ptr %i.by, i64 -10 ; 13 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep555 = getelementptr i8, ptr %i.bz, i64 2 ; 13 uses
  %i.ca = getelementptr i8, ptr %i.d, i64 %i.bx
  %scevgep556 = getelementptr i8, ptr %i.ca, i64 -8 ; 13 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep557 = getelementptr i8, ptr %i.cb, i64 4 ; 13 uses
  %i.cc = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.cc
  %scevgep558 = getelementptr i8, ptr %i.cd, i64 -6 ; 13 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep559 = getelementptr i8, ptr %i.ce, i64 6 ; 13 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.cc
  %scevgep560 = getelementptr i8, ptr %i.cf, i64 -4 ; 13 uses
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep561 = getelementptr i8, ptr %i.cg, i64 8 ; 13 uses
  %i.ch = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ch
  %scevgep562 = getelementptr i8, ptr %i.ci, i64 -2 ; 13 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep563 = getelementptr i8, ptr %i.cj, i64 10 ; 13 uses
  %scevgep564 = getelementptr i8, ptr %i.d, i64 %i.ch ; 13 uses
  %i.ck = mul i64 %i.au, %i.am
  %i.cl = shl i64 %i.ck, 1                        ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.cl
  %scevgep565 = getelementptr i8, ptr %i.cm, i64 8 ; 12 uses
  %i.cn = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.bh
  %scevgep566 = getelementptr i8, ptr %i.co, i64 12 ; 12 uses
  %i.cp = mul nsw i64 %i.ak, %i.am
  %i.cq = shl i64 %i.cp, 1
  %i.cr = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.bh
  %scevgep567 = getelementptr i8, ptr %i.cs, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.ba, %scevgep545
  %bound1 = icmp ult ptr %scevgep544, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0568 = icmp ult ptr %i.ba, %scevgep547
  %bound1569 = icmp ult ptr %scevgep546, %scevgep
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx = or i1 %found.conflict, %found.conflict570
  %bound0571 = icmp ult ptr %i.ba, %scevgep549
  %bound1572 = icmp ult ptr %scevgep548, %scevgep
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx574 = or i1 %conflict.rdx, %found.conflict573
  %bound0575 = icmp ult ptr %i.ba, %scevgep551
  %bound1576 = icmp ult ptr %scevgep550, %scevgep
  %found.conflict577 = and i1 %bound0575, %bound1576
  %conflict.rdx578 = or i1 %conflict.rdx574, %found.conflict577
  %bound0579 = icmp ult ptr %i.ba, %scevgep553
  %bound1580 = icmp ult ptr %scevgep552, %scevgep
  %found.conflict581 = and i1 %bound0579, %bound1580
  %conflict.rdx582 = or i1 %conflict.rdx578, %found.conflict581
  %bound0583 = icmp ult ptr %i.ba, %scevgep554
  %bound1584 = icmp ult ptr %i.be, %scevgep
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %conflict.rdx582, %found.conflict585
  %bound0587 = icmp ult ptr %i.ba, %scevgep556
  %bound1588 = icmp ult ptr %scevgep555, %scevgep
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx590 = or i1 %conflict.rdx586, %found.conflict589
  %bound0591 = icmp ult ptr %i.ba, %scevgep558
  %bound1592 = icmp ult ptr %scevgep557, %scevgep
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx594 = or i1 %conflict.rdx590, %found.conflict593
  %bound0595 = icmp ult ptr %i.ba, %scevgep560
  %bound1596 = icmp ult ptr %scevgep559, %scevgep
  %found.conflict597 = and i1 %bound0595, %bound1596
  %conflict.rdx598 = or i1 %conflict.rdx594, %found.conflict597
  %bound0599 = icmp ult ptr %i.ba, %scevgep562
  %bound1600 = icmp ult ptr %scevgep561, %scevgep
  %found.conflict601 = and i1 %bound0599, %bound1600
  %conflict.rdx602 = or i1 %conflict.rdx598, %found.conflict601
  %bound0603 = icmp ult ptr %i.ba, %scevgep564
  %bound1604 = icmp ult ptr %scevgep563, %scevgep
  %found.conflict605 = and i1 %bound0603, %bound1604
  %conflict.rdx606 = or i1 %conflict.rdx602, %found.conflict605
  %bound0607 = icmp ult ptr %i.ba, %scevgep566
  %bound1608 = icmp ult ptr %scevgep565, %scevgep
  %found.conflict609 = and i1 %bound0607, %bound1608
  %conflict.rdx610 = or i1 %conflict.rdx606, %found.conflict609
  %bound0611 = icmp ult ptr %i.ba, %scevgep567
  %bound1612 = icmp ult ptr %i.at, %scevgep
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
  %bound1632 = icmp ult ptr %i.be, %scevgep545
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
  %bound1660 = icmp ult ptr %i.at, %scevgep545
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx662 = or i1 %conflict.rdx658, %found.conflict661
  %bound0663 = icmp ult ptr %scevgep546, %scevgep549
  %bound1664 = icmp ult ptr %scevgep548, %scevgep547
  %found.conflict665 = and i1 %bound0663, %bound1664
  %conflict.rdx666 = or i1 %conflict.rdx662, %found.conflict665
  %bound0667 = icmp ult ptr %scevgep546, %scevgep551
  %bound1668 = icmp ult ptr %scevgep550, %scevgep547
end_hunk_3
begin_hunk_4_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi:.lr.ph
  %found.conflict917 = and i1 %bound0915, %bound1916
  %conflict.rdx918 = or i1 %conflict.rdx914, %found.conflict917
  %bound0919 = icmp ult ptr %scevgep563, %scevgep567
  %bound1920 = icmp ult ptr %i.at, %scevgep564
  %found.conflict921 = and i1 %bound0919, %bound1920
  %conflict.rdx922 = or i1 %conflict.rdx918, %found.conflict921
  br i1 %conflict.rdx922, label %.preheader215.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ct = and i64 %wide.trip.count, 7             ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 8, i64 %i.ct
  %n.vec = sub nsw i64 %wide.trip.count, %i.cv    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splat924 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat926 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat928 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cw = phi i64 [ 0, %vector.ph ], [ %i.ip, %vector.body ] ; 3 uses
  %i.cx = mul nuw nsw i64 %i.cw, 6                ; 4 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cx
  %wide.vec = load <48 x i16>, ptr %i.cy, align 2, !tbaa !120, !alias.scope !201, !noalias !198 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec935 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec936 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec937 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec938 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec939 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.cz = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.da = zext <8 x i16> %strided.vec935 to <8 x i32> ; 3 uses
  %i.db = zext <8 x i16> %strided.vec936 to <8 x i32> ; 3 uses
  %i.dc = zext <8 x i16> %strided.vec937 to <8 x i32> ; 3 uses
  %i.dd = zext <8 x i16> %strided.vec938 to <8 x i32>
  %i.de = zext <8 x i16> %strided.vec939 to <8 x i32>
  %i.df = mul nuw i64 %i.cw, 6
  %i.dg = or disjoint i64 %i.df, 10               ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dg
  %wide.vec940 = load <48 x i16>, ptr %i.dh, align 2, !tbaa !120, !alias.scope !201, !noalias !198 ; 2 uses
  %strided.vec941 = shufflevector <48 x i16> %wide.vec940, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec942 = shufflevector <48 x i16> %wide.vec940, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.di = zext <8 x i16> %strided.vec941 to <8 x i32>
  %i.dj = zext <8 x i16> %strided.vec942 to <8 x i32>
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.cx
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %wide.vec943 = load <48 x i16>, ptr %i.dl, align 2, !tbaa !120, !alias.scope !204, !noalias !198 ; 2 uses
  %strided.vec944 = shufflevector <48 x i16> %wide.vec943, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec945 = shufflevector <48 x i16> %wide.vec943, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dm = zext <8 x i16> %strided.vec944 to <8 x i32>
  %i.dn = zext <8 x i16> %strided.vec945 to <8 x i32>
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.dg
  %wide.vec946 = load <48 x i16>, ptr %i.do, align 2, !tbaa !120, !alias.scope !204, !noalias !198 ; 2 uses
  %strided.vec947 = shufflevector <48 x i16> %wide.vec946, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec948 = shufflevector <48 x i16> %wide.vec946, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dp = zext <8 x i16> %strided.vec947 to <8 x i32>
  %i.dq = zext <8 x i16> %strided.vec948 to <8 x i32>
  %i.dr = add <8 x i32> %broadcast.splat, %i.dd   ; 5 uses
  %i.ds = add <8 x i32> %broadcast.splat, %i.de   ; 5 uses
  %i.dt = add <8 x i32> %broadcast.splat, %i.di
  %i.du = add <8 x i32> %broadcast.splat, %i.dj
  %i.dv = add <8 x i32> %broadcast.splat, %i.dm   ; 2 uses
  %i.dw = add <8 x i32> %broadcast.splat, %i.dn   ; 2 uses
  %i.dx = add <8 x i32> %broadcast.splat, %i.dp
  %i.dy = add <8 x i32> %broadcast.splat, %i.dq
  %i.dz = add nsw <8 x i32> %i.dt, %i.dr          ; 2 uses
  %i.ea = ashr <8 x i32> %i.dz, splat (i32 1)     ; 3 uses
  %i.eb = add nsw <8 x i32> %i.du, %i.ds          ; 2 uses
  %i.ec = ashr <8 x i32> %i.eb, splat (i32 1)     ; 3 uses
  %i.ed = add nsw <8 x i32> %i.dv, %i.dr
  %i.ee = ashr <8 x i32> %i.ed, splat (i32 1)     ; 3 uses
  %i.ef = add nsw <8 x i32> %i.dw, %i.ds
  %i.eg = ashr <8 x i32> %i.ef, splat (i32 1)     ; 3 uses
  %i.eh = add nsw <8 x i32> %i.dv, %i.dz
  %i.ei = add nsw <8 x i32> %i.eh, %i.dx
  %i.ej = ashr <8 x i32> %i.ei, splat (i32 2)     ; 3 uses
  %i.ek = add nsw <8 x i32> %i.dw, %i.eb
  %i.el = add nsw <8 x i32> %i.ek, %i.dy
  %i.em = ashr <8 x i32> %i.el, splat (i32 2)     ; 3 uses
  %i.en = mul nsw <8 x i32> %i.dr, splat (i32 50)
  %i.eo = mul nsw <8 x i32> %i.ds, splat (i32 22929)
  %i.ep = add nsw <8 x i32> %i.eo, %i.en
  %i.eq = ashr <8 x i32> %i.ep, splat (i32 12)
  %i.er = add nsw <8 x i32> %i.eq, %i.cz
  %i.es = mul nsw <8 x i32> %i.er, %broadcast.splat924
  %i.et = mul nsw <8 x i32> %i.dr, splat (i32 -5640)
  %i.eu = mul <8 x i32> %i.ds, splat (i32 -11751)
  %i.ev = add <8 x i32> %i.eu, %i.et
  %i.ew = ashr <8 x i32> %i.ev, splat (i32 12)
  %i.ex = add nsw <8 x i32> %i.ew, %i.cz
  %i.ey = mul nsw <8 x i32> %i.ex, %broadcast.splat926
  %i.ez = mul nsw <8 x i32> %i.dr, splat (i32 29040)
  %i.fa = mul <8 x i32> %i.ds, splat (i32 -101)
  %i.fb = add <8 x i32> %i.fa, %i.ez
  %i.fc = ashr <8 x i32> %i.fb, splat (i32 12)
  %i.fd = add nsw <8 x i32> %i.fc, %i.cz
  %i.fe = mul nsw <8 x i32> %i.fd, %broadcast.splat928
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.cx
  %i.fg = mul nsw <8 x i32> %i.ea, splat (i32 50)
  %i.fh = mul nsw <8 x i32> %i.ec, splat (i32 22929)
  %i.fi = add nsw <8 x i32> %i.fh, %i.fg
  %i.fj = ashr <8 x i32> %i.fi, splat (i32 12)
  %i.fk = add nsw <8 x i32> %i.fj, %i.da
  %i.fl = mul nsw <8 x i32> %i.fk, %broadcast.splat924
  %i.fm = mul nsw <8 x i32> %i.ea, splat (i32 -5640)
  %i.fn = mul <8 x i32> %i.ec, splat (i32 -11751)
  %i.fo = add <8 x i32> %i.fn, %i.fm
  %i.fp = ashr <8 x i32> %i.fo, splat (i32 12)
  %i.fq = add nsw <8 x i32> %i.fp, %i.da
  %i.fr = mul nsw <8 x i32> %i.fq, %broadcast.splat926
  %i.fs = mul nsw <8 x i32> %i.ea, splat (i32 29040)
  %i.ft = mul <8 x i32> %i.ec, splat (i32 -101)
  %i.fu = add <8 x i32> %i.ft, %i.fs
  %i.fv = ashr <8 x i32> %i.fu, splat (i32 12)
  %i.fw = add nsw <8 x i32> %i.fv, %i.da
  %i.fx = mul nsw <8 x i32> %i.fw, %broadcast.splat928
  %i.fy = ashr <8 x i32> %i.fr, splat (i32 8)
  %i.fz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fy, <8 x i32> zeroinitializer)
  %i.ga = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fz, <8 x i32> splat (i32 65535))
  %i.gb = trunc nuw <8 x i32> %i.ga to <8 x i16>
  %i.gc = ashr <8 x i32> %i.fx, splat (i32 8)
  %i.gd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gc, <8 x i32> zeroinitializer)
  %i.ge = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gd, <8 x i32> splat (i32 65535))
  %i.gf = trunc nuw <8 x i32> %i.ge to <8 x i16>
  %i.gg = shufflevector <8 x i32> %i.es, <8 x i32> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gh = shufflevector <8 x i32> %i.fe, <8 x i32> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gi = shufflevector <16 x i32> %i.gg, <16 x i32> %i.gh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gj = ashr <32 x i32> %i.gi, splat (i32 8)
  %i.gk = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.gj, <32 x i32> zeroinitializer)
  %i.gl = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.gk, <32 x i32> splat (i32 65535))
  %i.gm = trunc nuw <32 x i32> %i.gl to <32 x i16>
  %i.gn = shufflevector <8 x i16> %i.gb, <8 x i16> %i.gf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.gm, <32 x i16> %i.gn, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ff, align 2, !tbaa !120
  %i.go = mul nsw <8 x i32> %i.ee, splat (i32 50)
  %i.gp = mul nsw <8 x i32> %i.eg, splat (i32 22929)
  %i.gq = add nsw <8 x i32> %i.gp, %i.go
  %i.gr = ashr <8 x i32> %i.gq, splat (i32 12)
  %i.gs = add nsw <8 x i32> %i.gr, %i.db
  %i.gt = mul nsw <8 x i32> %i.gs, %broadcast.splat924
  %i.gu = mul nsw <8 x i32> %i.ee, splat (i32 -5640)
  %i.gv = mul <8 x i32> %i.eg, splat (i32 -11751)
  %i.gw = add <8 x i32> %i.gv, %i.gu
  %i.gx = ashr <8 x i32> %i.gw, splat (i32 12)
  %i.gy = add nsw <8 x i32> %i.gx, %i.db
  %i.gz = mul nsw <8 x i32> %i.gy, %broadcast.splat926
  %i.ha = mul nsw <8 x i32> %i.ee, splat (i32 29040)
  %i.hb = mul <8 x i32> %i.eg, splat (i32 -101)
  %i.hc = add <8 x i32> %i.hb, %i.ha
  %i.hd = ashr <8 x i32> %i.hc, splat (i32 12)
  %i.he = add nsw <8 x i32> %i.hd, %i.db
  %i.hf = mul nsw <8 x i32> %i.he, %broadcast.splat928
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cx
  %i.hh = mul nsw <8 x i32> %i.ej, splat (i32 50)
  %i.hi = mul nsw <8 x i32> %i.em, splat (i32 22929)
  %i.hj = add nsw <8 x i32> %i.hi, %i.hh
  %i.hk = ashr <8 x i32> %i.hj, splat (i32 12)
  %i.hl = add nsw <8 x i32> %i.hk, %i.dc
  %i.hm = mul nsw <8 x i32> %i.hl, %broadcast.splat924
  %i.hn = mul nsw <8 x i32> %i.ej, splat (i32 -5640)
  %i.ho = mul <8 x i32> %i.em, splat (i32 -11751)
  %i.hp = add <8 x i32> %i.ho, %i.hn
  %i.hq = ashr <8 x i32> %i.hp, splat (i32 12)
  %i.hr = add nsw <8 x i32> %i.hq, %i.dc
  %i.hs = mul nsw <8 x i32> %i.hr, %broadcast.splat926
  %i.ht = mul nsw <8 x i32> %i.ej, splat (i32 29040)
  %i.hu = mul <8 x i32> %i.em, splat (i32 -101)
  %i.hv = add <8 x i32> %i.hu, %i.ht
  %i.hw = ashr <8 x i32> %i.hv, splat (i32 12)
  %i.hx = add nsw <8 x i32> %i.hw, %i.dc
  %i.hy = mul nsw <8 x i32> %i.hx, %broadcast.splat928
  %i.hz = ashr <8 x i32> %i.hs, splat (i32 8)
  %i.ia = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hz, <8 x i32> zeroinitializer)
  %i.ib = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ia, <8 x i32> splat (i32 65535))
  %i.ic = trunc nuw <8 x i32> %i.ib to <8 x i16>
  %i.id = ashr <8 x i32> %i.hy, splat (i32 8)
  %i.ie = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.id, <8 x i32> zeroinitializer)
  %i.if = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ie, <8 x i32> splat (i32 65535))
  %i.ig = trunc nuw <8 x i32> %i.if to <8 x i16>
  %i.ih = shufflevector <8 x i32> %i.gt, <8 x i32> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ii = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ij = shufflevector <16 x i32> %i.ih, <16 x i32> %i.ii, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ik = ashr <32 x i32> %i.ij, splat (i32 8)
  %i.il = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.ik, <32 x i32> zeroinitializer)
  %i.im = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.il, <32 x i32> splat (i32 65535))
  %i.in = trunc nuw <32 x i32> %i.im to <32 x i16>
  %i.io = shufflevector <8 x i16> %i.ic, <8 x i16> %i.ig, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec949 = shufflevector <32 x i16> %i.in, <32 x i16> %i.io, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec949, ptr %i.hg, align 2, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ip = add nuw nsw i64 %i.cw, 8
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %.preheader215.preheader, label %vector.body, !llvm.loop !206

.preheader215.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.ir = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.is = shufflevector <4 x i32> %i.ir, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.it = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.iu = shufflevector <4 x i32> %i.it, <4 x i32> %i.ai, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.iv = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.iw = shufflevector <2 x i32> %i.iv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ix = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.preheader, %.preheader215
  %indvars.iv = phi i64 [ %i.jj, %.preheader215 ], [ %indvars.iv.ph, %.preheader215.preheader ] ; 3 uses
  %i.iy = icmp samesign ult i64 %indvars.iv, %i.ar
  tail call void @llvm.assume(i1 %i.iy)
  %i.iz = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iz
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iz
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iz
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 6
  %i.jh = add nuw nsw i64 %i.iz, 4                ; 2 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.jh
  %i.jj = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.jk = mul nuw nsw i64 %i.jj, 6                ; 2 uses
  %i.jl = add nuw nsw i64 %i.jk, 4                ; 2 uses
  %i.jm = icmp samesign ule i64 %i.jk, %i.aj
  tail call void @llvm.assume(i1 %i.jm), !noalias !198
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.jl
  %i.jo = load <2 x i16>, ptr %i.jn, align 2, !tbaa !120, !noalias !198
  %i.jp = zext <2 x i16> %i.jo to <2 x i32>
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.jh
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.jl
  %i.js = add nuw nsw i64 %i.iz, 3                ; 3 uses
  %i.jt = icmp samesign ule i64 %i.js, %i.an
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.iz
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.js
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.iz
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.js
  %i.jz = load i16, ptr %i.jg, align 2, !tbaa !120, !noalias !198
  %i.ka = load <2 x i16>, ptr %i.je, align 2, !tbaa !120, !noalias !198
  %i.kb = zext i16 %i.jz to i32
  %i.kc = shufflevector <2 x i16> %i.ka, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kd = zext <4 x i16> %i.kc to <4 x i32>
  %i.ke = load <2 x i16>, ptr %i.ji, align 2, !tbaa !120, !noalias !198 ; 2 uses
  %i.kf = load <2 x i16>, ptr %i.jq, align 2, !tbaa !120, !noalias !198 ; 2 uses
  %i.kg = load <2 x i16>, ptr %i.jr, align 2, !tbaa !120, !noalias !198
  %i.kh = shufflevector <2 x i16> %i.ke, <2 x i16> %i.kf, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ki = shufflevector <2 x i16> %i.kg, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kj = shufflevector <4 x i16> %i.kh, <4 x i16> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kk = zext <4 x i16> %i.kj to <4 x i32>
  %i.kl = shufflevector <2 x i16> %i.ke, <2 x i16> %i.kf, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.km = shufflevector <4 x i16> %i.kl, <4 x i16> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.kn = zext <4 x i16> %i.km to <4 x i32>
  %i.ko = add <4 x i32> %i.is, %i.kk              ; 4 uses
  %i.kp = add <4 x i32> %i.is, %i.kn              ; 7 uses
  %i.kq = shufflevector <4 x i32> %i.ko, <4 x i32> %i.kp, <4 x i32> <i32 2, i32 6, i32 0, i32 poison>
  %i.kr = load i16, ptr %i.jc, align 2, !tbaa !120, !noalias !198
  %i.ks = load <2 x i16>, ptr %i.ja, align 2, !tbaa !120, !noalias !198
  %i.kt = zext i16 %i.kr to i32
  %i.ku = shufflevector <2 x i16> %i.ks, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kv = zext <4 x i16> %i.ku to <4 x i32>
  %i.kw = shufflevector <4 x i32> %i.kp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.kx = shufflevector <4 x i32> %i.kp, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison>
  %i.ky = add <2 x i32> %i.iw, %i.jp
  %i.kz = shufflevector <4 x i32> %i.kp, <4 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.la = add nsw <2 x i32> %i.ky, %i.kz          ; 2 uses
  %i.lb = shufflevector <4 x i32> %i.ko, <4 x i32> %i.kp, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.lc = shufflevector <2 x i32> %i.la, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ld = add nsw <4 x i32> %i.lb, %i.lc          ; 2 uses
  %i.le = shufflevector <4 x i32> %i.kq, <4 x i32> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lf = add nsw <4 x i32> %i.le, %i.ko
  %i.lg = shufflevector <4 x i32> %i.kp, <4 x i32> %i.ko, <4 x i32> <i32 2, i32 6, i32 0, i32 poison>
  %i.lh = shufflevector <4 x i32> %i.lg, <4 x i32> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.li = add nsw <4 x i32> %i.lh, %i.kp
  %i.lj = ashr <4 x i32> %i.lf, <i32 1, i32 1, i32 1, i32 2> ; 2 uses
  %i.lk = ashr <4 x i32> %i.li, <i32 1, i32 1, i32 1, i32 2> ; 2 uses
  %i.ll = ashr <2 x i32> %i.la, splat (i32 1)     ; 3 uses
  %i.lm = shufflevector <2 x i32> %i.ll, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ln = shufflevector <4 x i32> %i.kw, <4 x i32> %i.lm, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lo = mul <4 x i32> %i.ln, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.lp = shufflevector <4 x i32> %i.kx, <4 x i32> %i.lm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lq = mul <4 x i32> %i.lp, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.lr = add <4 x i32> %i.lq, %i.lo
  %i.ls = ashr <4 x i32> %i.lr, splat (i32 12)
  %i.lt = add nsw <4 x i32> %i.ls, %i.kv
  %i.lu = mul nsw <4 x i32> %i.lt, %i.iu
  %i.lv = mul <2 x i32> %i.ll, <i32 29040, i32 -11751>
  %i.lw = shufflevector <2 x i32> %i.lv, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.lx = mul <2 x i32> %i.ll, <i32 -5640, i32 -101>
  %i.ly = add <2 x i32> %i.lx, %i.lw
  %i.lz = ashr <2 x i32> %i.ly, splat (i32 12)
  %i.ma = insertelement <2 x i32> poison, i32 %i.kt, i64 0
  %i.mb = shufflevector <2 x i32> %i.ma, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mc = add nsw <2 x i32> %i.lz, %i.mb
  %i.md = mul nsw <2 x i32> %i.mc, %i.ix
  %i.me = ashr <4 x i32> %i.lu, splat (i32 8)
  %i.mf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.me, <4 x i32> zeroinitializer)
  %i.mg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mf, <4 x i32> splat (i32 65535))
  %i.mh = trunc nuw <4 x i32> %i.mg to <4 x i16>
  store <4 x i16> %i.mh, ptr %i.ju, align 2, !tbaa !120
  %i.mi = ashr <2 x i32> %i.md, splat (i32 8)
  %i.mj = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mi, <2 x i32> zeroinitializer)
  %i.mk = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mj, <2 x i32> splat (i32 65535))
  %i.ml = trunc nuw <2 x i32> %i.mk to <2 x i16>
  store <2 x i16> %i.ml, ptr %i.jw, align 2, !tbaa !120
  %i.mm = mul <4 x i32> %i.lj, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.mn = mul <4 x i32> %i.lk, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.mo = add <4 x i32> %i.mn, %i.mm
  %i.mp = ashr <4 x i32> %i.mo, splat (i32 12)
  %i.mq = add nsw <4 x i32> %i.mp, %i.kd
  %i.mr = mul nsw <4 x i32> %i.mq, %i.ai
  %i.ms = ashr <4 x i32> %i.mr, splat (i32 8)
  %i.mt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ms, <4 x i32> zeroinitializer)
  %i.mu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mt, <4 x i32> splat (i32 65535))
  %i.mv = trunc nuw <4 x i32> %i.mu to <4 x i16>
  store <4 x i16> %i.mv, ptr %i.jx, align 2, !tbaa !120
  %i.mw = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.mx = shufflevector <4 x i32> %i.lj, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.my = mul nsw <2 x i32> %i.mx, <i32 -5640, i32 29040>
  %i.mz = shufflevector <4 x i32> %i.lk, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.na = mul <2 x i32> %i.mz, <i32 -11751, i32 -101>
  %i.nb = add <2 x i32> %i.na, %i.my
  %i.nc = ashr <2 x i32> %i.nb, splat (i32 12)
  %i.nd = insertelement <2 x i32> poison, i32 %i.kb, i64 0
  %i.ne = shufflevector <2 x i32> %i.nd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.nf = add nsw <2 x i32> %i.nc, %i.ne
  %i.ng = mul nsw <2 x i32> %i.nf, %i.ix
  %i.nh = ashr <2 x i32> %i.ng, splat (i32 8)
  %i.ni = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nh, <2 x i32> zeroinitializer)
  %i.nj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ni, <2 x i32> splat (i32 65535))
  %i.nk = trunc nuw <2 x i32> %i.nj to <2 x i16>
  store <2 x i16> %i.nk, ptr %i.mw, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %i.jj, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader215, !llvm.loop !207

._crit_edge:                                      ; preds = %.preheader215
  %i.nl = zext nneg i32 %i.s to i64
  %i.nm = mul nuw nsw i32 %i.ab, 6                ; 3 uses
  %i.nn = add nuw nsw i32 %i.nm, 4
  %i.no = add nuw nsw i32 %i.nm, 6
  %i.np = icmp samesign ule i32 %i.no, %i.s
  tail call void @llvm.assume(i1 %i.np), !noalias !208
  %i.nq = zext nneg i32 %i.nn to i64              ; 2 uses
  %i.nr = zext nneg i32 %i.nm to i64              ; 7 uses
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.as ; 5 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nr
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nr
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nr
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.ny = add nuw nsw i64 %i.nr, 3                ; 2 uses
  %i.nz = icmp samesign ult i64 %i.ny, %i.nl
  tail call void @llvm.assume(i1 %i.nz), !noalias !208
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.ny
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nq
  %i.oc = load <2 x i16>, ptr %i.ob, align 2, !tbaa !120, !noalias !208
  %i.od = zext <2 x i16> %i.oc to <2 x i32>
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.aw
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.oe, i64 %i.nq
  %i.og = load <2 x i16>, ptr %i.of, align 2, !tbaa !120, !noalias !208
  %i.oh = zext <2 x i16> %i.og to <2 x i32>
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !118
  %i.ok = add i32 %i.oj, -16384
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.om = add nuw nsw i64 %i.nr, 3                ; 3 uses
  %i.on = icmp samesign ule i64 %i.om, %i.an
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az ; 2 uses
  tail call void @llvm.assume(i1 %i.on)
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.oo, i64 %i.nr
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.oo, i64 %i.om
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 2
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bd ; 2 uses
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %i.nr
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %i.om
  %i.ov = load i16, ptr %i.oa, align 2, !tbaa !120, !noalias !208
  %i.ow = load <2 x i16>, ptr %i.nx, align 2, !tbaa !120, !noalias !208
  %i.ox = zext i16 %i.ov to i32
  %i.oy = shufflevector <2 x i16> %i.ow, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oz = zext <4 x i16> %i.oy to <4 x i32>
  %i.pa = insertelement <2 x i32> poison, i32 %i.ok, i64 0
  %i.pb = shufflevector <2 x i32> %i.pa, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pc = add <2 x i32> %i.pb, %i.od              ; 3 uses
  %i.pd = add <2 x i32> %i.pb, %i.oh
  %i.pe = add nsw <2 x i32> %i.pd, %i.pc
  %i.pf = ashr <2 x i32> %i.pe, splat (i32 1)     ; 2 uses
  %i.pg = shufflevector <2 x i32> %i.pf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ph = load <3 x i32>, ptr %i.ol, align 8, !tbaa !119 ; 2 uses
  %i.pi = shufflevector <3 x i32> %i.ph, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %3 = load <4 x i32>, ptr %i.ol, align 8
  %i.pj = shufflevector <2 x i32> %i.pc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pk = load i16, ptr %i.nv, align 2, !tbaa !120, !noalias !208
  %i.pl = load <2 x i16>, ptr %i.nt, align 2, !tbaa !120, !noalias !208
  %i.pm = zext i16 %i.pk to i32
  %i.pn = shufflevector <2 x i16> %i.pl, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.po = zext <4 x i16> %i.pn to <4 x i32>
  %i.pp = mul <4 x i32> %i.pj, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.pq = shufflevector <2 x i32> %i.pc, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.pr = mul <4 x i32> %i.pq, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.ps = add <4 x i32> %i.pp, %i.pr
  %i.pt = ashr <4 x i32> %i.ps, splat (i32 12)    ; 2 uses
  %i.pu = add nsw <4 x i32> %i.pt, %i.po
  %i.pv = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.pw = shufflevector <4 x i32> %i.pv, <4 x i32> %i.pi, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.px = mul nsw <4 x i32> %i.pu, %i.pw
  %i.py = ashr <4 x i32> %i.px, splat (i32 8)
  %i.pz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.py, <4 x i32> zeroinitializer)
  %i.qa = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.pz, <4 x i32> splat (i32 65535))
  %i.qb = trunc nuw <4 x i32> %i.qa to <4 x i16>
  store <4 x i16> %i.qb, ptr %i.op, align 2, !tbaa !120
  %i.qc = shufflevector <4 x i32> %i.pt, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.qd = insertelement <2 x i32> poison, i32 %i.pm, i64 0
  %i.qe = shufflevector <2 x i32> %i.qd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.qf = add nsw <2 x i32> %i.qc, %i.qe
  %i.qg = shufflevector <3 x i32> %i.ph, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.qh = mul nsw <2 x i32> %i.qf, %i.qg
  %i.qi = ashr <2 x i32> %i.qh, splat (i32 8)
  %i.qj = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.qi, <2 x i32> zeroinitializer)
  %i.qk = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.qj, <2 x i32> splat (i32 65535))
  %i.ql = trunc nuw <2 x i32> %i.qk to <2 x i16>
  store <2 x i16> %i.ql, ptr %i.or, align 2, !tbaa !120
  %i.qm = mul <4 x i32> %i.pg, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.qn = shufflevector <2 x i32> %i.pf, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.qo = mul <4 x i32> %i.qn, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.qp = add <4 x i32> %i.qm, %i.qo
  %i.qq = ashr <4 x i32> %i.qp, splat (i32 12)    ; 2 uses
  %i.qr = add nsw <4 x i32> %i.qq, %i.oz
  %i.qs = mul nsw <4 x i32> %i.qr, %i.pi
  %i.qt = ashr <4 x i32> %i.qs, splat (i32 8)
  %i.qu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qt, <4 x i32> zeroinitializer)
  %i.qv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qu, <4 x i32> splat (i32 65535))
  %i.qw = trunc nuw <4 x i32> %i.qv to <4 x i16>
  store <4 x i16> %i.qw, ptr %i.ot, align 2, !tbaa !120
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  %i.qy = shufflevector <4 x i32> %i.qq, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.qz = insertelement <2 x i32> poison, i32 %i.ox, i64 0
  %i.ra = shufflevector <2 x i32> %i.qz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.rb = add nsw <2 x i32> %i.qy, %i.ra
  %i.rc = mul nsw <2 x i32> %i.rb, %i.qg
  %i.rd = ashr <2 x i32> %i.rc, splat (i32 8)
  %i.re = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.rd, <2 x i32> zeroinitializer)
  %i.rf = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.re, <2 x i32> splat (i32 65535))
  %i.rg = trunc nuw <2 x i32> %i.rf to <2 x i16>
  store <2 x i16> %i.rg, ptr %i.qx, align 2, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !211 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !211
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !211 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !211
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = udiv i32 %i.s, 6                         ; 2 uses
  %i.z = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.0112.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 7 uses
  %i.aa = icmp slt i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i32 %i.y, -1                    ; 3 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !118
  %i.ae = add i32 %i.ad, -16384                   ; 9 uses
  %i.af = shl nsw i32 %1, 1                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load <3 x i32>, ptr %i.ag, align 8, !tbaa !119 ; 5 uses
  %i.ai = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %2 = load <4 x i32>, ptr %i.ag, align 8
  %i.aj = zext nneg i32 %invariant.op to i64
  %i.ak = sext i32 %1 to i64                      ; 3 uses
  %i.al = zext nneg i32 %i.u to i64
  %i.am = zext i32 %i.w to i64                    ; 4 uses
  %i.an = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ao = zext i32 %i.af to i64                   ; 3 uses
  %i.ap = zext i32 %i.n to i64                    ; 4 uses
  %i.aq = zext nneg i32 %i.k to i64
  %i.ar = zext nneg i32 %i.y to i64
  %wide.trip.count = zext i32 %i.ab to i64        ; 4 uses
  %i.as = mul nsw i64 %i.ak, %i.am                ; 2 uses
  %i.at = getelementptr [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.as ; 20 uses
  %i.au = add nuw nsw i64 %i.ak, 1                ; 3 uses
  %i.av = icmp samesign ult i64 %i.au, %i.al
  tail call void @llvm.assume(i1 %i.av), !noalias !214
  %i.aw = mul nuw nsw i64 %i.au, %i.am            ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.aw ; 4 uses
  %i.ay = icmp ult i32 %i.af, %i.k
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = mul nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.d, i64 %i.az ; 16 uses
  %i.bb = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.aq
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = mul nuw i64 %i.bb, %i.ap                ; 2 uses
  %i.be = getelementptr [2 x i8], ptr %i.d, i64 %i.bd ; 16 uses
  %min.iters.check = icmp ult i32 %i.ab, 33
  br i1 %min.iters.check, label %.preheader213.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bf = mul nuw i64 %i.ap, %i.ao
  %i.bg = shl i64 %i.bf, 1                        ; 8 uses
  %i.bh = mul nuw nsw i64 %wide.trip.count, 12    ; 8 uses
  %i.bi = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bj, i64 -10 ; 13 uses
  %i.bk = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep538 = getelementptr i8, ptr %i.bk, i64 2 ; 13 uses
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bi
  %scevgep539 = getelementptr i8, ptr %i.bl, i64 -8 ; 13 uses
  %i.bm = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep540 = getelementptr i8, ptr %i.bm, i64 4 ; 13 uses
  %i.bn = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bn
  %scevgep541 = getelementptr i8, ptr %i.bo, i64 -6 ; 13 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep542 = getelementptr i8, ptr %i.bp, i64 6 ; 13 uses
  %i.bq = getelementptr i8, ptr %i.d, i64 %i.bn
  %scevgep543 = getelementptr i8, ptr %i.bq, i64 -4 ; 13 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep544 = getelementptr i8, ptr %i.br, i64 8 ; 13 uses
  %i.bs = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bs
  %scevgep545 = getelementptr i8, ptr %i.bt, i64 -2 ; 13 uses
  %i.bu = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep546 = getelementptr i8, ptr %i.bu, i64 10 ; 13 uses
  %scevgep547 = getelementptr i8, ptr %i.d, i64 %i.bs ; 13 uses
  %i.bv = mul nuw i64 %i.bb, %i.ap
  %i.bw = shl i64 %i.bv, 1                        ; 8 uses
  %i.bx = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bx
  %scevgep548 = getelementptr i8, ptr %i.by, i64 -10 ; 13 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep549 = getelementptr i8, ptr %i.bz, i64 2 ; 13 uses
  %i.ca = getelementptr i8, ptr %i.d, i64 %i.bx
  %scevgep550 = getelementptr i8, ptr %i.ca, i64 -8 ; 13 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep551 = getelementptr i8, ptr %i.cb, i64 4 ; 13 uses
  %i.cc = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.cc
  %scevgep552 = getelementptr i8, ptr %i.cd, i64 -6 ; 13 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep553 = getelementptr i8, ptr %i.ce, i64 6 ; 13 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.cc
  %scevgep554 = getelementptr i8, ptr %i.cf, i64 -4 ; 13 uses
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep555 = getelementptr i8, ptr %i.cg, i64 8 ; 13 uses
  %i.ch = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ch
  %scevgep556 = getelementptr i8, ptr %i.ci, i64 -2 ; 13 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep557 = getelementptr i8, ptr %i.cj, i64 10 ; 13 uses
  %scevgep558 = getelementptr i8, ptr %i.d, i64 %i.ch ; 13 uses
  %i.ck = mul i64 %i.au, %i.am
  %i.cl = shl i64 %i.ck, 1                        ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.cl
  %scevgep559 = getelementptr i8, ptr %i.cm, i64 8 ; 12 uses
  %i.cn = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.bh
  %scevgep560 = getelementptr i8, ptr %i.co, i64 12 ; 12 uses
  %i.cp = mul nsw i64 %i.ak, %i.am
  %i.cq = shl i64 %i.cp, 1
  %i.cr = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.bh
  %scevgep561 = getelementptr i8, ptr %i.cs, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.ba, %scevgep539
  %bound1 = icmp ult ptr %scevgep538, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0562 = icmp ult ptr %i.ba, %scevgep541
  %bound1563 = icmp ult ptr %scevgep540, %scevgep
  %found.conflict564 = and i1 %bound0562, %bound1563
  %conflict.rdx = or i1 %found.conflict, %found.conflict564
  %bound0565 = icmp ult ptr %i.ba, %scevgep543
  %bound1566 = icmp ult ptr %scevgep542, %scevgep
  %found.conflict567 = and i1 %bound0565, %bound1566
  %conflict.rdx568 = or i1 %conflict.rdx, %found.conflict567
  %bound0569 = icmp ult ptr %i.ba, %scevgep545
  %bound1570 = icmp ult ptr %scevgep544, %scevgep
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx572 = or i1 %conflict.rdx568, %found.conflict571
  %bound0573 = icmp ult ptr %i.ba, %scevgep547
  %bound1574 = icmp ult ptr %scevgep546, %scevgep
  %found.conflict575 = and i1 %bound0573, %bound1574
  %conflict.rdx576 = or i1 %conflict.rdx572, %found.conflict575
  %bound0577 = icmp ult ptr %i.ba, %scevgep548
  %bound1578 = icmp ult ptr %i.be, %scevgep
  %found.conflict579 = and i1 %bound0577, %bound1578
  %conflict.rdx580 = or i1 %conflict.rdx576, %found.conflict579
  %bound0581 = icmp ult ptr %i.ba, %scevgep550
  %bound1582 = icmp ult ptr %scevgep549, %scevgep
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx584 = or i1 %conflict.rdx580, %found.conflict583
  %bound0585 = icmp ult ptr %i.ba, %scevgep552
  %bound1586 = icmp ult ptr %scevgep551, %scevgep
  %found.conflict587 = and i1 %bound0585, %bound1586
  %conflict.rdx588 = or i1 %conflict.rdx584, %found.conflict587
  %bound0589 = icmp ult ptr %i.ba, %scevgep554
  %bound1590 = icmp ult ptr %scevgep553, %scevgep
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx592 = or i1 %conflict.rdx588, %found.conflict591
  %bound0593 = icmp ult ptr %i.ba, %scevgep556
  %bound1594 = icmp ult ptr %scevgep555, %scevgep
  %found.conflict595 = and i1 %bound0593, %bound1594
  %conflict.rdx596 = or i1 %conflict.rdx592, %found.conflict595
  %bound0597 = icmp ult ptr %i.ba, %scevgep558
  %bound1598 = icmp ult ptr %scevgep557, %scevgep
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %conflict.rdx596, %found.conflict599
  %bound0601 = icmp ult ptr %i.ba, %scevgep560
  %bound1602 = icmp ult ptr %scevgep559, %scevgep
  %found.conflict603 = and i1 %bound0601, %bound1602
  %conflict.rdx604 = or i1 %conflict.rdx600, %found.conflict603
  %bound0605 = icmp ult ptr %i.ba, %scevgep561
  %bound1606 = icmp ult ptr %i.at, %scevgep
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
  %bound1626 = icmp ult ptr %i.be, %scevgep539
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
  %bound1654 = icmp ult ptr %i.at, %scevgep539
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %conflict.rdx652, %found.conflict655
  %bound0657 = icmp ult ptr %scevgep540, %scevgep543
  %bound1658 = icmp ult ptr %scevgep542, %scevgep541
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %bound0661 = icmp ult ptr %scevgep540, %scevgep545
  %bound1662 = icmp ult ptr %scevgep544, %scevgep541
end_hunk_4
begin_hunk_5_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi:.lr.ph
  %bound0877 = icmp ult ptr %scevgep551, %scevgep561
  %bound1878 = icmp ult ptr %i.at, %scevgep552
  %found.conflict879 = and i1 %bound0877, %bound1878
  %conflict.rdx880 = or i1 %conflict.rdx876, %found.conflict879
  %bound0881 = icmp ult ptr %scevgep553, %scevgep556
  %bound1882 = icmp ult ptr %scevgep555, %scevgep554
  %found.conflict883 = and i1 %bound0881, %bound1882
  %conflict.rdx884 = or i1 %conflict.rdx880, %found.conflict883
  %bound0885 = icmp ult ptr %scevgep553, %scevgep558
  %bound1886 = icmp ult ptr %scevgep557, %scevgep554
  %found.conflict887 = and i1 %bound0885, %bound1886
  %conflict.rdx888 = or i1 %conflict.rdx884, %found.conflict887
  %bound0889 = icmp ult ptr %scevgep553, %scevgep560
  %bound1890 = icmp ult ptr %scevgep559, %scevgep554
  %found.conflict891 = and i1 %bound0889, %bound1890
  %conflict.rdx892 = or i1 %conflict.rdx888, %found.conflict891
  %bound0893 = icmp ult ptr %scevgep553, %scevgep561
  %bound1894 = icmp ult ptr %i.at, %scevgep554
  %found.conflict895 = and i1 %bound0893, %bound1894
  %conflict.rdx896 = or i1 %conflict.rdx892, %found.conflict895
  %bound0897 = icmp ult ptr %scevgep555, %scevgep558
  %bound1898 = icmp ult ptr %scevgep557, %scevgep556
  %found.conflict899 = and i1 %bound0897, %bound1898
  %conflict.rdx900 = or i1 %conflict.rdx896, %found.conflict899
  %bound0901 = icmp ult ptr %scevgep555, %scevgep560
  %bound1902 = icmp ult ptr %scevgep559, %scevgep556
  %found.conflict903 = and i1 %bound0901, %bound1902
  %conflict.rdx904 = or i1 %conflict.rdx900, %found.conflict903
  %bound0905 = icmp ult ptr %scevgep555, %scevgep561
  %bound1906 = icmp ult ptr %i.at, %scevgep556
  %found.conflict907 = and i1 %bound0905, %bound1906
  %conflict.rdx908 = or i1 %conflict.rdx904, %found.conflict907
  %bound0909 = icmp ult ptr %scevgep557, %scevgep560
  %bound1910 = icmp ult ptr %scevgep559, %scevgep558
  %found.conflict911 = and i1 %bound0909, %bound1910
  %conflict.rdx912 = or i1 %conflict.rdx908, %found.conflict911
  %bound0913 = icmp ult ptr %scevgep557, %scevgep561
  %bound1914 = icmp ult ptr %i.at, %scevgep558
  %found.conflict915 = and i1 %bound0913, %bound1914
  %conflict.rdx916 = or i1 %conflict.rdx912, %found.conflict915
  br i1 %conflict.rdx916, label %.preheader213.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ct = and i64 %wide.trip.count, 7             ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 8, i64 %i.ct
  %n.vec = sub nsw i64 %wide.trip.count, %i.cv    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splat918 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat920 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat922 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cw = phi i64 [ 0, %vector.ph ], [ %i.hj, %vector.body ] ; 3 uses
  %i.cx = mul nuw nsw i64 %i.cw, 6                ; 4 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cx
  %wide.vec = load <48 x i16>, ptr %i.cy, align 2, !tbaa !120, !alias.scope !217, !noalias !214 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec929 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec930 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec931 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec932 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec933 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.cz = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.da = zext <8 x i16> %strided.vec929 to <8 x i32> ; 3 uses
  %i.db = zext <8 x i16> %strided.vec930 to <8 x i32> ; 3 uses
  %i.dc = zext <8 x i16> %strided.vec931 to <8 x i32> ; 3 uses
  %i.dd = zext <8 x i16> %strided.vec932 to <8 x i32>
  %i.de = zext <8 x i16> %strided.vec933 to <8 x i32>
  %i.df = mul nuw i64 %i.cw, 6
  %i.dg = or disjoint i64 %i.df, 10               ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dg
  %wide.vec934 = load <48 x i16>, ptr %i.dh, align 2, !tbaa !120, !alias.scope !217, !noalias !214 ; 2 uses
  %strided.vec935 = shufflevector <48 x i16> %wide.vec934, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec936 = shufflevector <48 x i16> %wide.vec934, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.di = zext <8 x i16> %strided.vec935 to <8 x i32>
  %i.dj = zext <8 x i16> %strided.vec936 to <8 x i32>
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.cx
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %wide.vec937 = load <48 x i16>, ptr %i.dl, align 2, !tbaa !120, !alias.scope !220, !noalias !214 ; 2 uses
  %strided.vec938 = shufflevector <48 x i16> %wide.vec937, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec939 = shufflevector <48 x i16> %wide.vec937, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dm = zext <8 x i16> %strided.vec938 to <8 x i32>
  %i.dn = zext <8 x i16> %strided.vec939 to <8 x i32>
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.dg
  %wide.vec940 = load <48 x i16>, ptr %i.do, align 2, !tbaa !120, !alias.scope !220, !noalias !214 ; 2 uses
  %strided.vec941 = shufflevector <48 x i16> %wide.vec940, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec942 = shufflevector <48 x i16> %wide.vec940, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dp = zext <8 x i16> %strided.vec941 to <8 x i32>
  %i.dq = zext <8 x i16> %strided.vec942 to <8 x i32>
  %i.dr = add <8 x i32> %broadcast.splat, %i.dd   ; 4 uses
  %i.ds = add <8 x i32> %broadcast.splat, %i.de   ; 4 uses
  %i.dt = add <8 x i32> %broadcast.splat, %i.di
  %i.du = add <8 x i32> %broadcast.splat, %i.dj
  %i.dv = add <8 x i32> %broadcast.splat, %i.dm   ; 2 uses
  %i.dw = add <8 x i32> %broadcast.splat, %i.dn   ; 2 uses
  %i.dx = add <8 x i32> %broadcast.splat, %i.dp
  %i.dy = add <8 x i32> %broadcast.splat, %i.dq
  %i.dz = add nsw <8 x i32> %i.dt, %i.dr          ; 2 uses
  %i.ea = ashr <8 x i32> %i.dz, splat (i32 1)     ; 2 uses
  %i.eb = add nsw <8 x i32> %i.du, %i.ds          ; 2 uses
  %i.ec = ashr <8 x i32> %i.eb, splat (i32 1)     ; 2 uses
  %i.ed = add nsw <8 x i32> %i.dv, %i.dr
  %i.ee = ashr <8 x i32> %i.ed, splat (i32 1)     ; 2 uses
  %i.ef = add nsw <8 x i32> %i.dw, %i.ds
  %i.eg = ashr <8 x i32> %i.ef, splat (i32 1)     ; 2 uses
  %i.eh = add nsw <8 x i32> %i.dv, %i.dz
  %i.ei = add nsw <8 x i32> %i.eh, %i.dx
  %i.ej = ashr <8 x i32> %i.ei, splat (i32 2)     ; 2 uses
  %i.ek = add nsw <8 x i32> %i.dw, %i.eb
  %i.el = add nsw <8 x i32> %i.ek, %i.dy
  %i.em = ashr <8 x i32> %i.el, splat (i32 2)     ; 2 uses
  %i.en = add nsw <8 x i32> %i.ds, %i.cz
  %i.eo = mul nsw <8 x i32> %i.en, %broadcast.splat918
  %i.ep = mul nsw <8 x i32> %i.dr, splat (i32 -778)
  %i.eq = shl nsw <8 x i32> %i.ds, splat (i32 11)
  %i.er = sub nsw <8 x i32> %i.ep, %i.eq
  %i.es = ashr <8 x i32> %i.er, splat (i32 12)
  %i.et = add nsw <8 x i32> %i.es, %i.cz
  %i.eu = mul nsw <8 x i32> %i.et, %broadcast.splat920
  %i.ev = add nsw <8 x i32> %i.dr, %i.cz
  %i.ew = mul nsw <8 x i32> %broadcast.splat922, %i.ev
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.cx
  %i.ey = add nsw <8 x i32> %i.ec, %i.da
  %i.ez = mul nsw <8 x i32> %i.ey, %broadcast.splat918
  %i.fa = mul nsw <8 x i32> %i.ea, splat (i32 -778)
  %i.fb = shl nsw <8 x i32> %i.ec, splat (i32 11)
  %i.fc = sub nsw <8 x i32> %i.fa, %i.fb
  %i.fd = ashr <8 x i32> %i.fc, splat (i32 12)
  %i.fe = add nsw <8 x i32> %i.fd, %i.da
  %i.ff = mul nsw <8 x i32> %i.fe, %broadcast.splat920
  %i.fg = add nsw <8 x i32> %i.ea, %i.da
  %i.fh = mul nsw <8 x i32> %broadcast.splat922, %i.fg
  %i.fi = ashr <8 x i32> %i.ff, splat (i32 8)
  %i.fj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fi, <8 x i32> zeroinitializer)
  %i.fk = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fj, <8 x i32> splat (i32 65535))
  %i.fl = trunc nuw <8 x i32> %i.fk to <8 x i16>
  %i.fm = ashr <8 x i32> %i.fh, splat (i32 8)
  %i.fn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fm, <8 x i32> zeroinitializer)
  %i.fo = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fn, <8 x i32> splat (i32 65535))
  %i.fp = trunc nuw <8 x i32> %i.fo to <8 x i16>
  %i.fq = shufflevector <8 x i32> %i.eo, <8 x i32> %i.eu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fr = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fs = shufflevector <16 x i32> %i.fq, <16 x i32> %i.fr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ft = ashr <32 x i32> %i.fs, splat (i32 8)
  %i.fu = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.ft, <32 x i32> zeroinitializer)
  %i.fv = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.fu, <32 x i32> splat (i32 65535))
  %i.fw = trunc nuw <32 x i32> %i.fv to <32 x i16>
  %i.fx = shufflevector <8 x i16> %i.fl, <8 x i16> %i.fp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.fw, <32 x i16> %i.fx, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ex, align 2, !tbaa !120
  %i.fy = add nsw <8 x i32> %i.eg, %i.db
  %i.fz = mul nsw <8 x i32> %i.fy, %broadcast.splat918
  %i.ga = mul nsw <8 x i32> %i.ee, splat (i32 -778)
  %i.gb = shl nsw <8 x i32> %i.eg, splat (i32 11)
  %i.gc = sub nsw <8 x i32> %i.ga, %i.gb
  %i.gd = ashr <8 x i32> %i.gc, splat (i32 12)
  %i.ge = add nsw <8 x i32> %i.gd, %i.db
  %i.gf = mul nsw <8 x i32> %i.ge, %broadcast.splat920
  %i.gg = add nsw <8 x i32> %i.ee, %i.db
  %i.gh = mul nsw <8 x i32> %broadcast.splat922, %i.gg
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cx
  %i.gj = add nsw <8 x i32> %i.em, %i.dc
  %i.gk = mul nsw <8 x i32> %i.gj, %broadcast.splat918
  %i.gl = mul nsw <8 x i32> %i.ej, splat (i32 -778)
  %i.gm = shl nsw <8 x i32> %i.em, splat (i32 11)
  %i.gn = sub nsw <8 x i32> %i.gl, %i.gm
  %i.go = ashr <8 x i32> %i.gn, splat (i32 12)
  %i.gp = add nsw <8 x i32> %i.go, %i.dc
  %i.gq = mul nsw <8 x i32> %i.gp, %broadcast.splat920
  %i.gr = add nsw <8 x i32> %i.ej, %i.dc
  %i.gs = mul nsw <8 x i32> %broadcast.splat922, %i.gr
  %i.gt = ashr <8 x i32> %i.gq, splat (i32 8)
  %i.gu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gt, <8 x i32> zeroinitializer)
  %i.gv = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gu, <8 x i32> splat (i32 65535))
  %i.gw = trunc nuw <8 x i32> %i.gv to <8 x i16>
  %i.gx = ashr <8 x i32> %i.gs, splat (i32 8)
  %i.gy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> zeroinitializer)
  %i.gz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 65535))
  %i.ha = trunc nuw <8 x i32> %i.gz to <8 x i16>
  %i.hb = shufflevector <8 x i32> %i.fz, <8 x i32> %i.gf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hc = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hd = shufflevector <16 x i32> %i.hb, <16 x i32> %i.hc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.he = ashr <32 x i32> %i.hd, splat (i32 8)
  %i.hf = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.he, <32 x i32> zeroinitializer)
  %i.hg = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.hf, <32 x i32> splat (i32 65535))
  %i.hh = trunc nuw <32 x i32> %i.hg to <32 x i16>
  %i.hi = shufflevector <8 x i16> %i.gw, <8 x i16> %i.ha, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec943 = shufflevector <32 x i16> %i.hh, <32 x i16> %i.hi, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec943, ptr %i.gi, align 2, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = add nuw nsw i64 %i.cw, 8
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %.preheader213.preheader, label %vector.body, !llvm.loop !222

.preheader213.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.hl = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.hm = shufflevector <4 x i32> %i.hl, <4 x i32> %i.ai, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hn = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213.preheader, %.preheader213
  %indvars.iv = phi i64 [ %i.ie, %.preheader213 ], [ %indvars.iv.ph, %.preheader213.preheader ] ; 3 uses
  %i.ho = icmp samesign ult i64 %indvars.iv, %i.ar
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hp
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hp
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hp
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 6
  %i.hx = add nuw nsw i64 %i.hp, 4                ; 2 uses
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hx ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !120, !noalias !214
  %i.ia = zext i16 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !120, !noalias !214
  %i.id = zext i16 %i.ic to i32
  %i.ie = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.if = mul nuw nsw i64 %i.ie, 6                ; 2 uses
  %i.ig = add nuw nsw i64 %i.if, 4                ; 2 uses
  %i.ih = icmp samesign ule i64 %i.if, %i.aj
  tail call void @llvm.assume(i1 %i.ih), !noalias !214
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ig ; 2 uses
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !120, !noalias !214
  %i.ik = zext i16 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !120, !noalias !214
  %i.in = zext i16 %i.im to i32
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.hx ; 2 uses
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !120, !noalias !214
  %i.iq = zext i16 %i.ip to i32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !120, !noalias !214
  %i.it = zext i16 %i.is to i32
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ig ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !120, !noalias !214
  %i.iw = zext i16 %i.iv to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !120, !noalias !214
  %i.iz = zext i16 %i.iy to i32
  %i.ja = add i32 %i.ae, %i.ik
  %i.jb = add i32 %i.ae, %i.in
  %i.jc = add i32 %i.ae, %i.iq                    ; 2 uses
  %i.jd = add i32 %i.ae, %i.it                    ; 2 uses
  %i.je = add i32 %i.ae, %i.iw
  %i.jf = add i32 %i.ae, %i.iz
  %i.jg = add nuw nsw i64 %i.hp, 3                ; 3 uses
  %i.jh = icmp samesign ule i64 %i.jg, %i.an
  tail call void @llvm.assume(i1 %i.jh)
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.hp
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.jg
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.hp
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.jg
  %i.jn = load i16, ptr %i.hw, align 2, !tbaa !120, !noalias !214
  %i.jo = load <2 x i16>, ptr %i.hu, align 2, !tbaa !120, !noalias !214
  %i.jp = zext i16 %i.jn to i32                   ; 2 uses
  %i.jq = shufflevector <2 x i16> %i.jo, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jr = zext <4 x i16> %i.jq to <4 x i32>
  %i.js = load i16, ptr %i.hs, align 2, !tbaa !120, !noalias !214
  %i.jt = load <2 x i16>, ptr %i.hq, align 2, !tbaa !120, !noalias !214
  %i.ju = zext i16 %i.js to i32
  %i.jv = shufflevector <2 x i16> %i.jt, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jw = zext <4 x i16> %i.jv to <4 x i32>
  %i.jx = insertelement <2 x i32> poison, i32 %i.ju, i64 0
  %i.jy = shufflevector <2 x i32> %i.jx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.ka = add i32 %i.ae, %i.ia                    ; 4 uses
  %i.kb = add i32 %i.ae, %i.id                    ; 3 uses
  %i.kc = add nsw i32 %i.ja, %i.ka                ; 2 uses
  %i.kd = add nsw i32 %i.jb, %i.kb                ; 2 uses
  %i.ke = add nsw i32 %i.jc, %i.ka
  %i.kf = add nsw i32 %i.jd, %i.kb
  %i.kg = add nsw i32 %i.jc, %i.kc
  %i.kh = add nsw i32 %i.kg, %i.je                ; 2 uses
  %i.ki = add nsw i32 %i.jd, %i.kd
  %i.kj = add nsw i32 %i.ki, %i.jf
  %i.kk = insertelement <4 x i32> poison, i32 %i.kb, i64 0 ; 2 uses
  %i.kl = insertelement <4 x i32> %i.kk, i32 %i.kd, i64 1
  %i.km = insertelement <4 x i32> %i.kl, i32 %i.kf, i64 2
  %i.kn = insertelement <4 x i32> %i.km, i32 %i.kj, i64 3
  %i.ko = ashr <4 x i32> %i.kn, <i32 0, i32 1, i32 1, i32 2> ; 3 uses
  %i.kp = shl nsw <4 x i32> %i.ko, splat (i32 11)
  %i.kq = ashr i32 %i.kh, 2
  %i.kr = insertelement <4 x i32> poison, i32 %i.ka, i64 0
  %i.ks = insertelement <4 x i32> %i.kr, i32 %i.kc, i64 1
  %i.kt = insertelement <4 x i32> %i.ks, i32 %i.ke, i64 2
  %i.ku = insertelement <4 x i32> %i.kt, i32 %i.kh, i64 3
  %i.kv = ashr <4 x i32> %i.ku, <i32 0, i32 1, i32 1, i32 2> ; 3 uses
  %i.kw = mul nsw <4 x i32> %i.kv, splat (i32 -778)
  %i.kx = sub nsw <4 x i32> %i.kw, %i.kp
  %i.ky = ashr <4 x i32> %i.kx, splat (i32 12)    ; 4 uses
  %i.kz = shufflevector <4 x i32> %i.kk, <4 x i32> %i.ky, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.la = shufflevector <4 x i32> %i.kz, <4 x i32> %i.ko, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.lb = insertelement <4 x i32> %i.la, i32 %i.ka, i64 2
  %i.lc = add nsw <4 x i32> %i.lb, %i.jw
  %i.ld = mul nsw <4 x i32> %i.lc, %i.hm
  %i.le = ashr <4 x i32> %i.ld, splat (i32 8)
  %i.lf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.le, <4 x i32> zeroinitializer)
  %i.lg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lf, <4 x i32> splat (i32 65535))
  %i.lh = trunc nuw <4 x i32> %i.lg to <4 x i16>
  store <4 x i16> %i.lh, ptr %i.ji, align 2, !tbaa !120
  %i.li = shufflevector <4 x i32> %i.ky, <4 x i32> %i.kv, <2 x i32> <i32 1, i32 5>
  %i.lj = add nsw <2 x i32> %i.li, %i.jy
  %i.lk = mul nsw <2 x i32> %i.lj, %i.hn
  %i.ll = ashr <2 x i32> %i.lk, splat (i32 8)
  %i.lm = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ll, <2 x i32> zeroinitializer)
  %i.ln = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.lm, <2 x i32> splat (i32 65535))
  %i.lo = trunc nuw <2 x i32> %i.ln to <2 x i16>
  store <2 x i16> %i.lo, ptr %i.jk, align 2, !tbaa !120
  %i.lp = shufflevector <4 x i32> %i.ky, <4 x i32> %i.kv, <4 x i32> <i32 poison, i32 2, i32 6, i32 poison>
  %i.lq = shufflevector <4 x i32> %i.lp, <4 x i32> %i.ko, <4 x i32> <i32 6, i32 1, i32 2, i32 7>
  %i.lr = add nsw <4 x i32> %i.lq, %i.jr
  %i.ls = mul nsw <4 x i32> %i.ai, %i.lr
  %i.lt = ashr <4 x i32> %i.ls, splat (i32 8)
  %i.lu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lt, <4 x i32> zeroinitializer)
  %i.lv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lu, <4 x i32> splat (i32 65535))
  %i.lw = trunc nuw <4 x i32> %i.lv to <4 x i16>
  store <4 x i16> %i.lw, ptr %i.jl, align 2, !tbaa !120
  %i.lx = add nsw i32 %i.kq, %i.jp
  %i.ly = extractelement <4 x i32> %i.ky, i64 3
  %i.lz = add nsw i32 %i.ly, %i.jp
  %i.ma = insertelement <2 x i32> poison, i32 %i.lz, i64 0
  %i.mb = insertelement <2 x i32> %i.ma, i32 %i.lx, i64 1
  %i.mc = mul nsw <2 x i32> %i.mb, %i.hn
  %i.md = ashr <2 x i32> %i.mc, splat (i32 8)
  %i.me = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.md, <2 x i32> zeroinitializer)
  %i.mf = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.me, <2 x i32> splat (i32 65535))
  %i.mg = trunc nuw <2 x i32> %i.mf to <2 x i16>
  store <2 x i16> %i.mg, ptr %i.jz, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %i.ie, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader213, !llvm.loop !223

._crit_edge:                                      ; preds = %.preheader213
  %i.mh = zext nneg i32 %i.s to i64
  %i.mi = mul nuw nsw i32 %i.ab, 6                ; 3 uses
  %i.mj = add nuw nsw i32 %i.mi, 4
  %i.mk = add nuw nsw i32 %i.mi, 6
  %i.ml = icmp samesign ule i32 %i.mk, %i.s
  tail call void @llvm.assume(i1 %i.ml), !noalias !224
  %i.mm = zext nneg i32 %i.mj to i64              ; 2 uses
  %i.mn = zext nneg i32 %i.mi to i64              ; 7 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.as ; 5 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mn
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mn
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mn
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mu = add nuw nsw i64 %i.mn, 3                ; 2 uses
  %i.mv = icmp samesign ult i64 %i.mu, %i.mh
  tail call void @llvm.assume(i1 %i.mv), !noalias !224
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mu
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mm ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !120, !noalias !224
  %i.mz = zext i16 %i.my to i32
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !120, !noalias !224
  %i.nc = zext i16 %i.nb to i32
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.aw
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nd, i64 %i.mm ; 2 uses
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !120, !noalias !224
  %i.ng = zext i16 %i.nf to i32
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !120, !noalias !224
  %i.nj = zext i16 %i.ni to i32
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !118
  %i.nm = add i32 %i.nl, -16384                   ; 4 uses
  %i.nn = add i32 %i.nm, %i.ng
  %i.no = add i32 %i.nm, %i.nj
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.nq = add nuw nsw i64 %i.mn, 3                ; 3 uses
  %i.nr = icmp samesign ule i64 %i.nq, %i.an
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az ; 2 uses
  tail call void @llvm.assume(i1 %i.nr)
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.mn
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nq
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bd ; 2 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.mn
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.nq
  %i.nz = load i16, ptr %i.mw, align 2, !tbaa !120, !noalias !224
  %i.oa = load <2 x i16>, ptr %i.mt, align 2, !tbaa !120, !noalias !224
  %i.ob = zext i16 %i.nz to i32                   ; 2 uses
  %i.oc = shufflevector <2 x i16> %i.oa, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.od = zext <4 x i16> %i.oc to <4 x i32>
  %i.oe = load <3 x i32>, ptr %i.np, align 8, !tbaa !119 ; 2 uses
  %i.of = shufflevector <3 x i32> %i.oe, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %3 = load <4 x i32>, ptr %i.np, align 8
  %i.og = load i16, ptr %i.mr, align 2, !tbaa !120, !noalias !224
  %i.oh = load <2 x i16>, ptr %i.mp, align 2, !tbaa !120, !noalias !224
  %i.oi = zext i16 %i.og to i32
  %i.oj = shufflevector <2 x i16> %i.oh, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ok = zext <4 x i16> %i.oj to <4 x i32>
  %i.ol = add i32 %i.nm, %i.nc                    ; 3 uses
  %i.om = add nsw i32 %i.no, %i.ol
  %i.on = shl nsw i32 %i.ol, 11
  %i.oo = insertelement <4 x i32> poison, i32 %i.ol, i64 0
  %i.op = ashr i32 %i.om, 1                       ; 2 uses
  %i.oq = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.or = shufflevector <4 x i32> %i.oq, <4 x i32> %i.of, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.os = add i32 %i.nm, %i.mz                    ; 4 uses
  %i.ot = add nsw i32 %i.nn, %i.os
  %i.ou = mul nsw i32 %i.os, -778
  %i.ov = sub nsw i32 %i.ou, %i.on
  %i.ow = ashr i32 %i.ov, 12                      ; 2 uses
  %i.ox = insertelement <4 x i32> %i.oo, i32 %i.ow, i64 1
  %i.oy = insertelement <4 x i32> %i.ox, i32 %i.os, i64 2
  %i.oz = shufflevector <4 x i32> %i.oy, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.pa = add nsw <4 x i32> %i.oz, %i.ok
  %i.pb = insertelement <2 x i32> poison, i32 %i.ow, i64 0
  %i.pc = insertelement <2 x i32> %i.pb, i32 %i.os, i64 1
  %i.pd = insertelement <2 x i32> poison, i32 %i.oi, i64 0
  %i.pe = shufflevector <2 x i32> %i.pd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.pf = add nsw <2 x i32> %i.pc, %i.pe
  %i.pg = mul nsw <4 x i32> %i.pa, %i.or
  %i.ph = shufflevector <3 x i32> %i.oe, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pi = mul nsw <2 x i32> %i.pf, %i.ph
  %i.pj = ashr <4 x i32> %i.pg, splat (i32 8)
  %i.pk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.pj, <4 x i32> zeroinitializer)
  %i.pl = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.pk, <4 x i32> splat (i32 65535))
  %i.pm = trunc nuw <4 x i32> %i.pl to <4 x i16>
  store <4 x i16> %i.pm, ptr %i.nt, align 2, !tbaa !120
  %i.pn = ashr <2 x i32> %i.pi, splat (i32 8)
  %i.po = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.pn, <2 x i32> zeroinitializer)
  %i.pp = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.po, <2 x i32> splat (i32 65535))
  %i.pq = trunc nuw <2 x i32> %i.pp to <2 x i16>
  store <2 x i16> %i.pq, ptr %i.nv, align 2, !tbaa !120
  %i.pr = shl nsw i32 %i.op, 11
  %i.ps = insertelement <4 x i32> poison, i32 %i.op, i64 0
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  %i.pu = ashr i32 %i.ot, 1                       ; 3 uses
  %i.pv = mul nsw i32 %i.pu, -778
  %i.pw = sub nsw i32 %i.pv, %i.pr
  %i.px = ashr i32 %i.pw, 12                      ; 2 uses
  %i.py = insertelement <4 x i32> %i.ps, i32 %i.px, i64 1
  %i.pz = insertelement <4 x i32> %i.py, i32 %i.pu, i64 2
  %i.qa = shufflevector <4 x i32> %i.pz, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.qb = add nsw <4 x i32> %i.qa, %i.od
  %i.qc = mul nsw <4 x i32> %i.of, %i.qb
  %i.qd = add nsw i32 %i.pu, %i.ob
  %i.qe = add nsw i32 %i.px, %i.ob
  %i.qf = insertelement <2 x i32> poison, i32 %i.qe, i64 0
  %i.qg = insertelement <2 x i32> %i.qf, i32 %i.qd, i64 1
  %i.qh = mul nsw <2 x i32> %i.qg, %i.ph
  %i.qi = ashr <4 x i32> %i.qc, splat (i32 8)
  %i.qj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qi, <4 x i32> zeroinitializer)
  %i.qk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qj, <4 x i32> splat (i32 65535))
  %i.ql = trunc nuw <4 x i32> %i.qk to <4 x i16>
  store <4 x i16> %i.ql, ptr %i.nx, align 2, !tbaa !120
  %i.qm = ashr <2 x i32> %i.qh, splat (i32 8)
  %i.qn = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.qm, <2 x i32> zeroinitializer)
  %i.qo = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.qn, <2 x i32> splat (i32 65535))
  %i.qp = trunc nuw <2 x i32> %i.qo to <2 x i16>
  store <2 x i16> %i.qp, ptr %i.pt, align 2, !tbaa !120
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !227
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !227
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.umin.v32i32(<32 x i32>, <32 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smax.v32i32(<32 x i32>, <32 x i32>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { cold noreturn }
attributes #11 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN8rawspeed19Cr2sRawInterpolatorE", !13, i64 0, !15, i64 8, !18, i64 40, !8, i64 52}
!13 = !{!"p1 _ZTSN8rawspeed8RawImageE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"_ZTSN8rawspeed10Array2DRefIKtEE", !16, i64 0, !8, i64 16, !8, i64 20, !8, i64 24}
!16 = !{!"_ZTSN8rawspeed10Array1DRefIKtEE", !17, i64 0, !8, i64 8}
!17 = !{!"p1 short", !14, i64 0}
!18 = !{!"_ZTSSt5arrayIiLm3EE", !9, i64 0}
!19 = !{}
!20 = !{i64 8}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0, !24, i64 8}
!23 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !14, i64 0}
!24 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!25 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!26 = !{!27, !8, i64 4}
!27 = !{!"_ZTSN8rawspeed8iPoint2DE", !8, i64 0, !8, i64 4}
!28 = !{!27, !8, i64 0}
!29 = !{!30, !8, i64 612}
!30 = !{!"_ZTSN8rawspeed12RawImageDataE", !31, i64 8, !27, i64 40, !8, i64 48, !8, i64 52, !38, i64 56, !39, i64 64, !8, i64 96, !44, i64 100, !45, i64 120, !50, i64 160, !55, i64 168, !60, i64 192, !65, i64 216, !8, i64 240, !38, i64 244, !70, i64 248, !32, i64 552, !85, i64 553, !86, i64 560, !8, i64 592, !8, i64 596, !27, i64 600, !27, i64 608, !92, i64 616}
!31 = !{!"_ZTSN8rawspeed8ErrorLogE", !32, i64 0, !33, i64 8}
end_hunk_5
