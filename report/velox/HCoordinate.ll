inline.NumInlined: 19
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

$_ZTIN4geos9algorithm25NotRepresentableExceptionE = comdat any

$_ZTSN4geos9algorithm25NotRepresentableExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

@_ZTIN4geos9algorithm25NotRepresentableExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos9algorithm25NotRepresentableExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9algorithm25NotRepresentableExceptionE = linkonce_odr constant [45 x i8] c"N4geos9algorithm25NotRepresentableExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c") [w: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1

@_ZN4geos9algorithm11HCoordinateC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos9algorithm11HCoordinateC2Ev
@_ZN4geos9algorithm11HCoordinateC1Eddd = unnamed_addr alias void (ptr, double, double, double), ptr @_ZN4geos9algorithm11HCoordinateC2Eddd
@_ZN4geos9algorithm11HCoordinateC1ERKNS_4geom10CoordinateE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateE
@_ZN4geos9algorithm11HCoordinateC1ERKNS_4geom10CoordinateES5_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateES5_
@_ZN4geos9algorithm11HCoordinateC1ERKNS_4geom10CoordinateES5_S5_S5_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateES5_S5_S5_
@_ZN4geos9algorithm11HCoordinateC1ERKS1_S3_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4geos9algorithm11HCoordinateC2ERKS1_S3_

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm11HCoordinate12intersectionERKNS_4geom10CoordinateES5_S5_S5_RS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load double, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %7 = load double, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.d = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.e = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %8 = load double, ptr %6, align 8, !tbaa !7     ; 2 uses
  %9 = load double, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %10 = load double, ptr %3, align 8, !tbaa !10   ; 2 uses
  %11 = load double, ptr %2, align 8, !tbaa !10   ; 2 uses
  %i.f = fmul double %7, %i.e
  %12 = fmul double %9, %11
  %13 = fmul double %i.c, %i.d
  %14 = fmul double %8, %10
  %15 = fsub double %i.c, %7                      ; 2 uses
  %16 = fsub double %8, %9                        ; 2 uses
  %i.g = fsub double %i.d, %i.e                   ; 2 uses
  %17 = fsub double %i.f, %13                     ; 2 uses
  %18 = fsub double %12, %14                      ; 2 uses
  %i.h = fsub double %10, %11                     ; 2 uses
  %i.i = fmul double %17, %16
  %i.j = fmul double %i.g, %18
  %19 = fmul double %15, %18
  %i.k = fmul double %17, %i.h
  %20 = fsub double %i.i, %19
  %i.l = fsub double %i.j, %i.k
  %i.m = fmul double %15, %i.h
  %i.n = fmul double %i.g, %16
  %i.o = fsub double %i.m, %i.n
  %21 = insertelement <2 x double> poison, double %i.l, i64 0
  %22 = insertelement <2 x double> %21, double %20, i64 1
  %23 = insertelement <2 x double> poison, double %i.o, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = fdiv <2 x double> %22, %24                ; 2 uses
  %26 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %25)
  %27 = fcmp one <2 x double> %26, splat (double +inf) ; 2 uses
  %28 = extractelement <2 x i1> %27, i64 0
  %29 = extractelement <2 x i1> %27, i64 1
  %or.cond = select i1 %28, i1 %29, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #8 ; 3 uses
  invoke void @_ZN4geos9algorithm25NotRepresentableExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN4geos9algorithm25NotRepresentableExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #8
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.a
  store <2 x double> %25, ptr %4, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN4geos9algorithm25NotRepresentableExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2Eddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #4 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !11
  store <2 x double> %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateES5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !7 ; 2 uses
  %i.e = fsub double %i.b, %i.d
  store double %i.e, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %2, align 8, !tbaa !10  ; 2 uses
  %i.h = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.i = fsub double %i.g, %i.h
  store double %i.i, ptr %i.f, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = fmul double %i.d, %i.h
  %i.l = fmul double %i.b, %i.g
  %i.m = fsub double %i.k, %i.l
  store double %i.m, ptr %i.j, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateES5_S5_S5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !7 ; 2 uses
  %i.e = fsub double %i.b, %i.d                   ; 2 uses
  %i.f = load double, ptr %2, align 8, !tbaa !10  ; 2 uses
  %i.g = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.h = fsub double %i.f, %i.g                   ; 2 uses
  %i.i = fmul double %i.d, %i.g
  %i.j = fmul double %i.b, %i.f
  %i.k = fsub double %i.i, %i.j                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !7 ; 2 uses
  %i.p = fsub double %i.m, %i.o                   ; 2 uses
  %i.q = load double, ptr %4, align 8, !tbaa !10  ; 2 uses
  %i.r = load double, ptr %3, align 8, !tbaa !10  ; 2 uses
  %i.s = fsub double %i.q, %i.r                   ; 2 uses
  %i.t = fmul double %i.o, %i.r
  %i.u = fmul double %i.m, %i.q
  %i.v = fsub double %i.t, %i.u                   ; 2 uses
  %i.w = fmul double %i.h, %i.v
  %i.x = fmul double %i.k, %i.s
  %i.y = fsub double %i.w, %i.x
  store double %i.y, ptr %0, align 8, !tbaa !14
  %i.z = fmul double %i.k, %i.p
  %i.aa = fmul double %i.e, %i.v
  %i.ab = fsub double %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ab, ptr %i.ac, align 8, !tbaa !15
  %i.ad = fmul double %i.e, %i.s
  %i.ae = fmul double %i.h, %i.p
  %i.af = fsub double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.af, ptr %i.ag, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2ERKS1_S3_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !12 ; 2 uses
  %i.e = fmul double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %i.j = fmul double %i.g, %i.i
  %i.k = fsub double %i.e, %i.j
  store double %i.k, ptr %0, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load double, ptr %2, align 8, !tbaa !14  ; 2 uses
  %i.n = fmul double %i.i, %i.m
  %i.o = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.p = fmul double %i.d, %i.o
  %i.q = fsub double %i.n, %i.p
  store double %i.q, ptr %i.l, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.f, align 8, !tbaa !15
  %i.t = fmul double %i.o, %i.s
  %i.u = load double, ptr %i.a, align 8, !tbaa !15
  %i.v = fmul double %i.m, %i.u
  %i.w = fsub double %i.t, %i.v
  store double %i.w, ptr %i.r, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK4geos9algorithm11HCoordinate4getXEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !12
  %i.d = fdiv double %i.a, %i.c                   ; 2 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp ueq double %i.e, +inf
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #8 ; 3 uses
  invoke void @_ZN4geos9algorithm25NotRepresentableExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN4geos9algorithm25NotRepresentableExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #8
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  ret double %i.d
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK4geos9algorithm11HCoordinate4getYEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !12
  %i.e = fdiv double %i.b, %i.d                   ; 2 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e)
  %i.g = fcmp ueq double %i.f, +inf
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #8 ; 3 uses
  invoke void @_ZN4geos9algorithm25NotRepresentableExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4geos9algorithm25NotRepresentableExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #8
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.a
  ret double %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9algorithm11HCoordinate13getCoordinateERNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %i.d = fdiv double %i.a, %i.c                   ; 2 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp ueq double %i.e, +inf
  br i1 %i.f, label %bb.b, label %_ZNK4geos9algorithm11HCoordinate4getXEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #8 ; 3 uses
  invoke void @_ZN4geos9algorithm25NotRepresentableExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN4geos9algorithm25NotRepresentableExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #9
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.n, %bb.g ], [ %i.g, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #8
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4geos9algorithm11HCoordinate4getXEv.exit:     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !15
  %i.k = fdiv double %i.j, %i.c                   ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ueq double %i.l, +inf
  br i1 %i.m, label %bb.e, label %_ZNK4geos9algorithm11HCoordinate4getYEv.exit

bb.e:                                             ; preds = %_ZNK4geos9algorithm11HCoordinate4getXEv.exit
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #8 ; 3 uses
  invoke void @_ZN4geos9algorithm25NotRepresentableExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN4geos9algorithm25NotRepresentableExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4geos9algorithm11HCoordinate4getYEv.exit:     ; preds = %_ZNK4geos9algorithm11HCoordinate4getXEv.exit
  store double %i.d, ptr %1, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithmlsERSoRKNS0_11HCoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.b = load double, ptr %1, align 8, !tbaa !14
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.b) ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.2, i64 noundef 6) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !12
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %i.j) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  ret ptr %i.k
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"double", !5, i64 0}
!10 = !{!8, !9, i64 0}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !9, i64 16}
!13 = !{!"_ZTSN4geos9algorithm11HCoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !9, i64 8}
end_hunk_0
