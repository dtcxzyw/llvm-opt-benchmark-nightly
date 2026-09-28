Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HCoordinate?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
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
  %5 = load double, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load double, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.c = load double, ptr %1, align 8, !tbaa !11  ; 2 uses
  %i.d = load double, ptr %0, align 8, !tbaa !11  ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load double, ptr %7, align 8, !tbaa !10  ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = load double, ptr %8, align 8, !tbaa !10    ; 2 uses
  %10 = load double, ptr %3, align 8, !tbaa !11   ; 2 uses
  %11 = load double, ptr %2, align 8, !tbaa !11   ; 2 uses
  %i.f = fsub double %5, %6                       ; 2 uses
  %12 = fsub double %i.c, %i.d                    ; 2 uses
  %13 = fmul double %6, %i.d
  %14 = fmul double %5, %i.c
  %15 = fsub double %13, %14                      ; 2 uses
  %16 = fsub double %i.e, %9                      ; 2 uses
  %i.g = fsub double %10, %11                     ; 2 uses
  %i.h = fmul double %9, %11
  %i.i = fmul double %i.e, %10
  %i.j = fsub double %i.h, %i.i                   ; 2 uses
  %i.k = fmul double %12, %i.j
  %i.l = fmul double %15, %i.g
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %15, %16
  %i.o = fmul double %i.f, %i.j
  %i.p = fsub double %i.n, %i.o
  %i.q = fmul double %i.f, %i.g
  %i.r = fmul double %12, %16
  %i.s = fsub double %i.q, %i.r
  %i.t = insertelement <2 x double> poison, double %i.m, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.p, i64 1
  %i.v = insertelement <2 x double> poison, double %i.s, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x double> %i.u, %i.w             ; 2 uses
  %i.y = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.x)
  %i.z = fcmp one <2 x double> %i.y, splat (double +inf) ; 2 uses
  %i.aa = extractelement <2 x i1> %i.z, i64 0
  %i.ab = extractelement <2 x i1> %i.z, i64 1
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #8 ; 3 uses
  invoke void @_ZN4geos9algorithm25NotRepresentableExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN4geos9algorithm25NotRepresentableExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #8
  resume { ptr, i32 } %i.ad

bb.e:                                             ; preds = %bb.a
  store <2 x double> %i.x, ptr %4, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN4geos9algorithm25NotRepresentableExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2Eddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #4 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !12
  store <2 x double> %i.a, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateES5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !10 ; 2 uses
  %i.e = fsub double %i.b, %i.d
  store double %i.e, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  %i.h = load double, ptr %1, align 8, !tbaa !11  ; 2 uses
  %i.i = fsub double %i.g, %i.h
  store double %i.i, ptr %i.f, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = fmul double %i.d, %i.h
  %i.l = fmul double %i.b, %i.g
  %i.m = fsub double %i.k, %i.l
  store double %i.m, ptr %i.j, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2ERKNS_4geom10CoordinateES5_S5_S5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !10 ; 2 uses
  %i.e = fsub double %i.b, %i.d                   ; 2 uses
  %i.f = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  %i.g = load double, ptr %1, align 8, !tbaa !11  ; 2 uses
  %i.h = fsub double %i.f, %i.g                   ; 2 uses
  %i.i = fmul double %i.d, %i.g
  %i.j = fmul double %i.b, %i.f
  %i.k = fsub double %i.i, %i.j                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !10 ; 2 uses
  %i.p = fsub double %i.m, %i.o                   ; 2 uses
  %i.q = load double, ptr %4, align 8, !tbaa !11  ; 2 uses
  %i.r = load double, ptr %3, align 8, !tbaa !11  ; 2 uses
  %i.s = fsub double %i.q, %i.r                   ; 2 uses
  %i.t = fmul double %i.o, %i.r
  %i.u = fmul double %i.m, %i.q
  %i.v = fsub double %i.t, %i.u                   ; 2 uses
  %i.w = fmul double %i.h, %i.v
  %i.x = fmul double %i.k, %i.s
  %i.y = fsub double %i.w, %i.x
  store double %i.y, ptr %0, align 8, !tbaa !15
  %i.z = fmul double %i.k, %i.p
  %i.aa = fmul double %i.e, %i.v
  %i.ab = fsub double %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = fmul double %i.e, %i.s
  %i.ae = fmul double %i.h, %i.p
  %i.af = fsub double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.af, ptr %i.ag, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm11HCoordinateC2ERKS1_S3_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.e = fmul double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.j = fmul double %i.g, %i.i
  %i.k = fsub double %i.e, %i.j
  store double %i.k, ptr %0, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load double, ptr %2, align 8, !tbaa !15  ; 2 uses
  %i.n = fmul double %i.i, %i.m
  %i.o = load double, ptr %1, align 8, !tbaa !15  ; 2 uses
  %i.p = fmul double %i.d, %i.o
  %i.q = fsub double %i.n, %i.p
  store double %i.q, ptr %i.l, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.f, align 8, !tbaa !16
  %i.t = fmul double %i.o, %i.s
  %i.u = load double, ptr %i.a, align 8, !tbaa !16
  %i.v = fmul double %i.m, %i.u
  %i.w = fsub double %i.t, %i.v
  store double %i.w, ptr %i.r, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK4geos9algorithm11HCoordinate4getXEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !14
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
end_hunk_0
