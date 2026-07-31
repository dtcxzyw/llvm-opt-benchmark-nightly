inline.NumInlined: 180
inline.NumDeleted: 61
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
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
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.b, 40
  %i.d = add nuw i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.d, %i.b
  %rt.bound1 = icmp ugt i64 %i.c, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !8
  %i.e = uitofp i32 %1 to double
  %exp2 = tail call double @exp2(double %i.e)
  %i.f = fptosi double %exp2 to i32
  %i.g = add nsw i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load double, ptr %i.i, align 8, !tbaa !11
  %4 = fcmp uno double %3, 0.000000e+00
  %5 = sitofp i32 %i.g to double
  %6 = load <4 x double>, ptr %2, align 8         ; 2 uses
  %i.j = shufflevector <4 x double> %6, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.k = shufflevector <4 x double> %6, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.l = fsub <2 x double> %i.j, %i.k
  %i.m = insertelement <2 x i1> poison, i1 %4, i64 0
  %i.n = shufflevector <2 x i1> %i.m, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.o = select <2 x i1> %i.n, <2 x double> zeroinitializer, <2 x double> %i.l
  %i.p = insertelement <2 x double> poison, double %5, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.o, %i.q
  %i.s = shufflevector <2 x double> %i.k, <2 x double> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.s, ptr %i.h, align 8, !tbaa !13
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !8
  %i.t = uitofp i32 %1 to double
  %exp2.scalar = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.scalar to i32
  %i.v = add nsw i32 %i.u, -1
  %i.w = load double, ptr %2, align 8, !tbaa !14  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.w, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !11 ; 2 uses
  %i.aa = fcmp uno double %i.z, 0.000000e+00      ; 2 uses
  %i.ab = fsub double %i.z, %i.w
  %.0.i.scalar = select i1 %i.aa, double 0.000000e+00, double %i.ab
  %i.ac = sitofp i32 %i.v to double               ; 2 uses
  %i.ad = fdiv double %.0.i.scalar, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ag, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load double, ptr %i.ai, align 8
  %i.ak = fsub double %i.aj, %i.ag
  %.0.i7.scalar = select i1 %i.aa, double 0.000000e+00, double %i.ak
  %i.al = fdiv double %.0.i7.scalar, %i.ac
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.al, ptr %i.am, align 8, !tbaa !19
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
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
  %i.b = load double, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00       ; 2 uses
  %i.d = load double, ptr %1, align 8             ; 2 uses
  %i.e = fsub double %i.b, %i.d
  %i.f = fmul double %i.e, 5.000000e-01
  %i.g = select i1 %i.c, double 0.000000e+00, double %i.f
  %i.h = fadd double %i.d, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !15 ; 2 uses
  %i.k = fcmp ogt double %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !16 ; 2 uses
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
  %i.aa = load double, ptr %i.z, align 8, !tbaa !18 ; 2 uses
  %i.ab = fcmp ogt double %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ae = fcmp une double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = fsub double %i.y, %i.aa
  %i.ag = fdiv double %i.af, %i.ad
  %i.ah = fptoui double %i.ag to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.ai = load i32, ptr %0, align 8, !tbaa !8
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
  store <4 x double> splat (double +qnan), ptr %2, align 8, !tbaa !13
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %.not13 = icmp eq ptr %i.d, %i.f
  br i1 %.not13, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit
  %.pre = load double, ptr %i.a, align 8, !tbaa !11
  %i.g = fcmp uno double %.pre, 0.000000e+00
  br i1 %i.g, label %._crit_edge.thread, label %bb.k

.lr.ph:                                           ; preds = %bb.a, %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit
  %.sroa.010.014 = phi ptr [ %i.ac, %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.010.014, align 8, !tbaa !24 ; 2 uses
  %i.i = load double, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.j = fcmp uno double %i.i, 0.000000e+00
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.h) ; 5 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !28
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = load double, ptr %2, align 8, !tbaa !14
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.o, ptr %2, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !11 ; 2 uses
  %i.t = fcmp ogt double %i.s, %i.i
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.s, ptr %i.a, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !17 ; 2 uses
  %i.w = load double, ptr %i.b, align 8, !tbaa !17
  %i.x = fcmp olt double %i.v, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.v, ptr %i.b, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !29 ; 2 uses
  %i.aa = load double, ptr %i.c, align 8, !tbaa !29
  %i.ab = fcmp ogt double %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit

bb.j:                                             ; preds = %bb.i
  store double %i.z, ptr %i.c, align 8, !tbaa !29
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit

_ZN4geos4geom8Envelope15expandToIncludeERKS1_.exit: ; preds = %bb.j, %bb.i, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @_ZN4geos5shape7fractal14HilbertEncoderC1EjRNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20    ; 6 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !20  ; 6 uses
end_hunk_0
