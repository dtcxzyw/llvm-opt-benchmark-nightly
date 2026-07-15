inline.NumInlined: 180
inline.NumDeleted: 61
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { %struct.HilbertComparator }
%struct.HilbertComparator = type { ptr }
%"class.geos::geom::Envelope" = type { double, double, double, double }
%"class.geos::shape::fractal::HilbertEncoder" = type { i32, double, double, double, double }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { %struct.HilbertComparator }

@_ZN4geos5shape7fractal14HilbertEncoderC1EjRNS_4geom8EnvelopeE = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN4geos5shape7fractal14HilbertEncoderC2EjRNS_4geom8EnvelopeE

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5shape7fractal14HilbertEncoderC2EjRNS_4geom8EnvelopeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 4), (8, 40)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !7
  %i.a = uitofp i32 %1 to double
  %exp2.a = tail call double @exp2(double %i.a)
  %i.b = fptosi double %exp2.a to i32
  %i.c = add nsw i32 %i.b, -1
  %i.d = load double, ptr %2, align 8, !tbaa !10  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.d, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = fcmp uno double %i.g, 0.000000e+00       ; 2 uses
  %i.i = fsub double %i.g, %i.d
  %.0.i = select i1 %i.h, double 0.000000e+00, double %i.i
  %i.j = sitofp i32 %i.c to double                ; 2 uses
  %i.k = fdiv double %.0.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.n, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load double, ptr %i.p, align 8
  %i.r = fsub double %i.q, %i.n
  %.0.i7 = select i1 %i.h, double 0.000000e+00, double %i.r
  %i.s = fdiv double %.0.i7, %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.s, ptr %i.t, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00       ; 2 uses
  %i.d = load double, ptr %1, align 8             ; 2 uses
  %i.e = fsub double %i.b, %i.d
  %i.f = fmul double %i.e, 5.000000e-01
  %i.g = select i1 %i.c, double 0.000000e+00, double %i.f
  %i.h = fadd double %i.d, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %i.k = fcmp ogt double %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = fcmp une double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = fsub double %i.h, %i.j
  %i.p = fdiv double %i.o, %i.m
  %i.q = fptoui double %i.p to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.010 = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load double, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fsub double %i.s, %i.u
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = select i1 %i.c, double 0.000000e+00, double %i.w
  %i.y = fadd double %i.u, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !16 ; 2 uses
  %i.ab = fcmp ogt double %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = fcmp une double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = fsub double %i.y, %i.aa
  %i.ag = fdiv double %i.af, %i.ad
  %i.ah = fptoui double %i.ag to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.ai = load i32, ptr %0, align 8, !tbaa !7
  %i.aj = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.ai, i32 noundef %.010, i32 noundef %.0)
  ret i32 %i.aj
}

declare noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 4 uses
  %2 = alloca %"class.geos::geom::Envelope", align 8 ; 10 uses
  %3 = alloca %"class.geos::shape::fractal::HilbertEncoder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store <4 x double> splat (double +qnan), ptr %2, align 8, !tbaa !18
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not13 = icmp eq ptr %i.d, %i.f
  br i1 %.not13, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit
  %.pre = load double, ptr %i.a, align 8, !tbaa !13
  %i.g = fcmp uno double %.pre, 0.000000e+00
  br i1 %i.g, label %._crit_edge.thread, label %bb.k

.lr.ph:                                           ; preds = %bb.a, %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit
  %.sroa.010.014 = phi ptr [ %i.ac, %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.010.014, align 8, !tbaa !23 ; 2 uses
  %i.i = load double, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  %i.j = fcmp uno double %i.i, 0.000000e+00
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.h) ; 5 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !27
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.o = load double, ptr %i.n, align 8, !tbaa !10 ; 2 uses
  %i.p = load double, ptr %2, align 8, !tbaa !10
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.o, ptr %2, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = fcmp ogt double %i.s, %i.i
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.s, ptr %i.a, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !15 ; 2 uses
  %i.w = load double, ptr %i.b, align 8, !tbaa !15
  %i.x = fcmp olt double %i.v, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.v, ptr %i.b, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !28 ; 2 uses
  %i.aa = load double, ptr %i.c, align 8, !tbaa !28
  %i.ab = fcmp ogt double %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit

bb.j:                                             ; preds = %bb.i
  store double %i.z, ptr %i.c, align 8, !tbaa !28
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit

_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit: ; preds = %bb.j, %bb.i, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @_ZN4geos5shape7fractal14HilbertEncoderC1EjRNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !19    ; 6 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !19  ; 6 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEEZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEvT_SG_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = xor i64 %i.ak, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_T0_T1_(ptr %i.ad, ptr %i.ae, i64 noundef %i.al, ptr nonnull %3)
  %i.am = icmp sgt i64 %i.ah, 128
  br i1 %i.am, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 128 ; 3 uses
  call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_T0_(ptr %i.ad, ptr nonnull %i.an, ptr nonnull %3)
  %.not7.i.i.i.i = icmp eq ptr %i.an, %i.ae
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEEZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.ds, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %3, ptr %1, align 8
  %i.as = load ptr, ptr %.sroa.0.08.i.i.i.i, align 8, !tbaa !23 ; 4 uses
  %.sroa.0.06.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i, i64 -8 ; 2 uses
  %i.at = load ptr, ptr %.sroa.0.06.i.i.i.i.i, align 8, !tbaa !23
  %i.au = call fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef %i.as, ptr noundef %i.at)
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i, %bb.n ] ; 4 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i ], [ %.sroa.0.08.i.i.i.i, %bb.n ]
  %i.av = load ptr, ptr %.sroa.0.08.i.i.i.i.i, align 8, !tbaa !23
  store ptr %i.av, ptr %.sroa.03.07.i.i.i.i.i, align 8, !tbaa !23
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aw = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(40) %i.as), !inline_history !29 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %i.bd = fcmp uno double %i.bc, 0.000000e+00     ; 2 uses
  %i.be = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bf = fsub double %i.bc, %i.be
  %i.bg = fmul double %i.bf, 5.000000e-01
  %i.bh = select i1 %i.bd, double 0.000000e+00, double %i.bg
  %i.bi = fadd double %i.be, %i.bh                ; 2 uses
  %i.bj = load double, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %i.bk = fcmp ogt double %i.bi, %i.bj
  br i1 %i.bk, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = load double, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.bm = fcmp une double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = fsub double %i.bi, %i.bj
  %i.bo = fdiv double %i.bn, %i.bl
  %i.bp = fptoui double %i.bo to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.p ], [ 0, %bb.o ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bt = load double, ptr %i.bs, align 8         ; 2 uses
  %i.bu = fsub double %i.br, %i.bt
  %i.bv = fmul double %i.bu, 5.000000e-01
  %i.bw = select i1 %i.bd, double 0.000000e+00, double %i.bv
  %i.bx = fadd double %i.bt, %i.bw                ; 2 uses
  %i.by = load double, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  %i.bz = fcmp ogt double %i.bx, %i.by
  br i1 %i.bz, label %bb.r, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ca = load double, ptr %i.ar, align 8, !tbaa !17 ; 2 uses
  %i.cb = fcmp une double %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.s, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cc = fsub double %i.bx, %i.by
  %i.cd = fdiv double %i.cc, %i.ca
  %i.ce = fptoui double %i.cd to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i.i

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ]
  %i.cf = load i32, ptr %3, align 8, !tbaa !7
  %i.cg = call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.cf, i32 noundef %.010.i.i.i.i.i.i, i32 noundef %.0.i.i.i.i.i.i)
  %i.ch = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 176
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(40) %i.aw), !inline_history !29 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !13 ; 2 uses
  %i.cn = fcmp uno double %i.cm, 0.000000e+00     ; 2 uses
  %i.co = load double, ptr %i.ck, align 8         ; 2 uses
  %i.cp = fsub double %i.cm, %i.co
  %i.cq = fmul double %i.cp, 5.000000e-01
  %i.cr = select i1 %i.cn, double 0.000000e+00, double %i.cq
  %i.cs = fadd double %i.co, %i.cr                ; 2 uses
  %i.ct = load double, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %i.cu = fcmp ogt double %i.cs, %i.ct
  br i1 %i.cu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i.i
  %i.cv = load double, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.cw = fcmp une double %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = fsub double %i.cs, %i.ct
  %i.cy = fdiv double %i.cx, %i.cv
  %i.cz = fptoui double %i.cy to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i.i
  %.010.i3.i.i.i.i.i = phi i32 [ %i.cz, %bb.u ], [ 0, %bb.t ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.db = load double, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.dd = load double, ptr %i.dc, align 8         ; 2 uses
  %i.de = fsub double %i.db, %i.dd
  %i.df = fmul double %i.de, 5.000000e-01
  %i.dg = select i1 %i.cn, double 0.000000e+00, double %i.df
  %i.dh = fadd double %i.dd, %i.dg                ; 2 uses
  %i.di = load double, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  %i.dj = fcmp ogt double %i.dh, %i.di
  br i1 %i.dj, label %bb.w, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dk = load double, ptr %i.ar, align 8, !tbaa !17 ; 2 uses
  %i.dl = fcmp une double %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.x, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.dm = fsub double %i.dh, %i.di
  %i.dn = fdiv double %i.dm, %i.dk
  %i.do = fptoui double %i.dn to i32
  br label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i

_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.0.i4.i.i.i.i.i = phi i32 [ %i.do, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ]
  %i.dp = load i32, ptr %3, align 8, !tbaa !7
  %i.dq = call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.dp, i32 noundef %.010.i3.i.i.i.i.i, i32 noundef %.0.i4.i.i.i.i.i)
  %i.dr = icmp ugt i32 %i.cg, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit.i.i.i.i, !llvm.loop !30

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit.i.i.i.i: ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i, %bb.n
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i, %bb.n ], [ %.sroa.0.08.i.i.i.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i.i ]
  store ptr %i.as, ptr %.sroa.03.0.lcssa.i.i.i.i.i, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEEZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEvT_SG_T0_.exit, label %bb.n, !llvm.loop !32

bb.y:                                             ; preds = %bb.l
  call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_T0_(ptr %i.ad, ptr %i.ae, ptr nonnull %3)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEEZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEvT_SG_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEEZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEvT_SG_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit.i.i.i.i, %bb.k, %bb.m, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEEZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEvT_SG_T0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 12 uses
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph120

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEET_SJ_SJ_T0_.exit
  %i.l = icmp eq i64 %i.nl, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph120, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa116 = phi i64 [ %i.d, %.lr.ph ], [ %i.un, %bb.b ] ; 2 uses
  %.lcssa114 = phi i64 [ %i.c, %.lr.ph ], [ %i.um, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.020.1.i.i, %bb.b ]
  %i.m = add nsw i64 %.lcssa116, -2               ; 2 uses
  %i.n = lshr i64 %i.m, 1                         ; 3 uses
  %i.o = add nsw i64 %.lcssa116, -1
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = and i64 %.lcssa114, 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_SK_T1_T2_.exit.i.i.i, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.n, %._crit_edge ], [ %i.gi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_SK_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 3 uses
  %i.x = icmp slt i64 %.09.i.i.i, %i.p
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit15.i.i.i
  %.033.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit15.i.i.i ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %i.y = shl i64 %.033.i.i.i.i, 1                 ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.ad), !inline_history !34 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.al = fcmp uno double %i.ak, 0.000000e+00     ; 2 uses
  %i.am = load double, ptr %i.ai, align 8         ; 2 uses
  %i.an = fsub double %i.ak, %i.am
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = select i1 %i.al, double 0.000000e+00, double %i.ao
  %i.aq = fadd double %i.am, %i.ap                ; 2 uses
  %i.ar = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.as = fcmp ogt double %i.aq, %i.ar
  br i1 %i.as, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.at = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.au = fcmp une double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = fsub double %i.aq, %i.ar
  %i.aw = fdiv double %i.av, %i.at
  %i.ax = fptoui double %i.aw to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i
  %.010.i.i10.i.i.i = phi i32 [ %i.ax, %bb.e ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = fsub double %i.az, %i.bb
  %i.bd = fmul double %i.bc, 5.000000e-01
  %i.be = select i1 %i.al, double 0.000000e+00, double %i.bd
  %i.bf = fadd double %i.bb, %i.be                ; 2 uses
  %i.bg = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.bh = fcmp ogt double %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i11.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bi = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.bj = fcmp une double %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.h, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i11.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bk = fsub double %i.bf, %i.bg
  %i.bl = fdiv double %i.bk, %i.bi
  %i.bm = fptoui double %i.bl to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i11.i.i.i

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i11.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i12.i.i.i = phi i32 [ %i.bm, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.bn = load i32, ptr %3, align 8, !tbaa !7
  %i.bo = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.bn, i32 noundef %.010.i.i10.i.i.i, i32 noundef %.0.i.i12.i.i.i)
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 176
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(40) %i.ae), !inline_history !34 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13 ; 2 uses
  %i.bv = fcmp uno double %i.bu, 0.000000e+00     ; 2 uses
  %i.bw = load double, ptr %i.bs, align 8         ; 2 uses
  %i.bx = fsub double %i.bu, %i.bw
  %i.by = fmul double %i.bx, 5.000000e-01
  %i.bz = select i1 %i.bv, double 0.000000e+00, double %i.by
  %i.ca = fadd double %i.bw, %i.bz                ; 2 uses
  %i.cb = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.cc = fcmp ogt double %i.ca, %i.cb
  br i1 %i.cc, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i11.i.i.i
  %i.cd = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.ce = fcmp une double %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cf = fsub double %i.ca, %i.cb
  %i.cg = fdiv double %i.cf, %i.cd
  %i.ch = fptoui double %i.cg to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i11.i.i.i
  %.010.i3.i13.i.i.i = phi i32 [ %i.ch, %bb.j ], [ 0, %bb.i ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i11.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cj = load double, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cl = load double, ptr %i.ck, align 8         ; 2 uses
  %i.cm = fsub double %i.cj, %i.cl
  %i.cn = fmul double %i.cm, 5.000000e-01
  %i.co = select i1 %i.bv, double 0.000000e+00, double %i.cn
  %i.cp = fadd double %i.cl, %i.co                ; 2 uses
  %i.cq = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.cr = fcmp ogt double %i.cp, %i.cq
  br i1 %i.cr, label %bb.l, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit15.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cs = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.ct = fcmp une double %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.m, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit15.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.cu = fsub double %i.cp, %i.cq
  %i.cv = fdiv double %i.cu, %i.cs
  %i.cw = fptoui double %i.cv to i32
  br label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit15.i.i.i

_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit15.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.0.i4.i14.i.i.i = phi i32 [ %i.cw, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  %i.cx = load i32, ptr %3, align 8, !tbaa !7
  %i.cy = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.cx, i32 noundef %.010.i3.i13.i.i.i, i32 noundef %.0.i4.i14.i.i.i)
  %i.cz = icmp ugt i32 %i.bo, %i.cy
  %spec.select.i.i.i.i = select i1 %i.cz, i64 %i.ab, i64 %i.z ; 4 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !23
  %i.dc = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.i.i.i.i
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !23
  %i.dd = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.dd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !35

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit15.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit15.i.i.i ] ; 2 uses
  %i.de = icmp eq i64 %.0.lcssa.i.i.i.i, %i.n
  %or.cond.i.i.i = select i1 %i.r, i1 %i.de, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.df = load ptr, ptr %i.t, align 8, !tbaa !23
  store ptr %i.df, ptr %i.u, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.s, %bb.n ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.dg = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_SK_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %bb.z
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i.i.i.i, %bb.z ], [ %.1.i.i.i.i, %bb.o ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i.i, 2 ; 4 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %0, i64 %.0919.i.i.i.i.i ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !23 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 176
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef ptr %i.dl(ptr noundef nonnull align 8 dereferenceable(40) %i.di), !inline_history !34 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load double, ptr %i.dn, align 8, !tbaa !13 ; 2 uses
  %i.dp = fcmp uno double %i.do, 0.000000e+00     ; 2 uses
  %i.dq = load double, ptr %i.dm, align 8         ; 2 uses
  %i.dr = fsub double %i.do, %i.dq
  %i.ds = fmul double %i.dr, 5.000000e-01
  %i.dt = select i1 %i.dp, double 0.000000e+00, double %i.ds
  %i.du = fadd double %i.dq, %i.dt                ; 2 uses
  %i.dv = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.dw = fcmp ogt double %i.du, %i.dv
  br i1 %i.dw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dx = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.dy = fcmp une double %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dz = fsub double %i.du, %i.dv
  %i.ea = fdiv double %i.dz, %i.dx
  %i.eb = fptoui double %i.ea to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i32 [ %i.eb, %bb.q ], [ 0, %bb.p ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ed = load double, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ef = load double, ptr %i.ee, align 8         ; 2 uses
  %i.eg = fsub double %i.ed, %i.ef
  %i.eh = fmul double %i.eg, 5.000000e-01
  %i.ei = select i1 %i.dp, double 0.000000e+00, double %i.eh
  %i.ej = fadd double %i.ef, %i.ei                ; 2 uses
  %i.ek = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.el = fcmp ogt double %i.ej, %i.ek
  br i1 %i.el, label %bb.s, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.em = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.en = fcmp une double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.t, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.eo = fsub double %i.ej, %i.ek
  %i.ep = fdiv double %i.eo, %i.em
  %i.eq = fptoui double %i.ep to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.eq, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ]
  %i.er = load i32, ptr %3, align 8, !tbaa !7
  %i.es = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.er, i32 noundef %.010.i.i.i.i.i, i32 noundef %.0.i.i.i.i.i)
  %i.et = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 176
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = tail call noundef ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(40) %i.w), !inline_history !34 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !13 ; 2 uses
  %i.ez = fcmp uno double %i.ey, 0.000000e+00     ; 2 uses
  %i.fa = load double, ptr %i.ew, align 8         ; 2 uses
  %i.fb = fsub double %i.ey, %i.fa
  %i.fc = fmul double %i.fb, 5.000000e-01
  %i.fd = select i1 %i.ez, double 0.000000e+00, double %i.fc
  %i.fe = fadd double %i.fa, %i.fd                ; 2 uses
  %i.ff = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.fg = fcmp ogt double %i.fe, %i.ff
  br i1 %i.fg, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i
  %i.fh = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.fi = fcmp une double %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fj = fsub double %i.fe, %i.ff
  %i.fk = fdiv double %i.fj, %i.fh
  %i.fl = fptoui double %i.fk to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i
  %.010.i3.i.i.i.i = phi i32 [ %i.fl, %bb.v ], [ 0, %bb.u ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fn = load double, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fp = load double, ptr %i.fo, align 8         ; 2 uses
  %i.fq = fsub double %i.fn, %i.fp
  %i.fr = fmul double %i.fq, 5.000000e-01
  %i.fs = select i1 %i.ez, double 0.000000e+00, double %i.fr
  %i.ft = fadd double %i.fp, %i.fs                ; 2 uses
  %i.fu = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.fv = fcmp ogt double %i.ft, %i.fu
  br i1 %i.fv, label %bb.x, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.fw = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.fx = fcmp une double %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.y, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fy = fsub double %i.ft, %i.fu
  %i.fz = fdiv double %i.fy, %i.fw
  %i.ga = fptoui double %i.fz to i32
  br label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i

_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %.0.i4.i.i.i.i = phi i32 [ %i.ga, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ]
  %i.gb = load i32, ptr %3, align 8, !tbaa !7
  %i.gc = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.gb, i32 noundef %.010.i3.i.i.i.i, i32 noundef %.0.i4.i.i.i.i)
  %i.gd = icmp ugt i32 %i.es, %i.gc
  br i1 %i.gd, label %bb.z, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_SK_T1_T2_.exit.i.i.i

bb.z:                                             ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i
  %i.ge = load ptr, ptr %i.dh, align 8, !tbaa !23
  %i.gf = getelementptr inbounds [8 x i8], ptr %0, i64 %.018.i.i.i.i.i
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !23
  %i.gg = icmp sgt i64 %.0919.i.i.i.i.i, %.09.i.i.i
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_SK_T1_T2_.exit.i.i.i, !llvm.loop !36

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_SK_T1_T2_.exit.i.i.i: ; preds = %bb.z, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i, %bb.o
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.o ], [ %.018.i.i.i.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i.i ], [ %.0919.i.i.i.i.i, %bb.z ]
  %i.gh = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.w, ptr %i.gh, align 8, !tbaa !23
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.gi = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_RT0_.exit.i.i, label %bb.c, !llvm.loop !37

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_SK_T1_T2_.exit.i.i.i
  %i.gj = icmp sgt i64 %.lcssa114, 8
  br i1 %i.gj, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_RT0_.exit.i24.i
  %.sroa.0.07.i.i = phi ptr [ %i.gk, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_RT0_.exit.i24.i ], [ %storemerge24.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_RT0_.exit.i.i ]
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -8 ; 4 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !23 ; 3 uses
  %i.gm = load ptr, ptr %0, align 8, !tbaa !23
  store ptr %i.gm, ptr %i.gk, align 8, !tbaa !23
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gn, %i.a                     ; 3 uses
  %i.gp = ashr exact i64 %i.go, 3                 ; 3 uses
  %i.gq = add nsw i64 %i.gp, -1
  %i.gr = sdiv i64 %i.gq, 2
  %i.gs = icmp sgt i64 %i.gp, 2
  br i1 %i.gs, label %.lr.ph.i.i.i28.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i28.i:                                 ; preds = %.lr.ph.i9.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit8.i.i
  %.033.i.i.i29.i = phi i64 [ %spec.select.i.i.i30.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit8.i.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.gt = shl i64 %.033.i.i.i29.i, 1              ; 2 uses
  %i.gu = add i64 %i.gt, 2                        ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gu
  %i.gw = or disjoint i64 %i.gt, 1                ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gw
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !23 ; 2 uses
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !23 ; 2 uses
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !25
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 176
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = tail call noundef ptr %i.hc(ptr noundef nonnull align 8 dereferenceable(40) %i.gy), !inline_history !38 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load double, ptr %i.he, align 8, !tbaa !13 ; 2 uses
  %i.hg = fcmp uno double %i.hf, 0.000000e+00     ; 2 uses
  %i.hh = load double, ptr %i.hd, align 8         ; 2 uses
  %i.hi = fsub double %i.hf, %i.hh
  %i.hj = fmul double %i.hi, 5.000000e-01
  %i.hk = select i1 %i.hg, double 0.000000e+00, double %i.hj
  %i.hl = fadd double %i.hh, %i.hk                ; 2 uses
  %i.hm = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.hn = fcmp ogt double %i.hl, %i.hm
  br i1 %i.hn, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.i.i.i28.i
  %i.ho = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.hp = fcmp une double %i.ho, 0.000000e+00
  br i1 %i.hp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hq = fsub double %i.hl, %i.hm
  %i.hr = fdiv double %i.hq, %i.ho
  %i.hs = fptoui double %i.hr to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i.i.i28.i
  %.010.i.i3.i.i = phi i32 [ %i.hs, %bb.ab ], [ 0, %bb.aa ], [ 0, %.lr.ph.i.i.i28.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hu = load double, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hw = load double, ptr %i.hv, align 8         ; 2 uses
  %i.hx = fsub double %i.hu, %i.hw
  %i.hy = fmul double %i.hx, 5.000000e-01
  %i.hz = select i1 %i.hg, double 0.000000e+00, double %i.hy
  %i.ia = fadd double %i.hw, %i.hz                ; 2 uses
  %i.ib = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.ic = fcmp ogt double %i.ia, %i.ib
  br i1 %i.ic, label %bb.ad, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i4.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.id = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.ie = fcmp une double %i.id, 0.000000e+00
  br i1 %i.ie, label %bb.ae, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i4.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.if = fsub double %i.ia, %i.ib
  %i.ig = fdiv double %i.if, %i.id
  %i.ih = fptoui double %i.ig to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i4.i.i

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i4.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i.i5.i.i = phi i32 [ %i.ih, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ]
  %i.ii = load i32, ptr %3, align 8, !tbaa !7
  %i.ij = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.ii, i32 noundef %.010.i.i3.i.i, i32 noundef %.0.i.i5.i.i)
  %i.ik = load ptr, ptr %i.gz, align 8, !tbaa !25
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 176
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = tail call noundef ptr %i.im(ptr noundef nonnull align 8 dereferenceable(40) %i.gz), !inline_history !38 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load double, ptr %i.io, align 8, !tbaa !13 ; 2 uses
  %i.iq = fcmp uno double %i.ip, 0.000000e+00     ; 2 uses
  %i.ir = load double, ptr %i.in, align 8         ; 2 uses
  %i.is = fsub double %i.ip, %i.ir
  %i.it = fmul double %i.is, 5.000000e-01
  %i.iu = select i1 %i.iq, double 0.000000e+00, double %i.it
  %i.iv = fadd double %i.ir, %i.iu                ; 2 uses
  %i.iw = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.ix = fcmp ogt double %i.iv, %i.iw
  br i1 %i.ix, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i4.i.i
  %i.iy = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.iz = fcmp une double %i.iy, 0.000000e+00
  br i1 %i.iz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ja = fsub double %i.iv, %i.iw
  %i.jb = fdiv double %i.ja, %i.iy
  %i.jc = fptoui double %i.jb to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i4.i.i
  %.010.i3.i6.i.i = phi i32 [ %i.jc, %bb.ag ], [ 0, %bb.af ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i4.i.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.je = load double, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.jg = load double, ptr %i.jf, align 8         ; 2 uses
  %i.jh = fsub double %i.je, %i.jg
  %i.ji = fmul double %i.jh, 5.000000e-01
  %i.jj = select i1 %i.iq, double 0.000000e+00, double %i.ji
  %i.jk = fadd double %i.jg, %i.jj                ; 2 uses
  %i.jl = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.jm = fcmp ogt double %i.jk, %i.jl
  br i1 %i.jm, label %bb.ai, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit8.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.jn = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.jo = fcmp une double %i.jn, 0.000000e+00
  br i1 %i.jo, label %bb.aj, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit8.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.jp = fsub double %i.jk, %i.jl
  %i.jq = fdiv double %i.jp, %i.jn
  %i.jr = fptoui double %i.jq to i32
  br label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit8.i.i

_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit8.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0.i4.i7.i.i = phi i32 [ %i.jr, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ]
  %i.js = load i32, ptr %3, align 8, !tbaa !7
  %i.jt = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.js, i32 noundef %.010.i3.i6.i.i, i32 noundef %.0.i4.i7.i.i)
  %i.ju = icmp ugt i32 %i.ij, %i.jt
  %spec.select.i.i.i30.i = select i1 %i.ju, i64 %i.gw, i64 %i.gu ; 4 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i30.i
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !23
  %i.jx = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.i.i.i29.i
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !23
  %i.jy = icmp slt i64 %spec.select.i.i.i30.i, %i.gr
  br i1 %i.jy, label %.lr.ph.i.i.i28.i, label %._crit_edge.i.i.i10.i, !llvm.loop !35

._crit_edge.i.i.i10.i:                            ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit8.i.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i30.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit8.i.i ] ; 5 uses
  %i.jz = and i64 %i.go, 8
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i10.i
  %i.kb = add nsw i64 %i.gp, -2
  %i.kc = ashr exact i64 %i.kb, 1
  %i.kd = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.kc
  br i1 %i.kd, label %.thread.i.i27.i, label %bb.al

.thread.i.i27.i:                                  ; preds = %bb.ak
  %i.ke = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.kf = or disjoint i64 %i.ke, 1                ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kf
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !23
  %i.ki = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !23
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_RT0_.exit.i24.i, label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.al, %.thread.i.i27.i
  %.018.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.al ], [ %i.kf, %.thread.i.i27.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.aw
  %.018.i.i.i.i15.i = phi i64 [ %.0919.i.i56.i.i17.i, %bb.aw ], [ %.018.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i16.i = add nsw i64 %.018.i.i.i.i15.i, -1
  %.0919.i.i56.i.i17.i = lshr i64 %.0919.in.i.i.i.i16.i, 1 ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0919.i.i56.i.i17.i ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !23 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 176
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = tail call noundef ptr %i.kn(ptr noundef nonnull align 8 dereferenceable(40) %i.kk), !inline_history !38 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !13 ; 2 uses
  %i.kr = fcmp uno double %i.kq, 0.000000e+00     ; 2 uses
  %i.ks = load double, ptr %i.ko, align 8         ; 2 uses
  %i.kt = fsub double %i.kq, %i.ks
  %i.ku = fmul double %i.kt, 5.000000e-01
  %i.kv = select i1 %i.kr, double 0.000000e+00, double %i.ku
  %i.kw = fadd double %i.ks, %i.kv                ; 2 uses
  %i.kx = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.ky = fcmp ogt double %i.kw, %i.kx
  br i1 %i.ky, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.lr.ph.i.i.i.i14.i
  %i.kz = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.la = fcmp une double %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lb = fsub double %i.kw, %i.kx
  %i.lc = fdiv double %i.lb, %i.kz
  %i.ld = fptoui double %i.lc to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.lr.ph.i.i.i.i14.i
  %.010.i.i.i18.i = phi i32 [ %i.ld, %bb.an ], [ 0, %bb.am ], [ 0, %.lr.ph.i.i.i.i14.i ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.lf = load double, ptr %i.le, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.lh = load double, ptr %i.lg, align 8         ; 2 uses
  %i.li = fsub double %i.lf, %i.lh
  %i.lj = fmul double %i.li, 5.000000e-01
  %i.lk = select i1 %i.kr, double 0.000000e+00, double %i.lj
  %i.ll = fadd double %i.lh, %i.lk                ; 2 uses
  %i.lm = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.ln = fcmp ogt double %i.ll, %i.lm
  br i1 %i.ln, label %bb.ap, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i19.i

bb.ap:                                            ; preds = %bb.ao
  %i.lo = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.lp = fcmp une double %i.lo, 0.000000e+00
  br i1 %i.lp, label %bb.aq, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i19.i

bb.aq:                                            ; preds = %bb.ap
  %i.lq = fsub double %i.ll, %i.lm
  %i.lr = fdiv double %i.lq, %i.lo
  %i.ls = fptoui double %i.lr to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i19.i

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i19.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.0.i.i.i20.i = phi i32 [ %i.ls, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ]
  %i.lt = load i32, ptr %3, align 8, !tbaa !7
  %i.lu = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.lt, i32 noundef %.010.i.i.i18.i, i32 noundef %.0.i.i.i20.i)
  %i.lv = load ptr, ptr %i.gl, align 8, !tbaa !25
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 176
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = tail call noundef ptr %i.lx(ptr noundef nonnull align 8 dereferenceable(40) %i.gl), !inline_history !38 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !13 ; 2 uses
  %i.mb = fcmp uno double %i.ma, 0.000000e+00     ; 2 uses
  %i.mc = load double, ptr %i.ly, align 8         ; 2 uses
  %i.md = fsub double %i.ma, %i.mc
  %i.me = fmul double %i.md, 5.000000e-01
  %i.mf = select i1 %i.mb, double 0.000000e+00, double %i.me
  %i.mg = fadd double %i.mc, %i.mf                ; 2 uses
  %i.mh = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.mi = fcmp ogt double %i.mg, %i.mh
  br i1 %i.mi, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i19.i
  %i.mj = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.mk = fcmp une double %i.mj, 0.000000e+00
  br i1 %i.mk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ml = fsub double %i.mg, %i.mh
  %i.mm = fdiv double %i.ml, %i.mj
  %i.mn = fptoui double %i.mm to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i19.i
  %.010.i3.i.i21.i = phi i32 [ %i.mn, %bb.as ], [ 0, %bb.ar ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i19.i ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.mp = load double, ptr %i.mo, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mr = load double, ptr %i.mq, align 8         ; 2 uses
  %i.ms = fsub double %i.mp, %i.mr
  %i.mt = fmul double %i.ms, 5.000000e-01
  %i.mu = select i1 %i.mb, double 0.000000e+00, double %i.mt
  %i.mv = fadd double %i.mr, %i.mu                ; 2 uses
  %i.mw = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.mx = fcmp ogt double %i.mv, %i.mw
  br i1 %i.mx, label %bb.au, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i22.i

bb.au:                                            ; preds = %bb.at
  %i.my = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.mz = fcmp une double %i.my, 0.000000e+00
  br i1 %i.mz, label %bb.av, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i22.i

bb.av:                                            ; preds = %bb.au
  %i.na = fsub double %i.mv, %i.mw
  %i.nb = fdiv double %i.na, %i.my
  %i.nc = fptoui double %i.nb to i32
  br label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i22.i

_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i22.i: ; preds = %bb.av, %bb.au, %bb.at
  %.0.i4.i.i23.i = phi i32 [ %i.nc, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ]
  %i.nd = load i32, ptr %3, align 8, !tbaa !7
  %i.ne = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.nd, i32 noundef %.010.i3.i.i21.i, i32 noundef %.0.i4.i.i23.i)
  %i.nf = icmp ugt i32 %i.lu, %i.ne
  br i1 %i.nf, label %bb.aw, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_RT0_.exit.i24.i

bb.aw:                                            ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i22.i
  %i.ng = load ptr, ptr %i.kj, align 8, !tbaa !23
  %i.nh = getelementptr inbounds [8 x i8], ptr %0, i64 %.018.i.i.i.i15.i
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !23
  %.not7.i.i26.i = icmp eq i64 %.0919.i.i56.i.i17.i, 0
  br i1 %.not7.i.i26.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_RT0_.exit.i24.i, label %.lr.ph.i.i.i.i14.i, !llvm.loop !36

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_RT0_.exit.i24.i: ; preds = %bb.aw, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i22.i, %bb.al
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.al ], [ %.018.i.i.i.i15.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i22.i ], [ 0, %bb.aw ]
  %i.ni = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i25.i
  store ptr %i.gl, ptr %i.ni, align 8, !tbaa !23
  %i.nj = icmp sgt i64 %i.go, 8
  br i1 %i.nj, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_T0_.exit, !llvm.loop !39

.lr.ph120:                                        ; preds = %.lr.ph, %bb.b
  %storemerge24119 = phi ptr [ %.sroa.020.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.025118 = phi i64 [ %i.nl, %bb.b ], [ %2, %.lr.ph ]
  %i.nk = phi i64 [ %i.un, %bb.b ], [ %i.d, %.lr.ph ]
  %i.nl = add nsw i64 %.025118, -1                ; 3 uses
  %i.nm = lshr i64 %i.nk, 1
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nm ; 7 uses
  %i.no = getelementptr inbounds i8, ptr %storemerge24119, i64 -8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  %i.np = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.nq = load ptr, ptr %i.nn, align 8, !tbaa !23
  %i.nr = call fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.np, ptr noundef %i.nq)
  %i.ns = load ptr, ptr %i.no, align 8, !tbaa !23 ; 2 uses
  br i1 %i.nr, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %.lr.ph120
  %i.nt = load ptr, ptr %i.nn, align 8, !tbaa !23
  %i.nu = call fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.nt, ptr noundef %i.ns)
  br i1 %i.nu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nv = load ptr, ptr %0, align 8, !tbaa !23
  %i.nw = load ptr, ptr %i.nn, align 8, !tbaa !23
  store ptr %i.nw, ptr %0, align 8, !tbaa !23
  store ptr %i.nv, ptr %i.nn, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.nx = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.ny = load ptr, ptr %i.no, align 8, !tbaa !23
  %i.nz = call fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.nx, ptr noundef %i.ny)
  %i.oa = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  br i1 %i.nz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ob = load ptr, ptr %i.no, align 8, !tbaa !23
  store ptr %i.ob, ptr %0, align 8, !tbaa !23
  store ptr %i.oa, ptr %i.no, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.oc = load ptr, ptr %i.f, align 8, !tbaa !23
  store ptr %i.oc, ptr %0, align 8, !tbaa !23
  store ptr %i.oa, ptr %i.f, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i

bb.bc:                                            ; preds = %.lr.ph120
  %i.od = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.oe = call fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.od, ptr noundef %i.ns)
  br i1 %i.oe, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.of = load <2 x ptr>, ptr %0, align 8, !tbaa !23
  %i.og = shufflevector <2 x ptr> %i.of, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.og, ptr %0, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.oh = load ptr, ptr %i.nn, align 8, !tbaa !23
  %i.oi = load ptr, ptr %i.no, align 8, !tbaa !23
  %i.oj = call fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.oh, ptr noundef %i.oi)
  %i.ok = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  br i1 %i.oj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ol = load ptr, ptr %i.no, align 8, !tbaa !23
  store ptr %i.ol, ptr %0, align 8, !tbaa !23
  store ptr %i.ok, ptr %i.no, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.om = load ptr, ptr %i.nn, align 8, !tbaa !23
  store ptr %i.om, ptr %0, align 8, !tbaa !23
  store ptr %i.ok, ptr %i.nn, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i: ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ce, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i
  %.sroa.017.0.i.i = phi ptr [ %storemerge24119, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i ], [ %.sroa.017.1.i.i, %bb.ce ]
  %.sroa.020.0.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_SJ_T0_.exit.i ], [ %i.rk, %bb.ce ]
  br label %bb.bi

bb.bi:                                            ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i, %bb.bh
  %.sroa.020.1.i.i = phi ptr [ %.sroa.020.0.i.i, %bb.bh ], [ %i.rk, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i ] ; 9 uses
  %i.on = load ptr, ptr %.sroa.020.1.i.i, align 8, !tbaa !23 ; 2 uses
  %i.oo = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.op = load ptr, ptr %i.on, align 8, !tbaa !25
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 176
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = tail call noundef ptr %i.or(ptr noundef nonnull align 8 dereferenceable(40) %i.on), !inline_history !40 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !13 ; 2 uses
  %i.ov = fcmp uno double %i.ou, 0.000000e+00     ; 2 uses
  %i.ow = load double, ptr %i.os, align 8         ; 2 uses
  %i.ox = fsub double %i.ou, %i.ow
  %i.oy = fmul double %i.ox, 5.000000e-01
  %i.oz = select i1 %i.ov, double 0.000000e+00, double %i.oy
  %i.pa = fadd double %i.ow, %i.oz                ; 2 uses
  %i.pb = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.pc = fcmp ogt double %i.pa, %i.pb
  br i1 %i.pc, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.pd = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.pe = fcmp une double %i.pd, 0.000000e+00
  br i1 %i.pe, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.pf = fsub double %i.pa, %i.pb
  %i.pg = fdiv double %i.pf, %i.pd
  %i.ph = fptoui double %i.pg to i32
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.010.i.i.i.i = phi i32 [ %i.ph, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bi ]
  %i.pi = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.pj = load double, ptr %i.pi, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.pl = load double, ptr %i.pk, align 8         ; 2 uses
  %i.pm = fsub double %i.pj, %i.pl
  %i.pn = fmul double %i.pm, 5.000000e-01
  %i.po = select i1 %i.ov, double 0.000000e+00, double %i.pn
  %i.pp = fadd double %i.pl, %i.po                ; 2 uses
  %i.pq = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.pr = fcmp ogt double %i.pp, %i.pq
  br i1 %i.pr, label %bb.bm, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.ps = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.pt = fcmp une double %i.ps, 0.000000e+00
  br i1 %i.pt, label %bb.bn, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.pu = fsub double %i.pp, %i.pq
  %i.pv = fdiv double %i.pu, %i.ps
  %i.pw = fptoui double %i.pv to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i: ; preds = %bb.bn, %bb.bm, %bb.bl
  %.0.i.i.i.i = phi i32 [ %i.pw, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bl ]
  %i.px = load i32, ptr %3, align 8, !tbaa !7
  %i.py = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.px, i32 noundef %.010.i.i.i.i, i32 noundef %.0.i.i.i.i)
  %i.pz = load ptr, ptr %i.oo, align 8, !tbaa !25
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 176
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = tail call noundef ptr %i.qb(ptr noundef nonnull align 8 dereferenceable(40) %i.oo), !inline_history !40 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !13 ; 2 uses
  %i.qf = fcmp uno double %i.qe, 0.000000e+00     ; 2 uses
  %i.qg = load double, ptr %i.qc, align 8         ; 2 uses
  %i.qh = fsub double %i.qe, %i.qg
  %i.qi = fmul double %i.qh, 5.000000e-01
  %i.qj = select i1 %i.qf, double 0.000000e+00, double %i.qi
  %i.qk = fadd double %i.qg, %i.qj                ; 2 uses
  %i.ql = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.qm = fcmp ogt double %i.qk, %i.ql
  br i1 %i.qm, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i
  %i.qn = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.qo = fcmp une double %i.qn, 0.000000e+00
  br i1 %i.qo, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qp = fsub double %i.qk, %i.ql
  %i.qq = fdiv double %i.qp, %i.qn
  %i.qr = fptoui double %i.qq to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i
  %.010.i3.i.i.i = phi i32 [ %i.qr, %bb.bp ], [ 0, %bb.bo ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i.i.i ]
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qt = load double, ptr %i.qs, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qv = load double, ptr %i.qu, align 8         ; 2 uses
  %i.qw = fsub double %i.qt, %i.qv
  %i.qx = fmul double %i.qw, 5.000000e-01
  %i.qy = select i1 %i.qf, double 0.000000e+00, double %i.qx
  %i.qz = fadd double %i.qv, %i.qy                ; 2 uses
  %i.ra = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.rb = fcmp ogt double %i.qz, %i.ra
  br i1 %i.rb, label %bb.br, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i

bb.br:                                            ; preds = %bb.bq
  %i.rc = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.rd = fcmp une double %i.rc, 0.000000e+00
  br i1 %i.rd, label %bb.bs, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.re = fsub double %i.qz, %i.ra
  %i.rf = fdiv double %i.re, %i.rc
  %i.rg = fptoui double %i.rf to i32
  br label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i

_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %.0.i4.i.i.i = phi i32 [ %i.rg, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ]
  %i.rh = load i32, ptr %3, align 8, !tbaa !7
  %i.ri = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.rh, i32 noundef %.010.i3.i.i.i, i32 noundef %.0.i4.i.i.i)
  %i.rj = icmp ugt i32 %i.py, %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.020.1.i.i, i64 8 ; 2 uses
  br i1 %i.rj, label %bb.bi, label %.preheader.i.i, !llvm.loop !41

.preheader.i.i:                                   ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit13.i.i
  %.sroa.017.0.pn.i.i = phi ptr [ %.sroa.017.1.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit13.i.i ], [ %.sroa.017.0.i.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit.i.i ]
  %.sroa.017.1.i.i = getelementptr inbounds i8, ptr %.sroa.017.0.pn.i.i, i64 -8 ; 6 uses
  %i.rl = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.rm = load ptr, ptr %.sroa.017.1.i.i, align 8, !tbaa !23 ; 2 uses
  %i.rn = load ptr, ptr %i.rl, align 8, !tbaa !25
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 176
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = tail call noundef ptr %i.rp(ptr noundef nonnull align 8 dereferenceable(40) %i.rl), !inline_history !40 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !13 ; 2 uses
  %i.rt = fcmp uno double %i.rs, 0.000000e+00     ; 2 uses
  %i.ru = load double, ptr %i.rq, align 8         ; 2 uses
  %i.rv = fsub double %i.rs, %i.ru
  %i.rw = fmul double %i.rv, 5.000000e-01
  %i.rx = select i1 %i.rt, double 0.000000e+00, double %i.rw
  %i.ry = fadd double %i.ru, %i.rx                ; 2 uses
  %i.rz = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.sa = fcmp ogt double %i.ry, %i.rz
  br i1 %i.sa, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %.preheader.i.i
  %i.sb = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.sc = fcmp une double %i.sb, 0.000000e+00
  br i1 %i.sc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.sd = fsub double %i.ry, %i.rz
  %i.se = fdiv double %i.sd, %i.sb
  %i.sf = fptoui double %i.se to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %.preheader.i.i
  %.010.i.i8.i.i = phi i32 [ %i.sf, %bb.bu ], [ 0, %bb.bt ], [ 0, %.preheader.i.i ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.sh = load double, ptr %i.sg, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.sj = load double, ptr %i.si, align 8         ; 2 uses
  %i.sk = fsub double %i.sh, %i.sj
  %i.sl = fmul double %i.sk, 5.000000e-01
  %i.sm = select i1 %i.rt, double 0.000000e+00, double %i.sl
  %i.sn = fadd double %i.sj, %i.sm                ; 2 uses
  %i.so = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.sp = fcmp ogt double %i.sn, %i.so
  br i1 %i.sp, label %bb.bw, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i9.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.sq = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.sr = fcmp une double %i.sq, 0.000000e+00
  br i1 %i.sr, label %bb.bx, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i9.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.ss = fsub double %i.sn, %i.so
  %i.st = fdiv double %i.ss, %i.sq
  %i.su = fptoui double %i.st to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i9.i.i

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i9.i.i: ; preds = %bb.bx, %bb.bw, %bb.bv
  %.0.i.i10.i.i = phi i32 [ %i.su, %bb.bx ], [ 0, %bb.bw ], [ 0, %bb.bv ]
  %i.sv = load i32, ptr %3, align 8, !tbaa !7
  %i.sw = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.sv, i32 noundef %.010.i.i8.i.i, i32 noundef %.0.i.i10.i.i)
  %i.sx = load ptr, ptr %i.rm, align 8, !tbaa !25
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 176
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = tail call noundef ptr %i.sz(ptr noundef nonnull align 8 dereferenceable(40) %i.rm), !inline_history !40 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !13 ; 2 uses
  %i.td = fcmp uno double %i.tc, 0.000000e+00     ; 2 uses
  %i.te = load double, ptr %i.ta, align 8         ; 2 uses
  %i.tf = fsub double %i.tc, %i.te
  %i.tg = fmul double %i.tf, 5.000000e-01
  %i.th = select i1 %i.td, double 0.000000e+00, double %i.tg
  %i.ti = fadd double %i.te, %i.th                ; 2 uses
  %i.tj = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.tk = fcmp ogt double %i.ti, %i.tj
  br i1 %i.tk, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i9.i.i
  %i.tl = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.tm = fcmp une double %i.tl, 0.000000e+00
  br i1 %i.tm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.tn = fsub double %i.ti, %i.tj
  %i.to = fdiv double %i.tn, %i.tl
  %i.tp = fptoui double %i.to to i32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i9.i.i
  %.010.i3.i11.i.i = phi i32 [ %i.tp, %bb.bz ], [ 0, %bb.by ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i9.i.i ]
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.tr = load double, ptr %i.tq, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tt = load double, ptr %i.ts, align 8         ; 2 uses
  %i.tu = fsub double %i.tr, %i.tt
  %i.tv = fmul double %i.tu, 5.000000e-01
  %i.tw = select i1 %i.td, double 0.000000e+00, double %i.tv
  %i.tx = fadd double %i.tt, %i.tw                ; 2 uses
  %i.ty = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.tz = fcmp ogt double %i.tx, %i.ty
  br i1 %i.tz, label %bb.cb, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit13.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.ua = load double, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.ub = fcmp une double %i.ua, 0.000000e+00
  br i1 %i.ub, label %bb.cc, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit13.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.uc = fsub double %i.tx, %i.ty
  %i.ud = fdiv double %i.uc, %i.ua
  %i.ue = fptoui double %i.ud to i32
  br label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit13.i.i

_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit13.i.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %.0.i4.i12.i.i = phi i32 [ %i.ue, %bb.cc ], [ 0, %bb.cb ], [ 0, %bb.ca ]
  %i.uf = load i32, ptr %3, align 8, !tbaa !7
  %i.ug = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.uf, i32 noundef %.010.i3.i11.i.i, i32 noundef %.0.i4.i12.i.i)
  %i.uh = icmp ugt i32 %i.sw, %i.ug
  br i1 %i.uh, label %.preheader.i.i, label %bb.cd, !llvm.loop !42

bb.cd:                                            ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit13.i.i
  %i.ui = icmp ult ptr %.sroa.020.1.i.i, %.sroa.017.1.i.i
  br i1 %i.ui, label %bb.ce, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEET_SJ_SJ_T0_.exit

bb.ce:                                            ; preds = %bb.cd
  %i.uj = load ptr, ptr %.sroa.020.1.i.i, align 8, !tbaa !23
  %i.uk = load ptr, ptr %.sroa.017.1.i.i, align 8, !tbaa !23
  store ptr %i.uk, ptr %.sroa.020.1.i.i, align 8, !tbaa !23
  store ptr %i.uj, ptr %.sroa.017.1.i.i, align 8, !tbaa !23
  br label %bb.bh, !llvm.loop !43

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEET_SJ_SJ_T0_.exit: ; preds = %bb.cd
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_T0_T1_(ptr nonnull %.sroa.020.1.i.i, ptr %storemerge24119, i64 noundef %i.nl, ptr nonnull %3)
  %i.ul = ptrtoint ptr %.sroa.020.1.i.i to i64
  %i.um = sub i64 %i.ul, %i.a                     ; 2 uses
  %i.un = ashr exact i64 %i.um, 3                 ; 3 uses
  %i.uo = icmp sgt i64 %i.un, 16
  br i1 %i.uo, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_T0_.exit, !llvm.loop !33

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEET_SJ_SJ_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_SJ_RT0_.exit.i24.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !47, !align !48 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = fcmp uno double %i.g, 0.000000e+00       ; 2 uses
  %i.i = load double, ptr %i.e, align 8           ; 2 uses
  %i.j = fsub double %i.g, %i.i
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = select i1 %i.h, double 0.000000e+00, double %i.k
  %i.m = fadd double %i.i, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !12 ; 2 uses
  %i.p = fcmp ogt double %i.m, %i.o
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = fcmp une double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = fsub double %i.m, %i.o
  %i.u = fdiv double %i.t, %i.r
  %i.v = fptoui double %i.u to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.010.i = phi i32 [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load double, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load double, ptr %i.y, align 8           ; 2 uses
  %i.aa = fsub double %i.x, %i.z
  %i.ab = fmul double %i.aa, 5.000000e-01
  %i.ac = select i1 %i.h, double 0.000000e+00, double %i.ab
  %i.ad = fadd double %i.z, %i.ac                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  %i.ag = fcmp ogt double %i.ad, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  %i.aj = fcmp une double %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.f, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = fsub double %i.ad, %i.af
  %i.al = fdiv double %i.ak, %i.ai
  %i.am = fptoui double %i.al to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.am, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.an = load i32, ptr %i.a, align 8, !tbaa !7
  %i.ao = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.an, i32 noundef %.010.i, i32 noundef %.0.i)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !47, !align !48 ; 5 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(40) %2) ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %i.aw = fcmp uno double %i.av, 0.000000e+00     ; 2 uses
  %i.ax = load double, ptr %i.at, align 8         ; 2 uses
  %i.ay = fsub double %i.av, %i.ax
  %i.az = fmul double %i.ay, 5.000000e-01
  %i.ba = select i1 %i.aw, double 0.000000e+00, double %i.az
  %i.bb = fadd double %i.ax, %i.ba                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !12 ; 2 uses
  %i.be = fcmp ogt double %i.bb, %i.bd
  br i1 %i.be, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %i.bh = fcmp une double %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = fsub double %i.bb, %i.bd
  %i.bj = fdiv double %i.bi, %i.bg
  %i.bk = fptoui double %i.bj to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit
  %.010.i3 = phi i32 [ %i.bk, %bb.h ], [ 0, %bb.g ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bm = load double, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bo = load double, ptr %i.bn, align 8         ; 2 uses
  %i.bp = fsub double %i.bm, %i.bo
  %i.bq = fmul double %i.bp, 5.000000e-01
  %i.br = select i1 %i.aw, double 0.000000e+00, double %i.bq
  %i.bs = fadd double %i.bo, %i.br                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !16 ; 2 uses
  %i.bv = fcmp ogt double %i.bs, %i.bu
  br i1 %i.bv, label %bb.j, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit5

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !17 ; 2 uses
  %i.by = fcmp une double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.k, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit5

bb.k:                                             ; preds = %bb.j
  %i.bz = fsub double %i.bs, %i.bu
  %i.ca = fdiv double %i.bz, %i.bx
  %i.cb = fptoui double %i.ca to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit5

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit5: ; preds = %bb.i, %bb.j, %bb.k
  %.0.i4 = phi i32 [ %i.cb, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.cc = load i32, ptr %i.ap, align 8, !tbaa !7
  %i.cd = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.cc, i32 noundef %.010.i3, i32 noundef %.0.i4)
  %i.ce = icmp ugt i32 %i.ao, %i.cd
  ret i1 %i.ce
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_SJ_T0_(ptr %0, ptr nofree readnone captures(address) %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.017 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.0.017, %1
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0.020 = phi ptr [ %.sroa.0.017, %.lr.ph ], [ %.sroa.0.0, %bb.r ] ; 8 uses
  %.pn19 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.020, %bb.r ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.0.020, align 8, !tbaa !23
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  %i.i = call fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.g, ptr noundef %i.h)
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %.sroa.0.020, align 8, !tbaa !23
  %i.k = ptrtoint ptr %.sroa.0.020 to i64
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn19, i64 16
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 8
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn19, i64 8
  %i.t = load ptr, ptr %0, align 8, !tbaa !23
  store ptr %i.t, ptr %i.s, align 8, !tbaa !23
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store ptr %i.j, ptr %0, align 8, !tbaa !23
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %3, align 8
  %i.u = load ptr, ptr %.sroa.0.020, align 8, !tbaa !23 ; 4 uses
  %i.v = load ptr, ptr %.pn19, align 8, !tbaa !23
  %i.w = call fastcc noundef zeroext i1 @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_(ptr noundef nonnull readonly align 8 dereferenceable(8) %3, ptr noundef %i.u, ptr noundef %i.v)
  br i1 %i.w, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit

.lr.ph.i:                                         ; preds = %bb.g, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit
  %.sroa.0.08.i = phi ptr [ %.sroa.0.0.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit ], [ %.pn19, %bb.g ] ; 4 uses
  %.sroa.03.07.i = phi ptr [ %.sroa.0.08.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit ], [ %.sroa.0.020, %bb.g ]
  %i.x = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !23
  store ptr %i.x, ptr %.sroa.03.07.i, align 8, !tbaa !23
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.y = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !23 ; 2 uses
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %i.u), !inline_history !50 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = fcmp uno double %i.ae, 0.000000e+00     ; 2 uses
  %i.ag = load double, ptr %i.ac, align 8         ; 2 uses
  %i.ah = fsub double %i.ae, %i.ag
  %i.ai = fmul double %i.ah, 5.000000e-01
  %i.aj = select i1 %i.af, double 0.000000e+00, double %i.ai
  %i.ak = fadd double %i.ag, %i.aj                ; 2 uses
  %i.al = load double, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %i.am = fcmp ogt double %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i
  %i.an = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.ao = fcmp une double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = fsub double %i.ak, %i.al
  %i.aq = fdiv double %i.ap, %i.an
  %i.ar = fptoui double %i.aq to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i
  %.010.i.i = phi i32 [ %i.ar, %bb.i ], [ 0, %bb.h ], [ 0, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.at = load double, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.av = load double, ptr %i.au, align 8         ; 2 uses
  %i.aw = fsub double %i.at, %i.av
  %i.ax = fmul double %i.aw, 5.000000e-01
  %i.ay = select i1 %i.af, double 0.000000e+00, double %i.ax
  %i.az = fadd double %i.av, %i.ay                ; 2 uses
  %i.ba = load double, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %i.bb = fcmp ogt double %i.az, %i.ba
  br i1 %i.bb, label %bb.k, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bc = load double, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %i.bd = fcmp une double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.l, label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i

bb.l:                                             ; preds = %bb.k
  %i.be = fsub double %i.az, %i.ba
  %i.bf = fdiv double %i.be, %i.bc
  %i.bg = fptoui double %i.bf to i32
  br label %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i

_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.bg, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.bh = load i32, ptr %2, align 8, !tbaa !7
  %i.bi = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.bh, i32 noundef %.010.i.i, i32 noundef %.0.i.i)
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(40) %i.y), !inline_history !50 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %i.bp = fcmp uno double %i.bo, 0.000000e+00     ; 2 uses
  %i.bq = load double, ptr %i.bm, align 8         ; 2 uses
  %i.br = fsub double %i.bo, %i.bq
  %i.bs = fmul double %i.br, 5.000000e-01
  %i.bt = select i1 %i.bp, double 0.000000e+00, double %i.bs
  %i.bu = fadd double %i.bq, %i.bt                ; 2 uses
  %i.bv = load double, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %i.bw = fcmp ogt double %i.bu, %i.bv
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i
  %i.bx = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.by = fcmp une double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = fsub double %i.bu, %i.bv
  %i.ca = fdiv double %i.bz, %i.bx
  %i.cb = fptoui double %i.ca to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i
  %.010.i3.i = phi i32 [ %i.cb, %bb.n ], [ 0, %bb.m ], [ 0, %_ZN4geos5shape7fractal14HilbertEncoder6encodeEPKNS_4geom8EnvelopeE.exit.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.cd = load double, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cf = load double, ptr %i.ce, align 8         ; 2 uses
  %i.cg = fsub double %i.cd, %i.cf
  %i.ch = fmul double %i.cg, 5.000000e-01
  %i.ci = select i1 %i.bp, double 0.000000e+00, double %i.ch
  %i.cj = fadd double %i.cf, %i.ci                ; 2 uses
  %i.ck = load double, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %i.cl = fcmp ogt double %i.cj, %i.ck
  br i1 %i.cl, label %bb.p, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit

bb.p:                                             ; preds = %bb.o
  %i.cm = load double, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %i.cn = fcmp une double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.q, label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit

bb.q:                                             ; preds = %bb.p
  %i.co = fsub double %i.cj, %i.ck
  %i.cp = fdiv double %i.co, %i.cm
  %i.cq = fptoui double %i.cp to i32
  br label %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit

_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.0.i4.i = phi i32 [ %i.cq, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  %i.cr = load i32, ptr %2, align 8, !tbaa !7
  %i.cs = tail call noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %i.cr, i32 noundef %.010.i3.i, i32 noundef %.0.i4.i)
  %i.ct = icmp ugt i32 %i.bi, %i.cs
  br i1 %i.ct, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit, !llvm.loop !30

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit: ; preds = %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit, %bb.g
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.0.020, %bb.g ], [ %.sroa.0.08.i, %_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_.exit ]
  store ptr %i.u, ptr %.sroa.03.0.lcssa.i, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.r

bb.r:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4geos4geom8GeometryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_5shape7fractal14HilbertEncoder4sortERS9_E17HilbertComparatorEEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !51

.loopexit:                                        ; preds = %bb.r, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare double @exp2(double) local_unnamed_addr

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN4geos5shape7fractal14HilbertEncoderE", !4, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!9 = !{!"double", !5, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"_ZTSN4geos4geom8EnvelopeE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!12 = !{!8, !9, i64 8}
!13 = !{!11, !9, i64 8}
!14 = !{!8, !9, i64 24}
!15 = !{!11, !9, i64 16}
!16 = !{!8, !9, i64 16}
!17 = !{!8, !9, i64 32}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p2 _ZTSN4geos4geom8GeometryE", !21, i64 0}
!21 = !{!"any p2 pointer", !22, i64 0}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN4geos4geom8GeometryE", !22, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !6, i64 0}
!27 = !{i64 0, i64 8, !18, i64 8, i64 8, !18, i64 16, i64 8, !18, i64 24, i64 8, !18}
!28 = !{!11, !9, i64 24}
!29 = distinct !{null, null, null, null, ptr @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{null, null, null, ptr @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_}
!35 = distinct !{!35, !31}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !31}
!38 = distinct !{null, null, ptr @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_}
!39 = distinct !{!39, !31}
!40 = distinct !{null, null, ptr @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_}
!41 = distinct !{!41, !31}
!42 = distinct !{!42, !31}
!43 = distinct !{!43, !31}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEE17HilbertComparator", !46, i64 0}
!46 = !{!"p1 _ZTSN4geos5shape7fractal14HilbertEncoderE", !22, i64 0}
!47 = !{}
!48 = !{i64 8}
!49 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!50 = !{ptr @_ZZN4geos5shape7fractal14HilbertEncoder4sortERSt6vectorIPNS_4geom8GeometryESaIS6_EEEN17HilbertComparatorclEPKS5_SC_}
!51 = distinct !{!51, !31}
end_hunk_0
