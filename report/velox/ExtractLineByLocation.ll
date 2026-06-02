inline.NumInlined: 161
inline.NumDeleted: 137
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.geos::linearref::ExtractLineByLocation" = type { ptr }
%"class.geos::linearref::LinearGeometryBuilder" = type { ptr, %"class.std::vector.39", i8, i8, ptr, %"class.geos::geom::Coordinate" }
%"class.std::vector.39" = type { %"struct.std::_Vector_base.40" }
%"struct.std::_Vector_base.40" = type { %"struct.std::_Vector_base<const geos::geom::Geometry *, std::allocator<const geos::geom::Geometry *>>::_Vector_impl" }
%"struct.std::_Vector_base<const geos::geom::Geometry *, std::allocator<const geos::geom::Geometry *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const geos::geom::Geometry *, std::allocator<const geos::geom::Geometry *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const geos::geom::Geometry *, std::allocator<const geos::geom::Geometry *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.geos::linearref::LinearIterator" = type { ptr, i64, i64, ptr, i64 }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%"class.std::unique_ptr.18" = type { %"struct.std::__uniq_ptr_data.19" }
%"struct.std::__uniq_ptr_data.19" = type { %"class.std::__uniq_ptr_impl.20" }
%"class.std::__uniq_ptr_impl.20" = type { %"class.std::tuple.21" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }
%"class.geos::geom::CoordinateArraySequence" = type { %"class.geos::geom::CoordinateSequence", %"class.std::vector.34", i64 }
%"class.geos::geom::CoordinateSequence" = type { ptr }
%"class.std::vector.34" = type { %"struct.std::_Vector_base.35" }
%"struct.std::_Vector_base.35" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZTIN4geos4geom8GeometryE = external constant ptr
@_ZTIN4geos4geom10LineStringE = external constant ptr
@_ZTIN4geos4geom15MultiLineStringE = external constant ptr
@_ZTVN4geos4geom23CoordinateArraySequenceE = external unnamed_addr constant { [21 x ptr] }, align 8

@_ZN4geos9linearref21ExtractLineByLocationC1EPKNS_4geom8GeometryE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos9linearref21ExtractLineByLocationC2EPKNS_4geom8GeometryE

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9linearref21ExtractLineByLocation7extractEPKNS_4geom8GeometryERKNS0_14LinearLocationES8_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.geos::linearref::ExtractLineByLocation", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZN4geos9linearref21ExtractLineByLocationC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1)
  call void @_ZN4geos9linearref21ExtractLineByLocation7extractERKNS0_14LinearLocationES4_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9linearref21ExtractLineByLocation7extractERKNS0_14LinearLocationES4_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = tail call noundef i32 @_ZNK4geos9linearref14LinearLocation9compareToERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZN4geos9linearref21ExtractLineByLocation13computeLinearERKNS0_14LinearLocationES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.c = load ptr, ptr %4, align 8, !tbaa !7      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !13, !alias.scope !10
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #8, !noalias !10 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %.thread15.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom15MultiLineStringE, i64 0) #8, !noalias !10 ; 2 uses
  %.not8.i = icmp eq ptr %i.f, null
  br i1 %.not8.i, label %.thread19, label %.thread15.sink.split.i

.thread19:                                        ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !13, !alias.scope !10
  br label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i11

.thread15.sink.split.i:                           ; preds = %bb.d, %bb.c
  %.sink23.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = load ptr, ptr %.sink23.i, align 8, !tbaa !15, !noalias !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.i = load ptr, ptr %i.h, align 8, !noalias !10
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(48) %.sink23.i)
          to label %bb.e unwind label %5, !inline_history !18

5:                                                ; preds = %.thread15.sink.split.i
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = load ptr, ptr %4, align 8, !tbaa !7        ; 3 uses
  %.not.i9 = icmp eq ptr %7, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.a

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.a: ; preds = %5
  %i.k = load ptr, ptr %7, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #8, !inline_history !19
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %5, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %6

bb.e:                                             ; preds = %.thread15.sink.split.i
  %.pr.pre = load ptr, ptr %4, align 8, !tbaa !7  ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !13, !alias.scope !10
  %.not.i10 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit12, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i11

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i11: ; preds = %.thread19, %bb.e
  %.sink.i.ph = phi ptr [ %i.c, %.thread19 ], [ %.pr.pre, %bb.e ] ; 2 uses
  %i.n = load ptr, ptr %.sink.i.ph, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.sink.i.ph) #8, !inline_history !19
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %bb.e, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4geos9linearref21ExtractLineByLocation13computeLinearERKNS0_14LinearLocationES4_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9linearref21ExtractLineByLocationC2EPKNS_4geom8GeometryE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !20
  ret void
}

declare noundef i32 @_ZNK4geos9linearref14LinearLocation9compareToERKS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9linearref21ExtractLineByLocation13computeLinearERKNS0_14LinearLocationES4_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.geos::linearref::LinearGeometryBuilder", align 8 ; 12 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  %6 = alloca %"class.geos::linearref::LinearIterator", align 8 ; 10 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  %8 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  call void @_ZN4geos9linearref21LinearGeometryBuilderC1EPKNS_4geom15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %i.c)
  invoke void @_ZN4geos9linearref21LinearGeometryBuilder18setFixInvalidLinesEb(ptr noundef nonnull align 8 dereferenceable(72) %4, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZNK4geos9linearref14LinearLocation8isVertexEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.e = load ptr, ptr %1, align 8, !tbaa !20
  invoke void @_ZNK4geos9linearref14LinearLocation13getCoordinateEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.e)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4geos9linearref21LinearGeometryBuilder3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.i

bb.g:                                             ; preds = %bb.ac, %bb.v, %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.ae

bb.i:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.h = load ptr, ptr %1, align 8, !tbaa !20
  invoke void @_ZN4geos9linearref14LinearIteratorC1EPKNS_4geom8GeometryERKNS0_14LinearLocationE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.i, %bb.u
  %i.i = invoke noundef zeroext i1 @_ZNK4geos9linearref14LinearIterator7hasNextEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %.preheader
  br i1 %i.i, label %bb.k, label %bb.v

.loopexit:                                        ; preds = %.preheader, %bb.k, %bb.l, %bb.m, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.j = invoke noundef i64 @_ZNK4geos9linearref14LinearIterator17getComponentIndexEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.k = invoke noundef i64 @_ZNK4geos9linearref14LinearIterator14getVertexIndexEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.l = invoke noundef i32 @_ZNK4geos9linearref14LinearLocation21compareLocationValuesEmmd(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.j, i64 noundef %i.k, double noundef 0.000000e+00)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  invoke void @_ZNK4geos9linearref14LinearIterator15getSegmentStartEv(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4geos9linearref21LinearGeometryBuilder3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.n = invoke noundef zeroext i1 @_ZNK4geos9linearref14LinearIterator11isEndOfLineEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %i.n, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4geos9linearref21LinearGeometryBuilder7endLineEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.p, %bb.o
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.w

bb.u:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  invoke void @_ZN4geos9linearref14LinearIterator4nextEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %.preheader unwind label %.loopexit, !llvm.loop !32

bb.v:                                             ; preds = %bb.n, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.p = invoke noundef zeroext i1 @_ZNK4geos9linearref14LinearLocation8isVertexEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.x unwind label %bb.g

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn = phi { ptr, i32 } [ %i.o, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  br i1 %i.p, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.q = load ptr, ptr %1, align 8, !tbaa !20
  invoke void @_ZNK4geos9linearref14LinearLocation13getCoordinateEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.q)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4geos9linearref21LinearGeometryBuilder3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa, %bb.x
  %i.s = invoke noundef ptr @_ZN4geos9linearref21LinearGeometryBuilder11getGeometryEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.ad unwind label %bb.g

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.s, ptr %0, align 8, !tbaa !7
  call void @_ZN4geos9linearref21LinearGeometryBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.ae:                                            ; preds = %bb.ab, %bb.w, %bb.h, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.r, %bb.ab ], [ %.pn, %bb.w ], [ %i.g, %bb.h ]
  call void @_ZN4geos9linearref21LinearGeometryBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9linearref21ExtractLineByLocation7reverseEPKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.thread15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %.thread15.sink.split

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom15MultiLineStringE, i64 0) #8 ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %.thread15, label %.thread15.sink.split

.thread15.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink23 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.d = load ptr, ptr %.sink23, align 8, !tbaa !15, !noalias !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.f = load ptr, ptr %i.e, align 8, !noalias !17
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(48) %.sink23), !noalias !17
  br label %.thread15

.thread15:                                        ; preds = %.thread15.sink.split, %bb.c, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.g, %.thread15.sink.split ]
  store ptr %.sink, ptr %0, align 8, !tbaa !13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9linearref21ExtractLineByLocation11computeLineERKNS0_14LinearLocationES4_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.18", align 8 ; 9 uses
  %5 = alloca %"class.geos::geom::CoordinateArraySequence", align 8 ; 19 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  %8 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  invoke void @_ZN4geos4geom23CoordinateArraySequenceC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef i64 @_ZNK4geos9linearref14LinearLocation15getSegmentIndexEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef double @_ZNK4geos9linearref14LinearLocation18getSegmentFractionEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  %i.h = zext i1 %i.g to i64
  %.020 = add i64 %i.e, %i.h                      ; 2 uses
  %i.i = invoke noundef i64 @_ZNK4geos9linearref14LinearLocation15getSegmentIndexEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.g unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit34

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.g:                                             ; preds = %bb.d
  %i.l = invoke noundef double @_ZNK4geos9linearref14LinearLocation18getSegmentFractionEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit unwind label %bb.i, !inline_history !36

bb.i:                                             ; preds = %bb.ae, %bb.ad, %bb.j, %bb.h, %bb.af, %_ZNK4geos4geom18CoordinateSequenceixEm.exit32, %._crit_edge, %bb.k, %bb.g, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNK4geos4geom18CoordinateSequence4sizeEv.exit:   ; preds = %bb.h
  %i.s = fcmp oeq double %i.l, 1.000000e+00
  %i.t = zext i1 %i.s to i64
  %.019 = add i64 %i.i, %i.t                      ; 2 uses
  %.not = icmp ult i64 %.019, %i.q
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit
  %i.u = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit30 unwind label %bb.i, !inline_history !36

_ZNK4geos4geom18CoordinateSequence4sizeEv.exit30: ; preds = %bb.j
  %i.z = add i64 %i.y, -1
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit30, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit
  %.1 = phi i64 [ %i.z, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit30 ], [ %.019, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit ] ; 2 uses
  %i.aa = invoke noundef zeroext i1 @_ZNK4geos9linearref14LinearLocation8isVertexEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  br i1 %i.aa, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.ab = load ptr, ptr %1, align 8, !tbaa !20
  invoke void @_ZNK4geos9linearref14LinearLocation13getCoordinateEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.ab)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ai

bb.q:                                             ; preds = %bb.o, %bb.l
  %.not2638 = icmp ugt i64 %.020, %.1
  br i1 %.not2638, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %bb.q
  %i.ad = invoke noundef zeroext i1 @_ZNK4geos9linearref14LinearLocation8isVertexEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.i

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %.039 = phi i64 [ %i.aj, %bb.r ], [ %.020, %bb.q ] ; 2 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef %.039)
          to label %_ZNK4geos4geom18CoordinateSequenceixEm.exit unwind label %bb.s, !inline_history !37

_ZNK4geos4geom18CoordinateSequenceixEm.exit:      ; preds = %.lr.ph
  invoke void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZNK4geos4geom18CoordinateSequenceixEm.exit
  %i.aj = add i64 %.039, 1                        ; 2 uses
  %.not26 = icmp ugt i64 %i.aj, %.1
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !38

bb.s:                                             ; preds = %.lr.ph, %_ZNK4geos4geom18CoordinateSequenceixEm.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.t:                                             ; preds = %._crit_edge
  br i1 %i.ad, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.al = load ptr, ptr %1, align 8, !tbaa !20
  invoke void @_ZNK4geos9linearref14LinearLocation13getCoordinateEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.al)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.ai

bb.y:                                             ; preds = %bb.t, %bb.w
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.as = load ptr, ptr %1, align 8, !tbaa !20
  invoke void @_ZNK4geos9linearref14LinearLocation13getCoordinateEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.as)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab, %bb.y
  %i.au = load ptr, ptr %5, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit31 unwind label %bb.i, !inline_history !36

_ZNK4geos4geom18CoordinateSequence4sizeEv.exit31: ; preds = %bb.ad
  %i.ay = icmp ult i64 %i.ax, 2
  br i1 %i.ay, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit31
  %i.az = load ptr, ptr %5, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %_ZNK4geos4geom18CoordinateSequenceixEm.exit32 unwind label %bb.i, !inline_history !37

_ZNK4geos4geom18CoordinateSequenceixEm.exit32:    ; preds = %bb.ae
  invoke void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %bb.af unwind label %bb.i

bb.af:                                            ; preds = %_ZNK4geos4geom18CoordinateSequenceixEm.exit32, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit31
  %i.bd = load ptr, ptr %1, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bg = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringERKNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ag unwind label %bb.i

bb.ag:                                            ; preds = %bb.af
  store ptr %i.bg, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4geos4geom23CoordinateArraySequenceE, i64 16), ptr %5, align 8, !tbaa !15
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #9
  br label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit

_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit:  ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.bi = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #8, !inline_history !45
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.ai:                                            ; preds = %bb.i, %bb.p, %bb.s, %bb.x, %bb.ac, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.ak, %bb.s ], [ %i.r, %bb.i ], [ %i.at, %bb.ac ], [ %i.am, %bb.x ], [ %i.ac, %bb.p ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4geos4geom23CoordinateArraySequenceE, i64 16), ptr %5, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i33, label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit34, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #9
  br label %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit34

_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit34: ; preds = %bb.aj, %bb.ai, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn.pn, %bb.ai ], [ %.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %.not.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit37, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i36

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i36: ; preds = %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit34
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #8, !inline_history !45
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit37

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit37: ; preds = %_ZN4geos4geom23CoordinateArraySequenceD2Ev.exit34, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN4geos4geom23CoordinateArraySequenceC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

declare noundef i64 @_ZNK4geos9linearref14LinearLocation15getSegmentIndexEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef double @_ZNK4geos9linearref14LinearLocation18getSegmentFractionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4geos9linearref14LinearLocation8isVertexEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK4geos9linearref14LinearLocation13getCoordinateEPKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringERKNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4geos9linearref21LinearGeometryBuilderC1EPKNS_4geom15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #3

declare void @_ZN4geos9linearref21LinearGeometryBuilder18setFixInvalidLinesEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4geos9linearref21LinearGeometryBuilder3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN4geos9linearref14LinearIteratorC1EPKNS_4geom8GeometryERKNS0_14LinearLocationE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK4geos9linearref14LinearIterator7hasNextEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i32 @_ZNK4geos9linearref14LinearLocation21compareLocationValuesEmmd(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, double noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4geos9linearref14LinearIterator17getComponentIndexEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i64 @_ZNK4geos9linearref14LinearIterator14getVertexIndexEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZNK4geos9linearref14LinearIterator15getSegmentStartEv(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4geos9linearref14LinearIterator11isEndOfLineEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN4geos9linearref21LinearGeometryBuilder7endLineEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN4geos9linearref14LinearIterator4nextEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef ptr @_ZN4geos9linearref21LinearGeometryBuilder11getGeometryEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4geos9linearref21LinearGeometryBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN4geos4geom8GeometryE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4geos9linearref21ExtractLineByLocation7reverseEPKNS_4geom8GeometryE: argument 0"}
!12 = distinct !{!12, !"_ZN4geos9linearref21ExtractLineByLocation7reverseEPKNS_4geom8GeometryE"}
!13 = !{!14, !8, i64 0}
!14 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !6, i64 0}
!17 = !{}
!18 = !{ptr @_ZN4geos9linearref21ExtractLineByLocation7reverseEPKNS_4geom8GeometryE}
!19 = distinct !{null, null}
!20 = !{!21, !8, i64 0}
!21 = !{!"_ZTSN4geos9linearref21ExtractLineByLocationE", !8, i64 0}
!22 = !{!23, !31, i64 24}
!23 = !{!"_ZTSN4geos4geom8GeometryE", !24, i64 8, !4, i64 16, !31, i64 24, !9, i64 32}
!24 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !25, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !26, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !27, i64 0}
!27 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !28, i64 0}
!28 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !29, i64 0}
!29 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !30, i64 0}
!30 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !9, i64 0}
!31 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !9, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !9, i64 0}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{!38, !33}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !9, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSN4geos4geom10LineStringE", !9, i64 0}
!43 = !{!44, !40, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!45 = distinct !{null, null}
end_hunk_0
