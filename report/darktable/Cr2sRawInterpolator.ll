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
  %1 = zext nneg i32 %i.s to i64                  ; 3 uses
  %i.av = zext nneg i32 %invariant.op to i64
  %i.aw = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ax = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.ay = zext i32 %i.n to i64                    ; 4 uses
  %i.az = zext nneg i32 %i.k to i64
  %i.ba = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 4 uses
  %invariant.op398 = add nsw i64 %1, -1
  %invariant.op399 = add nsw i64 %1, -3
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
  %i.bk = shl i64 %i.bj, 2                        ; 6 uses
  %i.bl = mul nuw nsw i64 %wide.trip.count, 12    ; 3 uses
  %i.bm = add i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -10    ; 12 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.bq = getelementptr i8, ptr %i.bp, i64 2      ; 12 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.bs = getelementptr i8, ptr %i.br, i64 -8     ; 12 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.bu = getelementptr i8, ptr %i.bt, i64 4      ; 12 uses
  %i.bv = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 -6     ; 12 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.by = getelementptr i8, ptr %i.bx, i64 6      ; 12 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.ca = getelementptr i8, ptr %i.bz, i64 -4     ; 12 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.cc = getelementptr i8, ptr %i.cb, i64 8      ; 12 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.ce = getelementptr i8, ptr %i.cd, i64 -2     ; 12 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.cg = getelementptr i8, ptr %i.cf, i64 10     ; 12 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bm   ; 12 uses
  %i.ci = mul nuw nsw i64 %i.be, %i.ay
  %i.cj = shl nuw i64 %i.ci, 1                    ; 6 uses
  %i.ck = add i64 %i.cj, %i.bl                    ; 6 uses
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -10    ; 12 uses
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.co = getelementptr i8, ptr %i.cn, i64 2      ; 12 uses
  %i.cp = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8     ; 12 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.cs = getelementptr i8, ptr %i.cr, i64 4      ; 12 uses
  %i.ct = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.cu = getelementptr i8, ptr %i.ct, i64 -6     ; 12 uses
  %i.cv = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.cw = getelementptr i8, ptr %i.cv, i64 6      ; 12 uses
  %i.cx = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.cy = getelementptr i8, ptr %i.cx, i64 -4     ; 12 uses
  %i.cz = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.da = getelementptr i8, ptr %i.cz, i64 8      ; 12 uses
  %i.db = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.dc = getelementptr i8, ptr %i.db, i64 -2     ; 12 uses
  %i.dd = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.de = getelementptr i8, ptr %i.dd, i64 10     ; 12 uses
  %i.df = getelementptr i8, ptr %i.d, i64 %i.ck   ; 12 uses
  %i.dg = shl nuw nsw i64 %i.al, 1
  %i.dh = getelementptr i8, ptr %.sroa.0116.0.copyload, i64 %i.bl
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 12     ; 12 uses
  %bound0 = icmp ult ptr %i.bd, %i.bs
  %bound1 = icmp ult ptr %i.bq, %i.bo
  %found.conflict = and i1 %bound0, %bound1
  %bound0727 = icmp ult ptr %i.bd, %i.bw
  %bound1728 = icmp ult ptr %i.bu, %i.bo
  %found.conflict729 = and i1 %bound0727, %bound1728
  %conflict.rdx = or i1 %found.conflict, %found.conflict729
  %bound0730 = icmp ult ptr %i.bd, %i.ca
  %bound1731 = icmp ult ptr %i.by, %i.bo
  %found.conflict732 = and i1 %bound0730, %bound1731
  %conflict.rdx733 = or i1 %conflict.rdx, %found.conflict732
  %bound0734 = icmp ult ptr %i.bd, %i.ce
  %bound1735 = icmp ult ptr %i.cc, %i.bo
  %found.conflict736 = and i1 %bound0734, %bound1735
  %conflict.rdx737 = or i1 %conflict.rdx733, %found.conflict736
  %bound0738 = icmp ult ptr %i.bd, %i.ch
  %bound1739 = icmp ult ptr %i.cg, %i.bo
  %found.conflict740 = and i1 %bound0738, %bound1739
  %conflict.rdx741 = or i1 %conflict.rdx737, %found.conflict740
  %bound0742 = icmp ult ptr %i.bd, %i.cm
  %bound1743 = icmp ult ptr %i.bh, %i.bo
  %found.conflict744 = and i1 %bound0742, %bound1743
  %conflict.rdx745 = or i1 %conflict.rdx741, %found.conflict744
  %bound0746 = icmp ult ptr %i.bd, %i.cq
  %bound1747 = icmp ult ptr %i.co, %i.bo
  %found.conflict748 = and i1 %bound0746, %bound1747
  %conflict.rdx749 = or i1 %conflict.rdx745, %found.conflict748
  %bound0750 = icmp ult ptr %i.bd, %i.cu
  %bound1751 = icmp ult ptr %i.cs, %i.bo
  %found.conflict752 = and i1 %bound0750, %bound1751
  %conflict.rdx753 = or i1 %conflict.rdx749, %found.conflict752
  %bound0754 = icmp ult ptr %i.bd, %i.cy
  %bound1755 = icmp ult ptr %i.cw, %i.bo
  %found.conflict756 = and i1 %bound0754, %bound1755
  %conflict.rdx757 = or i1 %conflict.rdx753, %found.conflict756
  %bound0758 = icmp ult ptr %i.bd, %i.dc
  %bound1759 = icmp ult ptr %i.da, %i.bo
  %found.conflict760 = and i1 %bound0758, %bound1759
  %conflict.rdx761 = or i1 %conflict.rdx757, %found.conflict760
  %bound0762 = icmp ult ptr %i.bd, %i.df
  %bound1763 = icmp ult ptr %i.de, %i.bo
  %found.conflict764 = and i1 %bound0762, %bound1763
  %conflict.rdx765 = or i1 %conflict.rdx761, %found.conflict764
  %bound0766 = icmp ult ptr %i.bd, %i.dj
  %bound1767 = icmp ult ptr %i.am, %i.bo
  %found.conflict768 = and i1 %bound0766, %bound1767
  %conflict.rdx769 = or i1 %conflict.rdx765, %found.conflict768
  %bound0770 = icmp ult ptr %i.bq, %i.bw
  %bound1771 = icmp ult ptr %i.bu, %i.bs
  %found.conflict772 = and i1 %bound0770, %bound1771
  %conflict.rdx773 = or i1 %conflict.rdx769, %found.conflict772
  %bound0774 = icmp ult ptr %i.bq, %i.ca
  %bound1775 = icmp ult ptr %i.by, %i.bs
  %found.conflict776 = and i1 %bound0774, %bound1775
  %conflict.rdx777 = or i1 %conflict.rdx773, %found.conflict776
  %bound0778 = icmp ult ptr %i.bq, %i.ce
  %bound1779 = icmp ult ptr %i.cc, %i.bs
  %found.conflict780 = and i1 %bound0778, %bound1779
  %conflict.rdx781 = or i1 %conflict.rdx777, %found.conflict780
  %bound0782 = icmp ult ptr %i.bq, %i.ch
  %bound1783 = icmp ult ptr %i.cg, %i.bs
  %found.conflict784 = and i1 %bound0782, %bound1783
  %conflict.rdx785 = or i1 %conflict.rdx781, %found.conflict784
  %bound0786 = icmp ult ptr %i.bq, %i.cm
  %bound1787 = icmp ult ptr %i.bh, %i.bs
  %found.conflict788 = and i1 %bound0786, %bound1787
  %conflict.rdx789 = or i1 %conflict.rdx785, %found.conflict788
  %bound0790 = icmp ult ptr %i.bq, %i.cq
  %bound1791 = icmp ult ptr %i.co, %i.bs
  %found.conflict792 = and i1 %bound0790, %bound1791
  %conflict.rdx793 = or i1 %conflict.rdx789, %found.conflict792
  %bound0794 = icmp ult ptr %i.bq, %i.cu
  %bound1795 = icmp ult ptr %i.cs, %i.bs
  %found.conflict796 = and i1 %bound0794, %bound1795
  %conflict.rdx797 = or i1 %conflict.rdx793, %found.conflict796
  %bound0798 = icmp ult ptr %i.bq, %i.cy
  %bound1799 = icmp ult ptr %i.cw, %i.bs
  %found.conflict800 = and i1 %bound0798, %bound1799
  %conflict.rdx801 = or i1 %conflict.rdx797, %found.conflict800
  %bound0802 = icmp ult ptr %i.bq, %i.dc
  %bound1803 = icmp ult ptr %i.da, %i.bs
  %found.conflict804 = and i1 %bound0802, %bound1803
  %conflict.rdx805 = or i1 %conflict.rdx801, %found.conflict804
  %bound0806 = icmp ult ptr %i.bq, %i.df
  %bound1807 = icmp ult ptr %i.de, %i.bs
  %found.conflict808 = and i1 %bound0806, %bound1807
  %conflict.rdx809 = or i1 %conflict.rdx805, %found.conflict808
  %bound0810 = icmp ult ptr %i.bq, %i.dj
  %bound1811 = icmp ult ptr %i.am, %i.bs
  %found.conflict812 = and i1 %bound0810, %bound1811
  %conflict.rdx813 = or i1 %conflict.rdx809, %found.conflict812
  %bound0814 = icmp ult ptr %i.bu, %i.ca
  %bound1815 = icmp ult ptr %i.by, %i.bw
  %found.conflict816 = and i1 %bound0814, %bound1815
  %conflict.rdx817 = or i1 %conflict.rdx813, %found.conflict816
  %bound0818 = icmp ult ptr %i.bu, %i.ce
  %bound1819 = icmp ult ptr %i.cc, %i.bw
  %found.conflict820 = and i1 %bound0818, %bound1819
  %conflict.rdx821 = or i1 %conflict.rdx817, %found.conflict820
  %bound0822 = icmp ult ptr %i.bu, %i.ch
  %bound1823 = icmp ult ptr %i.cg, %i.bw
  %found.conflict824 = and i1 %bound0822, %bound1823
  %conflict.rdx825 = or i1 %conflict.rdx821, %found.conflict824
  %bound0826 = icmp ult ptr %i.bu, %i.cm
  %bound1827 = icmp ult ptr %i.bh, %i.bw
  %found.conflict828 = and i1 %bound0826, %bound1827
  %conflict.rdx829 = or i1 %conflict.rdx825, %found.conflict828
  %bound0830 = icmp ult ptr %i.bu, %i.cq
  %bound1831 = icmp ult ptr %i.co, %i.bw
  %found.conflict832 = and i1 %bound0830, %bound1831
  %conflict.rdx833 = or i1 %conflict.rdx829, %found.conflict832
  %bound0834 = icmp ult ptr %i.bu, %i.cu
  %bound1835 = icmp ult ptr %i.cs, %i.bw
  %found.conflict836 = and i1 %bound0834, %bound1835
  %conflict.rdx837 = or i1 %conflict.rdx833, %found.conflict836
  %bound0838 = icmp ult ptr %i.bu, %i.cy
  %bound1839 = icmp ult ptr %i.cw, %i.bw
  %found.conflict840 = and i1 %bound0838, %bound1839
  %conflict.rdx841 = or i1 %conflict.rdx837, %found.conflict840
  %bound0842 = icmp ult ptr %i.bu, %i.dc
  %bound1843 = icmp ult ptr %i.da, %i.bw
  %found.conflict844 = and i1 %bound0842, %bound1843
  %conflict.rdx845 = or i1 %conflict.rdx841, %found.conflict844
  %bound0846 = icmp ult ptr %i.bu, %i.df
  %bound1847 = icmp ult ptr %i.de, %i.bw
  %found.conflict848 = and i1 %bound0846, %bound1847
  %conflict.rdx849 = or i1 %conflict.rdx845, %found.conflict848
  %bound0850 = icmp ult ptr %i.bu, %i.dj
  %bound1851 = icmp ult ptr %i.am, %i.bw
  %found.conflict852 = and i1 %bound0850, %bound1851
  %conflict.rdx853 = or i1 %conflict.rdx849, %found.conflict852
  %bound0854 = icmp ult ptr %i.by, %i.ce
  %bound1855 = icmp ult ptr %i.cc, %i.ca
end_hunk_0
begin_hunk_1_@_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi1EEEvv:bb.a
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %conflict.rdx1001 = or i1 %conflict.rdx997, %found.conflict1000
  %bound01002 = icmp ult ptr %i.cs, %i.df
  %bound11003 = icmp ult ptr %i.de, %i.cu
  %found.conflict1004 = and i1 %bound01002, %bound11003
  %conflict.rdx1005 = or i1 %conflict.rdx1001, %found.conflict1004
  %bound01006 = icmp ult ptr %i.cs, %i.dj
  %bound11007 = icmp ult ptr %i.am, %i.cu
  %found.conflict1008 = and i1 %bound01006, %bound11007
  %conflict.rdx1009 = or i1 %conflict.rdx1005, %found.conflict1008
  %bound01010 = icmp ult ptr %i.cw, %i.dc
  %bound11011 = icmp ult ptr %i.da, %i.cy
  %found.conflict1012 = and i1 %bound01010, %bound11011
  %conflict.rdx1013 = or i1 %conflict.rdx1009, %found.conflict1012
  %bound01014 = icmp ult ptr %i.cw, %i.df
  %bound11015 = icmp ult ptr %i.de, %i.cy
  %found.conflict1016 = and i1 %bound01014, %bound11015
  %conflict.rdx1017 = or i1 %conflict.rdx1013, %found.conflict1016
  %bound01018 = icmp ult ptr %i.cw, %i.dj
  %bound11019 = icmp ult ptr %i.am, %i.cy
  %found.conflict1020 = and i1 %bound01018, %bound11019
  %conflict.rdx1021 = or i1 %conflict.rdx1017, %found.conflict1020
  %bound01022 = icmp ult ptr %i.da, %i.df
  %bound11023 = icmp ult ptr %i.de, %i.dc
  %found.conflict1024 = and i1 %bound01022, %bound11023
  %conflict.rdx1025 = or i1 %conflict.rdx1021, %found.conflict1024
  %bound01026 = icmp ult ptr %i.da, %i.dj
  %bound11027 = icmp ult ptr %i.am, %i.dc
  %found.conflict1028 = and i1 %bound01026, %bound11027
  %conflict.rdx1029 = or i1 %conflict.rdx1025, %found.conflict1028
  %bound01030 = icmp ult ptr %i.de, %i.dj
  %bound11031 = icmp ult ptr %i.am, %i.df
  %found.conflict1032 = and i1 %bound01030, %bound11031
  %conflict.rdx1033 = or i1 %conflict.rdx1029, %found.conflict1032
  br i1 %conflict.rdx1033, label %.preheader217.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dk = and i64 %wide.trip.count, 7             ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = select i1 %i.dl, i64 8, i64 %i.dk
  %n.vec = sub nsw i64 %wide.trip.count, %i.dm    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat1035 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat1037 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat1039 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.dn = phi i64 [ 0, %vector.ph ], [ %i.hm, %vector.body ] ; 3 uses
  %i.do = mul nuw nsw i64 %i.dn, 6                ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.do
  %wide.vec = load <48 x i16>, ptr %i.dp, align 2, !tbaa !109, !alias.scope !132, !noalias !131 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1046 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec1047 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec1048 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec1049 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec1050 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.dq = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.dr = zext <8 x i16> %strided.vec1046 to <8 x i32> ; 3 uses
  %i.ds = zext <8 x i16> %strided.vec1047 to <8 x i32> ; 3 uses
  %i.dt = zext <8 x i16> %strided.vec1048 to <8 x i32> ; 3 uses
  %i.du = zext <8 x i16> %strided.vec1049 to <8 x i32>
  %i.dv = zext <8 x i16> %strided.vec1050 to <8 x i32>
  %.idx = mul nuw i64 %i.dn, 12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %wide.vec1051 = load <48 x i16>, ptr %i.dx, align 2, !tbaa !109, !alias.scope !132, !noalias !131 ; 2 uses
  %strided.vec1052 = shufflevector <48 x i16> %wide.vec1051, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1053 = shufflevector <48 x i16> %wide.vec1051, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dy = zext <8 x i16> %strided.vec1052 to <8 x i32>
  %i.dz = zext <8 x i16> %strided.vec1053 to <8 x i32>
  %i.ea = add <8 x i32> %broadcast.splat, %i.du   ; 4 uses
  %i.eb = add <8 x i32> %broadcast.splat, %i.dv   ; 4 uses
  %i.ec = add <8 x i32> %broadcast.splat, %i.dy
  %i.ed = add <8 x i32> %broadcast.splat, %i.dz
  %i.ee = add nsw <8 x i32> %i.ec, %i.ea
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 1)     ; 3 uses
  %i.eg = add nsw <8 x i32> %i.ed, %i.eb
  %i.eh = ashr <8 x i32> %i.eg, splat (i32 1)     ; 3 uses
  %i.ei = mul nsw <8 x i32> %i.ea, splat (i32 50)
  %i.ej = mul nsw <8 x i32> %i.eb, splat (i32 22929)
  %i.ek = add nsw <8 x i32> %i.ej, %i.ei
  %i.el = ashr <8 x i32> %i.ek, splat (i32 12)    ; 2 uses
  %i.em = add nsw <8 x i32> %i.el, %i.dq
  %i.en = mul nsw <8 x i32> %i.em, %broadcast.splat1035
  %i.eo = mul nsw <8 x i32> %i.ea, splat (i32 -5640)
  %i.ep = mul <8 x i32> %i.eb, splat (i32 -11751)
  %i.eq = add <8 x i32> %i.ep, %i.eo
  %i.er = ashr <8 x i32> %i.eq, splat (i32 12)    ; 2 uses
  %i.es = add nsw <8 x i32> %i.er, %i.dq
  %i.et = mul nsw <8 x i32> %i.es, %broadcast.splat1037
  %i.eu = mul nsw <8 x i32> %i.ea, splat (i32 29040)
  %i.ev = mul <8 x i32> %i.eb, splat (i32 -101)
  %i.ew = add <8 x i32> %i.ev, %i.eu
  %i.ex = ashr <8 x i32> %i.ew, splat (i32 12)    ; 2 uses
  %i.ey = add nsw <8 x i32> %i.ex, %i.dq
  %i.ez = mul nsw <8 x i32> %i.ey, %broadcast.splat1039
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.do
  %i.fb = mul nsw <8 x i32> %i.ef, splat (i32 50)
  %i.fc = mul nsw <8 x i32> %i.eh, splat (i32 22929)
  %i.fd = add nsw <8 x i32> %i.fc, %i.fb
  %i.fe = ashr <8 x i32> %i.fd, splat (i32 12)    ; 2 uses
  %i.ff = add nsw <8 x i32> %i.fe, %i.dr
  %i.fg = mul nsw <8 x i32> %i.ff, %broadcast.splat1035
  %i.fh = mul nsw <8 x i32> %i.ef, splat (i32 -5640)
  %i.fi = mul <8 x i32> %i.eh, splat (i32 -11751)
  %i.fj = add <8 x i32> %i.fi, %i.fh
  %i.fk = ashr <8 x i32> %i.fj, splat (i32 12)    ; 2 uses
  %i.fl = add nsw <8 x i32> %i.fk, %i.dr
  %i.fm = mul nsw <8 x i32> %i.fl, %broadcast.splat1037
  %i.fn = mul nsw <8 x i32> %i.ef, splat (i32 29040)
  %i.fo = mul <8 x i32> %i.eh, splat (i32 -101)
  %i.fp = add <8 x i32> %i.fo, %i.fn
  %i.fq = ashr <8 x i32> %i.fp, splat (i32 12)    ; 2 uses
  %i.fr = add nsw <8 x i32> %i.fq, %i.dr
  %i.fs = mul nsw <8 x i32> %i.fr, %broadcast.splat1039
  %i.ft = ashr <8 x i32> %i.fm, splat (i32 8)
  %i.fu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ft, <8 x i32> zeroinitializer)
  %i.fv = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fu, <8 x i32> splat (i32 65535))
  %i.fw = trunc nuw <8 x i32> %i.fv to <8 x i16>
  %i.fx = ashr <8 x i32> %i.fs, splat (i32 8)
  %i.fy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fx, <8 x i32> zeroinitializer)
  %i.fz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fy, <8 x i32> splat (i32 65535))
  %i.ga = trunc nuw <8 x i32> %i.fz to <8 x i16>
  %i.gb = shufflevector <8 x i32> %i.en, <8 x i32> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gc = shufflevector <8 x i32> %i.ez, <8 x i32> %i.fg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gd = shufflevector <16 x i32> %i.gb, <16 x i32> %i.gc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ge = ashr <32 x i32> %i.gd, splat (i32 8)
  %i.gf = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.ge, <32 x i32> zeroinitializer)
  %i.gg = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.gf, <32 x i32> splat (i32 65535))
  %i.gh = trunc nuw <32 x i32> %i.gg to <32 x i16>
  %i.gi = shufflevector <8 x i16> %i.fw, <8 x i16> %i.ga, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.gh, <32 x i16> %i.gi, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.fa, align 2, !tbaa !109
  %i.gj = add nsw <8 x i32> %i.el, %i.ds
  %i.gk = mul nsw <8 x i32> %i.gj, %broadcast.splat1035
  %i.gl = add nsw <8 x i32> %i.er, %i.ds
  %i.gm = mul nsw <8 x i32> %i.gl, %broadcast.splat1037
  %i.gn = add nsw <8 x i32> %i.ex, %i.ds
  %i.go = mul nsw <8 x i32> %i.gn, %broadcast.splat1039
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.do
  %i.gq = add nsw <8 x i32> %i.fe, %i.dt
  %i.gr = mul nsw <8 x i32> %i.gq, %broadcast.splat1035
  %i.gs = add nsw <8 x i32> %i.fk, %i.dt
  %i.gt = mul nsw <8 x i32> %i.gs, %broadcast.splat1037
  %i.gu = add nsw <8 x i32> %i.fq, %i.dt
  %i.gv = mul nsw <8 x i32> %i.gu, %broadcast.splat1039
  %i.gw = ashr <8 x i32> %i.gt, splat (i32 8)
  %i.gx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gw, <8 x i32> zeroinitializer)
  %i.gy = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gx, <8 x i32> splat (i32 65535))
  %i.gz = trunc nuw <8 x i32> %i.gy to <8 x i16>
  %i.ha = ashr <8 x i32> %i.gv, splat (i32 8)
  %i.hb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ha, <8 x i32> zeroinitializer)
  %i.hc = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hb, <8 x i32> splat (i32 65535))
  %i.hd = trunc nuw <8 x i32> %i.hc to <8 x i16>
  %i.he = shufflevector <8 x i32> %i.gk, <8 x i32> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hf = shufflevector <8 x i32> %i.go, <8 x i32> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hg = shufflevector <16 x i32> %i.he, <16 x i32> %i.hf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hh = ashr <32 x i32> %i.hg, splat (i32 8)
  %i.hi = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.hh, <32 x i32> zeroinitializer)
  %i.hj = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.hi, <32 x i32> splat (i32 65535))
  %i.hk = trunc nuw <32 x i32> %i.hj to <32 x i16>
  %i.hl = shufflevector <8 x i16> %i.gz, <8 x i16> %i.hd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1054 = shufflevector <32 x i16> %i.hk, <32 x i16> %i.hl, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec1054, ptr %i.gp, align 2, !tbaa !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hm = add nuw nsw i64 %i.dn, 8
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %.preheader217.preheader, label %vector.body, !llvm.loop !126

.preheader217.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph232
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph232 ], [ %n.vec, %vector.body ]
  %i.ho = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.hp = shufflevector <4 x i32> %i.ho, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.hq = shufflevector <4 x i32> %i.hp, <4 x i32> %i.at, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hr = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.hs = shufflevector <2 x i32> %i.hr, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = shufflevector <3 x i32> %i.as, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.preheader, %.preheader217
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader217 ], [ %indvars.iv.ph, %.preheader217.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.hu = icmp samesign ult i64 %indvars.iv.next, %i.ba
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hv
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hv
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hv
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hv
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 6
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hv
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load <2 x i16>, ptr %i.ie, align 2, !tbaa !109, !noalias !131
  %i.ig = zext <2 x i16> %i.if to <2 x i32>
  %i.ih = mul nuw nsw i64 %indvars.iv.next, 6     ; 4 uses
  %2 = icmp ult i64 %i.ih, %invariant.op398
  tail call void @llvm.assume(i1 %2), !noalias !131
  %3 = icmp ult i64 %i.ih, %invariant.op399
  tail call void @llvm.assume(i1 %3), !noalias !131
  %i.ii = icmp samesign ule i64 %i.ih, %i.av
  tail call void @llvm.assume(i1 %i.ii), !noalias !131
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load <2 x i16>, ptr %i.ik, align 2, !tbaa !109, !noalias !131
  %i.im = zext <2 x i16> %i.il to <2 x i32>
  %i.in = add nuw nsw i64 %i.hv, 3                ; 3 uses
  %i.io = icmp samesign ule i64 %i.in, %i.aw
  tail call void @llvm.assume(i1 %i.io)
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.hv
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.in
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.hv
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.in
  %i.iu = load i16, ptr %i.ic, align 2, !tbaa !109, !noalias !131
  %i.iv = load <2 x i16>, ptr %i.ia, align 2, !tbaa !109, !noalias !131
  %i.iw = shufflevector <2 x i16> %i.iv, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ix = zext i16 %i.iu to i32
  %i.iy = zext <4 x i16> %i.iw to <4 x i32>
  %i.iz = load i16, ptr %i.hy, align 2, !tbaa !109, !noalias !131
  %i.ja = load <2 x i16>, ptr %i.hw, align 2, !tbaa !109, !noalias !131
  %i.jb = shufflevector <2 x i16> %i.ja, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jc = zext i16 %i.iz to i32
  %i.jd = zext <4 x i16> %i.jb to <4 x i32>
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.jf = add <2 x i32> %i.hs, %i.im
  %i.jg = add <2 x i32> %i.hs, %i.ig              ; 3 uses
  %i.jh = add nsw <2 x i32> %i.jf, %i.jg
  %i.ji = ashr <2 x i32> %i.jh, splat (i32 1)     ; 4 uses
  %i.jj = shufflevector <2 x i32> %i.jg, <2 x i32> %i.ji, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.jk = mul <4 x i32> %i.jj, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.jl = shufflevector <2 x i32> %i.jg, <2 x i32> %i.ji, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.jm = mul <4 x i32> %i.jl, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.jn = add <4 x i32> %i.jm, %i.jk
  %i.jo = ashr <4 x i32> %i.jn, splat (i32 12)    ; 2 uses
  %i.jp = mul <2 x i32> %i.ji, <i32 29040, i32 -11751>
  %i.jq = shufflevector <2 x i32> %i.jp, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.jr = mul <2 x i32> %i.ji, <i32 -5640, i32 -101>
  %i.js = add <2 x i32> %i.jr, %i.jq
  %i.jt = ashr <2 x i32> %i.js, splat (i32 12)    ; 2 uses
  %i.ju = add nsw <4 x i32> %i.jo, %i.jd
  %i.jv = mul nsw <4 x i32> %i.ju, %i.hq
  %i.jw = ashr <4 x i32> %i.jv, splat (i32 8)
  %i.jx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jw, <4 x i32> zeroinitializer)
  %i.jy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.jx, <4 x i32> splat (i32 65535))
  %i.jz = trunc nuw <4 x i32> %i.jy to <4 x i16>
  store <4 x i16> %i.jz, ptr %i.ip, align 2, !tbaa !109
  %i.ka = insertelement <2 x i32> poison, i32 %i.jc, i64 0
  %i.kb = shufflevector <2 x i32> %i.ka, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kc = add nsw <2 x i32> %i.jt, %i.kb
  %i.kd = mul nsw <2 x i32> %i.kc, %i.ht
  %i.ke = ashr <2 x i32> %i.kd, splat (i32 8)
  %i.kf = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ke, <2 x i32> zeroinitializer)
  %i.kg = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.kf, <2 x i32> splat (i32 65535))
  %i.kh = trunc nuw <2 x i32> %i.kg to <2 x i16>
  store <2 x i16> %i.kh, ptr %i.ir, align 2, !tbaa !109
  %i.ki = add nsw <4 x i32> %i.jo, %i.iy
  %i.kj = mul nsw <4 x i32> %i.ki, %i.at
  %i.kk = insertelement <2 x i32> poison, i32 %i.ix, i64 0
  %i.kl = shufflevector <2 x i32> %i.kk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.km = add nsw <2 x i32> %i.jt, %i.kl
  %i.kn = mul nsw <2 x i32> %i.km, %i.ht
  %i.ko = ashr <4 x i32> %i.kj, splat (i32 8)
  %i.kp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ko, <4 x i32> zeroinitializer)
  %i.kq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.kp, <4 x i32> splat (i32 65535))
  %i.kr = trunc nuw <4 x i32> %i.kq to <4 x i16>
  store <4 x i16> %i.kr, ptr %i.is, align 2, !tbaa !109
  %i.ks = ashr <2 x i32> %i.kn, splat (i32 8)
  %i.kt = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ks, <2 x i32> zeroinitializer)
  %i.ku = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.kt, <2 x i32> splat (i32 65535))
  %i.kv = trunc nuw <2 x i32> %i.ku to <2 x i16>
  store <2 x i16> %i.kv, ptr %i.je, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge233, label %.preheader217, !llvm.loop !127

._crit_edge233:                                   ; preds = %.preheader217
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0116.0.copyload, i64 %i.al ; 5 uses
  %i.kx = mul nuw nsw i32 %i.ai, 6                ; 3 uses
  %i.ky = zext nneg i32 %i.kx to i64              ; 7 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.ky
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.ky
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.ky
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.le = add nuw nsw i64 %i.ky, 3                ; 2 uses
  %i.lf = icmp samesign ult i64 %i.le, %1
  tail call void @llvm.assume(i1 %i.lf), !noalias !133
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.le
  %i.lh = add nuw nsw i32 %i.kx, 6
  %i.li = icmp samesign ule i32 %i.lh, %i.s
  tail call void @llvm.assume(i1 %i.li), !noalias !133
  %i.lj = zext nneg i32 %i.kx to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !106
  %i.lo = add i32 %i.ln, -16384
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.lq = add nuw nsw i64 %i.ky, 3                ; 3 uses
  %i.lr = icmp samesign ule i64 %i.lq, %i.aw
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  tail call void @llvm.assume(i1 %i.lr)
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %i.ky
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %i.lq
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bg ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %i.ky
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %i.lq
  %i.lz = load i16, ptr %i.lg, align 2, !tbaa !109, !noalias !133
  %i.ma = load <2 x i16>, ptr %i.ld, align 2, !tbaa !109, !noalias !133
  %i.mb = shufflevector <2 x i16> %i.ma, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mc = zext i16 %i.lz to i32
  %i.md = zext <4 x i16> %i.mb to <4 x i32>
  %i.me = load <2 x i16>, ptr %i.ll, align 2, !tbaa !109, !noalias !133
  %i.mf = zext <2 x i16> %i.me to <2 x i32>
  %i.mg = insertelement <2 x i32> poison, i32 %i.lo, i64 0
  %i.mh = shufflevector <2 x i32> %i.mg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mi = add <2 x i32> %i.mh, %i.mf              ; 2 uses
  %i.mj = shufflevector <2 x i32> %i.mi, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mk = load <3 x i32>, ptr %i.lp, align 8, !tbaa !107 ; 2 uses
  %i.ml = shufflevector <3 x i32> %i.mk, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.mm = load i32, ptr %i.lp, align 8, !tbaa !107
  %i.mn = mul <4 x i32> %i.mj, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.mo = shufflevector <2 x i32> %i.mi, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.mp = mul <4 x i32> %i.mo, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.mq = add <4 x i32> %i.mn, %i.mp
  %i.mr = ashr <4 x i32> %i.mq, splat (i32 12)    ; 3 uses
  %i.ms = load i16, ptr %i.lb, align 2, !tbaa !109, !noalias !133
  %i.mt = load <2 x i16>, ptr %i.kz, align 2, !tbaa !109, !noalias !133
  %i.mu = shufflevector <2 x i16> %i.mt, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mv = zext i16 %i.ms to i32
  %i.mw = zext <4 x i16> %i.mu to <4 x i32>
  %i.mx = shufflevector <4 x i32> %i.mr, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.my = add nsw <4 x i32> %i.mx, %i.mw
  %i.mz = insertelement <4 x i32> poison, i32 %i.mm, i64 0
  %i.na = shufflevector <4 x i32> %i.mz, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.nb = shufflevector <4 x i32> %i.na, <4 x i32> %i.ml, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.nc = mul nsw <4 x i32> %i.my, %i.nb
  %i.nd = ashr <4 x i32> %i.nc, splat (i32 8)
  %i.ne = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nd, <4 x i32> zeroinitializer)
  %i.nf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ne, <4 x i32> splat (i32 65535))
  %i.ng = trunc nuw <4 x i32> %i.nf to <4 x i16>
  store <4 x i16> %i.ng, ptr %i.lt, align 2, !tbaa !109
  %i.nh = shufflevector <4 x i32> %i.mr, <4 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ni = insertelement <2 x i32> poison, i32 %i.mv, i64 0
  %i.nj = shufflevector <2 x i32> %i.ni, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.nk = add nsw <2 x i32> %i.nh, %i.nj
  %i.nl = shufflevector <3 x i32> %i.mk, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.nm = mul nsw <2 x i32> %i.nk, %i.nl
  %i.nn = ashr <2 x i32> %i.nm, splat (i32 8)
  %i.no = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nn, <2 x i32> zeroinitializer)
  %i.np = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.no, <2 x i32> splat (i32 65535))
  %i.nq = trunc nuw <2 x i32> %i.np to <2 x i16>
  store <2 x i16> %i.nq, ptr %i.lv, align 2, !tbaa !109
  %i.nr = add nsw <4 x i32> %i.mr, %i.md
  %i.ns = mul nsw <4 x i32> %i.nr, %i.ml
  %i.nt = ashr <4 x i32> %i.ns, splat (i32 8)
  %i.nu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nt, <4 x i32> zeroinitializer)
  %i.nv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nu, <4 x i32> splat (i32 65535))
  %i.nw = trunc nuw <4 x i32> %i.nv to <4 x i16>
  store <4 x i16> %i.nw, ptr %i.lx, align 2, !tbaa !109
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %i.ny = insertelement <2 x i32> poison, i32 %i.mc, i64 0
  %i.nz = shufflevector <2 x i32> %i.ny, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.oa = add nsw <2 x i32> %i.nh, %i.nz
  %i.ob = mul nsw <2 x i32> %i.oa, %i.nl
  %i.oc = ashr <2 x i32> %i.ob, splat (i32 8)
  %i.od = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.oc, <2 x i32> zeroinitializer)
  %i.oe = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.od, <2 x i32> splat (i32 65535))
  %i.of = trunc nuw <2 x i32> %i.oe to <2 x i16>
  store <2 x i16> %i.of, ptr %i.nx, align 2, !tbaa !109
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
  %1 = zext nneg i32 %i.s to i64                  ; 3 uses
  %i.av = zext nneg i32 %invariant.op to i64
  %i.aw = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ax = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.ay = zext i32 %i.n to i64                    ; 4 uses
  %i.az = zext nneg i32 %i.k to i64
  %i.ba = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 4 uses
  %invariant.op392 = add nsw i64 %1, -1
  %invariant.op393 = add nsw i64 %1, -3
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
  %i.bk = shl i64 %i.bj, 2                        ; 6 uses
  %i.bl = mul nuw nsw i64 %wide.trip.count, 12    ; 3 uses
  %i.bm = add i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -10    ; 12 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.bq = getelementptr i8, ptr %i.bp, i64 2      ; 12 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.bs = getelementptr i8, ptr %i.br, i64 -8     ; 12 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.bu = getelementptr i8, ptr %i.bt, i64 4      ; 12 uses
  %i.bv = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 -6     ; 12 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.by = getelementptr i8, ptr %i.bx, i64 6      ; 12 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.ca = getelementptr i8, ptr %i.bz, i64 -4     ; 12 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.cc = getelementptr i8, ptr %i.cb, i64 8      ; 12 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bm
  %i.ce = getelementptr i8, ptr %i.cd, i64 -2     ; 12 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.cg = getelementptr i8, ptr %i.cf, i64 10     ; 12 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bm   ; 12 uses
  %i.ci = mul nuw nsw i64 %i.be, %i.ay
  %i.cj = shl nuw i64 %i.ci, 1                    ; 6 uses
  %i.ck = add i64 %i.cj, %i.bl                    ; 6 uses
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -10    ; 12 uses
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.co = getelementptr i8, ptr %i.cn, i64 2      ; 12 uses
  %i.cp = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8     ; 12 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.cs = getelementptr i8, ptr %i.cr, i64 4      ; 12 uses
  %i.ct = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.cu = getelementptr i8, ptr %i.ct, i64 -6     ; 12 uses
  %i.cv = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.cw = getelementptr i8, ptr %i.cv, i64 6      ; 12 uses
  %i.cx = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.cy = getelementptr i8, ptr %i.cx, i64 -4     ; 12 uses
  %i.cz = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.da = getelementptr i8, ptr %i.cz, i64 8      ; 12 uses
  %i.db = getelementptr i8, ptr %i.d, i64 %i.ck
  %i.dc = getelementptr i8, ptr %i.db, i64 -2     ; 12 uses
  %i.dd = getelementptr i8, ptr %i.d, i64 %i.cj
  %i.de = getelementptr i8, ptr %i.dd, i64 10     ; 12 uses
  %i.df = getelementptr i8, ptr %i.d, i64 %i.ck   ; 12 uses
  %i.dg = shl nuw nsw i64 %i.al, 1
  %i.dh = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.bl
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 12     ; 12 uses
  %bound0 = icmp ult ptr %i.bd, %i.bs
  %bound1 = icmp ult ptr %i.bq, %i.bo
  %found.conflict = and i1 %bound0, %bound1
  %bound0721 = icmp ult ptr %i.bd, %i.bw
  %bound1722 = icmp ult ptr %i.bu, %i.bo
  %found.conflict723 = and i1 %bound0721, %bound1722
  %conflict.rdx = or i1 %found.conflict, %found.conflict723
  %bound0724 = icmp ult ptr %i.bd, %i.ca
  %bound1725 = icmp ult ptr %i.by, %i.bo
  %found.conflict726 = and i1 %bound0724, %bound1725
  %conflict.rdx727 = or i1 %conflict.rdx, %found.conflict726
  %bound0728 = icmp ult ptr %i.bd, %i.ce
  %bound1729 = icmp ult ptr %i.cc, %i.bo
  %found.conflict730 = and i1 %bound0728, %bound1729
  %conflict.rdx731 = or i1 %conflict.rdx727, %found.conflict730
  %bound0732 = icmp ult ptr %i.bd, %i.ch
  %bound1733 = icmp ult ptr %i.cg, %i.bo
  %found.conflict734 = and i1 %bound0732, %bound1733
  %conflict.rdx735 = or i1 %conflict.rdx731, %found.conflict734
  %bound0736 = icmp ult ptr %i.bd, %i.cm
  %bound1737 = icmp ult ptr %i.bh, %i.bo
  %found.conflict738 = and i1 %bound0736, %bound1737
  %conflict.rdx739 = or i1 %conflict.rdx735, %found.conflict738
  %bound0740 = icmp ult ptr %i.bd, %i.cq
  %bound1741 = icmp ult ptr %i.co, %i.bo
  %found.conflict742 = and i1 %bound0740, %bound1741
  %conflict.rdx743 = or i1 %conflict.rdx739, %found.conflict742
  %bound0744 = icmp ult ptr %i.bd, %i.cu
  %bound1745 = icmp ult ptr %i.cs, %i.bo
  %found.conflict746 = and i1 %bound0744, %bound1745
  %conflict.rdx747 = or i1 %conflict.rdx743, %found.conflict746
  %bound0748 = icmp ult ptr %i.bd, %i.cy
  %bound1749 = icmp ult ptr %i.cw, %i.bo
  %found.conflict750 = and i1 %bound0748, %bound1749
  %conflict.rdx751 = or i1 %conflict.rdx747, %found.conflict750
  %bound0752 = icmp ult ptr %i.bd, %i.dc
  %bound1753 = icmp ult ptr %i.da, %i.bo
  %found.conflict754 = and i1 %bound0752, %bound1753
  %conflict.rdx755 = or i1 %conflict.rdx751, %found.conflict754
  %bound0756 = icmp ult ptr %i.bd, %i.df
  %bound1757 = icmp ult ptr %i.de, %i.bo
  %found.conflict758 = and i1 %bound0756, %bound1757
  %conflict.rdx759 = or i1 %conflict.rdx755, %found.conflict758
  %bound0760 = icmp ult ptr %i.bd, %i.dj
  %bound1761 = icmp ult ptr %i.am, %i.bo
  %found.conflict762 = and i1 %bound0760, %bound1761
  %conflict.rdx763 = or i1 %conflict.rdx759, %found.conflict762
  %bound0764 = icmp ult ptr %i.bq, %i.bw
  %bound1765 = icmp ult ptr %i.bu, %i.bs
  %found.conflict766 = and i1 %bound0764, %bound1765
  %conflict.rdx767 = or i1 %conflict.rdx763, %found.conflict766
  %bound0768 = icmp ult ptr %i.bq, %i.ca
  %bound1769 = icmp ult ptr %i.by, %i.bs
  %found.conflict770 = and i1 %bound0768, %bound1769
  %conflict.rdx771 = or i1 %conflict.rdx767, %found.conflict770
  %bound0772 = icmp ult ptr %i.bq, %i.ce
  %bound1773 = icmp ult ptr %i.cc, %i.bs
  %found.conflict774 = and i1 %bound0772, %bound1773
  %conflict.rdx775 = or i1 %conflict.rdx771, %found.conflict774
  %bound0776 = icmp ult ptr %i.bq, %i.ch
  %bound1777 = icmp ult ptr %i.cg, %i.bs
  %found.conflict778 = and i1 %bound0776, %bound1777
  %conflict.rdx779 = or i1 %conflict.rdx775, %found.conflict778
  %bound0780 = icmp ult ptr %i.bq, %i.cm
  %bound1781 = icmp ult ptr %i.bh, %i.bs
  %found.conflict782 = and i1 %bound0780, %bound1781
  %conflict.rdx783 = or i1 %conflict.rdx779, %found.conflict782
  %bound0784 = icmp ult ptr %i.bq, %i.cq
  %bound1785 = icmp ult ptr %i.co, %i.bs
  %found.conflict786 = and i1 %bound0784, %bound1785
  %conflict.rdx787 = or i1 %conflict.rdx783, %found.conflict786
  %bound0788 = icmp ult ptr %i.bq, %i.cu
  %bound1789 = icmp ult ptr %i.cs, %i.bs
  %found.conflict790 = and i1 %bound0788, %bound1789
  %conflict.rdx791 = or i1 %conflict.rdx787, %found.conflict790
  %bound0792 = icmp ult ptr %i.bq, %i.cy
  %bound1793 = icmp ult ptr %i.cw, %i.bs
  %found.conflict794 = and i1 %bound0792, %bound1793
  %conflict.rdx795 = or i1 %conflict.rdx791, %found.conflict794
  %bound0796 = icmp ult ptr %i.bq, %i.dc
  %bound1797 = icmp ult ptr %i.da, %i.bs
  %found.conflict798 = and i1 %bound0796, %bound1797
  %conflict.rdx799 = or i1 %conflict.rdx795, %found.conflict798
  %bound0800 = icmp ult ptr %i.bq, %i.df
  %bound1801 = icmp ult ptr %i.de, %i.bs
  %found.conflict802 = and i1 %bound0800, %bound1801
  %conflict.rdx803 = or i1 %conflict.rdx799, %found.conflict802
  %bound0804 = icmp ult ptr %i.bq, %i.dj
  %bound1805 = icmp ult ptr %i.am, %i.bs
  %found.conflict806 = and i1 %bound0804, %bound1805
  %conflict.rdx807 = or i1 %conflict.rdx803, %found.conflict806
  %bound0808 = icmp ult ptr %i.bu, %i.ca
  %bound1809 = icmp ult ptr %i.by, %i.bw
  %found.conflict810 = and i1 %bound0808, %bound1809
  %conflict.rdx811 = or i1 %conflict.rdx807, %found.conflict810
  %bound0812 = icmp ult ptr %i.bu, %i.ce
  %bound1813 = icmp ult ptr %i.cc, %i.bw
  %found.conflict814 = and i1 %bound0812, %bound1813
  %conflict.rdx815 = or i1 %conflict.rdx811, %found.conflict814
  %bound0816 = icmp ult ptr %i.bu, %i.ch
  %bound1817 = icmp ult ptr %i.cg, %i.bw
  %found.conflict818 = and i1 %bound0816, %bound1817
  %conflict.rdx819 = or i1 %conflict.rdx815, %found.conflict818
  %bound0820 = icmp ult ptr %i.bu, %i.cm
  %bound1821 = icmp ult ptr %i.bh, %i.bw
  %found.conflict822 = and i1 %bound0820, %bound1821
  %conflict.rdx823 = or i1 %conflict.rdx819, %found.conflict822
  %bound0824 = icmp ult ptr %i.bu, %i.cq
  %bound1825 = icmp ult ptr %i.co, %i.bw
  %found.conflict826 = and i1 %bound0824, %bound1825
  %conflict.rdx827 = or i1 %conflict.rdx823, %found.conflict826
  %bound0828 = icmp ult ptr %i.bu, %i.cu
  %bound1829 = icmp ult ptr %i.cs, %i.bw
  %found.conflict830 = and i1 %bound0828, %bound1829
  %conflict.rdx831 = or i1 %conflict.rdx827, %found.conflict830
  %bound0832 = icmp ult ptr %i.bu, %i.cy
  %bound1833 = icmp ult ptr %i.cw, %i.bw
  %found.conflict834 = and i1 %bound0832, %bound1833
  %conflict.rdx835 = or i1 %conflict.rdx831, %found.conflict834
  %bound0836 = icmp ult ptr %i.bu, %i.dc
  %bound1837 = icmp ult ptr %i.da, %i.bw
  %found.conflict838 = and i1 %bound0836, %bound1837
  %conflict.rdx839 = or i1 %conflict.rdx835, %found.conflict838
  %bound0840 = icmp ult ptr %i.bu, %i.df
  %bound1841 = icmp ult ptr %i.de, %i.bw
  %found.conflict842 = and i1 %bound0840, %bound1841
  %conflict.rdx843 = or i1 %conflict.rdx839, %found.conflict842
  %bound0844 = icmp ult ptr %i.bu, %i.dj
  %bound1845 = icmp ult ptr %i.am, %i.bw
  %found.conflict846 = and i1 %bound0844, %bound1845
  %conflict.rdx847 = or i1 %conflict.rdx843, %found.conflict846
  %bound0848 = icmp ult ptr %i.by, %i.ce
  %bound1849 = icmp ult ptr %i.cc, %i.ca
end_hunk_1
begin_hunk_2_@_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv:bb.a
  %conflict.rdx979 = or i1 %conflict.rdx975, %found.conflict978
  %bound0980 = icmp ult ptr %i.co, %i.df
  %bound1981 = icmp ult ptr %i.de, %i.cq
  %found.conflict982 = and i1 %bound0980, %bound1981
  %conflict.rdx983 = or i1 %conflict.rdx979, %found.conflict982
  %bound0984 = icmp ult ptr %i.co, %i.dj
  %bound1985 = icmp ult ptr %i.am, %i.cq
  %found.conflict986 = and i1 %bound0984, %bound1985
  %conflict.rdx987 = or i1 %conflict.rdx983, %found.conflict986
  %bound0988 = icmp ult ptr %i.cs, %i.cy
  %bound1989 = icmp ult ptr %i.cw, %i.cu
  %found.conflict990 = and i1 %bound0988, %bound1989
  %conflict.rdx991 = or i1 %conflict.rdx987, %found.conflict990
  %bound0992 = icmp ult ptr %i.cs, %i.dc
  %bound1993 = icmp ult ptr %i.da, %i.cu
  %found.conflict994 = and i1 %bound0992, %bound1993
  %conflict.rdx995 = or i1 %conflict.rdx991, %found.conflict994
  %bound0996 = icmp ult ptr %i.cs, %i.df
  %bound1997 = icmp ult ptr %i.de, %i.cu
  %found.conflict998 = and i1 %bound0996, %bound1997
  %conflict.rdx999 = or i1 %conflict.rdx995, %found.conflict998
  %bound01000 = icmp ult ptr %i.cs, %i.dj
  %bound11001 = icmp ult ptr %i.am, %i.cu
  %found.conflict1002 = and i1 %bound01000, %bound11001
  %conflict.rdx1003 = or i1 %conflict.rdx999, %found.conflict1002
  %bound01004 = icmp ult ptr %i.cw, %i.dc
  %bound11005 = icmp ult ptr %i.da, %i.cy
  %found.conflict1006 = and i1 %bound01004, %bound11005
  %conflict.rdx1007 = or i1 %conflict.rdx1003, %found.conflict1006
  %bound01008 = icmp ult ptr %i.cw, %i.df
  %bound11009 = icmp ult ptr %i.de, %i.cy
  %found.conflict1010 = and i1 %bound01008, %bound11009
  %conflict.rdx1011 = or i1 %conflict.rdx1007, %found.conflict1010
  %bound01012 = icmp ult ptr %i.cw, %i.dj
  %bound11013 = icmp ult ptr %i.am, %i.cy
  %found.conflict1014 = and i1 %bound01012, %bound11013
  %conflict.rdx1015 = or i1 %conflict.rdx1011, %found.conflict1014
  %bound01016 = icmp ult ptr %i.da, %i.df
  %bound11017 = icmp ult ptr %i.de, %i.dc
  %found.conflict1018 = and i1 %bound01016, %bound11017
  %conflict.rdx1019 = or i1 %conflict.rdx1015, %found.conflict1018
  %bound01020 = icmp ult ptr %i.da, %i.dj
  %bound11021 = icmp ult ptr %i.am, %i.dc
  %found.conflict1022 = and i1 %bound01020, %bound11021
  %conflict.rdx1023 = or i1 %conflict.rdx1019, %found.conflict1022
  %bound01024 = icmp ult ptr %i.de, %i.dj
  %bound11025 = icmp ult ptr %i.am, %i.df
  %found.conflict1026 = and i1 %bound01024, %bound11025
  %conflict.rdx1027 = or i1 %conflict.rdx1023, %found.conflict1026
  br i1 %conflict.rdx1027, label %.preheader215.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dk = and i64 %wide.trip.count, 7             ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = select i1 %i.dl, i64 8, i64 %i.dk
  %n.vec = sub nsw i64 %wide.trip.count, %i.dm    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat1029 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat1031 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat1033 = shufflevector <3 x i32> %i.as, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.dn = phi i64 [ 0, %vector.ph ], [ %i.gw, %vector.body ] ; 3 uses
  %i.do = mul nuw nsw i64 %i.dn, 6                ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.do
  %wide.vec = load <48 x i16>, ptr %i.dp, align 2, !tbaa !109, !alias.scope !147, !noalias !146 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1040 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec1041 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec1042 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec1043 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec1044 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.dq = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.dr = zext <8 x i16> %strided.vec1040 to <8 x i32> ; 3 uses
  %i.ds = zext <8 x i16> %strided.vec1041 to <8 x i32> ; 3 uses
  %i.dt = zext <8 x i16> %strided.vec1042 to <8 x i32> ; 3 uses
  %i.du = zext <8 x i16> %strided.vec1043 to <8 x i32>
  %i.dv = zext <8 x i16> %strided.vec1044 to <8 x i32>
  %.idx = mul nuw i64 %i.dn, 12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %wide.vec1045 = load <48 x i16>, ptr %i.dx, align 2, !tbaa !109, !alias.scope !147, !noalias !146 ; 2 uses
  %strided.vec1046 = shufflevector <48 x i16> %wide.vec1045, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1047 = shufflevector <48 x i16> %wide.vec1045, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dy = zext <8 x i16> %strided.vec1046 to <8 x i32>
  %i.dz = zext <8 x i16> %strided.vec1047 to <8 x i32>
  %i.ea = add <8 x i32> %broadcast.splat, %i.du   ; 4 uses
  %i.eb = add <8 x i32> %broadcast.splat, %i.dv   ; 4 uses
  %i.ec = add <8 x i32> %broadcast.splat, %i.dy
  %i.ed = add <8 x i32> %broadcast.splat, %i.dz
  %i.ee = add nsw <8 x i32> %i.ec, %i.ea
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 1)     ; 3 uses
  %i.eg = add nsw <8 x i32> %i.ed, %i.eb
  %i.eh = ashr <8 x i32> %i.eg, splat (i32 1)     ; 3 uses
  %i.ei = add nsw <8 x i32> %i.eb, %i.dq
  %i.ej = mul nsw <8 x i32> %i.ei, %broadcast.splat1029
  %i.ek = mul nsw <8 x i32> %i.ea, splat (i32 -778)
  %i.el = shl nsw <8 x i32> %i.eb, splat (i32 11)
  %i.em = sub nsw <8 x i32> %i.ek, %i.el
  %i.en = ashr <8 x i32> %i.em, splat (i32 12)    ; 2 uses
  %i.eo = add nsw <8 x i32> %i.en, %i.dq
  %i.ep = mul nsw <8 x i32> %i.eo, %broadcast.splat1031
  %i.eq = add nsw <8 x i32> %i.ea, %i.dq
  %i.er = mul nsw <8 x i32> %broadcast.splat1033, %i.eq
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.do
  %i.et = add nsw <8 x i32> %i.eh, %i.dr
  %i.eu = mul nsw <8 x i32> %i.et, %broadcast.splat1029
  %i.ev = mul nsw <8 x i32> %i.ef, splat (i32 -778)
  %i.ew = shl nsw <8 x i32> %i.eh, splat (i32 11)
  %i.ex = sub nsw <8 x i32> %i.ev, %i.ew
  %i.ey = ashr <8 x i32> %i.ex, splat (i32 12)    ; 2 uses
  %i.ez = add nsw <8 x i32> %i.ey, %i.dr
  %i.fa = mul nsw <8 x i32> %i.ez, %broadcast.splat1031
  %i.fb = add nsw <8 x i32> %i.ef, %i.dr
  %i.fc = mul nsw <8 x i32> %broadcast.splat1033, %i.fb
  %i.fd = ashr <8 x i32> %i.fa, splat (i32 8)
  %i.fe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fd, <8 x i32> zeroinitializer)
  %i.ff = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fe, <8 x i32> splat (i32 65535))
  %i.fg = trunc nuw <8 x i32> %i.ff to <8 x i16>
  %i.fh = ashr <8 x i32> %i.fc, splat (i32 8)
  %i.fi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fh, <8 x i32> zeroinitializer)
  %i.fj = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fi, <8 x i32> splat (i32 65535))
  %i.fk = trunc nuw <8 x i32> %i.fj to <8 x i16>
  %i.fl = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fm = shufflevector <8 x i32> %i.er, <8 x i32> %i.eu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fn = shufflevector <16 x i32> %i.fl, <16 x i32> %i.fm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fo = ashr <32 x i32> %i.fn, splat (i32 8)
  %i.fp = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.fo, <32 x i32> zeroinitializer)
  %i.fq = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.fp, <32 x i32> splat (i32 65535))
  %i.fr = trunc nuw <32 x i32> %i.fq to <32 x i16>
  %i.fs = shufflevector <8 x i16> %i.fg, <8 x i16> %i.fk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.fr, <32 x i16> %i.fs, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.es, align 2, !tbaa !109
  %i.ft = add nsw <8 x i32> %i.eb, %i.ds
  %i.fu = mul nsw <8 x i32> %i.ft, %broadcast.splat1029
  %i.fv = add nsw <8 x i32> %i.en, %i.ds
  %i.fw = mul nsw <8 x i32> %i.fv, %broadcast.splat1031
  %i.fx = add nsw <8 x i32> %i.ea, %i.ds
  %i.fy = mul nsw <8 x i32> %broadcast.splat1033, %i.fx
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.do
  %i.ga = add nsw <8 x i32> %i.eh, %i.dt
  %i.gb = mul nsw <8 x i32> %i.ga, %broadcast.splat1029
  %i.gc = add nsw <8 x i32> %i.ey, %i.dt
  %i.gd = mul nsw <8 x i32> %i.gc, %broadcast.splat1031
  %i.ge = add nsw <8 x i32> %i.ef, %i.dt
  %i.gf = mul nsw <8 x i32> %broadcast.splat1033, %i.ge
  %i.gg = ashr <8 x i32> %i.gd, splat (i32 8)
  %i.gh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gg, <8 x i32> zeroinitializer)
  %i.gi = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gh, <8 x i32> splat (i32 65535))
  %i.gj = trunc nuw <8 x i32> %i.gi to <8 x i16>
  %i.gk = ashr <8 x i32> %i.gf, splat (i32 8)
  %i.gl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gk, <8 x i32> zeroinitializer)
  %i.gm = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gl, <8 x i32> splat (i32 65535))
  %i.gn = trunc nuw <8 x i32> %i.gm to <8 x i16>
  %i.go = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gp = shufflevector <8 x i32> %i.fy, <8 x i32> %i.gb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gq = shufflevector <16 x i32> %i.go, <16 x i32> %i.gp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gr = ashr <32 x i32> %i.gq, splat (i32 8)
  %i.gs = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.gr, <32 x i32> zeroinitializer)
  %i.gt = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.gs, <32 x i32> splat (i32 65535))
  %i.gu = trunc nuw <32 x i32> %i.gt to <32 x i16>
  %i.gv = shufflevector <8 x i16> %i.gj, <8 x i16> %i.gn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1048 = shufflevector <32 x i16> %i.gu, <32 x i16> %i.gv, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec1048, ptr %i.fz, align 2, !tbaa !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gw = add nuw nsw i64 %i.dn, 8
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %.preheader215.preheader, label %vector.body, !llvm.loop !141

.preheader215.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph230
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph230 ], [ %n.vec, %vector.body ]
  %i.gy = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.gz = shufflevector <4 x i32> %i.gy, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ha = shufflevector <4 x i32> %i.gz, <4 x i32> %i.at, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hb = shufflevector <3 x i32> %i.as, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.preheader, %.preheader215
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader215 ], [ %indvars.iv.ph, %.preheader215.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.hc = icmp samesign ult i64 %indvars.iv.next, %i.ba
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hd
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hd
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hd
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hd
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 6
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hd ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !109, !noalias !146
  %i.ho = zext i16 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 10
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !109, !noalias !146
  %i.hr = zext i16 %i.hq to i32
  %i.hs = mul nuw nsw i64 %indvars.iv.next, 6     ; 4 uses
  %2 = icmp ult i64 %i.hs, %invariant.op392
  tail call void @llvm.assume(i1 %2), !noalias !146
  %3 = icmp ult i64 %i.hs, %invariant.op393
  tail call void @llvm.assume(i1 %3), !noalias !146
  %i.ht = icmp samesign ule i64 %i.hs, %i.av
  tail call void @llvm.assume(i1 %i.ht), !noalias !146
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hs ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !109, !noalias !146
  %i.hx = zext i16 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 10
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !109, !noalias !146
  %i.ia = zext i16 %i.hz to i32
  %i.ib = add i32 %i.ap, %i.hx
  %i.ic = add i32 %i.ap, %i.ia
  %i.id = add nuw nsw i64 %i.hd, 3                ; 3 uses
  %i.ie = icmp samesign ule i64 %i.id, %i.aw
  tail call void @llvm.assume(i1 %i.ie)
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.hd
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.id
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.hd
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.id
  %i.ik = load i16, ptr %i.hk, align 2, !tbaa !109, !noalias !146
  %i.il = load <2 x i16>, ptr %i.hi, align 2, !tbaa !109, !noalias !146
  %i.im = shufflevector <2 x i16> %i.il, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.in = zext i16 %i.ik to i32                   ; 2 uses
  %i.io = zext <4 x i16> %i.im to <4 x i32>
  %i.ip = load i16, ptr %i.hg, align 2, !tbaa !109, !noalias !146
  %i.iq = load <2 x i16>, ptr %i.he, align 2, !tbaa !109, !noalias !146
  %i.ir = shufflevector <2 x i16> %i.iq, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.is = zext i16 %i.ip to i32
  %i.it = zext <4 x i16> %i.ir to <4 x i32>
  %i.iu = add i32 %i.ap, %i.ho                    ; 3 uses
  %i.iv = add i32 %i.ap, %i.hr                    ; 3 uses
  %i.iw = add nsw i32 %i.ib, %i.iu
  %i.ix = add nsw i32 %i.ic, %i.iv
  %i.iy = ashr i32 %i.ix, 1                       ; 2 uses
  %i.iz = mul nsw i32 %i.iu, -778
  %i.ja = shl nsw i32 %i.iv, 11
  %i.jb = sub nsw i32 %i.iz, %i.ja
  %i.jc = ashr i32 %i.jb, 12
  %i.jd = insertelement <4 x i32> poison, i32 %i.iv, i64 0
  %i.je = insertelement <4 x i32> %i.jd, i32 %i.jc, i64 1
  %i.jf = insertelement <4 x i32> %i.je, i32 %i.iu, i64 2
  %i.jg = insertelement <4 x i32> %i.jf, i32 %i.iy, i64 3 ; 2 uses
  %i.jh = add nsw <4 x i32> %i.jg, %i.it
  %i.ji = mul nsw <4 x i32> %i.jh, %i.ha
  %i.jj = shl nsw i32 %i.iy, 11
  %i.jk = ashr <4 x i32> %i.ji, splat (i32 8)
  %i.jl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jk, <4 x i32> zeroinitializer)
  %i.jm = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.jl, <4 x i32> splat (i32 65535))
  %i.jn = trunc nuw <4 x i32> %i.jm to <4 x i16>
  store <4 x i16> %i.jn, ptr %i.if, align 2, !tbaa !109
  %i.jo = add nsw <4 x i32> %i.jg, %i.io
  %i.jp = mul nsw <4 x i32> %i.at, %i.jo
  %i.jq = ashr <4 x i32> %i.jp, splat (i32 8)
  %i.jr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jq, <4 x i32> zeroinitializer)
  %i.js = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.jr, <4 x i32> splat (i32 65535))
  %i.jt = trunc nuw <4 x i32> %i.js to <4 x i16>
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.jv = ashr i32 %i.iw, 1                       ; 3 uses
  %i.jw = mul nsw i32 %i.jv, -778
  %i.jx = sub nsw i32 %i.jw, %i.jj
  %i.jy = ashr i32 %i.jx, 12                      ; 2 uses
  %i.jz = insertelement <2 x i32> poison, i32 %i.jy, i64 0
  %i.ka = insertelement <2 x i32> %i.jz, i32 %i.jv, i64 1
  %i.kb = insertelement <2 x i32> poison, i32 %i.is, i64 0
  %i.kc = shufflevector <2 x i32> %i.kb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kd = add nsw <2 x i32> %i.ka, %i.kc
  %i.ke = mul nsw <2 x i32> %i.kd, %i.hb
  %i.kf = ashr <2 x i32> %i.ke, splat (i32 8)
  %i.kg = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kf, <2 x i32> zeroinitializer)
  %i.kh = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.kg, <2 x i32> splat (i32 65535))
  %i.ki = trunc nuw <2 x i32> %i.kh to <2 x i16>
  store <2 x i16> %i.ki, ptr %i.ih, align 2, !tbaa !109
  %i.kj = add nsw i32 %i.jy, %i.in
  %i.kk = add nsw i32 %i.jv, %i.in
  %i.kl = insertelement <2 x i32> poison, i32 %i.kj, i64 0
  %i.km = insertelement <2 x i32> %i.kl, i32 %i.kk, i64 1
  %i.kn = mul nsw <2 x i32> %i.km, %i.hb
  store <4 x i16> %i.jt, ptr %i.ii, align 2, !tbaa !109
  %i.ko = ashr <2 x i32> %i.kn, splat (i32 8)
  %i.kp = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ko, <2 x i32> zeroinitializer)
  %i.kq = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.kp, <2 x i32> splat (i32 65535))
  %i.kr = trunc nuw <2 x i32> %i.kq to <2 x i16>
  store <2 x i16> %i.kr, ptr %i.ju, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge231, label %.preheader215, !llvm.loop !142

._crit_edge231:                                   ; preds = %.preheader215
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.al ; 5 uses
  %i.kt = mul nuw nsw i32 %i.ai, 6                ; 3 uses
  %i.ku = zext nneg i32 %i.kt to i64              ; 7 uses
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.ku
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.ku
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.ku
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.la = add nuw nsw i64 %i.ku, 3                ; 2 uses
  %i.lb = icmp samesign ult i64 %i.la, %1
  tail call void @llvm.assume(i1 %i.lb), !noalias !148
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.la
  %i.ld = add nuw nsw i32 %i.kt, 6
  %i.le = icmp samesign ule i32 %i.ld, %i.s
  tail call void @llvm.assume(i1 %i.le), !noalias !148
  %i.lf = zext nneg i32 %i.kt to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !109, !noalias !148
  %i.lj = zext i16 %i.li to i32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 10
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !109, !noalias !148
  %i.lm = zext i16 %i.ll to i32
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !106
  %i.lp = add i32 %i.lo, -16384                   ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.lr = add nuw nsw i64 %i.ku, 3                ; 3 uses
  %i.ls = icmp samesign ule i64 %i.lr, %i.aw
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  tail call void @llvm.assume(i1 %i.ls)
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.ku
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.lr
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 2
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bg ; 2 uses
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %i.ku
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %i.lr
  %i.ma = load i16, ptr %i.lc, align 2, !tbaa !109, !noalias !148
  %i.mb = load <2 x i16>, ptr %i.kz, align 2, !tbaa !109, !noalias !148
  %i.mc = shufflevector <2 x i16> %i.mb, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.md = zext i16 %i.ma to i32                   ; 2 uses
  %i.me = zext <4 x i16> %i.mc to <4 x i32>
  %i.mf = load <3 x i32>, ptr %i.lq, align 8, !tbaa !107 ; 2 uses
  %i.mg = shufflevector <3 x i32> %i.mf, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.mh = load i32, ptr %i.lq, align 8, !tbaa !107
  %i.mi = load i16, ptr %i.kx, align 2, !tbaa !109, !noalias !148
  %i.mj = load <2 x i16>, ptr %i.kv, align 2, !tbaa !109, !noalias !148
  %i.mk = shufflevector <2 x i16> %i.mj, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ml = zext i16 %i.mi to i32
  %i.mm = zext <4 x i16> %i.mk to <4 x i32>
  %i.mn = add i32 %i.lp, %i.lm                    ; 2 uses
  %i.mo = shl nsw i32 %i.mn, 11
  %i.mp = insertelement <4 x i32> poison, i32 %i.mn, i64 0
  %i.mq = insertelement <4 x i32> poison, i32 %i.mh, i64 0
  %i.mr = shufflevector <4 x i32> %i.mq, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ms = shufflevector <4 x i32> %i.mr, <4 x i32> %i.mg, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  %i.mu = add i32 %i.lp, %i.lj                    ; 4 uses
  %i.mv = mul nsw i32 %i.mu, -778
  %i.mw = sub nsw i32 %i.mv, %i.mo
  %i.mx = ashr i32 %i.mw, 12                      ; 3 uses
  %i.my = insertelement <4 x i32> %i.mp, i32 %i.mx, i64 1
  %i.mz = insertelement <4 x i32> %i.my, i32 %i.mu, i64 2
  %i.na = shufflevector <4 x i32> %i.mz, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.nb = add nsw <4 x i32> %i.na, %i.mm
  %i.nc = mul nsw <4 x i32> %i.nb, %i.ms
  %i.nd = insertelement <2 x i32> poison, i32 %i.mx, i64 0
  %i.ne = insertelement <2 x i32> %i.nd, i32 %i.mu, i64 1
  %i.nf = insertelement <2 x i32> poison, i32 %i.ml, i64 0
  %i.ng = shufflevector <2 x i32> %i.nf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.nh = add nsw <2 x i32> %i.ne, %i.ng
  %i.ni = shufflevector <3 x i32> %i.mf, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.nj = mul nsw <2 x i32> %i.nh, %i.ni
  %i.nk = ashr <4 x i32> %i.nc, splat (i32 8)
  %i.nl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nk, <4 x i32> zeroinitializer)
  %i.nm = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nl, <4 x i32> splat (i32 65535))
  %i.nn = trunc nuw <4 x i32> %i.nm to <4 x i16>
  store <4 x i16> %i.nn, ptr %i.lu, align 2, !tbaa !109
  %i.no = ashr <2 x i32> %i.nj, splat (i32 8)
  %i.np = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.no, <2 x i32> zeroinitializer)
  %i.nq = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.np, <2 x i32> splat (i32 65535))
  %i.nr = trunc nuw <2 x i32> %i.nq to <2 x i16>
  store <2 x i16> %i.nr, ptr %i.lw, align 2, !tbaa !109
  %i.ns = add nsw <4 x i32> %i.na, %i.me
  %i.nt = mul nsw <4 x i32> %i.mg, %i.ns
  %i.nu = add nsw i32 %i.mx, %i.md
  %i.nv = add nsw i32 %i.mu, %i.md
  %i.nw = insertelement <2 x i32> poison, i32 %i.nu, i64 0
  %i.nx = insertelement <2 x i32> %i.nw, i32 %i.nv, i64 1
  %i.ny = mul nsw <2 x i32> %i.nx, %i.ni
  %i.nz = ashr <4 x i32> %i.nt, splat (i32 8)
  %i.oa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nz, <4 x i32> zeroinitializer)
  %i.ob = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.oa, <4 x i32> splat (i32 65535))
  %i.oc = trunc nuw <4 x i32> %i.ob to <4 x i16>
  store <4 x i16> %i.oc, ptr %i.ly, align 2, !tbaa !109
  %i.od = ashr <2 x i32> %i.ny, splat (i32 8)
  %i.oe = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.od, <2 x i32> zeroinitializer)
  %i.of = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.oe, <2 x i32> splat (i32 65535))
  %i.og = trunc nuw <2 x i32> %i.of to <2 x i16>
  store <2 x i16> %i.og, ptr %i.mt, align 2, !tbaa !109
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
  %2 = zext nneg i32 %i.s to i64                  ; 2 uses
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
  %invariant.op = add nsw i64 %2, -1
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.am, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = zext i32 %i.w to i64
  %i.az = zext i32 %1 to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 1
  %i.bc = shl nuw nsw i64 %wide.trip.count, 3
  %i.bd = getelementptr i8, ptr %.sroa.050.0.copyload, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %bound0 = icmp ult ptr %i.an, %i.bf
  %bound1 = icmp ult ptr %i.ag, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 8, i64 %i.bg
  %n.vec = sub nsw i64 %wide.trip.count, %i.bi    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat90 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat92 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = phi i64 [ 0, %vector.ph ], [ %i.do, %vector.body ] ; 3 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bk, align 2, !tbaa !109, !alias.scope !161, !noalias !162 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec97 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec98 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec99 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec97 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec98 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec99 to <8 x i32>
  %.idx103 = shl i64 %i.bj, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx103
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %wide.vec100 = load <32 x i16>, ptr %i.bq, align 2, !tbaa !109, !alias.scope !161, !noalias !162 ; 2 uses
  %strided.vec101 = shufflevector <32 x i16> %wide.vec100, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec102 = shufflevector <32 x i16> %wide.vec100, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.br = zext <8 x i16> %strided.vec101 to <8 x i32>
  %i.bs = zext <8 x i16> %strided.vec102 to <8 x i32>
  %i.bt = add <8 x i32> %broadcast.splat, %i.bn   ; 3 uses
  %i.bu = add <8 x i32> %broadcast.splat, %i.bo   ; 3 uses
  %i.bv = add <8 x i32> %broadcast.splat, %i.br
  %i.bw = add <8 x i32> %broadcast.splat, %i.bs
  %i.bx = add nsw <8 x i32> %i.bv, %i.bt
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 2 uses
  %i.bz = add nsw <8 x i32> %i.bw, %i.bu
  %i.ca = ashr <8 x i32> %i.bz, splat (i32 1)     ; 2 uses
  %i.cb = add nsw <8 x i32> %i.bl, splat (i32 -512) ; 3 uses
  %i.cc = add <8 x i32> %i.cb, %i.bu
  %i.cd = mul nsw <8 x i32> %i.cc, %broadcast.splat90
  %i.ce = mul nsw <8 x i32> %i.bt, splat (i32 -778)
  %i.cf = shl nsw <8 x i32> %i.bu, splat (i32 11)
  %i.cg = sub nsw <8 x i32> %i.ce, %i.cf
  %i.ch = ashr <8 x i32> %i.cg, splat (i32 12)
  %i.ci = add nsw <8 x i32> %i.cb, %i.ch
  %i.cj = mul nsw <8 x i32> %i.ci, %broadcast.splat92
  %i.ck = add <8 x i32> %i.cb, %i.bt
  %i.cl = mul nsw <8 x i32> %i.ck, %broadcast.splat94
  %.idx104 = mul nuw nsw i64 %i.bj, 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx104
  %i.cn = add nsw <8 x i32> %i.bm, splat (i32 -512) ; 3 uses
  %i.co = add nsw <8 x i32> %i.cn, %i.ca
  %i.cp = mul nsw <8 x i32> %i.co, %broadcast.splat90
  %i.cq = mul nsw <8 x i32> %i.by, splat (i32 -778)
  %i.cr = shl nsw <8 x i32> %i.ca, splat (i32 11)
  %i.cs = sub nsw <8 x i32> %i.cq, %i.cr
  %i.ct = ashr <8 x i32> %i.cs, splat (i32 12)
  %i.cu = add nsw <8 x i32> %i.ct, %i.cn
  %i.cv = mul nsw <8 x i32> %i.cu, %broadcast.splat92
  %i.cw = add nsw <8 x i32> %i.by, %i.cn
  %i.cx = mul nsw <8 x i32> %i.cw, %broadcast.splat94
  %i.cy = ashr <8 x i32> %i.cv, splat (i32 8)
  %i.cz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cy, <8 x i32> zeroinitializer)
  %i.da = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cz, <8 x i32> splat (i32 65535))
  %i.db = trunc nuw <8 x i32> %i.da to <8 x i16>
  %i.dc = ashr <8 x i32> %i.cx, splat (i32 8)
  %i.dd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dc, <8 x i32> zeroinitializer)
  %i.de = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dd, <8 x i32> splat (i32 65535))
  %i.df = trunc nuw <8 x i32> %i.de to <8 x i16>
  %i.dg = shufflevector <8 x i32> %i.cd, <8 x i32> %i.cj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dh = shufflevector <8 x i32> %i.cl, <8 x i32> %i.cp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.di = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dj = ashr <32 x i32> %i.di, splat (i32 8)
  %i.dk = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.dj, <32 x i32> zeroinitializer)
  %i.dl = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.dk, <32 x i32> splat (i32 65535))
  %i.dm = trunc nuw <32 x i32> %i.dl to <32 x i16>
  %i.dn = shufflevector <8 x i16> %i.db, <8 x i16> %i.df, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.dm, <32 x i16> %i.dn, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.cm, align 2, !tbaa !109, !alias.scope !163, !noalias !161
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = add nuw nsw i64 %i.bj, 8
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %scalar.ph.preheader, label %vector.body, !llvm.loop !156

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.dq = extractelement <3 x i32> %i.aq, i64 2
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.eg, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dr = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !109, !noalias !162
  %i.du = zext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !109, !noalias !162
  %i.dy = zext i16 %i.dx to i32                   ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dr ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !109, !noalias !162
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 6
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !109, !noalias !162
  %i.ef = zext i16 %i.ee to i32
  %i.eg = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %.idx105 = shl nuw nsw i64 %i.eg, 2             ; 2 uses
  %3 = icmp ult i64 %.idx105, %invariant.op
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.idx105 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !109, !noalias !162
  %i.ej = zext i16 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !109, !noalias !162
  %i.em = zext i16 %i.el to i32
  %i.en = add i32 %i.aj, %i.ec                    ; 3 uses
  %i.eo = add i32 %i.aj, %i.ef                    ; 3 uses
  %i.ep = add i32 %i.aj, %i.ej
  %i.eq = add i32 %i.aj, %i.em
  %i.er = add nsw i32 %i.ep, %i.en
  %i.es = ashr i32 %i.er, 1                       ; 2 uses
  %i.et = add nsw i32 %i.eq, %i.eo
  %i.eu = ashr i32 %i.et, 1                       ; 2 uses
  %i.ev = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ew = add nuw nsw i64 %i.ev, 3                ; 2 uses
  %i.ex = icmp samesign ule i64 %i.ew, %i.at
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = mul nsw i32 %i.en, -778
  %i.ez = shl nsw i32 %i.eo, 11
  %i.fa = sub nsw i32 %i.ey, %i.ez
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ev
  %i.fc = mul nsw i32 %i.es, -778
  %i.fd = shl nsw i32 %i.eu, 11
  %i.fe = sub nsw i32 %i.fc, %i.fd
  %i.ff = ashr i32 %i.fe, 12
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ew ; 2 uses
  %i.fh = ashr i32 %i.fa, 12
  %i.fi = add nsw i32 %i.dy, -512                 ; 2 uses
  %i.fj = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fh, i64 1
  %i.fl = insertelement <4 x i32> %i.fk, i32 %i.dy, i64 3
  %i.fm = add nsw <4 x i32> %i.fl, <i32 -512, i32 0, i32 poison, i32 -512> ; 2 uses
  %i.fn = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.fo = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %i.fp = shufflevector <4 x i32> %i.fo, <4 x i32> %i.fm, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.en, i64 2
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.eu, i64 3
  %i.fs = add <4 x i32> %i.fn, %i.fr
  %i.ft = mul nsw <4 x i32> %i.fs, %i.ar
  %i.fu = add nsw i32 %i.ff, %i.fi
  %i.fv = mul nsw i32 %i.fu, %i.as
  %i.fw = add nsw i32 %i.es, %i.fi
  %i.fx = mul nsw i32 %i.fw, %i.dq
  %i.fy = ashr <4 x i32> %i.ft, splat (i32 8)
  %i.fz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fy, <4 x i32> zeroinitializer)
  %i.ga = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fz, <4 x i32> splat (i32 65535))
  %i.gb = trunc nuw <4 x i32> %i.ga to <4 x i16>
  store <4 x i16> %i.gb, ptr %i.fb, align 2, !tbaa !109
  %i.gc = ashr i32 %i.fv, 8
  %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.gc, i32 0)
  %i.gd = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i, i32 65535)
  %i.ge = trunc nuw i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !109
  %i.gg = ashr i32 %i.fx, 8
  %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 0)
  %i.gh = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i, i32 65535)
  %i.gi = trunc nuw i32 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.eg, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %scalar.ph
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 3 uses
  %i.gl = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gm = zext nneg i32 %i.gl to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !109, !noalias !164
  %i.gp = zext i16 %i.go to i32
  %i.gq = or disjoint i64 %i.gm, 1                ; 2 uses
  %i.gr = icmp samesign ult i64 %i.gq, %2
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gq
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !109, !noalias !164
  %i.gu = zext i16 %i.gt to i32
  %i.gv = icmp samesign ult i32 %i.gl, %i.s
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = zext nneg i32 %i.gl to i64
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !109, !noalias !164
  %i.ha = zext i16 %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 6
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !109, !noalias !164
  %i.hd = zext i16 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !106
  %i.hg = add i32 %i.hf, -16384                   ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.hi = mul nuw nsw i32 %i.ac, 6
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hk = zext nneg i32 %i.hi to i64              ; 2 uses
  %i.hl = add nuw nsw i64 %i.hk, 3                ; 2 uses
  %i.hm = icmp samesign ule i64 %i.hl, %i.at
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hk
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hl
  %i.hp = add i32 %i.hg, %i.hd                    ; 2 uses
  %i.hq = load <3 x i32>, ptr %i.hj, align 8, !tbaa !107 ; 2 uses
  %i.hr = shufflevector <3 x i32> %i.hq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hs = add nsw i32 %i.gp, -512
  %i.ht = shl nsw i32 %i.hp, 11
  %i.hu = add nsw i32 %i.gu, -512                 ; 2 uses
  %i.hv = insertelement <4 x i32> poison, i32 %i.hs, i64 0
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hx = add i32 %i.hg, %i.ha                    ; 3 uses
  %i.hy = mul nsw i32 %i.hx, -778
  %i.hz = sub nsw i32 %i.hy, %i.ht
  %i.ia = ashr i32 %i.hz, 12                      ; 2 uses
  %i.ib = insertelement <4 x i32> %i.hv, i32 %i.ia, i64 1
  %i.ic = insertelement <4 x i32> %i.ib, i32 %i.hx, i64 2
  %i.id = insertelement <4 x i32> %i.ic, i32 %i.hp, i64 3 ; 2 uses
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 poison>
  %i.if = insertelement <4 x i32> %i.ie, i32 %i.hu, i64 3
  %i.ig = add <4 x i32> %i.id, %i.if
  %i.ih = mul nsw <4 x i32> %i.ig, %i.hr
  %i.ii = insertelement <2 x i32> poison, i32 %i.ia, i64 0
  %i.ij = insertelement <2 x i32> %i.ii, i32 %i.hx, i64 1
  %i.ik = insertelement <2 x i32> poison, i32 %i.hu, i64 0
  %i.il = shufflevector <2 x i32> %i.ik, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.im = add <2 x i32> %i.ij, %i.il
  %i.in = shufflevector <3 x i32> %i.hq, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.io = mul nsw <2 x i32> %i.im, %i.in
  %i.ip = ashr <4 x i32> %i.ih, splat (i32 8)
  %i.iq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ip, <4 x i32> zeroinitializer)
  %i.ir = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iq, <4 x i32> splat (i32 65535))
  %i.is = trunc nuw <4 x i32> %i.ir to <4 x i16>
  store <4 x i16> %i.is, ptr %i.hn, align 2, !tbaa !109
  %i.it = ashr <2 x i32> %i.io, splat (i32 8)
  %i.iu = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.it, <2 x i32> zeroinitializer)
  %i.iv = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.iu, <2 x i32> splat (i32 65535))
  %i.iw = trunc nuw <2 x i32> %i.iv to <2 x i16>
  store <2 x i16> %i.iw, ptr %i.hw, align 2, !tbaa !109
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !176 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !176
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !176
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !176
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
  %.sroa.054.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.054.0.copyload, i64 %i.af ; 7 uses
  %2 = zext nneg i32 %i.s to i64                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !106
  %i.aj = add i32 %i.ai, -16384                   ; 2 uses
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
  %invariant.op = add nsw i64 %2, -1
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.am, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = zext i32 %i.w to i64
  %i.az = zext i32 %1 to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 1
  %i.bc = shl nuw nsw i64 %wide.trip.count, 3
  %i.bd = getelementptr i8, ptr %.sroa.054.0.copyload, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %bound0 = icmp ult ptr %i.an, %i.bf
  %bound1 = icmp ult ptr %i.ag, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 8, i64 %i.bg
  %n.vec = sub nsw i64 %wide.trip.count, %i.bi    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat96 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat98 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = phi i64 [ 0, %vector.ph ], [ %i.ec, %vector.body ] ; 3 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bk, align 2, !tbaa !109, !alias.scope !177, !noalias !178 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec101 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec102 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec103 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.bm = zext <8 x i16> %strided.vec101 to <8 x i32> ; 3 uses
  %i.bn = zext <8 x i16> %strided.vec102 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec103 to <8 x i32>
  %.idx107 = shl i64 %i.bj, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx107
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %wide.vec104 = load <32 x i16>, ptr %i.bq, align 2, !tbaa !109, !alias.scope !177, !noalias !178 ; 2 uses
  %strided.vec105 = shufflevector <32 x i16> %wide.vec104, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec106 = shufflevector <32 x i16> %wide.vec104, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.br = zext <8 x i16> %strided.vec105 to <8 x i32>
  %i.bs = zext <8 x i16> %strided.vec106 to <8 x i32>
  %i.bt = add <8 x i32> %broadcast.splat, %i.bn   ; 4 uses
  %i.bu = add <8 x i32> %broadcast.splat, %i.bo   ; 4 uses
  %i.bv = add <8 x i32> %broadcast.splat, %i.br
  %i.bw = add <8 x i32> %broadcast.splat, %i.bs
  %i.bx = add nsw <8 x i32> %i.bv, %i.bt
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 3 uses
  %i.bz = add nsw <8 x i32> %i.bw, %i.bu
  %i.ca = ashr <8 x i32> %i.bz, splat (i32 1)     ; 3 uses
  %i.cb = mul nsw <8 x i32> %i.bt, splat (i32 50)
  %i.cc = mul nsw <8 x i32> %i.bu, splat (i32 22929)
  %i.cd = add nsw <8 x i32> %i.cc, %i.cb
  %i.ce = ashr <8 x i32> %i.cd, splat (i32 12)
  %i.cf = add nsw <8 x i32> %i.ce, %i.bl
  %i.cg = mul nsw <8 x i32> %i.cf, %broadcast.splat94
  %i.ch = mul nsw <8 x i32> %i.bt, splat (i32 -5640)
  %i.ci = mul <8 x i32> %i.bu, splat (i32 -11751)
  %i.cj = add <8 x i32> %i.ci, %i.ch
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 12)
  %i.cl = add nsw <8 x i32> %i.ck, %i.bl
  %i.cm = mul nsw <8 x i32> %i.cl, %broadcast.splat96
  %i.cn = mul nsw <8 x i32> %i.bt, splat (i32 29040)
  %i.co = mul <8 x i32> %i.bu, splat (i32 -101)
  %i.cp = add <8 x i32> %i.co, %i.cn
  %i.cq = ashr <8 x i32> %i.cp, splat (i32 12)
  %i.cr = add nsw <8 x i32> %i.cq, %i.bl
  %i.cs = mul nsw <8 x i32> %i.cr, %broadcast.splat98
  %.idx108 = mul nuw nsw i64 %i.bj, 12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx108
  %i.cu = mul nsw <8 x i32> %i.by, splat (i32 50)
  %i.cv = mul nsw <8 x i32> %i.ca, splat (i32 22929)
  %i.cw = add nsw <8 x i32> %i.cv, %i.cu
  %i.cx = ashr <8 x i32> %i.cw, splat (i32 12)
  %i.cy = add nsw <8 x i32> %i.cx, %i.bm
  %i.cz = mul nsw <8 x i32> %i.cy, %broadcast.splat94
  %i.da = mul nsw <8 x i32> %i.by, splat (i32 -5640)
  %i.db = mul <8 x i32> %i.ca, splat (i32 -11751)
  %i.dc = add <8 x i32> %i.db, %i.da
  %i.dd = ashr <8 x i32> %i.dc, splat (i32 12)
  %i.de = add nsw <8 x i32> %i.dd, %i.bm
  %i.df = mul nsw <8 x i32> %i.de, %broadcast.splat96
  %i.dg = mul nsw <8 x i32> %i.by, splat (i32 29040)
  %i.dh = mul <8 x i32> %i.ca, splat (i32 -101)
  %i.di = add <8 x i32> %i.dh, %i.dg
  %i.dj = ashr <8 x i32> %i.di, splat (i32 12)
  %i.dk = add nsw <8 x i32> %i.dj, %i.bm
  %i.dl = mul nsw <8 x i32> %i.dk, %broadcast.splat98
  %i.dm = ashr <8 x i32> %i.df, splat (i32 8)
  %i.dn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dm, <8 x i32> zeroinitializer)
  %i.do = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dn, <8 x i32> splat (i32 65535))
  %i.dp = trunc nuw <8 x i32> %i.do to <8 x i16>
  %i.dq = ashr <8 x i32> %i.dl, splat (i32 8)
  %i.dr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dq, <8 x i32> zeroinitializer)
  %i.ds = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dr, <8 x i32> splat (i32 65535))
  %i.dt = trunc nuw <8 x i32> %i.ds to <8 x i16>
  %i.du = shufflevector <8 x i32> %i.cg, <8 x i32> %i.cm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dv = shufflevector <8 x i32> %i.cs, <8 x i32> %i.cz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dw = shufflevector <16 x i32> %i.du, <16 x i32> %i.dv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dx = ashr <32 x i32> %i.dw, splat (i32 8)
  %i.dy = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.dx, <32 x i32> zeroinitializer)
  %i.dz = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.dy, <32 x i32> splat (i32 65535))
  %i.ea = trunc nuw <32 x i32> %i.dz to <32 x i16>
  %i.eb = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.ea, <32 x i16> %i.eb, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ct, align 2, !tbaa !109, !alias.scope !179, !noalias !177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = add nuw nsw i64 %i.bj, 8
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %scalar.ph.preheader, label %vector.body, !llvm.loop !172

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.ee = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.ef = shufflevector <2 x i32> %i.ee, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <2 x i32> <i32 poison, i32 2>
  %i.eh = insertelement <2 x i32> %i.eg, i32 %i.as, i64 0
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.eq, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ei = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load <2 x i16>, ptr %i.en, align 2, !tbaa !109, !noalias !178
  %i.ep = zext <2 x i16> %i.eo to <2 x i32>
  %i.eq = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %.idx109 = shl nuw nsw i64 %i.eq, 2             ; 2 uses
  %3 = icmp ult i64 %.idx109, %invariant.op
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.idx109
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.es = load <2 x i16>, ptr %i.er, align 2, !tbaa !109, !noalias !178
  %i.et = zext <2 x i16> %i.es to <2 x i32>
  %i.eu = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ev = add nuw nsw i64 %i.eu, 3                ; 2 uses
  %i.ew = icmp samesign ule i64 %i.ev, %i.at
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.eu
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ev
  %i.ez = load i16, ptr %i.el, align 2, !tbaa !109, !noalias !178
  %i.fa = load <2 x i16>, ptr %i.ej, align 2, !tbaa !109, !noalias !178
  %i.fb = shufflevector <2 x i16> %i.fa, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fc = zext i16 %i.ez to i32
  %i.fd = zext <4 x i16> %i.fb to <4 x i32>
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.ff = add <2 x i32> %i.ef, %i.et
  %i.fg = add <2 x i32> %i.ef, %i.ep              ; 3 uses
  %i.fh = add nsw <2 x i32> %i.ff, %i.fg
  %i.fi = ashr <2 x i32> %i.fh, splat (i32 1)     ; 4 uses
  %i.fj = shufflevector <2 x i32> %i.fg, <2 x i32> %i.fi, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.fk = mul <4 x i32> %i.fj, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.fl = shufflevector <2 x i32> %i.fg, <2 x i32> %i.fi, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.fm = mul <4 x i32> %i.fl, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.fn = add <4 x i32> %i.fm, %i.fk
  %i.fo = ashr <4 x i32> %i.fn, splat (i32 12)
  %i.fp = add nsw <4 x i32> %i.fo, %i.fd
  %i.fq = mul nsw <4 x i32> %i.fp, %i.ar
  %i.fr = mul <2 x i32> %i.fi, <i32 29040, i32 -11751>
  %i.fs = shufflevector <2 x i32> %i.fr, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ft = mul <2 x i32> %i.fi, <i32 -5640, i32 -101>
  %i.fu = add <2 x i32> %i.ft, %i.fs
  %i.fv = ashr <2 x i32> %i.fu, splat (i32 12)
  %i.fw = insertelement <2 x i32> poison, i32 %i.fc, i64 0
  %i.fx = shufflevector <2 x i32> %i.fw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fy = add nsw <2 x i32> %i.fv, %i.fx
  %i.fz = mul nsw <2 x i32> %i.fy, %i.eh
  %i.ga = ashr <4 x i32> %i.fq, splat (i32 8)
  %i.gb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ga, <4 x i32> zeroinitializer)
  %i.gc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gb, <4 x i32> splat (i32 65535))
  %i.gd = trunc nuw <4 x i32> %i.gc to <4 x i16>
  store <4 x i16> %i.gd, ptr %i.ex, align 2, !tbaa !109
  %i.ge = ashr <2 x i32> %i.fz, splat (i32 8)
  %i.gf = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ge, <2 x i32> zeroinitializer)
  %i.gg = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.gf, <2 x i32> splat (i32 65535))
  %i.gh = trunc nuw <2 x i32> %i.gg to <2 x i16>
  store <2 x i16> %i.gh, ptr %i.fe, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.eq, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %scalar.ph
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.054.0.copyload, i64 %i.af ; 3 uses
  %i.gj = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gk
  %i.gm = or disjoint i64 %i.gk, 1                ; 2 uses
  %i.gn = icmp samesign ult i64 %i.gm, %2
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gm
  %i.gp = icmp samesign ult i32 %i.gj, %i.s
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = zext nneg i32 %i.gj to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !106
  %i.gv = add i32 %i.gu, -16384
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.gx = mul nuw nsw i32 %i.ac, 6
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gz = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.ha = add nuw nsw i64 %i.gz, 3                ; 2 uses
  %i.hb = icmp samesign ule i64 %i.ha, %i.at
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.ha
  %i.he = load i16, ptr %i.go, align 2, !tbaa !109, !noalias !180
  %i.hf = load <2 x i16>, ptr %i.gl, align 2, !tbaa !109, !noalias !180
  %i.hg = shufflevector <2 x i16> %i.hf, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hh = zext i16 %i.he to i32
  %i.hi = zext <4 x i16> %i.hg to <4 x i32>
  %i.hj = load <2 x i16>, ptr %i.gs, align 2, !tbaa !109, !noalias !180
  %i.hk = zext <2 x i16> %i.hj to <2 x i32>
  %i.hl = insertelement <2 x i32> poison, i32 %i.gv, i64 0
  %i.hm = shufflevector <2 x i32> %i.hl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hn = add <2 x i32> %i.hm, %i.hk              ; 2 uses
  %i.ho = shufflevector <2 x i32> %i.hn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hp = load <3 x i32>, ptr %i.gy, align 8, !tbaa !107 ; 2 uses
  %i.hq = shufflevector <3 x i32> %i.hp, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hr = mul <4 x i32> %i.ho, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.hs = shufflevector <2 x i32> %i.hn, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ht = mul <4 x i32> %i.hs, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.hu = add <4 x i32> %i.hr, %i.ht
  %i.hv = ashr <4 x i32> %i.hu, splat (i32 12)    ; 2 uses
  %i.hw = add nsw <4 x i32> %i.hv, %i.hi
  %i.hx = mul nsw <4 x i32> %i.hw, %i.hq
  %i.hy = ashr <4 x i32> %i.hx, splat (i32 8)
  %i.hz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hy, <4 x i32> zeroinitializer)
  %i.ia = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hz, <4 x i32> splat (i32 65535))
  %i.ib = trunc nuw <4 x i32> %i.ia to <4 x i16>
  store <4 x i16> %i.ib, ptr %i.hc, align 2, !tbaa !109
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.id = shufflevector <4 x i32> %i.hv, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ie = insertelement <2 x i32> poison, i32 %i.hh, i64 0
  %i.if = shufflevector <2 x i32> %i.ie, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ig = add nsw <2 x i32> %i.id, %i.if
  %i.ih = shufflevector <3 x i32> %i.hp, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ii = mul nsw <2 x i32> %i.ig, %i.ih
  %i.ij = ashr <2 x i32> %i.ii, splat (i32 8)
  %i.ik = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ij, <2 x i32> zeroinitializer)
  %i.il = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ik, <2 x i32> splat (i32 65535))
  %i.im = trunc nuw <2 x i32> %i.il to <2 x i16>
  store <2 x i16> %i.im, ptr %i.ic, align 2, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !192 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99, !noalias !192
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100, !noalias !192
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96, !noalias !192
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101, !noalias !192
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
  %2 = zext nneg i32 %i.s to i64                  ; 2 uses
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
  %invariant.op = add nsw i64 %2, -1
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.am, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = zext i32 %i.w to i64
  %i.az = zext i32 %1 to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 1
  %i.bc = shl nuw nsw i64 %wide.trip.count, 3
  %i.bd = getelementptr i8, ptr %.sroa.050.0.copyload, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %bound0 = icmp ult ptr %i.an, %i.bf
  %bound1 = icmp ult ptr %i.ag, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 8, i64 %i.bg
  %n.vec = sub nsw i64 %wide.trip.count, %i.bi    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat90 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat92 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = phi i64 [ 0, %vector.ph ], [ %i.dm, %vector.body ] ; 3 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bk, align 2, !tbaa !109, !alias.scope !193, !noalias !194 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec97 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec98 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec99 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.bm = zext <8 x i16> %strided.vec97 to <8 x i32> ; 3 uses
  %i.bn = zext <8 x i16> %strided.vec98 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec99 to <8 x i32>
  %.idx103 = shl i64 %i.bj, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx103
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %wide.vec100 = load <32 x i16>, ptr %i.bq, align 2, !tbaa !109, !alias.scope !193, !noalias !194 ; 2 uses
  %strided.vec101 = shufflevector <32 x i16> %wide.vec100, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec102 = shufflevector <32 x i16> %wide.vec100, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.br = zext <8 x i16> %strided.vec101 to <8 x i32>
  %i.bs = zext <8 x i16> %strided.vec102 to <8 x i32>
  %i.bt = add <8 x i32> %broadcast.splat, %i.bn   ; 3 uses
  %i.bu = add <8 x i32> %broadcast.splat, %i.bo   ; 3 uses
  %i.bv = add <8 x i32> %broadcast.splat, %i.br
  %i.bw = add <8 x i32> %broadcast.splat, %i.bs
  %i.bx = add nsw <8 x i32> %i.bv, %i.bt
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 2 uses
  %i.bz = add nsw <8 x i32> %i.bw, %i.bu
  %i.ca = ashr <8 x i32> %i.bz, splat (i32 1)     ; 2 uses
  %i.cb = add nsw <8 x i32> %i.bu, %i.bl
  %i.cc = mul nsw <8 x i32> %i.cb, %broadcast.splat90
  %i.cd = mul nsw <8 x i32> %i.bt, splat (i32 -778)
  %i.ce = shl nsw <8 x i32> %i.bu, splat (i32 11)
  %i.cf = sub nsw <8 x i32> %i.cd, %i.ce
  %i.cg = ashr <8 x i32> %i.cf, splat (i32 12)
  %i.ch = add nsw <8 x i32> %i.cg, %i.bl
  %i.ci = mul nsw <8 x i32> %i.ch, %broadcast.splat92
  %i.cj = add nsw <8 x i32> %i.bt, %i.bl
  %i.ck = mul nsw <8 x i32> %i.cj, %broadcast.splat94
  %.idx104 = mul nuw nsw i64 %i.bj, 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx104
  %i.cm = add nsw <8 x i32> %i.ca, %i.bm
  %i.cn = mul nsw <8 x i32> %i.cm, %broadcast.splat90
  %i.co = mul nsw <8 x i32> %i.by, splat (i32 -778)
  %i.cp = shl nsw <8 x i32> %i.ca, splat (i32 11)
  %i.cq = sub nsw <8 x i32> %i.co, %i.cp
  %i.cr = ashr <8 x i32> %i.cq, splat (i32 12)
  %i.cs = add nsw <8 x i32> %i.cr, %i.bm
  %i.ct = mul nsw <8 x i32> %i.cs, %broadcast.splat92
  %i.cu = add nsw <8 x i32> %i.by, %i.bm
  %i.cv = mul nsw <8 x i32> %i.cu, %broadcast.splat94
  %i.cw = ashr <8 x i32> %i.ct, splat (i32 8)
  %i.cx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cw, <8 x i32> zeroinitializer)
  %i.cy = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cx, <8 x i32> splat (i32 65535))
  %i.cz = trunc nuw <8 x i32> %i.cy to <8 x i16>
  %i.da = ashr <8 x i32> %i.cv, splat (i32 8)
  %i.db = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.da, <8 x i32> zeroinitializer)
  %i.dc = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.db, <8 x i32> splat (i32 65535))
  %i.dd = trunc nuw <8 x i32> %i.dc to <8 x i16>
  %i.de = shufflevector <8 x i32> %i.cc, <8 x i32> %i.ci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.df = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dg = shufflevector <16 x i32> %i.de, <16 x i32> %i.df, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dh = ashr <32 x i32> %i.dg, splat (i32 8)
  %i.di = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.dh, <32 x i32> zeroinitializer)
  %i.dj = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.di, <32 x i32> splat (i32 65535))
  %i.dk = trunc nuw <32 x i32> %i.dj to <32 x i16>
  %i.dl = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.dk, <32 x i16> %i.dl, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.cl, align 2, !tbaa !109, !alias.scope !195, !noalias !193
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = add nuw nsw i64 %i.bj, 8
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !188

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.do = extractelement <3 x i32> %i.aq, i64 2
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.ea, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dp = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !109, !noalias !194
  %i.dw = zext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !109, !noalias !194
  %i.dz = zext i16 %i.dy to i32
  %i.ea = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %.idx105 = shl nuw nsw i64 %i.ea, 2             ; 2 uses
  %3 = icmp ult i64 %.idx105, %invariant.op
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.idx105 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !109, !noalias !194
  %i.ed = zext i16 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !109, !noalias !194
  %i.eg = zext i16 %i.ef to i32
  %i.eh = add i32 %i.aj, %i.ed
  %i.ei = add i32 %i.aj, %i.eg
  %i.ej = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ek = add nuw nsw i64 %i.ej, 3                ; 2 uses
  %i.el = icmp samesign ule i64 %i.ek, %i.at
  tail call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ej
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ek ; 2 uses
  %i.eo = load i16, ptr %i.ds, align 2, !tbaa !109, !noalias !194
  %i.ep = load <2 x i16>, ptr %i.dq, align 2, !tbaa !109, !noalias !194
  %i.eq = shufflevector <2 x i16> %i.ep, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.er = zext i16 %i.eo to i32                   ; 2 uses
  %i.es = zext <4 x i16> %i.eq to <4 x i32>
  %i.et = add i32 %i.aj, %i.dw                    ; 3 uses
  %i.eu = add i32 %i.aj, %i.dz                    ; 3 uses
  %i.ev = add nsw i32 %i.eh, %i.et
  %i.ew = ashr i32 %i.ev, 1                       ; 2 uses
  %i.ex = add nsw i32 %i.ei, %i.eu
  %i.ey = ashr i32 %i.ex, 1                       ; 2 uses
  %i.ez = mul nsw i32 %i.et, -778
  %i.fa = shl nsw i32 %i.eu, 11
  %i.fb = sub nsw i32 %i.ez, %i.fa
  %i.fc = ashr i32 %i.fb, 12
  %i.fd = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.fc, i64 1
  %i.ff = insertelement <4 x i32> %i.fe, i32 %i.et, i64 2
  %i.fg = insertelement <4 x i32> %i.ff, i32 %i.ey, i64 3
  %i.fh = add nsw <4 x i32> %i.fg, %i.es
  %i.fi = mul nsw <4 x i32> %i.fh, %i.ar
  %i.fj = mul nsw i32 %i.ew, -778
  %i.fk = shl nsw i32 %i.ey, 11
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = ashr i32 %i.fl, 12
  %i.fn = add nsw i32 %i.fm, %i.er
  %i.fo = mul nsw i32 %i.fn, %i.as
  %i.fp = add nsw i32 %i.ew, %i.er
  %i.fq = mul nsw i32 %i.fp, %i.do
  %i.fr = ashr <4 x i32> %i.fi, splat (i32 8)
  %i.fs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fr, <4 x i32> zeroinitializer)
  %i.ft = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fs, <4 x i32> splat (i32 65535))
  %i.fu = trunc nuw <4 x i32> %i.ft to <4 x i16>
  store <4 x i16> %i.fu, ptr %i.em, align 2, !tbaa !109
  %i.fv = ashr i32 %i.fo, 8
  %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.fv, i32 0)
  %i.fw = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i, i32 65535)
  %i.fx = trunc nuw i32 %i.fw to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !109
  %i.fz = ashr i32 %i.fq, 8
  %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.fz, i32 0)
  %i.ga = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i, i32 65535)
  %i.gb = trunc nuw i32 %i.ga to i16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.ea, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %scalar.ph
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 3 uses
  %i.ge = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gf = zext nneg i32 %i.ge to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gf
  %i.gh = or disjoint i64 %i.gf, 1                ; 2 uses
  %i.gi = icmp samesign ult i64 %i.gh, %2
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
  %i.y = udiv i32 %i.s, 6
  %i.z = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.0114.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 7 uses
  %i.aa = icmp slt i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i32 %i.y, -1                    ; 3 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  %i.ae = add i32 %i.ad, -16384                   ; 3 uses
  %i.af = shl nsw i32 %1, 1                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load <3 x i32>, ptr %i.ag, align 8, !tbaa !107 ; 5 uses
  %i.ai = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !107
  %2 = zext nneg i32 %i.s to i64                  ; 3 uses
  %i.ak = zext nneg i32 %invariant.op to i64
  %i.al = sext i32 %1 to i64                      ; 3 uses
  %i.am = zext nneg i32 %i.u to i64
  %i.an = zext nneg i32 %i.w to i64               ; 4 uses
  %i.ao = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ap = zext i32 %i.af to i64                   ; 3 uses
  %i.aq = zext i32 %i.n to i64                    ; 4 uses
  %i.ar = zext nneg i32 %i.k to i64
  %wide.trip.count = zext i32 %i.ab to i64        ; 4 uses
  %i.as = mul nuw nsw i64 %i.al, %i.an            ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.as ; 20 uses
  %invariant.op544 = add nsw i64 %2, -1
  %invariant.op545 = add nsw i64 %2, -3
  %i.au = add nuw nsw i64 %i.al, 1                ; 3 uses
  %i.av = icmp samesign ult i64 %i.au, %i.am
  tail call void @llvm.assume(i1 %i.av), !noalias !209
  %i.aw = mul nuw nsw i64 %i.au, %i.an            ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.aw ; 4 uses
  %i.ay = icmp ult i32 %i.af, %i.k
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = mul nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.d, i64 %i.az ; 16 uses
  %i.bb = or disjoint i64 %i.ap, 1                ; 3 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.ar
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = mul nuw i64 %i.bb, %i.aq                ; 2 uses
  %i.be = getelementptr [2 x i8], ptr %i.d, i64 %i.bd ; 16 uses
  %min.iters.check = icmp ult i32 %i.ab, 33
  br i1 %min.iters.check, label %.preheader215.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bf = mul nuw i64 %i.aq, %i.ap
  %i.bg = shl i64 %i.bf, 1                        ; 6 uses
  %i.bh = mul nuw nsw i64 %wide.trip.count, 12    ; 4 uses
  %i.bi = add i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -10    ; 13 uses
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.bm = getelementptr i8, ptr %i.bl, i64 2      ; 13 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8     ; 13 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.bq = getelementptr i8, ptr %i.bp, i64 4      ; 13 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bs = getelementptr i8, ptr %i.br, i64 -6     ; 13 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.bu = getelementptr i8, ptr %i.bt, i64 6      ; 13 uses
  %i.bv = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4     ; 13 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.by = getelementptr i8, ptr %i.bx, i64 8      ; 13 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2     ; 13 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.cc = getelementptr i8, ptr %i.cb, i64 10     ; 13 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bi   ; 13 uses
  %i.ce = mul nuw i64 %i.bb, %i.aq
  %i.cf = shl i64 %i.ce, 1                        ; 6 uses
  %i.cg = add i64 %i.cf, %i.bh                    ; 6 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -10    ; 13 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.ck = getelementptr i8, ptr %i.cj, i64 2      ; 13 uses
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8     ; 13 uses
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.co = getelementptr i8, ptr %i.cn, i64 4      ; 13 uses
  %i.cp = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cq = getelementptr i8, ptr %i.cp, i64 -6     ; 13 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.cs = getelementptr i8, ptr %i.cr, i64 6      ; 13 uses
  %i.ct = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cu = getelementptr i8, ptr %i.ct, i64 -4     ; 13 uses
  %i.cv = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.cw = getelementptr i8, ptr %i.cv, i64 8      ; 13 uses
  %i.cx = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cy = getelementptr i8, ptr %i.cx, i64 -2     ; 13 uses
  %i.cz = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.da = getelementptr i8, ptr %i.cz, i64 10     ; 13 uses
  %i.db = getelementptr i8, ptr %i.d, i64 %i.cg   ; 13 uses
  %i.dc = mul nuw nsw i64 %i.au, %i.an
  %i.dd = shl i64 %i.dc, 1                        ; 2 uses
  %i.de = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8      ; 12 uses
  %i.dg = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.dd
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.bh
  %i.di = getelementptr i8, ptr %i.dh, i64 12     ; 12 uses
  %i.dj = mul nsw i64 %i.al, %i.an
  %i.dk = shl i64 %i.dj, 1
  %i.dl = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.bh
  %i.dn = getelementptr i8, ptr %i.dm, i64 12     ; 12 uses
  %bound0 = icmp ult ptr %i.ba, %i.bo
  %bound1 = icmp ult ptr %i.bm, %i.bk
  %found.conflict = and i1 %bound0, %bound1
  %bound0923 = icmp ult ptr %i.ba, %i.bs
  %bound1924 = icmp ult ptr %i.bq, %i.bk
  %found.conflict925 = and i1 %bound0923, %bound1924
  %conflict.rdx = or i1 %found.conflict, %found.conflict925
  %bound0926 = icmp ult ptr %i.ba, %i.bw
  %bound1927 = icmp ult ptr %i.bu, %i.bk
  %found.conflict928 = and i1 %bound0926, %bound1927
  %conflict.rdx929 = or i1 %conflict.rdx, %found.conflict928
  %bound0930 = icmp ult ptr %i.ba, %i.ca
  %bound1931 = icmp ult ptr %i.by, %i.bk
  %found.conflict932 = and i1 %bound0930, %bound1931
  %conflict.rdx933 = or i1 %conflict.rdx929, %found.conflict932
  %bound0934 = icmp ult ptr %i.ba, %i.cd
  %bound1935 = icmp ult ptr %i.cc, %i.bk
  %found.conflict936 = and i1 %bound0934, %bound1935
  %conflict.rdx937 = or i1 %conflict.rdx933, %found.conflict936
  %bound0938 = icmp ult ptr %i.ba, %i.ci
  %bound1939 = icmp ult ptr %i.be, %i.bk
  %found.conflict940 = and i1 %bound0938, %bound1939
  %conflict.rdx941 = or i1 %conflict.rdx937, %found.conflict940
  %bound0942 = icmp ult ptr %i.ba, %i.cm
  %bound1943 = icmp ult ptr %i.ck, %i.bk
  %found.conflict944 = and i1 %bound0942, %bound1943
  %conflict.rdx945 = or i1 %conflict.rdx941, %found.conflict944
  %bound0946 = icmp ult ptr %i.ba, %i.cq
  %bound1947 = icmp ult ptr %i.co, %i.bk
  %found.conflict948 = and i1 %bound0946, %bound1947
  %conflict.rdx949 = or i1 %conflict.rdx945, %found.conflict948
  %bound0950 = icmp ult ptr %i.ba, %i.cu
  %bound1951 = icmp ult ptr %i.cs, %i.bk
  %found.conflict952 = and i1 %bound0950, %bound1951
  %conflict.rdx953 = or i1 %conflict.rdx949, %found.conflict952
  %bound0954 = icmp ult ptr %i.ba, %i.cy
  %bound1955 = icmp ult ptr %i.cw, %i.bk
  %found.conflict956 = and i1 %bound0954, %bound1955
  %conflict.rdx957 = or i1 %conflict.rdx953, %found.conflict956
  %bound0958 = icmp ult ptr %i.ba, %i.db
  %bound1959 = icmp ult ptr %i.da, %i.bk
  %found.conflict960 = and i1 %bound0958, %bound1959
  %conflict.rdx961 = or i1 %conflict.rdx957, %found.conflict960
  %bound0962 = icmp ult ptr %i.ba, %i.di
  %bound1963 = icmp ult ptr %i.df, %i.bk
  %found.conflict964 = and i1 %bound0962, %bound1963
  %conflict.rdx965 = or i1 %conflict.rdx961, %found.conflict964
  %bound0966 = icmp ult ptr %i.ba, %i.dn
  %bound1967 = icmp ult ptr %i.at, %i.bk
  %found.conflict968 = and i1 %bound0966, %bound1967
  %conflict.rdx969 = or i1 %conflict.rdx965, %found.conflict968
  %bound0970 = icmp ult ptr %i.bm, %i.bs
  %bound1971 = icmp ult ptr %i.bq, %i.bo
  %found.conflict972 = and i1 %bound0970, %bound1971
  %conflict.rdx973 = or i1 %conflict.rdx969, %found.conflict972
  %bound0974 = icmp ult ptr %i.bm, %i.bw
  %bound1975 = icmp ult ptr %i.bu, %i.bo
  %found.conflict976 = and i1 %bound0974, %bound1975
  %conflict.rdx977 = or i1 %conflict.rdx973, %found.conflict976
  %bound0978 = icmp ult ptr %i.bm, %i.ca
  %bound1979 = icmp ult ptr %i.by, %i.bo
  %found.conflict980 = and i1 %bound0978, %bound1979
  %conflict.rdx981 = or i1 %conflict.rdx977, %found.conflict980
  %bound0982 = icmp ult ptr %i.bm, %i.cd
  %bound1983 = icmp ult ptr %i.cc, %i.bo
  %found.conflict984 = and i1 %bound0982, %bound1983
  %conflict.rdx985 = or i1 %conflict.rdx981, %found.conflict984
  %bound0986 = icmp ult ptr %i.bm, %i.ci
  %bound1987 = icmp ult ptr %i.be, %i.bo
  %found.conflict988 = and i1 %bound0986, %bound1987
  %conflict.rdx989 = or i1 %conflict.rdx985, %found.conflict988
  %bound0990 = icmp ult ptr %i.bm, %i.cm
  %bound1991 = icmp ult ptr %i.ck, %i.bo
  %found.conflict992 = and i1 %bound0990, %bound1991
  %conflict.rdx993 = or i1 %conflict.rdx989, %found.conflict992
  %bound0994 = icmp ult ptr %i.bm, %i.cq
  %bound1995 = icmp ult ptr %i.co, %i.bo
  %found.conflict996 = and i1 %bound0994, %bound1995
  %conflict.rdx997 = or i1 %conflict.rdx993, %found.conflict996
  %bound0998 = icmp ult ptr %i.bm, %i.cu
  %bound1999 = icmp ult ptr %i.cs, %i.bo
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %conflict.rdx1001 = or i1 %conflict.rdx997, %found.conflict1000
  %bound01002 = icmp ult ptr %i.bm, %i.cy
  %bound11003 = icmp ult ptr %i.cw, %i.bo
  %found.conflict1004 = and i1 %bound01002, %bound11003
  %conflict.rdx1005 = or i1 %conflict.rdx1001, %found.conflict1004
  %bound01006 = icmp ult ptr %i.bm, %i.db
  %bound11007 = icmp ult ptr %i.da, %i.bo
  %found.conflict1008 = and i1 %bound01006, %bound11007
  %conflict.rdx1009 = or i1 %conflict.rdx1005, %found.conflict1008
  %bound01010 = icmp ult ptr %i.bm, %i.di
  %bound11011 = icmp ult ptr %i.df, %i.bo
  %found.conflict1012 = and i1 %bound01010, %bound11011
  %conflict.rdx1013 = or i1 %conflict.rdx1009, %found.conflict1012
  %bound01014 = icmp ult ptr %i.bm, %i.dn
  %bound11015 = icmp ult ptr %i.at, %i.bo
  %found.conflict1016 = and i1 %bound01014, %bound11015
  %conflict.rdx1017 = or i1 %conflict.rdx1013, %found.conflict1016
  %bound01018 = icmp ult ptr %i.bq, %i.bw
  %bound11019 = icmp ult ptr %i.bu, %i.bs
  %found.conflict1020 = and i1 %bound01018, %bound11019
  %conflict.rdx1021 = or i1 %conflict.rdx1017, %found.conflict1020
  %bound01022 = icmp ult ptr %i.bq, %i.ca
  %bound11023 = icmp ult ptr %i.by, %i.bs
  %found.conflict1024 = and i1 %bound01022, %bound11023
  %conflict.rdx1025 = or i1 %conflict.rdx1021, %found.conflict1024
  %bound01026 = icmp ult ptr %i.bq, %i.cd
  %bound11027 = icmp ult ptr %i.cc, %i.bs
  %found.conflict1028 = and i1 %bound01026, %bound11027
  %conflict.rdx1029 = or i1 %conflict.rdx1025, %found.conflict1028
  %bound01030 = icmp ult ptr %i.bq, %i.ci
  %bound11031 = icmp ult ptr %i.be, %i.bs
  %found.conflict1032 = and i1 %bound01030, %bound11031
  %conflict.rdx1033 = or i1 %conflict.rdx1029, %found.conflict1032
  %bound01034 = icmp ult ptr %i.bq, %i.cm
  %bound11035 = icmp ult ptr %i.ck, %i.bs
  %found.conflict1036 = and i1 %bound01034, %bound11035
  %conflict.rdx1037 = or i1 %conflict.rdx1033, %found.conflict1036
  %bound01038 = icmp ult ptr %i.bq, %i.cq
  %bound11039 = icmp ult ptr %i.co, %i.bs
  %found.conflict1040 = and i1 %bound01038, %bound11039
  %conflict.rdx1041 = or i1 %conflict.rdx1037, %found.conflict1040
  %bound01042 = icmp ult ptr %i.bq, %i.cu
  %bound11043 = icmp ult ptr %i.cs, %i.bs
  %found.conflict1044 = and i1 %bound01042, %bound11043
  %conflict.rdx1045 = or i1 %conflict.rdx1041, %found.conflict1044
  %bound01046 = icmp ult ptr %i.bq, %i.cy
  %bound11047 = icmp ult ptr %i.cw, %i.bs
  %found.conflict1048 = and i1 %bound01046, %bound11047
  %conflict.rdx1049 = or i1 %conflict.rdx1045, %found.conflict1048
  %bound01050 = icmp ult ptr %i.bq, %i.db
  %bound11051 = icmp ult ptr %i.da, %i.bs
  %found.conflict1052 = and i1 %bound01050, %bound11051
  %conflict.rdx1053 = or i1 %conflict.rdx1049, %found.conflict1052
  %bound01054 = icmp ult ptr %i.bq, %i.di
  %bound11055 = icmp ult ptr %i.df, %i.bs
  %found.conflict1056 = and i1 %bound01054, %bound11055
  %conflict.rdx1057 = or i1 %conflict.rdx1053, %found.conflict1056
  %bound01058 = icmp ult ptr %i.bq, %i.dn
  %bound11059 = icmp ult ptr %i.at, %i.bs
  %found.conflict1060 = and i1 %bound01058, %bound11059
  %conflict.rdx1061 = or i1 %conflict.rdx1057, %found.conflict1060
  %bound01062 = icmp ult ptr %i.bu, %i.ca
  %bound11063 = icmp ult ptr %i.by, %i.bw
  %found.conflict1064 = and i1 %bound01062, %bound11063
  %conflict.rdx1065 = or i1 %conflict.rdx1061, %found.conflict1064
  %bound01066 = icmp ult ptr %i.bu, %i.cd
  %bound11067 = icmp ult ptr %i.cc, %i.bw
  %found.conflict1068 = and i1 %bound01066, %bound11067
  %conflict.rdx1069 = or i1 %conflict.rdx1065, %found.conflict1068
  %bound01070 = icmp ult ptr %i.bu, %i.ci
  %bound11071 = icmp ult ptr %i.be, %i.bw
  %found.conflict1072 = and i1 %bound01070, %bound11071
  %conflict.rdx1073 = or i1 %conflict.rdx1069, %found.conflict1072
  %bound01074 = icmp ult ptr %i.bu, %i.cm
  %bound11075 = icmp ult ptr %i.ck, %i.bw
  %found.conflict1076 = and i1 %bound01074, %bound11075
  %conflict.rdx1077 = or i1 %conflict.rdx1073, %found.conflict1076
  %bound01078 = icmp ult ptr %i.bu, %i.cq
  %bound11079 = icmp ult ptr %i.co, %i.bw
  %found.conflict1080 = and i1 %bound01078, %bound11079
  %conflict.rdx1081 = or i1 %conflict.rdx1077, %found.conflict1080
  %bound01082 = icmp ult ptr %i.bu, %i.cu
  %bound11083 = icmp ult ptr %i.cs, %i.bw
  %found.conflict1084 = and i1 %bound01082, %bound11083
  %conflict.rdx1085 = or i1 %conflict.rdx1081, %found.conflict1084
  %bound01086 = icmp ult ptr %i.bu, %i.cy
  %bound11087 = icmp ult ptr %i.cw, %i.bw
  %found.conflict1088 = and i1 %bound01086, %bound11087
  %conflict.rdx1089 = or i1 %conflict.rdx1085, %found.conflict1088
  %bound01090 = icmp ult ptr %i.bu, %i.db
  %bound11091 = icmp ult ptr %i.da, %i.bw
  %found.conflict1092 = and i1 %bound01090, %bound11091
  %conflict.rdx1093 = or i1 %conflict.rdx1089, %found.conflict1092
  %bound01094 = icmp ult ptr %i.bu, %i.di
  %bound11095 = icmp ult ptr %i.df, %i.bw
  %found.conflict1096 = and i1 %bound01094, %bound11095
  %conflict.rdx1097 = or i1 %conflict.rdx1093, %found.conflict1096
  %bound01098 = icmp ult ptr %i.bu, %i.dn
  %bound11099 = icmp ult ptr %i.at, %i.bw
  %found.conflict1100 = and i1 %bound01098, %bound11099
  %conflict.rdx1101 = or i1 %conflict.rdx1097, %found.conflict1100
  %bound01102 = icmp ult ptr %i.by, %i.cd
  %bound11103 = icmp ult ptr %i.cc, %i.ca
  %found.conflict1104 = and i1 %bound01102, %bound11103
  %conflict.rdx1105 = or i1 %conflict.rdx1101, %found.conflict1104
  %bound01106 = icmp ult ptr %i.by, %i.ci
  %bound11107 = icmp ult ptr %i.be, %i.ca
end_hunk_2
begin_hunk_3_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi:.lr.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.dr = phi i64 [ 0, %vector.ph ], [ %i.jk, %vector.body ] ; 3 uses
  %i.ds = mul nuw nsw i64 %i.dr, 6                ; 4 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ds
  %wide.vec = load <48 x i16>, ptr %i.dt, align 2, !tbaa !109, !alias.scope !210, !noalias !209 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1288 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec1289 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec1290 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec1291 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec1292 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.du = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.dv = zext <8 x i16> %strided.vec1288 to <8 x i32> ; 3 uses
  %i.dw = zext <8 x i16> %strided.vec1289 to <8 x i32> ; 3 uses
  %i.dx = zext <8 x i16> %strided.vec1290 to <8 x i32> ; 3 uses
  %i.dy = zext <8 x i16> %strided.vec1291 to <8 x i32>
  %i.dz = zext <8 x i16> %strided.vec1292 to <8 x i32>
  %i.ea = mul nuw i64 %i.dr, 6
  %i.eb = or disjoint i64 %i.ea, 10               ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.eb
  %wide.vec1293 = load <48 x i16>, ptr %i.ec, align 2, !tbaa !109, !alias.scope !210, !noalias !209 ; 2 uses
  %strided.vec1294 = shufflevector <48 x i16> %wide.vec1293, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1295 = shufflevector <48 x i16> %wide.vec1293, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.ed = zext <8 x i16> %strided.vec1294 to <8 x i32>
  %i.ee = zext <8 x i16> %strided.vec1295 to <8 x i32>
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ds
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %wide.vec1296 = load <48 x i16>, ptr %i.eg, align 2, !tbaa !109, !alias.scope !211, !noalias !209 ; 2 uses
  %strided.vec1297 = shufflevector <48 x i16> %wide.vec1296, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1298 = shufflevector <48 x i16> %wide.vec1296, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.eh = zext <8 x i16> %strided.vec1297 to <8 x i32>
  %i.ei = zext <8 x i16> %strided.vec1298 to <8 x i32>
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.eb
  %wide.vec1299 = load <48 x i16>, ptr %i.ej, align 2, !tbaa !109, !alias.scope !211, !noalias !209 ; 2 uses
  %strided.vec1300 = shufflevector <48 x i16> %wide.vec1299, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1301 = shufflevector <48 x i16> %wide.vec1299, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.ek = zext <8 x i16> %strided.vec1300 to <8 x i32>
  %i.el = zext <8 x i16> %strided.vec1301 to <8 x i32>
  %i.em = add <8 x i32> %broadcast.splat, %i.dy   ; 5 uses
  %i.en = add <8 x i32> %broadcast.splat, %i.dz   ; 5 uses
  %i.eo = add <8 x i32> %broadcast.splat, %i.ed
  %i.ep = add <8 x i32> %broadcast.splat, %i.ee
  %i.eq = add <8 x i32> %broadcast.splat, %i.eh   ; 2 uses
  %i.er = add <8 x i32> %broadcast.splat, %i.ei   ; 2 uses
  %i.es = add <8 x i32> %broadcast.splat, %i.ek
  %i.et = add <8 x i32> %broadcast.splat, %i.el
  %i.eu = add nsw <8 x i32> %i.eo, %i.em          ; 2 uses
  %i.ev = ashr <8 x i32> %i.eu, splat (i32 1)     ; 3 uses
  %i.ew = add nsw <8 x i32> %i.ep, %i.en          ; 2 uses
  %i.ex = ashr <8 x i32> %i.ew, splat (i32 1)     ; 3 uses
  %i.ey = add nsw <8 x i32> %i.eq, %i.em
  %i.ez = ashr <8 x i32> %i.ey, splat (i32 1)     ; 3 uses
  %i.fa = add nsw <8 x i32> %i.er, %i.en
  %i.fb = ashr <8 x i32> %i.fa, splat (i32 1)     ; 3 uses
  %i.fc = add nsw <8 x i32> %i.eq, %i.eu
  %i.fd = add nsw <8 x i32> %i.fc, %i.es
  %i.fe = ashr <8 x i32> %i.fd, splat (i32 2)     ; 3 uses
  %i.ff = add nsw <8 x i32> %i.er, %i.ew
  %i.fg = add nsw <8 x i32> %i.ff, %i.et
  %i.fh = ashr <8 x i32> %i.fg, splat (i32 2)     ; 3 uses
  %i.fi = mul nsw <8 x i32> %i.em, splat (i32 50)
  %i.fj = mul nsw <8 x i32> %i.en, splat (i32 22929)
  %i.fk = add nsw <8 x i32> %i.fj, %i.fi
  %i.fl = ashr <8 x i32> %i.fk, splat (i32 12)
  %i.fm = add nsw <8 x i32> %i.fl, %i.du
  %i.fn = mul nsw <8 x i32> %i.fm, %broadcast.splat1279
  %i.fo = mul nsw <8 x i32> %i.em, splat (i32 -5640)
  %i.fp = mul <8 x i32> %i.en, splat (i32 -11751)
  %i.fq = add <8 x i32> %i.fp, %i.fo
  %i.fr = ashr <8 x i32> %i.fq, splat (i32 12)
  %i.fs = add nsw <8 x i32> %i.fr, %i.du
  %i.ft = mul nsw <8 x i32> %i.fs, %broadcast.splat1281
  %i.fu = mul nsw <8 x i32> %i.em, splat (i32 29040)
  %i.fv = mul <8 x i32> %i.en, splat (i32 -101)
  %i.fw = add <8 x i32> %i.fv, %i.fu
  %i.fx = ashr <8 x i32> %i.fw, splat (i32 12)
  %i.fy = add nsw <8 x i32> %i.fx, %i.du
  %i.fz = mul nsw <8 x i32> %i.fy, %broadcast.splat1283
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ds
  %i.gb = mul nsw <8 x i32> %i.ev, splat (i32 50)
  %i.gc = mul nsw <8 x i32> %i.ex, splat (i32 22929)
  %i.gd = add nsw <8 x i32> %i.gc, %i.gb
  %i.ge = ashr <8 x i32> %i.gd, splat (i32 12)
  %i.gf = add nsw <8 x i32> %i.ge, %i.dv
  %i.gg = mul nsw <8 x i32> %i.gf, %broadcast.splat1279
  %i.gh = mul nsw <8 x i32> %i.ev, splat (i32 -5640)
  %i.gi = mul <8 x i32> %i.ex, splat (i32 -11751)
  %i.gj = add <8 x i32> %i.gi, %i.gh
  %i.gk = ashr <8 x i32> %i.gj, splat (i32 12)
  %i.gl = add nsw <8 x i32> %i.gk, %i.dv
  %i.gm = mul nsw <8 x i32> %i.gl, %broadcast.splat1281
  %i.gn = mul nsw <8 x i32> %i.ev, splat (i32 29040)
  %i.go = mul <8 x i32> %i.ex, splat (i32 -101)
  %i.gp = add <8 x i32> %i.go, %i.gn
  %i.gq = ashr <8 x i32> %i.gp, splat (i32 12)
  %i.gr = add nsw <8 x i32> %i.gq, %i.dv
  %i.gs = mul nsw <8 x i32> %i.gr, %broadcast.splat1283
  %i.gt = ashr <8 x i32> %i.gm, splat (i32 8)
  %i.gu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gt, <8 x i32> zeroinitializer)
  %i.gv = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gu, <8 x i32> splat (i32 65535))
  %i.gw = trunc nuw <8 x i32> %i.gv to <8 x i16>
  %i.gx = ashr <8 x i32> %i.gs, splat (i32 8)
  %i.gy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> zeroinitializer)
  %i.gz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 65535))
  %i.ha = trunc nuw <8 x i32> %i.gz to <8 x i16>
  %i.hb = shufflevector <8 x i32> %i.fn, <8 x i32> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hc = shufflevector <8 x i32> %i.fz, <8 x i32> %i.gg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hd = shufflevector <16 x i32> %i.hb, <16 x i32> %i.hc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.he = ashr <32 x i32> %i.hd, splat (i32 8)
  %i.hf = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.he, <32 x i32> zeroinitializer)
  %i.hg = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.hf, <32 x i32> splat (i32 65535))
  %i.hh = trunc nuw <32 x i32> %i.hg to <32 x i16>
  %i.hi = shufflevector <8 x i16> %i.gw, <8 x i16> %i.ha, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.hh, <32 x i16> %i.hi, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ga, align 2, !tbaa !109
  %i.hj = mul nsw <8 x i32> %i.ez, splat (i32 50)
  %i.hk = mul nsw <8 x i32> %i.fb, splat (i32 22929)
  %i.hl = add nsw <8 x i32> %i.hk, %i.hj
  %i.hm = ashr <8 x i32> %i.hl, splat (i32 12)
  %i.hn = add nsw <8 x i32> %i.hm, %i.dw
  %i.ho = mul nsw <8 x i32> %i.hn, %broadcast.splat1279
  %i.hp = mul nsw <8 x i32> %i.ez, splat (i32 -5640)
  %i.hq = mul <8 x i32> %i.fb, splat (i32 -11751)
  %i.hr = add <8 x i32> %i.hq, %i.hp
  %i.hs = ashr <8 x i32> %i.hr, splat (i32 12)
  %i.ht = add nsw <8 x i32> %i.hs, %i.dw
  %i.hu = mul nsw <8 x i32> %i.ht, %broadcast.splat1281
  %i.hv = mul nsw <8 x i32> %i.ez, splat (i32 29040)
  %i.hw = mul <8 x i32> %i.fb, splat (i32 -101)
  %i.hx = add <8 x i32> %i.hw, %i.hv
  %i.hy = ashr <8 x i32> %i.hx, splat (i32 12)
  %i.hz = add nsw <8 x i32> %i.hy, %i.dw
  %i.ia = mul nsw <8 x i32> %i.hz, %broadcast.splat1283
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.ds
  %i.ic = mul nsw <8 x i32> %i.fe, splat (i32 50)
  %i.id = mul nsw <8 x i32> %i.fh, splat (i32 22929)
  %i.ie = add nsw <8 x i32> %i.id, %i.ic
  %i.if = ashr <8 x i32> %i.ie, splat (i32 12)
  %i.ig = add nsw <8 x i32> %i.if, %i.dx
  %i.ih = mul nsw <8 x i32> %i.ig, %broadcast.splat1279
  %i.ii = mul nsw <8 x i32> %i.fe, splat (i32 -5640)
  %i.ij = mul <8 x i32> %i.fh, splat (i32 -11751)
  %i.ik = add <8 x i32> %i.ij, %i.ii
  %i.il = ashr <8 x i32> %i.ik, splat (i32 12)
  %i.im = add nsw <8 x i32> %i.il, %i.dx
  %i.in = mul nsw <8 x i32> %i.im, %broadcast.splat1281
  %i.io = mul nsw <8 x i32> %i.fe, splat (i32 29040)
  %i.ip = mul <8 x i32> %i.fh, splat (i32 -101)
  %i.iq = add <8 x i32> %i.ip, %i.io
  %i.ir = ashr <8 x i32> %i.iq, splat (i32 12)
  %i.is = add nsw <8 x i32> %i.ir, %i.dx
  %i.it = mul nsw <8 x i32> %i.is, %broadcast.splat1283
  %i.iu = ashr <8 x i32> %i.in, splat (i32 8)
  %i.iv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.iu, <8 x i32> zeroinitializer)
  %i.iw = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.iv, <8 x i32> splat (i32 65535))
  %i.ix = trunc nuw <8 x i32> %i.iw to <8 x i16>
  %i.iy = ashr <8 x i32> %i.it, splat (i32 8)
  %i.iz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.iy, <8 x i32> zeroinitializer)
  %i.ja = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.iz, <8 x i32> splat (i32 65535))
  %i.jb = trunc nuw <8 x i32> %i.ja to <8 x i16>
  %i.jc = shufflevector <8 x i32> %i.ho, <8 x i32> %i.hu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jd = shufflevector <8 x i32> %i.ia, <8 x i32> %i.ih, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.je = shufflevector <16 x i32> %i.jc, <16 x i32> %i.jd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jf = ashr <32 x i32> %i.je, splat (i32 8)
  %i.jg = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.jf, <32 x i32> zeroinitializer)
  %i.jh = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.jg, <32 x i32> splat (i32 65535))
  %i.ji = trunc nuw <32 x i32> %i.jh to <32 x i16>
  %i.jj = shufflevector <8 x i16> %i.ix, <8 x i16> %i.jb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1302 = shufflevector <32 x i16> %i.ji, <32 x i16> %i.jj, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec1302, ptr %i.ib, align 2, !tbaa !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jk = add nuw nsw i64 %i.dr, 8
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %.preheader215.preheader, label %vector.body, !llvm.loop !204

.preheader215.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.jm = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.jn = shufflevector <4 x i32> %i.jm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jo = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.jp = shufflevector <4 x i32> %i.jo, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.jq = shufflevector <4 x i32> %i.jp, <4 x i32> %i.ai, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.jr = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.js = shufflevector <2 x i32> %i.jr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jt = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.preheader, %.preheader215
  %indvars.iv = phi i64 [ %i.ke, %.preheader215 ], [ %indvars.iv.ph, %.preheader215.preheader ] ; 2 uses
  %i.ju = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ju
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ju
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ju
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ju
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 6
  %i.kc = add nuw nsw i64 %i.ju, 4                ; 2 uses
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.kc
  %i.ke = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.kf = mul nuw nsw i64 %i.ke, 6                ; 4 uses
  %3 = icmp ult i64 %i.kf, %invariant.op544
  tail call void @llvm.assume(i1 %3), !noalias !209
  %4 = icmp ult i64 %i.kf, %invariant.op545
  tail call void @llvm.assume(i1 %4), !noalias !209
  %i.kg = add nuw nsw i64 %i.kf, 4                ; 2 uses
  %i.kh = icmp samesign ule i64 %i.kf, %i.ak
  tail call void @llvm.assume(i1 %i.kh), !noalias !209
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.kg
  %i.kj = load <2 x i16>, ptr %i.ki, align 2, !tbaa !109, !noalias !209
  %i.kk = zext <2 x i16> %i.kj to <2 x i32>
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.kc
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.kg
  %i.kn = add nuw nsw i64 %i.ju, 3                ; 3 uses
  %i.ko = icmp samesign ule i64 %i.kn, %i.ao
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ju
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.kn
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.ju
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.kn
  %i.ku = load i16, ptr %i.kb, align 2, !tbaa !109, !noalias !209
  %i.kv = load <2 x i16>, ptr %i.jz, align 2, !tbaa !109, !noalias !209
  %i.kw = shufflevector <2 x i16> %i.kv, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kx = zext i16 %i.ku to i32
  %i.ky = zext <4 x i16> %i.kw to <4 x i32>
  %i.kz = load <2 x i16>, ptr %i.kd, align 2, !tbaa !109, !noalias !209 ; 2 uses
  %i.la = load <2 x i16>, ptr %i.kl, align 2, !tbaa !109, !noalias !209 ; 2 uses
  %i.lb = load <2 x i16>, ptr %i.km, align 2, !tbaa !109, !noalias !209
  %i.lc = shufflevector <2 x i16> %i.kz, <2 x i16> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ld = shufflevector <2 x i16> %i.lb, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.le = shufflevector <4 x i16> %i.lc, <4 x i16> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lf = zext <4 x i16> %i.le to <4 x i32>
  %i.lg = shufflevector <2 x i16> %i.kz, <2 x i16> %i.la, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.lh = shufflevector <4 x i16> %i.lg, <4 x i16> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.li = zext <4 x i16> %i.lh to <4 x i32>
  %i.lj = add <4 x i32> %i.jn, %i.lf              ; 4 uses
  %i.lk = add <4 x i32> %i.jn, %i.li              ; 7 uses
  %i.ll = shufflevector <4 x i32> %i.lj, <4 x i32> %i.lk, <4 x i32> <i32 2, i32 6, i32 0, i32 poison>
  %i.lm = load i16, ptr %i.jx, align 2, !tbaa !109, !noalias !209
  %i.ln = load <2 x i16>, ptr %i.jv, align 2, !tbaa !109, !noalias !209
  %i.lo = shufflevector <2 x i16> %i.ln, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lp = zext i16 %i.lm to i32
  %i.lq = zext <4 x i16> %i.lo to <4 x i32>
  %i.lr = shufflevector <4 x i32> %i.lk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.ls = shufflevector <4 x i32> %i.lk, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison>
  %i.lt = add <2 x i32> %i.js, %i.kk
  %i.lu = shufflevector <4 x i32> %i.lk, <4 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.lv = add nsw <2 x i32> %i.lt, %i.lu          ; 2 uses
  %i.lw = shufflevector <4 x i32> %i.lj, <4 x i32> %i.lk, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.lx = shufflevector <2 x i32> %i.lv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ly = add nsw <4 x i32> %i.lw, %i.lx          ; 2 uses
  %i.lz = shufflevector <4 x i32> %i.ll, <4 x i32> %i.ly, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ma = add nsw <4 x i32> %i.lz, %i.lj
  %i.mb = shufflevector <4 x i32> %i.lk, <4 x i32> %i.lj, <4 x i32> <i32 2, i32 6, i32 0, i32 poison>
  %i.mc = shufflevector <4 x i32> %i.mb, <4 x i32> %i.ly, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.md = add nsw <4 x i32> %i.mc, %i.lk
  %i.me = ashr <4 x i32> %i.ma, <i32 1, i32 1, i32 1, i32 2> ; 2 uses
  %i.mf = ashr <4 x i32> %i.md, <i32 1, i32 1, i32 1, i32 2> ; 2 uses
  %i.mg = ashr <2 x i32> %i.lv, splat (i32 1)     ; 3 uses
  %i.mh = shufflevector <2 x i32> %i.mg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.mi = shufflevector <4 x i32> %i.lr, <4 x i32> %i.mh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mj = mul <4 x i32> %i.mi, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.mk = shufflevector <4 x i32> %i.ls, <4 x i32> %i.mh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ml = mul <4 x i32> %i.mk, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.mm = add <4 x i32> %i.ml, %i.mj
  %i.mn = ashr <4 x i32> %i.mm, splat (i32 12)
  %i.mo = add nsw <4 x i32> %i.mn, %i.lq
  %i.mp = mul nsw <4 x i32> %i.mo, %i.jq
  %i.mq = mul <2 x i32> %i.mg, <i32 29040, i32 -11751>
  %i.mr = shufflevector <2 x i32> %i.mq, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ms = mul <2 x i32> %i.mg, <i32 -5640, i32 -101>
  %i.mt = add <2 x i32> %i.ms, %i.mr
  %i.mu = ashr <2 x i32> %i.mt, splat (i32 12)
  %i.mv = insertelement <2 x i32> poison, i32 %i.lp, i64 0
  %i.mw = shufflevector <2 x i32> %i.mv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mx = add nsw <2 x i32> %i.mu, %i.mw
  %i.my = mul nsw <2 x i32> %i.mx, %i.jt
  %i.mz = ashr <4 x i32> %i.mp, splat (i32 8)
  %i.na = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mz, <4 x i32> zeroinitializer)
  %i.nb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.na, <4 x i32> splat (i32 65535))
  %i.nc = trunc nuw <4 x i32> %i.nb to <4 x i16>
  store <4 x i16> %i.nc, ptr %i.kp, align 2, !tbaa !109
  %i.nd = ashr <2 x i32> %i.my, splat (i32 8)
  %i.ne = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nd, <2 x i32> zeroinitializer)
  %i.nf = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ne, <2 x i32> splat (i32 65535))
  %i.ng = trunc nuw <2 x i32> %i.nf to <2 x i16>
  store <2 x i16> %i.ng, ptr %i.kr, align 2, !tbaa !109
  %i.nh = mul <4 x i32> %i.me, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.ni = mul <4 x i32> %i.mf, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.nj = add <4 x i32> %i.ni, %i.nh
  %i.nk = ashr <4 x i32> %i.nj, splat (i32 12)
  %i.nl = add nsw <4 x i32> %i.nk, %i.ky
  %i.nm = mul nsw <4 x i32> %i.nl, %i.ai
  %i.nn = ashr <4 x i32> %i.nm, splat (i32 8)
  %i.no = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nn, <4 x i32> zeroinitializer)
  %i.np = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.no, <4 x i32> splat (i32 65535))
  %i.nq = trunc nuw <4 x i32> %i.np to <4 x i16>
  store <4 x i16> %i.nq, ptr %i.ks, align 2, !tbaa !109
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.ns = shufflevector <4 x i32> %i.me, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.nt = mul nsw <2 x i32> %i.ns, <i32 -5640, i32 29040>
  %i.nu = shufflevector <4 x i32> %i.mf, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.nv = mul <2 x i32> %i.nu, <i32 -11751, i32 -101>
  %i.nw = add <2 x i32> %i.nv, %i.nt
  %i.nx = ashr <2 x i32> %i.nw, splat (i32 12)
  %i.ny = insertelement <2 x i32> poison, i32 %i.kx, i64 0
  %i.nz = shufflevector <2 x i32> %i.ny, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.oa = add nsw <2 x i32> %i.nx, %i.nz
  %i.ob = mul nsw <2 x i32> %i.oa, %i.jt
  %i.oc = ashr <2 x i32> %i.ob, splat (i32 8)
  %i.od = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.oc, <2 x i32> zeroinitializer)
  %i.oe = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.od, <2 x i32> splat (i32 65535))
  %i.of = trunc nuw <2 x i32> %i.oe to <2 x i16>
  store <2 x i16> %i.of, ptr %i.nr, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.ke, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader215, !llvm.loop !205

._crit_edge:                                      ; preds = %.preheader215
  %i.og = mul nuw nsw i32 %i.ab, 6                ; 3 uses
  %i.oh = add nuw nsw i32 %i.og, 4
  %i.oi = add nuw nsw i32 %i.og, 6
  %i.oj = icmp samesign ule i32 %i.oi, %i.s
  tail call void @llvm.assume(i1 %i.oj), !noalias !212
  %i.ok = zext nneg i32 %i.oh to i64              ; 2 uses
  %i.ol = zext nneg i32 %i.og to i64              ; 7 uses
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.as ; 5 uses
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.ol
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.ol
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.ol
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.os = add nuw nsw i64 %i.ol, 3                ; 2 uses
  %i.ot = icmp samesign ult i64 %i.os, %2
  tail call void @llvm.assume(i1 %i.ot), !noalias !212
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.os
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.ok
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.aw
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.ow, i64 %i.ok
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !106
  %i.pa = add i32 %i.oz, -16384
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.pc = add nuw nsw i64 %i.ol, 3                ; 3 uses
  %i.pd = icmp samesign ule i64 %i.pc, %i.ao
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az ; 2 uses
  tail call void @llvm.assume(i1 %i.pd)
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %i.ol
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %i.pc
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 2
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bd ; 2 uses
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.pi, i64 %i.ol
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.pi, i64 %i.pc
  %i.pl = load i16, ptr %i.ou, align 2, !tbaa !109, !noalias !212
  %i.pm = load <2 x i16>, ptr %i.or, align 2, !tbaa !109, !noalias !212
  %i.pn = shufflevector <2 x i16> %i.pm, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.po = zext i16 %i.pl to i32
  %i.pp = zext <4 x i16> %i.pn to <4 x i32>
  %i.pq = load <3 x i32>, ptr %i.pb, align 8, !tbaa !107 ; 2 uses
  %i.pr = shufflevector <3 x i32> %i.pq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ps = load i32, ptr %i.pb, align 8, !tbaa !107
  %i.pt = load i16, ptr %i.op, align 2, !tbaa !109, !noalias !212
  %i.pu = load <2 x i16>, ptr %i.on, align 2, !tbaa !109, !noalias !212
  %i.pv = shufflevector <2 x i16> %i.pu, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.pw = zext i16 %i.pt to i32
  %i.px = zext <4 x i16> %i.pv to <4 x i32>
  %i.py = load <2 x i16>, ptr %i.ov, align 2, !tbaa !109, !noalias !212
  %i.pz = zext <2 x i16> %i.py to <2 x i32>
  %i.qa = insertelement <2 x i32> poison, i32 %i.pa, i64 0
  %i.qb = shufflevector <2 x i32> %i.qa, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qc = add <2 x i32> %i.qb, %i.pz              ; 3 uses
  %i.qd = shufflevector <2 x i32> %i.qc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qe = load <2 x i16>, ptr %i.ox, align 2, !tbaa !109, !noalias !212
  %i.qf = zext <2 x i16> %i.qe to <2 x i32>
  %i.qg = add <2 x i32> %i.qb, %i.qf
  %i.qh = add nsw <2 x i32> %i.qg, %i.qc
  %i.qi = shufflevector <2 x i32> %i.qh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qj = ashr <4 x i32> %i.qi, splat (i32 1)     ; 2 uses
  %i.qk = mul <4 x i32> %i.qd, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.ql = shufflevector <2 x i32> %i.qc, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.qm = mul <4 x i32> %i.ql, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.qn = add <4 x i32> %i.qk, %i.qm
  %i.qo = ashr <4 x i32> %i.qn, splat (i32 12)    ; 2 uses
  %i.qp = add nsw <4 x i32> %i.qo, %i.px
  %i.qq = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %i.qr = shufflevector <4 x i32> %i.qq, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.qs = shufflevector <4 x i32> %i.qr, <4 x i32> %i.pr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.qt = mul nsw <4 x i32> %i.qp, %i.qs
  %i.qu = ashr <4 x i32> %i.qt, splat (i32 8)
  %i.qv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qu, <4 x i32> zeroinitializer)
  %i.qw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qv, <4 x i32> splat (i32 65535))
  %i.qx = trunc nuw <4 x i32> %i.qw to <4 x i16>
  store <4 x i16> %i.qx, ptr %i.pf, align 2, !tbaa !109
  %i.qy = shufflevector <4 x i32> %i.qo, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.qz = insertelement <2 x i32> poison, i32 %i.pw, i64 0
  %i.ra = shufflevector <2 x i32> %i.qz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.rb = add nsw <2 x i32> %i.qy, %i.ra
  %i.rc = shufflevector <3 x i32> %i.pq, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.rd = mul nsw <2 x i32> %i.rb, %i.rc
  %i.re = ashr <2 x i32> %i.rd, splat (i32 8)
  %i.rf = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.re, <2 x i32> zeroinitializer)
  %i.rg = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.rf, <2 x i32> splat (i32 65535))
  %i.rh = trunc nuw <2 x i32> %i.rg to <2 x i16>
  store <2 x i16> %i.rh, ptr %i.ph, align 2, !tbaa !109
  %i.ri = mul <4 x i32> %i.qj, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.rj = shufflevector <4 x i32> %i.qj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.rk = mul <4 x i32> %i.rj, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.rl = add <4 x i32> %i.ri, %i.rk
  %i.rm = ashr <4 x i32> %i.rl, splat (i32 12)    ; 2 uses
  %i.rn = add nsw <4 x i32> %i.rm, %i.pp
  %i.ro = mul nsw <4 x i32> %i.rn, %i.pr
  %i.rp = ashr <4 x i32> %i.ro, splat (i32 8)
  %i.rq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.rp, <4 x i32> zeroinitializer)
  %i.rr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.rq, <4 x i32> splat (i32 65535))
  %i.rs = trunc nuw <4 x i32> %i.rr to <4 x i16>
  store <4 x i16> %i.rs, ptr %i.pj, align 2, !tbaa !109
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.ru = shufflevector <4 x i32> %i.rm, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.rv = insertelement <2 x i32> poison, i32 %i.po, i64 0
  %i.rw = shufflevector <2 x i32> %i.rv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.rx = add nsw <2 x i32> %i.ru, %i.rw
  %i.ry = mul nsw <2 x i32> %i.rx, %i.rc
  %i.rz = ashr <2 x i32> %i.ry, splat (i32 8)
  %i.sa = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.rz, <2 x i32> zeroinitializer)
  %i.sb = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.sa, <2 x i32> splat (i32 65535))
  %i.sc = trunc nuw <2 x i32> %i.sb to <2 x i16>
  store <2 x i16> %i.sc, ptr %i.rt, align 2, !tbaa !109
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
  %i.y = udiv i32 %i.s, 6
  %i.z = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.0112.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !105 ; 7 uses
  %i.aa = icmp slt i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i32 %i.y, -1                    ; 3 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  %i.ae = add i32 %i.ad, -16384                   ; 9 uses
  %i.af = shl nsw i32 %1, 1                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load <3 x i32>, ptr %i.ag, align 8, !tbaa !107 ; 5 uses
  %i.ai = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !107
  %2 = zext nneg i32 %i.s to i64                  ; 3 uses
  %i.ak = zext nneg i32 %invariant.op to i64
  %i.al = sext i32 %1 to i64                      ; 3 uses
  %i.am = zext nneg i32 %i.u to i64
  %i.an = zext nneg i32 %i.w to i64               ; 4 uses
  %i.ao = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ap = zext i32 %i.af to i64                   ; 3 uses
  %i.aq = zext i32 %i.n to i64                    ; 4 uses
  %i.ar = zext nneg i32 %i.k to i64
  %wide.trip.count = zext i32 %i.ab to i64        ; 4 uses
  %i.as = mul nuw nsw i64 %i.al, %i.an            ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.as ; 20 uses
  %invariant.op538 = add nsw i64 %2, -1
  %invariant.op539 = add nsw i64 %2, -3
  %i.au = add nuw nsw i64 %i.al, 1                ; 3 uses
  %i.av = icmp samesign ult i64 %i.au, %i.am
  tail call void @llvm.assume(i1 %i.av), !noalias !225
  %i.aw = mul nuw nsw i64 %i.au, %i.an            ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.aw ; 4 uses
  %i.ay = icmp ult i32 %i.af, %i.k
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = mul nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.d, i64 %i.az ; 16 uses
  %i.bb = or disjoint i64 %i.ap, 1                ; 3 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.ar
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = mul nuw i64 %i.bb, %i.aq                ; 2 uses
  %i.be = getelementptr [2 x i8], ptr %i.d, i64 %i.bd ; 16 uses
  %min.iters.check = icmp ult i32 %i.ab, 33
  br i1 %min.iters.check, label %.preheader213.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bf = mul nuw i64 %i.aq, %i.ap
  %i.bg = shl i64 %i.bf, 1                        ; 6 uses
  %i.bh = mul nuw nsw i64 %wide.trip.count, 12    ; 4 uses
  %i.bi = add i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -10    ; 13 uses
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.bm = getelementptr i8, ptr %i.bl, i64 2      ; 13 uses
  %i.bn = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8     ; 13 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.bq = getelementptr i8, ptr %i.bp, i64 4      ; 13 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bs = getelementptr i8, ptr %i.br, i64 -6     ; 13 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.bu = getelementptr i8, ptr %i.bt, i64 6      ; 13 uses
  %i.bv = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4     ; 13 uses
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.by = getelementptr i8, ptr %i.bx, i64 8      ; 13 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bi
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2     ; 13 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bg
  %i.cc = getelementptr i8, ptr %i.cb, i64 10     ; 13 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bi   ; 13 uses
  %i.ce = mul nuw i64 %i.bb, %i.aq
  %i.cf = shl i64 %i.ce, 1                        ; 6 uses
  %i.cg = add i64 %i.cf, %i.bh                    ; 6 uses
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -10    ; 13 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.ck = getelementptr i8, ptr %i.cj, i64 2      ; 13 uses
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8     ; 13 uses
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.co = getelementptr i8, ptr %i.cn, i64 4      ; 13 uses
  %i.cp = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cq = getelementptr i8, ptr %i.cp, i64 -6     ; 13 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.cs = getelementptr i8, ptr %i.cr, i64 6      ; 13 uses
  %i.ct = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cu = getelementptr i8, ptr %i.ct, i64 -4     ; 13 uses
  %i.cv = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.cw = getelementptr i8, ptr %i.cv, i64 8      ; 13 uses
  %i.cx = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cy = getelementptr i8, ptr %i.cx, i64 -2     ; 13 uses
  %i.cz = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.da = getelementptr i8, ptr %i.cz, i64 10     ; 13 uses
  %i.db = getelementptr i8, ptr %i.d, i64 %i.cg   ; 13 uses
  %i.dc = mul nuw nsw i64 %i.au, %i.an
  %i.dd = shl i64 %i.dc, 1                        ; 2 uses
  %i.de = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8      ; 12 uses
  %i.dg = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.dd
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.bh
  %i.di = getelementptr i8, ptr %i.dh, i64 12     ; 12 uses
  %i.dj = mul nsw i64 %i.al, %i.an
  %i.dk = shl i64 %i.dj, 1
  %i.dl = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.bh
  %i.dn = getelementptr i8, ptr %i.dm, i64 12     ; 12 uses
  %bound0 = icmp ult ptr %i.ba, %i.bo
  %bound1 = icmp ult ptr %i.bm, %i.bk
  %found.conflict = and i1 %bound0, %bound1
  %bound0917 = icmp ult ptr %i.ba, %i.bs
  %bound1918 = icmp ult ptr %i.bq, %i.bk
  %found.conflict919 = and i1 %bound0917, %bound1918
  %conflict.rdx = or i1 %found.conflict, %found.conflict919
  %bound0920 = icmp ult ptr %i.ba, %i.bw
  %bound1921 = icmp ult ptr %i.bu, %i.bk
  %found.conflict922 = and i1 %bound0920, %bound1921
  %conflict.rdx923 = or i1 %conflict.rdx, %found.conflict922
  %bound0924 = icmp ult ptr %i.ba, %i.ca
  %bound1925 = icmp ult ptr %i.by, %i.bk
  %found.conflict926 = and i1 %bound0924, %bound1925
  %conflict.rdx927 = or i1 %conflict.rdx923, %found.conflict926
  %bound0928 = icmp ult ptr %i.ba, %i.cd
  %bound1929 = icmp ult ptr %i.cc, %i.bk
  %found.conflict930 = and i1 %bound0928, %bound1929
  %conflict.rdx931 = or i1 %conflict.rdx927, %found.conflict930
  %bound0932 = icmp ult ptr %i.ba, %i.ci
  %bound1933 = icmp ult ptr %i.be, %i.bk
  %found.conflict934 = and i1 %bound0932, %bound1933
  %conflict.rdx935 = or i1 %conflict.rdx931, %found.conflict934
  %bound0936 = icmp ult ptr %i.ba, %i.cm
  %bound1937 = icmp ult ptr %i.ck, %i.bk
  %found.conflict938 = and i1 %bound0936, %bound1937
  %conflict.rdx939 = or i1 %conflict.rdx935, %found.conflict938
  %bound0940 = icmp ult ptr %i.ba, %i.cq
  %bound1941 = icmp ult ptr %i.co, %i.bk
  %found.conflict942 = and i1 %bound0940, %bound1941
  %conflict.rdx943 = or i1 %conflict.rdx939, %found.conflict942
  %bound0944 = icmp ult ptr %i.ba, %i.cu
  %bound1945 = icmp ult ptr %i.cs, %i.bk
  %found.conflict946 = and i1 %bound0944, %bound1945
  %conflict.rdx947 = or i1 %conflict.rdx943, %found.conflict946
  %bound0948 = icmp ult ptr %i.ba, %i.cy
  %bound1949 = icmp ult ptr %i.cw, %i.bk
  %found.conflict950 = and i1 %bound0948, %bound1949
  %conflict.rdx951 = or i1 %conflict.rdx947, %found.conflict950
  %bound0952 = icmp ult ptr %i.ba, %i.db
  %bound1953 = icmp ult ptr %i.da, %i.bk
  %found.conflict954 = and i1 %bound0952, %bound1953
  %conflict.rdx955 = or i1 %conflict.rdx951, %found.conflict954
  %bound0956 = icmp ult ptr %i.ba, %i.di
  %bound1957 = icmp ult ptr %i.df, %i.bk
  %found.conflict958 = and i1 %bound0956, %bound1957
  %conflict.rdx959 = or i1 %conflict.rdx955, %found.conflict958
  %bound0960 = icmp ult ptr %i.ba, %i.dn
  %bound1961 = icmp ult ptr %i.at, %i.bk
  %found.conflict962 = and i1 %bound0960, %bound1961
  %conflict.rdx963 = or i1 %conflict.rdx959, %found.conflict962
  %bound0964 = icmp ult ptr %i.bm, %i.bs
  %bound1965 = icmp ult ptr %i.bq, %i.bo
  %found.conflict966 = and i1 %bound0964, %bound1965
  %conflict.rdx967 = or i1 %conflict.rdx963, %found.conflict966
  %bound0968 = icmp ult ptr %i.bm, %i.bw
  %bound1969 = icmp ult ptr %i.bu, %i.bo
  %found.conflict970 = and i1 %bound0968, %bound1969
  %conflict.rdx971 = or i1 %conflict.rdx967, %found.conflict970
  %bound0972 = icmp ult ptr %i.bm, %i.ca
  %bound1973 = icmp ult ptr %i.by, %i.bo
  %found.conflict974 = and i1 %bound0972, %bound1973
  %conflict.rdx975 = or i1 %conflict.rdx971, %found.conflict974
  %bound0976 = icmp ult ptr %i.bm, %i.cd
  %bound1977 = icmp ult ptr %i.cc, %i.bo
  %found.conflict978 = and i1 %bound0976, %bound1977
  %conflict.rdx979 = or i1 %conflict.rdx975, %found.conflict978
  %bound0980 = icmp ult ptr %i.bm, %i.ci
  %bound1981 = icmp ult ptr %i.be, %i.bo
  %found.conflict982 = and i1 %bound0980, %bound1981
  %conflict.rdx983 = or i1 %conflict.rdx979, %found.conflict982
  %bound0984 = icmp ult ptr %i.bm, %i.cm
  %bound1985 = icmp ult ptr %i.ck, %i.bo
  %found.conflict986 = and i1 %bound0984, %bound1985
  %conflict.rdx987 = or i1 %conflict.rdx983, %found.conflict986
  %bound0988 = icmp ult ptr %i.bm, %i.cq
  %bound1989 = icmp ult ptr %i.co, %i.bo
  %found.conflict990 = and i1 %bound0988, %bound1989
  %conflict.rdx991 = or i1 %conflict.rdx987, %found.conflict990
  %bound0992 = icmp ult ptr %i.bm, %i.cu
  %bound1993 = icmp ult ptr %i.cs, %i.bo
  %found.conflict994 = and i1 %bound0992, %bound1993
  %conflict.rdx995 = or i1 %conflict.rdx991, %found.conflict994
  %bound0996 = icmp ult ptr %i.bm, %i.cy
  %bound1997 = icmp ult ptr %i.cw, %i.bo
  %found.conflict998 = and i1 %bound0996, %bound1997
  %conflict.rdx999 = or i1 %conflict.rdx995, %found.conflict998
  %bound01000 = icmp ult ptr %i.bm, %i.db
  %bound11001 = icmp ult ptr %i.da, %i.bo
  %found.conflict1002 = and i1 %bound01000, %bound11001
  %conflict.rdx1003 = or i1 %conflict.rdx999, %found.conflict1002
  %bound01004 = icmp ult ptr %i.bm, %i.di
  %bound11005 = icmp ult ptr %i.df, %i.bo
  %found.conflict1006 = and i1 %bound01004, %bound11005
  %conflict.rdx1007 = or i1 %conflict.rdx1003, %found.conflict1006
  %bound01008 = icmp ult ptr %i.bm, %i.dn
  %bound11009 = icmp ult ptr %i.at, %i.bo
  %found.conflict1010 = and i1 %bound01008, %bound11009
  %conflict.rdx1011 = or i1 %conflict.rdx1007, %found.conflict1010
  %bound01012 = icmp ult ptr %i.bq, %i.bw
  %bound11013 = icmp ult ptr %i.bu, %i.bs
  %found.conflict1014 = and i1 %bound01012, %bound11013
  %conflict.rdx1015 = or i1 %conflict.rdx1011, %found.conflict1014
  %bound01016 = icmp ult ptr %i.bq, %i.ca
  %bound11017 = icmp ult ptr %i.by, %i.bs
  %found.conflict1018 = and i1 %bound01016, %bound11017
  %conflict.rdx1019 = or i1 %conflict.rdx1015, %found.conflict1018
  %bound01020 = icmp ult ptr %i.bq, %i.cd
  %bound11021 = icmp ult ptr %i.cc, %i.bs
  %found.conflict1022 = and i1 %bound01020, %bound11021
  %conflict.rdx1023 = or i1 %conflict.rdx1019, %found.conflict1022
  %bound01024 = icmp ult ptr %i.bq, %i.ci
  %bound11025 = icmp ult ptr %i.be, %i.bs
  %found.conflict1026 = and i1 %bound01024, %bound11025
  %conflict.rdx1027 = or i1 %conflict.rdx1023, %found.conflict1026
  %bound01028 = icmp ult ptr %i.bq, %i.cm
  %bound11029 = icmp ult ptr %i.ck, %i.bs
  %found.conflict1030 = and i1 %bound01028, %bound11029
  %conflict.rdx1031 = or i1 %conflict.rdx1027, %found.conflict1030
  %bound01032 = icmp ult ptr %i.bq, %i.cq
  %bound11033 = icmp ult ptr %i.co, %i.bs
  %found.conflict1034 = and i1 %bound01032, %bound11033
  %conflict.rdx1035 = or i1 %conflict.rdx1031, %found.conflict1034
  %bound01036 = icmp ult ptr %i.bq, %i.cu
  %bound11037 = icmp ult ptr %i.cs, %i.bs
  %found.conflict1038 = and i1 %bound01036, %bound11037
  %conflict.rdx1039 = or i1 %conflict.rdx1035, %found.conflict1038
  %bound01040 = icmp ult ptr %i.bq, %i.cy
  %bound11041 = icmp ult ptr %i.cw, %i.bs
  %found.conflict1042 = and i1 %bound01040, %bound11041
  %conflict.rdx1043 = or i1 %conflict.rdx1039, %found.conflict1042
  %bound01044 = icmp ult ptr %i.bq, %i.db
  %bound11045 = icmp ult ptr %i.da, %i.bs
  %found.conflict1046 = and i1 %bound01044, %bound11045
  %conflict.rdx1047 = or i1 %conflict.rdx1043, %found.conflict1046
  %bound01048 = icmp ult ptr %i.bq, %i.di
  %bound11049 = icmp ult ptr %i.df, %i.bs
  %found.conflict1050 = and i1 %bound01048, %bound11049
  %conflict.rdx1051 = or i1 %conflict.rdx1047, %found.conflict1050
  %bound01052 = icmp ult ptr %i.bq, %i.dn
  %bound11053 = icmp ult ptr %i.at, %i.bs
  %found.conflict1054 = and i1 %bound01052, %bound11053
  %conflict.rdx1055 = or i1 %conflict.rdx1051, %found.conflict1054
  %bound01056 = icmp ult ptr %i.bu, %i.ca
  %bound11057 = icmp ult ptr %i.by, %i.bw
  %found.conflict1058 = and i1 %bound01056, %bound11057
  %conflict.rdx1059 = or i1 %conflict.rdx1055, %found.conflict1058
  %bound01060 = icmp ult ptr %i.bu, %i.cd
  %bound11061 = icmp ult ptr %i.cc, %i.bw
  %found.conflict1062 = and i1 %bound01060, %bound11061
  %conflict.rdx1063 = or i1 %conflict.rdx1059, %found.conflict1062
  %bound01064 = icmp ult ptr %i.bu, %i.ci
  %bound11065 = icmp ult ptr %i.be, %i.bw
  %found.conflict1066 = and i1 %bound01064, %bound11065
  %conflict.rdx1067 = or i1 %conflict.rdx1063, %found.conflict1066
  %bound01068 = icmp ult ptr %i.bu, %i.cm
  %bound11069 = icmp ult ptr %i.ck, %i.bw
  %found.conflict1070 = and i1 %bound01068, %bound11069
  %conflict.rdx1071 = or i1 %conflict.rdx1067, %found.conflict1070
  %bound01072 = icmp ult ptr %i.bu, %i.cq
  %bound11073 = icmp ult ptr %i.co, %i.bw
  %found.conflict1074 = and i1 %bound01072, %bound11073
  %conflict.rdx1075 = or i1 %conflict.rdx1071, %found.conflict1074
  %bound01076 = icmp ult ptr %i.bu, %i.cu
  %bound11077 = icmp ult ptr %i.cs, %i.bw
  %found.conflict1078 = and i1 %bound01076, %bound11077
  %conflict.rdx1079 = or i1 %conflict.rdx1075, %found.conflict1078
  %bound01080 = icmp ult ptr %i.bu, %i.cy
  %bound11081 = icmp ult ptr %i.cw, %i.bw
  %found.conflict1082 = and i1 %bound01080, %bound11081
  %conflict.rdx1083 = or i1 %conflict.rdx1079, %found.conflict1082
  %bound01084 = icmp ult ptr %i.bu, %i.db
  %bound11085 = icmp ult ptr %i.da, %i.bw
  %found.conflict1086 = and i1 %bound01084, %bound11085
  %conflict.rdx1087 = or i1 %conflict.rdx1083, %found.conflict1086
  %bound01088 = icmp ult ptr %i.bu, %i.di
  %bound11089 = icmp ult ptr %i.df, %i.bw
  %found.conflict1090 = and i1 %bound01088, %bound11089
  %conflict.rdx1091 = or i1 %conflict.rdx1087, %found.conflict1090
  %bound01092 = icmp ult ptr %i.bu, %i.dn
  %bound11093 = icmp ult ptr %i.at, %i.bw
  %found.conflict1094 = and i1 %bound01092, %bound11093
  %conflict.rdx1095 = or i1 %conflict.rdx1091, %found.conflict1094
  %bound01096 = icmp ult ptr %i.by, %i.cd
  %bound11097 = icmp ult ptr %i.cc, %i.ca
  %found.conflict1098 = and i1 %bound01096, %bound11097
  %conflict.rdx1099 = or i1 %conflict.rdx1095, %found.conflict1098
  %bound01100 = icmp ult ptr %i.by, %i.ci
  %bound11101 = icmp ult ptr %i.be, %i.ca
end_hunk_3
begin_hunk_4_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi:.lr.ph
  %bound01256 = icmp ult ptr %i.cw, %i.di
  %bound11257 = icmp ult ptr %i.df, %i.cy
  %found.conflict1258 = and i1 %bound01256, %bound11257
  %conflict.rdx1259 = or i1 %conflict.rdx1255, %found.conflict1258
  %bound01260 = icmp ult ptr %i.cw, %i.dn
  %bound11261 = icmp ult ptr %i.at, %i.cy
  %found.conflict1262 = and i1 %bound01260, %bound11261
  %conflict.rdx1263 = or i1 %conflict.rdx1259, %found.conflict1262
  %bound01264 = icmp ult ptr %i.da, %i.di
  %bound11265 = icmp ult ptr %i.df, %i.db
  %found.conflict1266 = and i1 %bound01264, %bound11265
  %conflict.rdx1267 = or i1 %conflict.rdx1263, %found.conflict1266
  %bound01268 = icmp ult ptr %i.da, %i.dn
  %bound11269 = icmp ult ptr %i.at, %i.db
  %found.conflict1270 = and i1 %bound01268, %bound11269
  %conflict.rdx1271 = or i1 %conflict.rdx1267, %found.conflict1270
  br i1 %conflict.rdx1271, label %.preheader213.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.do = and i64 %wide.trip.count, 7             ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 8, i64 %i.do
  %n.vec = sub nsw i64 %wide.trip.count, %i.dq    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splat1273 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat1275 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat1277 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.dr = phi i64 [ 0, %vector.ph ], [ %i.ie, %vector.body ] ; 3 uses
  %i.ds = mul nuw nsw i64 %i.dr, 6                ; 4 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ds
  %wide.vec = load <48 x i16>, ptr %i.dt, align 2, !tbaa !109, !alias.scope !226, !noalias !225 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1282 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec1283 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec1284 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec1285 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec1286 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.du = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.dv = zext <8 x i16> %strided.vec1282 to <8 x i32> ; 3 uses
  %i.dw = zext <8 x i16> %strided.vec1283 to <8 x i32> ; 3 uses
  %i.dx = zext <8 x i16> %strided.vec1284 to <8 x i32> ; 3 uses
  %i.dy = zext <8 x i16> %strided.vec1285 to <8 x i32>
  %i.dz = zext <8 x i16> %strided.vec1286 to <8 x i32>
  %i.ea = mul nuw i64 %i.dr, 6
  %i.eb = or disjoint i64 %i.ea, 10               ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.eb
  %wide.vec1287 = load <48 x i16>, ptr %i.ec, align 2, !tbaa !109, !alias.scope !226, !noalias !225 ; 2 uses
  %strided.vec1288 = shufflevector <48 x i16> %wide.vec1287, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1289 = shufflevector <48 x i16> %wide.vec1287, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.ed = zext <8 x i16> %strided.vec1288 to <8 x i32>
  %i.ee = zext <8 x i16> %strided.vec1289 to <8 x i32>
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ds
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %wide.vec1290 = load <48 x i16>, ptr %i.eg, align 2, !tbaa !109, !alias.scope !227, !noalias !225 ; 2 uses
  %strided.vec1291 = shufflevector <48 x i16> %wide.vec1290, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1292 = shufflevector <48 x i16> %wide.vec1290, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.eh = zext <8 x i16> %strided.vec1291 to <8 x i32>
  %i.ei = zext <8 x i16> %strided.vec1292 to <8 x i32>
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.eb
  %wide.vec1293 = load <48 x i16>, ptr %i.ej, align 2, !tbaa !109, !alias.scope !227, !noalias !225 ; 2 uses
  %strided.vec1294 = shufflevector <48 x i16> %wide.vec1293, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec1295 = shufflevector <48 x i16> %wide.vec1293, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.ek = zext <8 x i16> %strided.vec1294 to <8 x i32>
  %i.el = zext <8 x i16> %strided.vec1295 to <8 x i32>
  %i.em = add <8 x i32> %broadcast.splat, %i.dy   ; 4 uses
  %i.en = add <8 x i32> %broadcast.splat, %i.dz   ; 4 uses
  %i.eo = add <8 x i32> %broadcast.splat, %i.ed
  %i.ep = add <8 x i32> %broadcast.splat, %i.ee
  %i.eq = add <8 x i32> %broadcast.splat, %i.eh   ; 2 uses
  %i.er = add <8 x i32> %broadcast.splat, %i.ei   ; 2 uses
  %i.es = add <8 x i32> %broadcast.splat, %i.ek
  %i.et = add <8 x i32> %broadcast.splat, %i.el
  %i.eu = add nsw <8 x i32> %i.eo, %i.em          ; 2 uses
  %i.ev = ashr <8 x i32> %i.eu, splat (i32 1)     ; 2 uses
  %i.ew = add nsw <8 x i32> %i.ep, %i.en          ; 2 uses
  %i.ex = ashr <8 x i32> %i.ew, splat (i32 1)     ; 2 uses
  %i.ey = add nsw <8 x i32> %i.eq, %i.em
  %i.ez = ashr <8 x i32> %i.ey, splat (i32 1)     ; 2 uses
  %i.fa = add nsw <8 x i32> %i.er, %i.en
  %i.fb = ashr <8 x i32> %i.fa, splat (i32 1)     ; 2 uses
  %i.fc = add nsw <8 x i32> %i.eq, %i.eu
  %i.fd = add nsw <8 x i32> %i.fc, %i.es
  %i.fe = ashr <8 x i32> %i.fd, splat (i32 2)     ; 2 uses
  %i.ff = add nsw <8 x i32> %i.er, %i.ew
  %i.fg = add nsw <8 x i32> %i.ff, %i.et
  %i.fh = ashr <8 x i32> %i.fg, splat (i32 2)     ; 2 uses
  %i.fi = add nsw <8 x i32> %i.en, %i.du
  %i.fj = mul nsw <8 x i32> %i.fi, %broadcast.splat1273
  %i.fk = mul nsw <8 x i32> %i.em, splat (i32 -778)
  %i.fl = shl nsw <8 x i32> %i.en, splat (i32 11)
  %i.fm = sub nsw <8 x i32> %i.fk, %i.fl
  %i.fn = ashr <8 x i32> %i.fm, splat (i32 12)
  %i.fo = add nsw <8 x i32> %i.fn, %i.du
  %i.fp = mul nsw <8 x i32> %i.fo, %broadcast.splat1275
  %i.fq = add nsw <8 x i32> %i.em, %i.du
  %i.fr = mul nsw <8 x i32> %broadcast.splat1277, %i.fq
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ds
  %i.ft = add nsw <8 x i32> %i.ex, %i.dv
  %i.fu = mul nsw <8 x i32> %i.ft, %broadcast.splat1273
  %i.fv = mul nsw <8 x i32> %i.ev, splat (i32 -778)
  %i.fw = shl nsw <8 x i32> %i.ex, splat (i32 11)
  %i.fx = sub nsw <8 x i32> %i.fv, %i.fw
  %i.fy = ashr <8 x i32> %i.fx, splat (i32 12)
  %i.fz = add nsw <8 x i32> %i.fy, %i.dv
  %i.ga = mul nsw <8 x i32> %i.fz, %broadcast.splat1275
  %i.gb = add nsw <8 x i32> %i.ev, %i.dv
  %i.gc = mul nsw <8 x i32> %broadcast.splat1277, %i.gb
  %i.gd = ashr <8 x i32> %i.ga, splat (i32 8)
  %i.ge = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gd, <8 x i32> zeroinitializer)
  %i.gf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ge, <8 x i32> splat (i32 65535))
  %i.gg = trunc nuw <8 x i32> %i.gf to <8 x i16>
  %i.gh = ashr <8 x i32> %i.gc, splat (i32 8)
  %i.gi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gh, <8 x i32> zeroinitializer)
  %i.gj = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gi, <8 x i32> splat (i32 65535))
  %i.gk = trunc nuw <8 x i32> %i.gj to <8 x i16>
  %i.gl = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gm = shufflevector <8 x i32> %i.fr, <8 x i32> %i.fu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gn = shufflevector <16 x i32> %i.gl, <16 x i32> %i.gm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.go = ashr <32 x i32> %i.gn, splat (i32 8)
  %i.gp = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.go, <32 x i32> zeroinitializer)
  %i.gq = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.gp, <32 x i32> splat (i32 65535))
  %i.gr = trunc nuw <32 x i32> %i.gq to <32 x i16>
  %i.gs = shufflevector <8 x i16> %i.gg, <8 x i16> %i.gk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.gr, <32 x i16> %i.gs, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.fs, align 2, !tbaa !109
  %i.gt = add nsw <8 x i32> %i.fb, %i.dw
  %i.gu = mul nsw <8 x i32> %i.gt, %broadcast.splat1273
  %i.gv = mul nsw <8 x i32> %i.ez, splat (i32 -778)
  %i.gw = shl nsw <8 x i32> %i.fb, splat (i32 11)
  %i.gx = sub nsw <8 x i32> %i.gv, %i.gw
  %i.gy = ashr <8 x i32> %i.gx, splat (i32 12)
  %i.gz = add nsw <8 x i32> %i.gy, %i.dw
  %i.ha = mul nsw <8 x i32> %i.gz, %broadcast.splat1275
  %i.hb = add nsw <8 x i32> %i.ez, %i.dw
  %i.hc = mul nsw <8 x i32> %broadcast.splat1277, %i.hb
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.ds
  %i.he = add nsw <8 x i32> %i.fh, %i.dx
  %i.hf = mul nsw <8 x i32> %i.he, %broadcast.splat1273
  %i.hg = mul nsw <8 x i32> %i.fe, splat (i32 -778)
  %i.hh = shl nsw <8 x i32> %i.fh, splat (i32 11)
  %i.hi = sub nsw <8 x i32> %i.hg, %i.hh
  %i.hj = ashr <8 x i32> %i.hi, splat (i32 12)
  %i.hk = add nsw <8 x i32> %i.hj, %i.dx
  %i.hl = mul nsw <8 x i32> %i.hk, %broadcast.splat1275
  %i.hm = add nsw <8 x i32> %i.fe, %i.dx
  %i.hn = mul nsw <8 x i32> %broadcast.splat1277, %i.hm
  %i.ho = ashr <8 x i32> %i.hl, splat (i32 8)
  %i.hp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ho, <8 x i32> zeroinitializer)
  %i.hq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hp, <8 x i32> splat (i32 65535))
  %i.hr = trunc nuw <8 x i32> %i.hq to <8 x i16>
  %i.hs = ashr <8 x i32> %i.hn, splat (i32 8)
  %i.ht = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hs, <8 x i32> zeroinitializer)
  %i.hu = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ht, <8 x i32> splat (i32 65535))
  %i.hv = trunc nuw <8 x i32> %i.hu to <8 x i16>
  %i.hw = shufflevector <8 x i32> %i.gu, <8 x i32> %i.ha, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hx = shufflevector <8 x i32> %i.hc, <8 x i32> %i.hf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hy = shufflevector <16 x i32> %i.hw, <16 x i32> %i.hx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hz = ashr <32 x i32> %i.hy, splat (i32 8)
  %i.ia = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.hz, <32 x i32> zeroinitializer)
  %i.ib = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.ia, <32 x i32> splat (i32 65535))
  %i.ic = trunc nuw <32 x i32> %i.ib to <32 x i16>
  %i.id = shufflevector <8 x i16> %i.hr, <8 x i16> %i.hv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1296 = shufflevector <32 x i16> %i.ic, <32 x i16> %i.id, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec1296, ptr %i.hd, align 2, !tbaa !109
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ie = add nuw nsw i64 %i.dr, 8
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %.preheader213.preheader, label %vector.body, !llvm.loop !220

.preheader213.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.ig = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.ih = shufflevector <4 x i32> %i.ig, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ii = shufflevector <4 x i32> %i.ih, <4 x i32> %i.ai, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ij = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213.preheader, %.preheader213
  %indvars.iv = phi i64 [ %i.iz, %.preheader213 ], [ %indvars.iv.ph, %.preheader213.preheader ] ; 2 uses
  %i.ik = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ik
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ik
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ik
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ik
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 6
  %i.is = add nuw nsw i64 %i.ik, 4                ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.is ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !109, !noalias !225
  %i.iv = zext i16 %i.iu to i32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !109, !noalias !225
  %i.iy = zext i16 %i.ix to i32
  %i.iz = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ja = mul nuw nsw i64 %i.iz, 6                ; 4 uses
  %3 = icmp ult i64 %i.ja, %invariant.op538
  tail call void @llvm.assume(i1 %3), !noalias !225
  %4 = icmp ult i64 %i.ja, %invariant.op539
  tail call void @llvm.assume(i1 %4), !noalias !225
  %i.jb = add nuw nsw i64 %i.ja, 4                ; 2 uses
  %i.jc = icmp samesign ule i64 %i.ja, %i.ak
  tail call void @llvm.assume(i1 %i.jc), !noalias !225
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.jb ; 2 uses
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !109, !noalias !225
  %i.jf = zext i16 %i.je to i32
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !109, !noalias !225
  %i.ji = zext i16 %i.jh to i32
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.is ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !109, !noalias !225
  %i.jl = zext i16 %i.jk to i32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !109, !noalias !225
  %i.jo = zext i16 %i.jn to i32
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.jb ; 2 uses
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !109, !noalias !225
  %i.jr = zext i16 %i.jq to i32
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !109, !noalias !225
  %i.ju = zext i16 %i.jt to i32
  %i.jv = add i32 %i.ae, %i.jf
  %i.jw = add i32 %i.ae, %i.ji
  %i.jx = add i32 %i.ae, %i.jl                    ; 2 uses
  %i.jy = add i32 %i.ae, %i.jo                    ; 2 uses
  %i.jz = add i32 %i.ae, %i.jr
  %i.ka = add i32 %i.ae, %i.ju
  %i.kb = add nuw nsw i64 %i.ik, 3                ; 3 uses
  %i.kc = icmp samesign ule i64 %i.kb, %i.ao
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ik
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.kb
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.ik
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.kb
  %i.ki = load i16, ptr %i.ir, align 2, !tbaa !109, !noalias !225
  %i.kj = load <2 x i16>, ptr %i.ip, align 2, !tbaa !109, !noalias !225
  %i.kk = shufflevector <2 x i16> %i.kj, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kl = zext i16 %i.ki to i32                   ; 2 uses
  %i.km = zext <4 x i16> %i.kk to <4 x i32>
  %i.kn = load i16, ptr %i.in, align 2, !tbaa !109, !noalias !225
  %i.ko = load <2 x i16>, ptr %i.il, align 2, !tbaa !109, !noalias !225
  %i.kp = shufflevector <2 x i16> %i.ko, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kq = zext i16 %i.kn to i32
  %i.kr = zext <4 x i16> %i.kp to <4 x i32>
  %i.ks = insertelement <2 x i32> poison, i32 %i.kq, i64 0
  %i.kt = shufflevector <2 x i32> %i.ks, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  %i.kv = add i32 %i.ae, %i.iv                    ; 4 uses
  %i.kw = add i32 %i.ae, %i.iy                    ; 3 uses
  %i.kx = add nsw i32 %i.jv, %i.kv                ; 2 uses
  %i.ky = add nsw i32 %i.jw, %i.kw                ; 2 uses
  %i.kz = add nsw i32 %i.jx, %i.kv
  %i.la = add nsw i32 %i.jy, %i.kw
  %i.lb = add nsw i32 %i.jx, %i.kx
  %i.lc = add nsw i32 %i.lb, %i.jz                ; 2 uses
  %i.ld = add nsw i32 %i.jy, %i.ky
  %i.le = add nsw i32 %i.ld, %i.ka
  %i.lf = insertelement <4 x i32> poison, i32 %i.kw, i64 0 ; 2 uses
  %i.lg = insertelement <4 x i32> %i.lf, i32 %i.ky, i64 1
  %i.lh = insertelement <4 x i32> %i.lg, i32 %i.la, i64 2
  %i.li = insertelement <4 x i32> %i.lh, i32 %i.le, i64 3
  %i.lj = ashr <4 x i32> %i.li, <i32 0, i32 1, i32 1, i32 2> ; 3 uses
  %i.lk = shl nsw <4 x i32> %i.lj, splat (i32 11)
  %i.ll = ashr i32 %i.lc, 2
  %i.lm = insertelement <4 x i32> poison, i32 %i.kv, i64 0
  %i.ln = insertelement <4 x i32> %i.lm, i32 %i.kx, i64 1
  %i.lo = insertelement <4 x i32> %i.ln, i32 %i.kz, i64 2
  %i.lp = insertelement <4 x i32> %i.lo, i32 %i.lc, i64 3
  %i.lq = ashr <4 x i32> %i.lp, <i32 0, i32 1, i32 1, i32 2> ; 3 uses
  %i.lr = mul nsw <4 x i32> %i.lq, splat (i32 -778)
  %i.ls = sub nsw <4 x i32> %i.lr, %i.lk
  %i.lt = ashr <4 x i32> %i.ls, splat (i32 12)    ; 4 uses
  %i.lu = shufflevector <4 x i32> %i.lf, <4 x i32> %i.lt, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.lv = shufflevector <4 x i32> %i.lu, <4 x i32> %i.lj, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.lw = insertelement <4 x i32> %i.lv, i32 %i.kv, i64 2
  %i.lx = add nsw <4 x i32> %i.lw, %i.kr
  %i.ly = mul nsw <4 x i32> %i.lx, %i.ii
  %i.lz = ashr <4 x i32> %i.ly, splat (i32 8)
  %i.ma = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lz, <4 x i32> zeroinitializer)
  %i.mb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ma, <4 x i32> splat (i32 65535))
  %i.mc = trunc nuw <4 x i32> %i.mb to <4 x i16>
  store <4 x i16> %i.mc, ptr %i.kd, align 2, !tbaa !109
  %i.md = shufflevector <4 x i32> %i.lt, <4 x i32> %i.lq, <2 x i32> <i32 1, i32 5>
  %i.me = add nsw <2 x i32> %i.md, %i.kt
  %i.mf = mul nsw <2 x i32> %i.me, %i.ij
  %i.mg = ashr <2 x i32> %i.mf, splat (i32 8)
  %i.mh = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mg, <2 x i32> zeroinitializer)
  %i.mi = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mh, <2 x i32> splat (i32 65535))
  %i.mj = trunc nuw <2 x i32> %i.mi to <2 x i16>
  store <2 x i16> %i.mj, ptr %i.kf, align 2, !tbaa !109
  %i.mk = shufflevector <4 x i32> %i.lt, <4 x i32> %i.lq, <4 x i32> <i32 poison, i32 2, i32 6, i32 poison>
  %i.ml = shufflevector <4 x i32> %i.mk, <4 x i32> %i.lj, <4 x i32> <i32 6, i32 1, i32 2, i32 7>
  %i.mm = add nsw <4 x i32> %i.ml, %i.km
  %i.mn = mul nsw <4 x i32> %i.ai, %i.mm
  %i.mo = ashr <4 x i32> %i.mn, splat (i32 8)
  %i.mp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mo, <4 x i32> zeroinitializer)
  %i.mq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mp, <4 x i32> splat (i32 65535))
  %i.mr = trunc nuw <4 x i32> %i.mq to <4 x i16>
  store <4 x i16> %i.mr, ptr %i.kg, align 2, !tbaa !109
  %i.ms = extractelement <4 x i32> %i.lt, i64 3
  %i.mt = add nsw i32 %i.ms, %i.kl
  %i.mu = add nsw i32 %i.ll, %i.kl
  %i.mv = insertelement <2 x i32> poison, i32 %i.mt, i64 0
  %i.mw = insertelement <2 x i32> %i.mv, i32 %i.mu, i64 1
  %i.mx = mul nsw <2 x i32> %i.mw, %i.ij
  %i.my = ashr <2 x i32> %i.mx, splat (i32 8)
  %i.mz = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.my, <2 x i32> zeroinitializer)
  %i.na = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mz, <2 x i32> splat (i32 65535))
  %i.nb = trunc nuw <2 x i32> %i.na to <2 x i16>
  store <2 x i16> %i.nb, ptr %i.ku, align 2, !tbaa !109
  %exitcond.not = icmp eq i64 %i.iz, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader213, !llvm.loop !221

._crit_edge:                                      ; preds = %.preheader213
  %i.nc = mul nuw nsw i32 %i.ab, 6                ; 3 uses
  %i.nd = add nuw nsw i32 %i.nc, 4
  %i.ne = add nuw nsw i32 %i.nc, 6
  %i.nf = icmp samesign ule i32 %i.ne, %i.s
  tail call void @llvm.assume(i1 %i.nf), !noalias !228
  %i.ng = zext nneg i32 %i.nd to i64              ; 2 uses
  %i.nh = zext nneg i32 %i.nc to i64              ; 7 uses
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.as ; 5 uses
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.nh
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.nh
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 2
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.nh
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.no = add nuw nsw i64 %i.nh, 3                ; 2 uses
  %i.np = icmp samesign ult i64 %i.no, %2
  tail call void @llvm.assume(i1 %i.np), !noalias !228
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.no
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.ng ; 2 uses
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !109, !noalias !228
  %i.nt = zext i16 %i.ns to i32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !109, !noalias !228
  %i.nw = zext i16 %i.nv to i32
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.aw
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.nx, i64 %i.ng ; 2 uses
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !109, !noalias !228
  %i.oa = zext i16 %i.nz to i32
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !109, !noalias !228
  %i.od = zext i16 %i.oc to i32
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !106
  %i.og = add i32 %i.of, -16384                   ; 4 uses
  %i.oh = add i32 %i.og, %i.oa
  %i.oi = add i32 %i.og, %i.od
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ok = add nuw nsw i64 %i.nh, 3                ; 3 uses
  %i.ol = icmp samesign ule i64 %i.ok, %i.ao
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az ; 2 uses
  tail call void @llvm.assume(i1 %i.ol)
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.nh
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.ok
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bd ; 2 uses
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.oq, i64 %i.nh
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.oq, i64 %i.ok
  %i.ot = load i16, ptr %i.nq, align 2, !tbaa !109, !noalias !228
  %i.ou = load <2 x i16>, ptr %i.nn, align 2, !tbaa !109, !noalias !228
  %i.ov = shufflevector <2 x i16> %i.ou, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ow = zext i16 %i.ot to i32                   ; 2 uses
  %i.ox = zext <4 x i16> %i.ov to <4 x i32>
  %i.oy = load <3 x i32>, ptr %i.oj, align 8, !tbaa !107 ; 2 uses
  %i.oz = shufflevector <3 x i32> %i.oy, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.pa = load i32, ptr %i.oj, align 8, !tbaa !107
  %i.pb = load i16, ptr %i.nl, align 2, !tbaa !109, !noalias !228
  %i.pc = load <2 x i16>, ptr %i.nj, align 2, !tbaa !109, !noalias !228
  %i.pd = shufflevector <2 x i16> %i.pc, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.pe = zext i16 %i.pb to i32
  %i.pf = zext <4 x i16> %i.pd to <4 x i32>
  %i.pg = add i32 %i.og, %i.nw                    ; 3 uses
  %i.ph = add nsw i32 %i.oi, %i.pg
  %i.pi = shl nsw i32 %i.pg, 11
  %i.pj = insertelement <4 x i32> poison, i32 %i.pg, i64 0
  %i.pk = ashr i32 %i.ph, 1                       ; 2 uses
  %i.pl = insertelement <4 x i32> poison, i32 %i.pa, i64 0
  %i.pm = shufflevector <4 x i32> %i.pl, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.pn = shufflevector <4 x i32> %i.pm, <4 x i32> %i.oz, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.po = add i32 %i.og, %i.nt                    ; 4 uses
  %i.pp = add nsw i32 %i.oh, %i.po
  %i.pq = mul nsw i32 %i.po, -778
  %i.pr = sub nsw i32 %i.pq, %i.pi
  %i.ps = ashr i32 %i.pr, 12                      ; 2 uses
  %i.pt = insertelement <4 x i32> %i.pj, i32 %i.ps, i64 1
  %i.pu = insertelement <4 x i32> %i.pt, i32 %i.po, i64 2
  %i.pv = shufflevector <4 x i32> %i.pu, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.pw = add nsw <4 x i32> %i.pv, %i.pf
  %i.px = insertelement <2 x i32> poison, i32 %i.ps, i64 0
  %i.py = insertelement <2 x i32> %i.px, i32 %i.po, i64 1
  %i.pz = insertelement <2 x i32> poison, i32 %i.pe, i64 0
  %i.qa = shufflevector <2 x i32> %i.pz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.qb = add nsw <2 x i32> %i.py, %i.qa
  %i.qc = mul nsw <4 x i32> %i.pw, %i.pn
  %i.qd = shufflevector <3 x i32> %i.oy, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.qe = mul nsw <2 x i32> %i.qb, %i.qd
  %i.qf = ashr <4 x i32> %i.qc, splat (i32 8)
  %i.qg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qf, <4 x i32> zeroinitializer)
  %i.qh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qg, <4 x i32> splat (i32 65535))
  %i.qi = trunc nuw <4 x i32> %i.qh to <4 x i16>
  store <4 x i16> %i.qi, ptr %i.on, align 2, !tbaa !109
  %i.qj = ashr <2 x i32> %i.qe, splat (i32 8)
  %i.qk = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.qj, <2 x i32> zeroinitializer)
  %i.ql = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.qk, <2 x i32> splat (i32 65535))
  %i.qm = trunc nuw <2 x i32> %i.ql to <2 x i16>
  store <2 x i16> %i.qm, ptr %i.op, align 2, !tbaa !109
  %i.qn = shl nsw i32 %i.pk, 11
  %i.qo = insertelement <4 x i32> poison, i32 %i.pk, i64 0
  %i.qp = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  %i.qq = ashr i32 %i.pp, 1                       ; 3 uses
  %i.qr = mul nsw i32 %i.qq, -778
  %i.qs = sub nsw i32 %i.qr, %i.qn
  %i.qt = ashr i32 %i.qs, 12                      ; 2 uses
  %i.qu = insertelement <4 x i32> %i.qo, i32 %i.qt, i64 1
  %i.qv = insertelement <4 x i32> %i.qu, i32 %i.qq, i64 2
  %i.qw = shufflevector <4 x i32> %i.qv, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.qx = add nsw <4 x i32> %i.qw, %i.ox
  %i.qy = mul nsw <4 x i32> %i.oz, %i.qx
  %i.qz = add nsw i32 %i.qt, %i.ow
  %i.ra = add nsw i32 %i.qq, %i.ow
  %i.rb = insertelement <2 x i32> poison, i32 %i.qz, i64 0
  %i.rc = insertelement <2 x i32> %i.rb, i32 %i.ra, i64 1
  %i.rd = mul nsw <2 x i32> %i.rc, %i.qd
  %i.re = ashr <4 x i32> %i.qy, splat (i32 8)
  %i.rf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.re, <4 x i32> zeroinitializer)
  %i.rg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.rf, <4 x i32> splat (i32 65535))
  %i.rh = trunc nuw <4 x i32> %i.rg to <4 x i16>
  store <4 x i16> %i.rh, ptr %i.or, align 2, !tbaa !109
  %i.ri = ashr <2 x i32> %i.rd, splat (i32 8)
  %i.rj = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ri, <2 x i32> zeroinitializer)
  %i.rk = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.rj, <2 x i32> splat (i32 65535))
  %i.rl = trunc nuw <2 x i32> %i.rk to <2 x i16>
  store <2 x i16> %i.rl, ptr %i.qp, align 2, !tbaa !109
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
end_hunk_4
