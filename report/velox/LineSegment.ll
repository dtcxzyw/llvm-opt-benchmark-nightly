inline.NumInlined: 170
inline.NumDeleted: 80
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::array" = type { [2 x %"class.geos::geom::Coordinate"] }
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.geos::algorithm::LineIntersector" = type <{ ptr, i64, [2 x [2 x ptr]], [2 x %"class.geos::geom::Coordinate"], [2 x [2 x i64]], i8, [7 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.2" }
%"struct.std::_Head_base.2" = type { ptr }
%"class.std::unique_ptr.3" = type { %"struct.std::__uniq_ptr_data.4" }
%"struct.std::__uniq_ptr_data.4" = type { %"class.std::__uniq_ptr_impl.5" }
%"class.std::__uniq_ptr_impl.5" = type { %"class.std::tuple.6" }
%"class.std::tuple.6" = type { %"struct.std::_Tuple_impl.7" }
%"struct.std::_Tuple_impl.7" = type { %"struct.std::_Head_base.10" }
%"struct.std::_Head_base.10" = type { ptr }

$_ZN4geos4util21IllegalStateExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ = comdat any

$_ZN4geos4util21IllegalStateExceptionD0Ev = comdat any

$_ZN4geos4util13GEOSExceptionD0Ev = comdat any

$_ZTIN4geos4util21IllegalStateExceptionE = comdat any

$_ZTSN4geos4util21IllegalStateExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

$_ZTVN4geos4util21IllegalStateExceptionE = comdat any

$_ZTVN4geos4util13GEOSExceptionE = comdat any

@.str = private unnamed_addr constant [52 x i8] c"Cannot compute offset from zero-length line segment\00", align 1
@_ZTIN4geos4util21IllegalStateExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util21IllegalStateExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util21IllegalStateExceptionE = linkonce_odr constant [36 x i8] c"N4geos4util21IllegalStateExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [22 x i8] c"IllegalStateException\00", align 1
@_ZTVN4geos4util21IllegalStateExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util21IllegalStateExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util21IllegalStateExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom11LineSegment7reverseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !7
  store <3 x double> %.sroa.0.0.copyload, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10  ; 3 uses
  %i.b = load double, ptr %0, align 8, !tbaa !10  ; 3 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fcmp oeq double %i.e, %i.g
  %.0.i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %.0.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !10 ; 2 uses
  %i.k = fcmp oeq double %i.a, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp oeq double %i.e, %i.m
  %.0.i.i14 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.0.i.i14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fsub double %i.j, %i.b                   ; 3 uses
  %i.p = fsub double %i.m, %i.g                   ; 3 uses
  %i.q = fmul double %i.o, %i.o
  %i.r = fmul double %i.p, %i.p
  %i.s = fadd double %i.q, %i.r
  %i.t = fsub double %i.a, %i.b
  %i.u = fmul double %i.t, %i.o
  %i.v = fsub double %i.e, %i.g
  %i.w = fmul double %i.v, %i.p
  %i.x = fadd double %i.u, %i.w
  %i.y = fdiv double %i.x, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi double [ %i.y, %bb.c ], [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK4geos4geom11LineSegment15segmentFractionERKNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10  ; 3 uses
  %i.b = load double, ptr %0, align 8, !tbaa !10  ; 3 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fcmp oeq double %i.e, %i.g
  %.0.i.i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %.0.i.i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !10 ; 2 uses
  %i.k = fcmp oeq double %i.a, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp oeq double %i.e, %i.m
  %.0.i.i14.i = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.0.i.i14.i, label %.thread, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit: ; preds = %bb.b
  %i.o = fsub double %i.j, %i.b                   ; 3 uses
  %i.p = fsub double %i.m, %i.g                   ; 3 uses
  %i.q = fmul double %i.o, %i.o
  %i.r = fmul double %i.p, %i.p
  %i.s = fadd double %i.q, %i.r
  %i.t = fsub double %i.a, %i.b
  %i.u = fmul double %i.t, %i.o
  %i.v = fsub double %i.e, %i.g
  %i.w = fmul double %i.v, %i.p
  %i.x = fadd double %i.u, %i.w
  %i.y = fdiv double %i.x, %i.s                   ; 3 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit
  %i.aa = fcmp ogt double %i.y, 1.000000e+00
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit, %bb.c, %bb.d
  %.0 = phi double [ %i.y, %bb.c ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit ], [ 1.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK4geos4geom11LineSegment7projectERKNS0_10CoordinateERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10  ; 3 uses
  %i.b = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load double, ptr %i.d, align 8           ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  %i.h = fcmp oeq double %i.e, %i.g
  %.0.i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %.0.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = fcmp oeq double %i.a, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp oeq double %i.e, %i.m
  %.0.i.i9 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.0.i.i9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !7
  %.pre = load double, ptr %1, align 8, !tbaa !10
  %.pre10 = load double, ptr %0, align 8, !tbaa !10
  %.pre11 = load double, ptr %i.d, align 8
  %.pre12 = load double, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi double [ %.pre12, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  %i.p = phi double [ %.pre11, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.q = phi double [ %.pre10, %bb.c ], [ %i.b, %bb.b ] ; 5 uses
  %i.r = phi double [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.s = fcmp oeq double %i.r, %i.q
  %i.t = fcmp oeq double %i.p, %i.o
  %.0.i.i.i = select i1 %i.s, i1 %i.t, i1 false
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre13 = load double, ptr %.phi.trans.insert, align 8, !tbaa !10 ; 3 uses
  br i1 %.0.i.i.i, label %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit_crit_edge, label %bb.e

._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre15 = load double, ptr %.phi.trans.insert14, align 8, !tbaa !12
  br label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = fcmp oeq double %i.r, %.pre13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load double, ptr %i.v, align 8           ; 4 uses
  %i.x = fcmp oeq double %i.p, %i.w
  %.0.i.i14.i = select i1 %i.u, i1 %i.x, i1 false
  br i1 %.0.i.i14.i, label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = fsub double %.pre13, %i.q                ; 3 uses
  %i.z = fsub double %i.w, %i.o                   ; 3 uses
  %i.aa = fmul double %i.y, %i.y
  %i.ab = fmul double %i.z, %i.z
  %i.ac = fadd double %i.aa, %i.ab
  %i.ad = fsub double %i.r, %i.q
  %i.ae = fmul double %i.ad, %i.y
  %i.af = fsub double %i.p, %i.o
  %i.ag = fmul double %i.af, %i.z
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = fdiv double %i.ah, %i.ac
  br label %_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit

_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit: ; preds = %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit_crit_edge, %bb.e, %bb.f
  %i.aj = phi double [ %i.w, %bb.f ], [ %.pre15, %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit_crit_edge ], [ %i.w, %bb.e ]
  %.0.i = phi double [ %i.ai, %bb.f ], [ 0.000000e+00, %._ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE.exit_crit_edge ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ak = fsub double %.pre13, %i.q
  %i.al = fmul double %.0.i, %i.ak
  %i.am = fadd double %i.q, %i.al
  %i.an = fsub double %i.aj, %i.o
  %i.ao = fmul double %.0.i, %i.an
  %i.ap = fadd double %i.o, %i.ao
  store double %i.am, ptr %2, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK4geos4geom11LineSegment7projectEdRNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fcmp oeq double %1, 1.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

end_hunk_0
