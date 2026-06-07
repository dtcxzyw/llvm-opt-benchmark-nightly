inline.NumInlined: 234
inline.NumDeleted: 103
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<geos::triangulate::tri::Tri *, std::allocator<geos::triangulate::tri::Tri *>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::triangulate::tri::Tri *, std::allocator<geos::triangulate::tri::Tri *>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::triangulate::tri::Tri *, std::allocator<geos::triangulate::tri::Tri *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::triangulate::tri::Tri *, std::allocator<geos::triangulate::tri::Tri *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.3 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.3 = type { i64, [8 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.geos::algorithm::LineIntersector" = type <{ ptr, i64, [2 x [2 x ptr]], [2 x %"class.geos::geom::Coordinate"], [2 x [2 x i64]], i8, [7 x i8] }>
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
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 8 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 7 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  switch i32 %1, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29 [
    i32 0, label %bb.c
    i32 1, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22
  ]

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22: ; preds = %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29: ; preds = %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16

bb.c:                                             ; preds = %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit16: ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29, %bb.c
  %.0.i15 = phi ptr [ %i.q, %bb.c ], [ %i.o, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit14.thread29 ], [ %0, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread22 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0.i15, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.0.i19, i64 24, i1 false), !tbaa.struct !16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.i19, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.0.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !16
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !16
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !16
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
  br i1 %i.ad, label %switch.lookup43, label %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread.i

_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread.i: ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.ag, align 8, !tbaa !14
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i

switch.lookup43:                                  ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit20
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

bb.e:                                             ; preds = %switch.lookup43
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

_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %switch.lookup43, %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread.i
  %i.az = phi ptr [ null, %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread.i ], [ %i.am, %bb.j ], [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %i.am, %bb.f ], [ %i.am, %switch.lookup43 ]
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
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
  br i1 %i.n, label %switch.lookup38, label %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread

_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread: ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.o, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.l, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.q, align 8, !tbaa !14
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit

switch.lookup38:                                  ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12.i
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

bb.b:                                             ; preds = %switch.lookup38
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
  store ptr %0, ptr %i.ad, align 8, !tbaa !13
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %bb.g, label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.ag, align 8, !tbaa !14
  br label %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit

_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit: ; preds = %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread, %bb.g, %bb.f, %bb.e, %bb.c, %switch.lookup38
  %i.aj = phi ptr [ null, %_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.exit.thread ], [ %i.w, %bb.g ], [ %i.w, %bb.f ], [ %i.w, %bb.e ], [ %i.w, %bb.c ], [ %i.w, %switch.lookup38 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %0, ptr %i.ak, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.m, ptr %i.am, align 8, !tbaa !14
  %.not14 = icmp eq ptr %i.m, null
  br i1 %.not14, label %_ZNSt6vectorIPN4geos11triangulate3tri3TriESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.ap = icmp eq ptr %i.ao, %0
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.an, align 8, !tbaa !7
  br label %_ZNSt6vectorIPN4geos11triangulate3tri3TriESaIS4_EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.as = icmp eq ptr %i.ar, %0
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %1, ptr %i.aq, align 8, !tbaa !13
  br label %_ZNSt6vectorIPN4geos11triangulate3tri3TriESaIS4_EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.av = icmp eq ptr %i.au, %0
  br i1 %i.av, label %bb.m, label %_ZNSt6vectorIPN4geos11triangulate3tri3TriESaIS4_EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  store ptr %1, ptr %i.at, align 8, !tbaa !14
  br label %_ZNSt6vectorIPN4geos11triangulate3tri3TriESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4geos11triangulate3tri3TriESaIS4_EED2Ev.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %_ZN4geos11triangulate3tri3Tri7replaceEPS2_S3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.e, align 8, !tbaa !30
  %i.f = icmp ult i32 %3, 3
  br i1 %i.f, label %switch.lookup, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12

switch.lookup:                                    ; preds = %bb.a
  %i.g = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.h = zext nneg i32 %3 to i64
  %switch.gep53 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri15getAdjacentTrisEPS2_ii.7, i64 %i.h
  %switch.load54 = load i8, ptr %switch.gep53, align 1
  %switch.ext55 = zext i8 %switch.load54 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  store ptr %i.j, ptr %i.a, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext55
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12: ; preds = %bb.a, %switch.lookup
  %.0.i11 = phi ptr [ null, %bb.a ], [ %i.l, %switch.lookup ]
  store ptr %.0.i11, ptr %i.d, align 8, !tbaa !15
  switch i32 %4, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16 [
    i32 0, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread
    i32 1, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread42
    i32 2, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread44
  ]

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread44: ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit20

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread: ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit20

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread42: ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit20

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16: ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.ab, align 8, !tbaa !15
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit20

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit20: ; preds = %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16, %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread42, %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread44, %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread
  %.0.i19 = phi ptr [ %i.v, %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread ], [ %i.aa, %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread42 ], [ %i.q, %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16.thread44 ], [ null, %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit16 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.0.i19, ptr %i.ac, align 8, !tbaa !15
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 3) i32 @_ZN4geos11triangulate3tri3Tri4prevEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri4prevEi, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate3tri3Tri8validateEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4geos11triangulate3tri3Tri16validateAdjacentEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0)
  tail call void @_ZN4geos11triangulate3tri3Tri16validateAdjacentEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 1)
  tail call void @_ZN4geos11triangulate3tri3Tri16validateAdjacentEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 2)
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 24, ptr %i.a, align 8, !tbaa !37
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !31
  %i.d = load i64, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.4, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !39
  %i.f = load ptr, ptr %2, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !40
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate3tri3Tri16validateAdjacentEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.geos::algorithm::LineIntersector", align 8 ; 17 uses
  %i.a = icmp ult i32 %1, 3
  br i1 %i.a, label %switch.lookup, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit.thread

switch.lookup:                                    ; preds = %bb.a
  %i.b = shl nuw nsw i32 %1, 3
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.0.i = load ptr, ptr %i.e, align 8, !tbaa !15  ; 9 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit.thread, label %.split.us.2

.split.us.2:                                      ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %.ptr.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.g, align 8, !tbaa !42
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i8 0, ptr %i.i, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 6 uses
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.0.i)
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.0.i)
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit.thread

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit.thread: ; preds = %bb.a, %switch.lookup, %.split.us.2
  ret void
}

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_ZNK4geos11triangulate3tri3Tri7getEdgeEPS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = icmp eq ptr %i.h, %1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.i, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit7, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread31

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread31

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit7

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread31: ; preds = %bb.c, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread
  %.0.i526 = phi ptr [ %i.k, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit7

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit7: ; preds = %bb.c, %bb.d, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread31
  %.0.i525 = phi ptr [ %.0.i526, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread31 ], [ %0, %bb.d ], [ %i.j, %bb.c ]
  %.0.i6 = phi ptr [ %i.m, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread31 ], [ %i.l, %bb.d ], [ %0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0.i525, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.0.i6, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos11triangulate3tri3Tri12getEdgeStartEi(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos11triangulate3tri3Tri10getEdgeEndEi(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 0, label %_ZN4geos11triangulate3tri3Tri4nextEi.exit
    i32 2, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit
  ]

_ZN4geos11triangulate3tri3Tri4nextEi.exit:        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit: ; preds = %bb.a, %_ZN4geos11triangulate3tri3Tri4nextEi.exit, %bb.b
  %.0.i1 = phi ptr [ %i.b, %bb.b ], [ %i.a, %_ZN4geos11triangulate3tri3Tri4nextEi.exit ], [ %0, %bb.a ]
  ret ptr %.0.i1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos11triangulate3tri3Tri13hasCoordinateERKNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
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
  br i1 %.0.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = fcmp oeq double %i.j, %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp oeq double %i.m, %i.g
  %.0.i.i5 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.0.i.i5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = fcmp oeq double %i.p, %i.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp oeq double %i.s, %i.g
  %.0.i.i6 = select i1 %i.q, i1 %i.t, i1 false
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ %.0.i.i6, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos11triangulate3tri3Tri11hasAdjacentEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  switch i32 %1, label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit

_ZNK4geos11triangulate3tri3Tri11getAdjacentEi.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ null, %bb.a ]
  %i.g = icmp ne ptr %.0.i, null
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos11triangulate3tri3Tri10isAdjacentEPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = icmp eq ptr %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, %1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = icmp eq ptr %i.h, %1
  br label %_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit

_ZNK4geos11triangulate3tri3Tri8getIndexEPS2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.i, %bb.b ], [ true, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 4) i32 @_ZNK4geos11triangulate3tri3Tri11numAdjacentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  %spec.select = zext i1 %.not to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %.not4 = icmp eq ptr %i.d, null
  %i.e = select i1 %.not, i32 2, i32 1
  %.1 = select i1 %.not4, i32 %spec.select, i32 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %.not5 = icmp ne ptr %i.g, null
  %i.h = zext i1 %.not5 to i32
  %.2 = add nuw nsw i32 %.1, %i.h
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 3) i32 @_ZN4geos11triangulate3tri3Tri7oppEdgeEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %_ZN4geos11triangulate3tri3Tri4nextEi.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4geos11triangulate3tri3Tri7oppEdgeEi, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4geos11triangulate3tri3Tri4nextEi.exit

_ZN4geos11triangulate3tri3Tri4nextEi.exit:        ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK4geos11triangulate3tri3Tri8midpointEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit [
    i32 0, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread
    i32 1, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread13
  ]

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread13: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %cond = icmp eq i32 %2, 2
  br i1 %cond, label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit10, label %bb.b

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit10

bb.b:                                             ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread13
  %.0.i12.ph = phi ptr [ %i.b, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit ], [ %i.a, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread13 ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit10

_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit10: ; preds = %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread, %bb.b
  %.0.i1218 = phi ptr [ %.0.i12.ph, %bb.b ], [ %1, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread ], [ %i.b, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit ]
  %.0.i9 = phi ptr [ %i.d, %bb.b ], [ %i.c, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit.thread ], [ %1, %_ZNK4geos11triangulate3tri3Tri13getCoordinateEi.exit ]
  %i.e = load <2 x double>, ptr %.0.i1218, align 8, !tbaa !17
  %i.f = load <2 x double>, ptr %.0.i9, align 8, !tbaa !17
  %i.g = fadd <2 x double> %i.e, %i.f
  %i.h = fmul <2 x double> %i.g, splat (double 5.000000e-01)
  store <2 x double> %i.h, ptr %0, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +qnan, ptr %i.i, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos11triangulate3tri3Tri9toPolygonEPKNS_4geom15GeometryFactoryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.std::vector.6", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !16
  invoke void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt6vectorINS0_10CoordinateESaIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.k) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.c:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.m) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit6

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit6: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.l
}

declare void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt6vectorINS0_10CoordinateESaIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos11triangulate3trilsERSoRKNS1_3TriE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 10) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.a = load ptr, ptr %1, align 8, !tbaa !31, !noalias !52
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39, !noalias !52 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !36, !alias.scope !55
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !39, !alias.scope !55
  store i8 0, ptr %i.d, align 8, !tbaa !38, !alias.scope !55
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !39, !alias.scope !55
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !39, !alias.scope !55
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !31, !alias.scope !55 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !58 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !58
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !31, !noalias !58
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

end_hunk_0
