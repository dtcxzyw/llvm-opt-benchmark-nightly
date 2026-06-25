inline.NumInlined: 540
inline.NumDeleted: 315
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
%"class.geos::geom::Envelope" = type { double, double, double, double }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<geos::triangulate::quadedge::Vertex, std::allocator<geos::triangulate::quadedge::Vertex>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::triangulate::quadedge::Vertex, std::allocator<geos::triangulate::quadedge::Vertex>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::triangulate::quadedge::Vertex, std::allocator<geos::triangulate::quadedge::Vertex>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::triangulate::quadedge::Vertex, std::allocator<geos::triangulate::quadedge::Vertex>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.geos::triangulate::IncrementalDelaunayTriangulator" = type <{ ptr, i8, [7 x i8] }>
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.std::unique_ptr.30" = type { %"struct.std::__uniq_ptr_data.31" }
%"struct.std::__uniq_ptr_data.31" = type { %"class.std::__uniq_ptr_impl.32" }
%"class.std::__uniq_ptr_impl.32" = type { %"class.std::tuple.33" }
%"class.std::tuple.33" = type { %"struct.std::_Tuple_impl.34" }
%"struct.std::_Tuple_impl.34" = type { %"struct.std::_Head_base.37" }
%"struct.std::_Head_base.37" = type { ptr }
%"class.std::vector.38" = type { %"struct.std::_Vector_base.39" }
%"struct.std::_Vector_base.39" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::Geometry>, std::allocator<std::unique_ptr<geos::geom::Geometry>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::Geometry>, std::allocator<std::unique_ptr<geos::geom::Geometry>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::Geometry>, std::allocator<std::unique_ptr<geos::geom::Geometry>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::Geometry>, std::allocator<std::unique_ptr<geos::geom::Geometry>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.43" = type { %"struct.std::__uniq_ptr_data.44" }
%"struct.std::__uniq_ptr_data.44" = type { %"class.std::__uniq_ptr_impl.45" }
%"class.std::__uniq_ptr_impl.45" = type { %"class.std::tuple.46" }
%"class.std::tuple.46" = type { %"struct.std::_Tuple_impl.47" }
%"struct.std::_Tuple_impl.47" = type { %"struct.std::_Head_base.50" }
%"struct.std::_Head_base.50" = type { ptr }
%"class.std::unique_ptr.51" = type { %"struct.std::__uniq_ptr_data.52" }
%"struct.std::__uniq_ptr_data.52" = type { %"class.std::__uniq_ptr_impl.53" }
%"class.std::__uniq_ptr_impl.53" = type { %"class.std::tuple.54" }
%"class.std::tuple.54" = type { %"struct.std::_Tuple_impl.55" }
%"struct.std::_Tuple_impl.55" = type { %"struct.std::_Head_base.58" }
%"struct.std::_Head_base.58" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev = comdat any

$_ZNK4geos4geom15GeometryFactory24createGeometryCollectionINS0_8GeometryEEESt10unique_ptrINS0_18GeometryCollectionESt14default_deleteIS5_EEOSt6vectorIS4_IT_S6_ISA_EESaISC_EE = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

@_ZN4geos11triangulate21VoronoiDiagramBuilderC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos11triangulate21VoronoiDiagramBuilderC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos11triangulate21VoronoiDiagramBuilderC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store <4 x double> splat (double +qnan), ptr %i.a, align 8, !tbaa !7
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate21VoronoiDiagramBuilder8setSitesERKNS_4geom8GeometryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN4geos11triangulate28DelaunayTriangulationBuilder24extractUniqueCoordinatesERKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !9
  store ptr null, ptr %2, align 8, !tbaa !9
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #13, !inline_history !14
  %.pr = load ptr, ptr %2, align 8, !tbaa !9      ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit
  %i.f = load ptr, ptr %.pr, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #13, !inline_history !15
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN4geos11triangulate28DelaunayTriangulationBuilder24extractUniqueCoordinatesERKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate21VoronoiDiagramBuilder8setSitesERKNS_4geom18CoordinateSequenceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN4geos11triangulate28DelaunayTriangulationBuilder6uniqueEPKNS_4geom18CoordinateSequenceE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !9
  store ptr null, ptr %2, align 8, !tbaa !9
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #13, !inline_history !14
  %.pr = load ptr, ptr %2, align 8, !tbaa !9      ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit
  %i.f = load ptr, ptr %.pr, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #13, !inline_history !15
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @_ZN4geos11triangulate28DelaunayTriangulationBuilder6uniqueEPKNS_4geom18CoordinateSequenceE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos11triangulate21VoronoiDiagramBuilder15setClipEnvelopeEPKNS_4geom8EnvelopeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((24, 32)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos11triangulate21VoronoiDiagramBuilder12setToleranceEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate21VoronoiDiagramBuilder6createEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::geom::Envelope", align 8 ; 4 uses
  %2 = alloca %"class.std::vector", align 8       ; 9 uses
  %3 = alloca %"class.geos::triangulate::IncrementalDelaunayTriangulator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.g, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.h = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Envelope") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !36 ; 2 uses
  %i.o = fcmp uno double %i.n, 0.000000e+00       ; 2 uses
  %i.p = load double, ptr %i.l, align 8
  %i.q = fsub double %i.n, %i.p
  %.0.i = select i1 %i.o, double 0.000000e+00, double %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.s = load double, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.u = load double, ptr %i.t, align 8
  %i.v = fsub double %i.s, %i.u
  %.0.i7 = select i1 %i.o, double 0.000000e+00, double %i.v ; 2 uses
  %i.w = fcmp olt double %.0.i, %.0.i7
  %.sroa.speculated = select i1 %i.w, double %.0.i7, double %.0.i ; 2 uses
  call void @_ZN4geos4geom8Envelope8expandByEdd(ptr noundef nonnull align 8 dereferenceable(32) %i.l, double noundef %.sroa.speculated, double noundef %.sroa.speculated)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 7 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %_ZN4geos4geom8Envelope15expandToIncludeEPKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load double, ptr %i.m, align 8, !tbaa !36 ; 2 uses
  %i.aa = fcmp uno double %i.z, 0.000000e+00
  %i.ab = load double, ptr %i.y, align 8, !tbaa !37 ; 3 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.ab, ptr %i.l, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !7
  store <2 x double> %i.ad, ptr %i.m, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !38
  br label %_ZN4geos4geom8Envelope15expandToIncludeEPKS1_.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ag = load double, ptr %i.l, align 8, !tbaa !37
  %i.ah = fcmp olt double %i.ab, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.ab, ptr %i.l, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
end_hunk_0
begin_hunk_1_@_ZN4geos11triangulate21VoronoiDiagramBuilder15getDiagramEdgesERKNS_4geom15GeometryFactoryE:bb.a
bb.j:                                             ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i12, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.pr = load ptr, ptr %4, align 8, !tbaa !101    ; 3 uses
  %.not.i14 = icmp eq ptr %.pr, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN4geos4geom15MultiLineStringESt14default_deleteIS2_EED2Ev.exit16, label %_ZNKSt14default_deleteIN4geos4geom15MultiLineStringEEclEPS2_.exit.i15

_ZNKSt14default_deleteIN4geos4geom15MultiLineStringEEclEPS2_.exit.i15: ; preds = %bb.j
  %i.x = load ptr, ptr %.pr, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(64) %.pr) #13, !inline_history !105
  br label %_ZNSt10unique_ptrIN4geos4geom15MultiLineStringESt14default_deleteIS2_EED2Ev.exit16

_ZNSt10unique_ptrIN4geos4geom15MultiLineStringESt14default_deleteIS2_EED2Ev.exit16: ; preds = %.thread, %bb.j, %_ZNKSt14default_deleteIN4geos4geom15MultiLineStringEEclEPS2_.exit.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ], [ %i.j, %bb.d ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !101   ; 3 uses
  %.not.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN4geos4geom15MultiLineStringESt14default_deleteIS2_EED2Ev.exit19, label %_ZNKSt14default_deleteIN4geos4geom15MultiLineStringEEclEPS2_.exit.i18

_ZNKSt14default_deleteIN4geos4geom15MultiLineStringEEclEPS2_.exit.i18: ; preds = %bb.k
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #13, !inline_history !105
  br label %_ZNSt10unique_ptrIN4geos4geom15MultiLineStringESt14default_deleteIS2_EED2Ev.exit19

_ZNSt10unique_ptrIN4geos4geom15MultiLineStringESt14default_deleteIS2_EED2Ev.exit19: ; preds = %bb.k, %_ZNKSt14default_deleteIN4geos4geom15MultiLineStringEEclEPS2_.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn.pn

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom15MultiLineStringESt14default_deleteIS2_EED2Ev.exit16, %_ZNSt10unique_ptrIN4geos4geom15MultiLineStringESt14default_deleteIS2_EED2Ev.exit
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory21createMultiLineStringEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.51") align 8, ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #3

declare void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision22getVoronoiDiagramEdgesERKNS_4geom15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.51") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #3

declare void @_ZNK4geos4geom15GeometryFactory10toGeometryEPKNS0_8EnvelopeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.43") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #3

declare void @_ZNK4geos4geom8Geometry12intersectionEPKS1_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.43") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4geos4geom15GeometryFactory24createGeometryCollectionINS0_8GeometryEEESt10unique_ptrINS0_18GeometryCollectionESt14default_deleteIS5_EEOSt6vectorIS4_IT_S6_ISA_EESaISC_EE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.38", align 8    ; 12 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !noalias !106 ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !47, !noalias !106 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !106
  br label %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #14
          to label %.noexc6 unwind label %bb.e    ; 4 uses

.noexc6:                                          ; preds = %.lr.ph.i
  store ptr %i.i, ptr %3, align 8, !tbaa !47, !alias.scope !106
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.g, i1 false), !tbaa !103, !noalias !106
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !68, !alias.scope !106
  store ptr %i.j, ptr %i.k, align 8, !tbaa !50, !alias.scope !106
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i, %.noexc6
  %i.m = phi ptr [ %i.d, %.noexc6 ], [ %i.v, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i ] ; 2 uses
  %i.n = phi ptr [ %i.c, %.noexc6 ], [ %i.w, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i ]
  %.011.i = phi i64 [ 0, %.noexc6 ], [ %i.x, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.011.i ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011.i ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !51, !noalias !106
  store ptr null, ptr %i.o, align 8, !tbaa !51, !noalias !106
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !51, !noalias !106 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !51, !noalias !106
  %.not.i.i.i.i10.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i10.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12, !noalias !106
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !106
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.r) #13, !noalias !106, !inline_history !109
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !50, !noalias !106
  %.pre12.i = load ptr, ptr %2, align 8, !tbaa !47, !noalias !106
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %bb.b
  %i.v = phi ptr [ %i.m, %bb.b ], [ %.pre12.i, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ %i.n, %bb.b ], [ %.pre.i, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = add nuw i64 %.011.i, 1                   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.b, label %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit, !llvm.loop !110

_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i, %.thread.i
  invoke void @_ZN4geos4geom18GeometryCollectionC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !45
  %i.ad = load ptr, ptr %3, align 8, !tbaa !47    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ag = load ptr, ptr %.05.i.i.i, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i7, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ag) #13, !inline_history !53
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !54

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %bb.c ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.e:                                             ; preds = %.lr.ph.i, %.noexc.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.am, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZdlPv(ptr noundef nonnull %i.a) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN4geos4geom8Envelope8expandByEdd(ptr noundef nonnull align 8 dereferenceable(32), double noundef, double noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversERKS1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.h = icmp eq i64 %i.ae, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge12.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1222 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01321 = phi i64 [ %i.ae, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.ag, %bb.b ], [ %i.c, %.lr.ph ]
  %i.j = udiv i64 %i.i, 48
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1222, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %i.e, ptr %i.k, ptr nonnull %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.e, %.lr.ph23 ], [ %i.ad, %bb.j ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1222, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.j ]
  %i.m = load double, ptr %0, align 8, !tbaa !112 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.u, %bb.g ] ; 11 uses
  %i.n = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !112 ; 2 uses
  %i.o = fcmp olt double %i.n, %i.m
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ogt double %i.n, %i.m
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader, label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !114
  %i.s = load double, ptr %i.f, align 8, !tbaa !114
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.d, !llvm.loop !115

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.v = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !112 ; 2 uses
  %i.w = fcmp olt double %i.m, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  %i.x = fcmp ogt double %i.m, %i.v
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load double, ptr %i.f, align 8, !tbaa !114
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !114
  %i.ab = fcmp olt double %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge: ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, !llvm.loop !116

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i: ; preds = %bb.i, %bb.h
  %i.ac = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ac, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !117
  store <3 x double> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.0.1.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.c, !llvm.loop !118

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i
  %i.ae = add nsw i64 %.01321, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1222, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 384
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !111

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.n

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.07.021.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.07.021.i.add, %bb.i ] ; 3 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.07.021.i.ptr, %bb.i ] ; 2 uses
  %.sroa.07.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.021.i.idx ; 4 uses
  %i.f = load double, ptr %.sroa.07.021.i.ptr, align 8, !tbaa !112 ; 5 uses
  %i.g = load double, ptr %0, align 8, !tbaa !112 ; 2 uses
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt double %i.f, %i.g
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %.sroa.6.0.copyload.i.pre.i = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !7 ; 3 uses
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %i.e, align 8, !tbaa !114
  %i.k = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i

.loopexit.i:                                      ; preds = %bb.d, %bb.b
  %.sroa.0.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.07.021.i.ptr, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.07.021.i.idx, i1 false)
  store <3 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 40
  %.sroa.7.0.copyload.i.i = load double, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.07.021.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 3 uses
  %i.l = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !112 ; 2 uses
  %i.m = fcmp olt double %i.f, %i.l
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = fcmp ogt double %i.f, %i.l
  br i1 %i.n, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.p = load double, ptr %i.o, align 8, !tbaa !114
  %i.q = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.p
  br i1 %i.q, label %bb.h, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false), !tbaa.struct !117
  br label %bb.e, !llvm.loop !119

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %bb.g, %bb.f
  store double %i.f, ptr %.sroa.09.0.i.i, align 8, !tbaa !7
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.6.0.copyload.i.pre.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx7.i.i, align 8, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.07.021.i.add = add nuw nsw i64 %.sroa.07.021.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.021.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !120

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11
  %.sroa.0.05.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit ] ; 4 uses
  %i.s = load <2 x double>, ptr %.sroa.0.05.i, align 8, !tbaa !7 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16
  %.sroa.7.0.copyload.i.i8 = load double, ptr %.sroa.7.0..sroa_idx.i.i7, align 8, !tbaa !7
  %i.t = extractelement <2 x double> %i.s, i64 0  ; 2 uses
  %i.u = extractelement <2 x double> %i.s, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i6
  %.sroa.09.0.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i10, %bb.m ] ; 5 uses
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -24 ; 3 uses
  %i.v = load double, ptr %.sroa.0.0.i.i10, align 8, !tbaa !112 ; 2 uses
  %i.w = fcmp olt double %i.t, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = fcmp ogt double %i.t, %i.v
  br i1 %i.x, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -16
  %i.z = load double, ptr %i.y, align 8, !tbaa !114
  %i.aa = fcmp olt double %i.u, %i.z
  br i1 %i.aa, label %bb.m, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11

bb.m:                                             ; preds = %bb.l, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i10, i64 24, i1 false), !tbaa.struct !117
  br label %bb.j, !llvm.loop !119

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11: ; preds = %bb.l, %bb.k
  store <2 x double> %i.s, ptr %.sroa.09.0.i.i9, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx7.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i9, i64 16
  store double %.sroa.7.0.copyload.i.i8, ptr %.sroa.7.0..sroa_idx7.i.i13, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ab, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6, !llvm.loop !121

bb.n:                                             ; preds = %bb.a
  %i.ac = icmp eq ptr %0, %1
  br i1 %i.ac, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.n
  %.sroa.07.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.07.018.i17, %1
  br i1 %.not19.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph.i19
  %.sroa.07.021.i20 = phi ptr [ %.sroa.07.018.i17, %.lr.ph.i19 ], [ %.sroa.07.0.i32, %bb.w ] ; 7 uses
  %.pn20.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.07.021.i20, %bb.w ] ; 3 uses
  %i.ae = load double, ptr %.sroa.07.021.i20, align 8, !tbaa !112 ; 5 uses
  %i.af = load double, ptr %0, align 8, !tbaa !112 ; 2 uses
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = fcmp ogt double %i.ae, %i.af
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i22 = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 32
  %.sroa.6.0.copyload.i.pre.i23 = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i22, align 8, !tbaa !7 ; 3 uses
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = load double, ptr %i.ad, align 8, !tbaa !114
  %i.aj = fcmp olt double %.sroa.6.0.copyload.i.pre.i23, %i.ai
  br i1 %i.aj, label %bb.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.0.i15.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.07.021.i20, align 8
  %i.ak = ptrtoint ptr %.sroa.07.021.i20 to i64
  %i.al = sub i64 %i.ak, %i.b                     ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i.i35, label %.loopexit.i34

.lr.ph.preheader.i.i.i.i.i.i35:                   ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 48
  %i.ao = udiv exact i64 %i.al, 24
  br label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.lr.ph.i.i.i.i.i.i36, %.lr.ph.preheader.i.i.i.i.i.i35
  %.010.i.i.i.i.i.i37 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i36 ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i.i35 ] ; 2 uses
  %.069.i.i.i.i.i.i38 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i36 ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i.i35 ]
  %.078.i.i.i.i.i.i39 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i36 ], [ %.sroa.07.021.i20, %.lr.ph.preheader.i.i.i.i.i.i35 ]
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i39, i64 -24 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i38, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !tbaa.struct !117
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i37, -1
  %i.as = icmp samesign ugt i64 %.010.i.i.i.i.i.i37, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i36, label %.loopexit.i34, !llvm.loop !122

.loopexit.i34:                                    ; preds = %.lr.ph.i.i.i.i.i.i36, %bb.r
  store <3 x double> %.sroa.0.i15.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.w

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24: ; preds = %bb.q, %bb.p
  %.sroa.7.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 40
  %.sroa.7.0.copyload.i.i26 = load double, ptr %.sroa.7.0..sroa_idx.i.i25, align 8, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24
  %.sroa.09.0.i.i27 = phi ptr [ %.sroa.07.021.i20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24 ], [ %.sroa.0.0.i.i28, %bb.v ] ; 6 uses
  %.sroa.0.0.i.i28 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i27, i64 -24 ; 3 uses
  %i.at = load double, ptr %.sroa.0.0.i.i28, align 8, !tbaa !112 ; 2 uses
  %i.au = fcmp olt double %i.ae, %i.at
  br i1 %i.au, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = fcmp ogt double %i.ae, %i.at
  br i1 %i.av, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds i8, ptr %.sroa.09.0.i.i27, i64 -16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !114
  %i.ay = fcmp olt double %.sroa.6.0.copyload.i.pre.i23, %i.ax
  br i1 %i.ay, label %bb.v, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29

bb.v:                                             ; preds = %bb.u, %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i28, i64 24, i1 false), !tbaa.struct !117
  br label %bb.s, !llvm.loop !119

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29: ; preds = %bb.u, %bb.t
  store double %i.ae, ptr %.sroa.09.0.i.i27, align 8, !tbaa !7
  %.sroa.6.0..sroa_idx5.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i27, i64 8
  store double %.sroa.6.0.copyload.i.pre.i23, ptr %.sroa.6.0..sroa_idx5.i.i30, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx7.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i27, i64 16
  store double %.sroa.7.0.copyload.i.i26, ptr %.sroa.7.0..sroa_idx7.i.i31, align 8, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29, %.loopexit.i34
  %.sroa.07.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i20, i64 24 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.07.0.i32, %1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.o, !llvm.loop !120

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.w, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, %.preheader.i16, %bb.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !7 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !117
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 48
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  %.043.i.i = phi i64 [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.043.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 3 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !112 ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !112 ; 2 uses
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = fcmp ogt double %i.r, %i.s
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !114
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.n, %bb.d ], [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %.lr.ph.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.043.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !117
  %i.ad = icmp slt i64 %i.aa, %i.k
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !123

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ] ; 5 uses
  %i.ae = and i64 %i.i, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = add nsw i64 %i.i, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !117
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa.i.i, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i, 0
  br i1 %i.an, label %.lr.ph.i.i.i.preheader, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.ao = extractelement <2 x double> %i.f, i64 0 ; 2 uses
  %i.ap = extractelement <2 x double> %i.f, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.j
  %.019.i.i.i = phi i64 [ %.0920.i.i89.i, %bb.j ], [ %.1.i.i, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i89.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0920.i.i89.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !112 ; 2 uses
  %i.as = fcmp olt double %i.ar, %i.ao
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = fcmp ogt double %i.ar, %i.ao
  br i1 %i.at, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !114
  %i.aw = fcmp olt double %i.av, %i.ap
  br i1 %i.aw, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !117
  %.not.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !124

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 0, %bb.j ], [ %.019.i.i.i, %bb.h ], [ %.019.i.i.i, %bb.i ]
  %i.ay = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.ay, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx29.i.i, align 8, !tbaa !7
  %i.az = icmp sgt i64 %i.h, 24
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.loopexit18, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ay, %.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %.08 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !7 ; 3 uses
  %.sroa.6.0..sroa.010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa.010.0..sroa_idx, align 8, !tbaa !7
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
  %.043.i = phi i64 [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.043.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 3 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 3 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load double, ptr %i.u, align 8, !tbaa !112 ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !112 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = fcmp ogt double %i.x, %i.y
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !114
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i
  %i.ag = phi i64 [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %.lr.ph.i ] ; 4 uses
  %i.ah = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.043.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !117
  %i.aj = icmp slt i64 %i.ag, %i.i
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !123

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !117
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.08
  br i1 %i.al, label %.lr.ph.i.i.preheader, label %.loopexit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.am = extractelement <2 x double> %i.q, i64 0 ; 2 uses
  %i.an = extractelement <2 x double> %i.q, i64 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.k
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.k ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %.0920.i.i ; 3 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  %i.aq = fcmp olt double %i.ap, %i.am
  br i1 %i.aq, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = fcmp ogt double %i.ap, %i.am
  br i1 %i.ar, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !114
  %i.au = fcmp olt double %i.at, %i.an
  br i1 %i.au, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !117
  %i.aw = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.aw, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !124

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.h ], [ %.019.i.i, %bb.j ], [ %.019.i.i, %bb.i ], [ %.0920.i.i, %bb.k ]
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x double> %i.q, ptr %i.ax, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store double %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx29.i, align 8, !tbaa !7
  %.not = icmp eq i64 %.08, 0
  %i.ay = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit18, label %bb.c, !llvm.loop !126

.loopexit18:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !112 ; 6 uses
  %i.b = load double, ptr %2, align 8, !tbaa !112 ; 6 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.a, %i.b
  br i1 %i.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !114
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = load double, ptr %3, align 8, !tbaa !112 ; 4 uses
  %i.k = fcmp olt double %i.b, %i.j
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fcmp ogt double %i.b, %i.j
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !114
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !114
  %i.q = fcmp olt double %i.n, %i.p
  br i1 %i.q, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.0.i.i.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !117
  store <3 x double> %.sroa.0.i.i.sroa.0.0.copyload, ptr %2, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27: ; preds = %bb.f, %bb.e
  %i.r = fcmp olt double %i.a, %i.j
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  %i.s = fcmp ogt double %i.a, %i.j
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !114
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %bb.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29

bb.j:                                             ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  %.sroa.0.i.i30.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !117
  store <3 x double> %.sroa.0.i.i30.sroa.0.0.copyload, ptr %3, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29: ; preds = %bb.i, %bb.h
  %.sroa.0.i.i31.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !117
  store <3 x double> %.sroa.0.i.i31.sroa.0.0.copyload, ptr %1, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.c, %bb.b
  %i.y = load double, ptr %3, align 8, !tbaa !112 ; 4 uses
  %i.z = fcmp olt double %i.a, %i.y
  br i1 %i.z, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.aa = fcmp ogt double %i.a, %i.y
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !114
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !114
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %bb.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33

bb.m:                                             ; preds = %bb.l, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.sroa.0.i.i34.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !117
  store <3 x double> %.sroa.0.i.i34.sroa.0.0.copyload, ptr %1, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33: ; preds = %bb.l, %bb.k
  %i.ag = fcmp olt double %i.b, %i.y
  br i1 %i.ag, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33
  %i.ah = fcmp ogt double %i.b, %i.y
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !114
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !114
  %i.am = fcmp olt double %i.aj, %i.al
  br i1 %i.am, label %bb.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36

bb.p:                                             ; preds = %bb.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33
  %.sroa.0.i.i37.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !117
  store <3 x double> %.sroa.0.i.i37.sroa.0.0.copyload, ptr %3, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36: ; preds = %bb.o, %bb.n
  %.sroa.0.i.i38.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !117
  store <3 x double> %.sroa.0.i.i38.sroa.0.0.copyload, ptr %2, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36, %bb.p, %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare void @_ZN4geos4geom18GeometryCollectionC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(45)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }

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
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = distinct !{null, null, null, null, null}
!15 = distinct !{null, null}
!16 = !{!17, !31, i64 24}
!17 = !{!"_ZTSN4geos11triangulate21VoronoiDiagramBuilderE", !18, i64 0, !8, i64 8, !24, i64 16, !31, i64 24, !32, i64 32}
!18 = !{!"_ZTSSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !19, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_ELb1ELb1EE", !20, i64 0}
!20 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !21, i64 0}
!21 = !{!"_ZTSSt5tupleIJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !22, i64 0}
!22 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !23, i64 0}
!23 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18CoordinateSequenceELb0EE", !10, i64 0}
!24 = !{!"_ZTSSt10unique_ptrIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE", !25, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_ELb1ELb1EE", !26, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_implIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE", !27, i64 0}
!27 = !{!"_ZTSSt5tupleIJPN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EEE", !28, i64 0}
!28 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EEE", !29, i64 0}
!29 = !{!"_ZTSSt10_Head_baseILm0EPN4geos11triangulate8quadedge19QuadEdgeSubdivisionELb0EE", !30, i64 0}
!30 = !{!"p1 _ZTSN4geos11triangulate8quadedge19QuadEdgeSubdivisionE", !11, i64 0}
!31 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !11, i64 0}
!32 = !{!"_ZTSN4geos4geom8EnvelopeE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!33 = !{!17, !8, i64 8}
!34 = !{!30, !30, i64 0}
!35 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !7, i64 24, i64 8, !7}
!36 = !{!32, !8, i64 8}
!37 = !{!32, !8, i64 0}
!38 = !{!32, !8, i64 24}
!39 = !{!32, !8, i64 16}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN4geos11triangulate8quadedge6VertexE", !11, i64 0}
!42 = distinct !{null, null, null}
!43 = !{!44, !41, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN4geos11triangulate8quadedge6VertexESaIS3_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTSN4geos4geom18GeometryCollectionE", !11, i64 0}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE", !11, i64 0}
!50 = !{!48, !49, i64 8}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTSN4geos4geom8GeometryE", !11, i64 0}
!53 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!49, !49, i64 0}
!57 = !{!58, !46, i64 0}
!58 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18GeometryCollectionELb0EE", !46, i64 0}
!59 = !{!60, !67, i64 24}
!60 = !{!"_ZTSN4geos4geom8GeometryE", !61, i64 8, !4, i64 16, !67, i64 24, !11, i64 32}
!61 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !62, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !63, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !64, i64 0}
!64 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !65, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !66, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !31, i64 0}
!67 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !11, i64 0}
!68 = !{!48, !49, i64 16}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!71 = distinct !{!71, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!72 = !{!73}
!73 = distinct !{!73, !71, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!74 = !{!73, !75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!70, !78}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !55, !80, !81}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!"branch_weights", i32 4, i32 12}
!83 = distinct !{!83, !55, !80, !81}
!84 = distinct !{!84, !55, !80}
!85 = !{!60, !11, i64 32}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!88 = distinct !{!88, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!91 = !{!90, !92}
!92 = distinct !{!92, !93}
!93 = distinct !{!93, !"LVerDomain"}
!94 = !{!87, !95}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !55, !80, !81}
!97 = distinct !{!97, !55, !80, !81}
!98 = distinct !{!98, !55, !80}
!99 = distinct !{null, null}
!100 = distinct !{null, null, null, null, null}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 _ZTSN4geos4geom15MultiLineStringE", !11, i64 0}
!103 = !{!104, !52, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !52, i64 0}
!105 = distinct !{null, null}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE: argument 0"}
!108 = distinct !{!108, !"_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE"}
!109 = distinct !{null, null, null, null, null, null}
!110 = distinct !{!110, !55}
!111 = distinct !{!111, !55}
!112 = !{!113, !8, i64 0}
!113 = !{!"_ZTSN4geos4geom10CoordinateE", !8, i64 0, !8, i64 8, !8, i64 16}
!114 = !{!113, !8, i64 8}
!115 = distinct !{!115, !55}
!116 = distinct !{!116, !55}
!117 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !7}
!118 = distinct !{!118, !55}
!119 = distinct !{!119, !55}
!120 = distinct !{!120, !55}
!121 = distinct !{!121, !55}
!122 = distinct !{!122, !55}
!123 = distinct !{!123, !55}
!124 = distinct !{!124, !55}
!125 = distinct !{!125, !55}
!126 = distinct !{!126, !55}
end_hunk_1
