inline.NumInlined: 234
inline.NumDeleted: 103
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<geos::triangulate::tri::Tri *, std::allocator<geos::triangulate::tri::Tri *>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::triangulate::tri::Tri *, std::allocator<geos::triangulate::tri::Tri *>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::triangulate::tri::Tri *, std::allocator<geos::triangulate::tri::Tri *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::triangulate::tri::Tri *, std::allocator<geos::triangulate::tri::Tri *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.3 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.3 = type { i64, [8 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.geos::algorithm::LineIntersector" = type <{ ptr, i64, [2 x [2 x ptr]], [2 x %"class.geos::geom::Coordinate"], [2 x [2 x i64]], i8, [7 x i8] }>
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.5" }
%"struct.std::_Head_base.5" = type { ptr }
%"class.std::vector.6" = type { %"struct.std::_Vector_base.7" }
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ = comdat any

$_ZN4geos4util24IllegalArgumentExceptionD0Ev = comdat any

$_ZN4geos4util13GEOSExceptionD0Ev = comdat any

$_ZTIN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTSN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

$_ZTVN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTVN4geos4util13GEOSExceptionE = comdat any

@.str = private unnamed_addr constant [30 x i8] c"Tri is not oriented correctly\00", align 1
@_ZTIN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util24IllegalArgumentExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant [39 x i8] c"N4geos4util24IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [11 x i8] c"POLYGON ((\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IllegalArgumentException\00", align 1
@_ZTVN4geos4util24IllegalArgumentExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util24IllegalArgumentExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii = private unnamed_addr constant [3 x i8] c"XHP", align 8
@switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.7 = private unnamed_addr constant [3 x i8] c"PXH", align 8
@switch.table._ZN4geos11triangulate3tri3Tri4prevEi = private unnamed_addr constant [3 x i8] c"\02\00\01", align 4
@switch.table._ZN4geos11triangulate3tri3Tri7oppEdgeEi = private unnamed_addr constant [3 x i8] c"\01\02\00", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos11triangulate3tri3Tri11setAdjacentEPS2_S3_S3_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((72, 96)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %3, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos11triangulate3tri3Tri6setTriEiPS2_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = shl nuw nsw i32 %1, 3
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %2, ptr %i.e, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos11triangulate3tri3Tri14setCoordinatesERKNS_4geom10CoordinateES6_S6_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos11triangulate3tri3Tri11setAdjacentERKNS_4geom10CoordinateEPS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !18
  %i.b = load double, ptr %1, align 8, !tbaa !18  ; 3 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fcmp oeq double %i.e, %i.g
  %.0.i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %.0.i.i, label %switch.lookup.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = fcmp oeq double %i.j, %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp oeq double %i.m, %i.g
  %.0.i4.i = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.0.i4.i, label %switch.lookup.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = fcmp oeq double %i.p, %i.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp oeq double %i.s, %i.g
  %.0.i5.i = select i1 %i.q, i1 %i.t, i1 false
  br i1 %.0.i5.i, label %switch.lookup.i, label %_ZN4geos11triangulate3tri3Tri6setTriEiPS2_.exit

switch.lookup.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.ph = phi i64 [ 8, %bb.b ], [ 0, %bb.a ], [ 16, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %2, ptr %i.v, align 8, !tbaa !15
  br label %_ZN4geos11triangulate3tri3Tri6setTriEiPS2_.exit

_ZN4geos11triangulate3tri3Tri6setTriEiPS2_.exit:  ; preds = %bb.c, %switch.lookup.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 3) i32 @_ZNK4geos11triangulate3tri3Tri8getIndexERKNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !18
  %i.b = load double, ptr %1, align 8, !tbaa !18  ; 3 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fcmp oeq double %i.e, %i.g
  %.0.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %.0.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = fcmp oeq double %i.j, %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp oeq double %i.m, %i.g
  %.0.i4 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.0.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = fcmp oeq double %i.p, %i.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp oeq double %i.s, %i.g
  %.0.i5 = select i1 %i.q, i1 %i.t, i1 false
  %. = select i1 %.0.i5, i32 2, i32 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = icmp eq ptr %i.b, %1
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %i.a, align 8, !tbaa !7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not9 = icmp ne ptr %i.e, null
  %i.f = icmp eq ptr %i.e, %1
  %or.cond11 = and i1 %.not9, %i.f
  br i1 %or.cond11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %2, ptr %i.d, align 8, !tbaa !13
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.not10 = icmp ne ptr %i.h, null
  %i.i = icmp eq ptr %i.h, %1
  %or.cond12 = and i1 %.not10, %i.i
  br i1 %or.cond12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %2, ptr %i.g, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos11triangulate3tri3Tri4flipEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
switch.lookup:
  %switch.idx.cast = zext i32 %1 to i64
  %switch.idx.mult = shl nuw nsw i64 %switch.idx.cast, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %switch.idx.mult
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.0.i = load ptr, ptr %i.b, align 8, !tbaa !15  ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit, label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = icmp eq ptr %i.j, %0
  %..i = select i1 %i.k, i32 2, i32 -1
  br label %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit

_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit: ; preds = %switch.lookup, %bb.a, %bb.b
  %.0.i10 = phi i32 [ 1, %bb.a ], [ 0, %switch.lookup ], [ %..i, %bb.b ] ; 4 uses
  switch i32 %1, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29 [
    i32 0, label %bb.c
    i32 1, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22
  ]

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22: ; preds = %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29: ; preds = %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16

bb.c:                                             ; preds = %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16: ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29, %bb.c
  %.sroa.055.0.in = phi ptr [ %0, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29 ], [ %i.p, %bb.c ], [ %i.m, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22 ]
  %.sroa.059.0.in = phi ptr [ %i.n, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29 ], [ %0, %bb.c ], [ %i.l, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22 ]
  %.0.i15 = phi ptr [ %i.o, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29 ], [ %i.q, %bb.c ], [ %0, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22 ]
  %.sroa.059.0 = load <3 x double>, ptr %.sroa.059.0.in, align 8
  %.sroa.055.0 = load <3 x double>, ptr %.sroa.055.0.in, align 8
  %.sroa.052.0.copyload = load <3 x double>, ptr %.0.i15, align 8 ; 2 uses
  switch i32 %.0.i10, label %bb.d [
    i32 2, label %_ZN4geos11triangulate3tri3Tri9oppVertexEi.exit18
    i32 1, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit20
  ]

_ZN4geos11triangulate3tri3Tri9oppVertexEi.exit18: ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit20

bb.d:                                             ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit20

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit20: ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16, %_ZN4geos11triangulate3tri3Tri9oppVertexEi.exit18, %bb.d
  %.0.i19 = phi ptr [ %i.s, %bb.d ], [ %i.r, %_ZN4geos11triangulate3tri3Tri9oppVertexEi.exit18 ], [ %.0.i, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16 ] ; 2 uses
  %.sroa.0.0.copyload = load <3 x double>, ptr %.0.i19, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.i19, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <3 x double> %.sroa.052.0.copyload, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <3 x double> %.sroa.059.0, ptr %i.u, align 8
  store <3 x double> %.sroa.052.0.copyload, ptr %.0.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store <3 x double> %.sroa.0.0.copyload, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store <3 x double> %.sroa.055.0, ptr %i.w, align 8
  %i.x = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii, i64 %i.x
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.y = zext nneg i32 %1 to i64
  %switch.gep41 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.7, i64 %i.y
  %switch.load42 = load i8, ptr %switch.gep41, align 1
  %switch.ext43 = zext i8 %switch.load42 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15, !noalias !19 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext43
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15, !noalias !19 ; 5 uses
  %i.ad = icmp ult i32 %.0.i10, 3
  br i1 %i.ad, label %switch.lookup44, label %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread.i

_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread.i: ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.ag, align 8, !tbaa !14
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i

switch.lookup44:                                  ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit20
  %i.ah = zext nneg i32 %.0.i10 to i64
  %switch.gep45 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.7, i64 %i.ah
  %switch.load46 = load i8, ptr %switch.gep45, align 1
  %switch.ext47 = zext i8 %switch.load46 to i64
  %i.ai = zext nneg i32 %.0.i10 to i64
  %switch.gep48 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii, i64 %i.ai
  %switch.load49 = load i8, ptr %switch.gep48, align 1
  %switch.ext50 = zext i8 %switch.load49 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 %switch.ext47
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15, !noalias !19 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 %switch.ext50
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15, !noalias !19 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.0.i, ptr %i.an, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aa, ptr %i.ao, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i, label %bb.e

bb.e:                                             ; preds = %switch.lookup44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.as = icmp eq ptr %i.ar, %.0.i
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.aq, align 8, !tbaa !7
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 80 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !13
  %i.av = icmp eq ptr %i.au, %.0.i
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.at, align 8, !tbaa !13
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 88 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.ay = icmp eq ptr %i.ax, %.0.i
  br i1 %i.ay, label %bb.j, label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %i.aw, align 8, !tbaa !14
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i

_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %switch.lookup44, %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread.i
  %i.az = phi ptr [ null, %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread.i ], [ %i.am, %bb.j ], [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %i.am, %bb.f ], [ %i.am, %switch.lookup44 ]
  store ptr %0, ptr %i.c, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  store ptr %i.ac, ptr %i.bb, align 8, !tbaa !14
  %.not14.i = icmp eq ptr %i.ac, null
  br i1 %.not14.i, label %_ZN4geos11triangulate3tri3Tri4flipEPS2_iiRKNS_4geom10CoordinateES7_S7_S7_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !7
  %i.be = icmp eq ptr %i.bd, %0
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %.0.i, ptr %i.bc, align 8, !tbaa !7
  br label %_ZN4geos11triangulate3tri3Tri4flipEPS2_iiRKNS_4geom10CoordinateES7_S7_S7_.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !13
  %i.bh = icmp eq ptr %i.bg, %0
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %.0.i, ptr %i.bf, align 8, !tbaa !13
  br label %_ZN4geos11triangulate3tri3Tri4flipEPS2_iiRKNS_4geom10CoordinateES7_S7_S7_.exit

bb.o:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 88 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.bk = icmp eq ptr %i.bj, %0
  br i1 %i.bk, label %bb.p, label %_ZN4geos11triangulate3tri3Tri4flipEPS2_iiRKNS_4geom10CoordinateES7_S7_S7_.exit

bb.p:                                             ; preds = %bb.o
  store ptr %.0.i, ptr %i.bi, align 8, !tbaa !14
  br label %_ZN4geos11triangulate3tri3Tri4flipEPS2_iiRKNS_4geom10CoordinateES7_S7_S7_.exit

_ZN4geos11triangulate3tri3Tri4flipEPS2_iiRKNS_4geom10CoordinateES7_S7_S7_.exit: ; preds = %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i, %bb.l, %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4geos11triangulate3tri3Tri11getAdjacentEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 3) i32 @_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = icmp eq ptr %i.h, %1
  %. = select i1 %i.i, i32 2, i32 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos11triangulate3tri3Tri13getCoordinateEi(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 3) i32 @_ZN4geos11triangulate3tri3Tri4nextEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri7oppEdgeEi, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 3) i32 @_ZN4geos11triangulate3tri3Tri9oppVertexEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %_ZN4geos11triangulate3tri3Tri4prevEi.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri4prevEi, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4geos11triangulate3tri3Tri4prevEi.exit

_ZN4geos11triangulate3tri3Tri4prevEi.exit:        ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos11triangulate3tri3Tri4flipEPS2_iiRKNS_4geom10CoordinateES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 72)) %0, ptr noundef initializes((0, 72)) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !16
  %i.e = icmp ult i32 %2, 3
  br i1 %i.e, label %switch.lookup, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12.i

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.g = zext nneg i32 %2 to i64
  %switch.gep36 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.7, i64 %i.g
  %switch.load37 = load i8, ptr %switch.gep36, align 1
  %switch.ext38 = zext i8 %switch.load37 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15, !noalias !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext38
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15, !noalias !22
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12.i

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12.i: ; preds = %bb.a, %switch.lookup
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %switch.lookup ] ; 2 uses
  %i.m = phi ptr [ null, %bb.a ], [ %i.k, %switch.lookup ] ; 5 uses
  %i.n = icmp ult i32 %3, 3
  br i1 %i.n, label %switch.lookup39, label %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread

_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread: ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.o, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.l, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.q, align 8, !tbaa !14
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit

switch.lookup39:                                  ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12.i
  %i.r = zext nneg i32 %3 to i64
  %switch.gep40 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.7, i64 %i.r
  %switch.load41 = load i8, ptr %switch.gep40, align 1
  %switch.ext42 = zext i8 %switch.load41 to i64
  %i.s = zext nneg i32 %3 to i64
  %switch.gep43 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii, i64 %i.s
  %switch.load44 = load i8, ptr %switch.gep43, align 1
  %switch.ext45 = zext i8 %switch.load44 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext42
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15, !noalias !22 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext45
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15, !noalias !22 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.x, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.l, ptr %i.y, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.u, ptr %i.z, align 8, !tbaa !14
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit, label %bb.b

bb.b:                                             ; preds = %switch.lookup39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !7
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.aa, align 8, !tbaa !7
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
