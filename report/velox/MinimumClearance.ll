inline.NumInlined: 851
inline.NumDeleted: 397
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.geos::index::strtree::TemplateSTRNodePair" = type { ptr, ptr, double }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.34 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.34 = type { i64, [8 x i8] }
%"class.std::allocator.31" = type { i8 }
%"class.std::priority_queue" = type <{ %"class.std::vector.51", [8 x i8] }>
%"class.std::vector.51" = type { %"struct.std::_Vector_base.52" }
%"struct.std::_Vector_base.52" = type { %"struct.std::_Vector_base<geos::index::strtree::TemplateSTRNodePair<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits, MinClearanceDistance>, std::allocator<geos::index::strtree::TemplateSTRNodePair<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits, MinClearanceDistance>>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::index::strtree::TemplateSTRNodePair<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits, MinClearanceDistance>, std::allocator<geos::index::strtree::TemplateSTRNodePair<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits, MinClearanceDistance>>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::index::strtree::TemplateSTRNodePair<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits, MinClearanceDistance>, std::allocator<geos::index::strtree::TemplateSTRNodePair<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits, MinClearanceDistance>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::index::strtree::TemplateSTRNodePair<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits, MinClearanceDistance>, std::allocator<geos::index::strtree::TemplateSTRNodePair<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits, MinClearanceDistance>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::unique_ptr.18" = type { %"struct.std::__uniq_ptr_data.19" }
%"struct.std::__uniq_ptr_data.19" = type { %"class.std::__uniq_ptr_impl.20" }
%"class.std::__uniq_ptr_impl.20" = type { %"class.std::tuple.21" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }
%class.MinClearanceDistance = type { double, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.geos::geom::LineSegment" = type { %"class.geos::geom::Coordinate", %"class.geos::geom::Coordinate" }
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i8 }
%"class.geos::index::strtree::TemplateSTRNode" = type { %"class.geos::geom::Envelope", %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }
%"class.geos::geom::Envelope" = type { double, double, double, double }
%"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.40" = type { i8 }

$_ZN4geos4util13GEOSExceptionD0Ev = comdat any

$_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv = comdat any

$_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE17createParentNodesERKN9__gnu_cxx17__normal_iteratorIPNS1_15TemplateSTRNodeIS7_S8_EESt6vectorISD_SaISD_EEEEm = comdat any

$_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE31addParentNodesFromVerticalSliceERKN9__gnu_cxx17__normal_iteratorIPNS1_15TemplateSTRNodeIS7_S8_EESt6vectorISD_SaISD_EEEESK_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesXERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesXERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesXERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesXERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_ = comdat any

$_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE17_M_realloc_insertIJRPKSA_SG_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_ = comdat any

$_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ = comdat any

$_ZN4geos4util24IllegalArgumentExceptionD0Ev = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

$_ZTVN4geos4util13GEOSExceptionE = comdat any

$_ZTIN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTSN4geos4util24IllegalArgumentExceptionE = comdat any

$_ZTVN4geos4util24IllegalArgumentExceptionE = comdat any

@.str = private unnamed_addr constant [29 x i8] c"Failed to find nearest items\00", align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Error computing nearest neighbor\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"neither boundable is composite\00", align 1
@_ZTIN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util24IllegalArgumentExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTSN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant [39 x i8] c"N4geos4util24IllegalArgumentExceptionE\00", comdat, align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"IllegalArgumentException\00", align 1
@_ZTVN4geos4util24IllegalArgumentExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util24IllegalArgumentExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN4geos9precision16MinimumClearanceC1EPKNS_4geom8GeometryE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos9precision16MinimumClearanceC2EPKNS_4geom8GeometryE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9precision16MinimumClearanceC2EPKNS_4geom8GeometryE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9precision16MinimumClearance11getDistanceEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4geos9precision16MinimumClearance7computeEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !20
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision16MinimumClearance7computeEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::index::strtree::TemplateSTRNodePair", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.31", align 1 ; 5 uses
  %.sroa.03.i.i.i.i.i.i.i.i = alloca { ptr, ptr }, align 8 ; 4 uses
  %4 = alloca %"class.std::priority_queue", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.31", align 1 ; 5 uses
  %7 = alloca %"class.geos::index::strtree::TemplateSTRNodePair", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %9 = alloca %"class.std::unique_ptr.18", align 8 ; 7 uses
  %10 = alloca %class.MinClearanceDistance, align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.31", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 2, i64 noundef 2)
  %i.k = load ptr, ptr %8, align 8, !tbaa !21
  store ptr null, ptr %8, align 8, !tbaa !21
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !21
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #16, !inline_history !40
  %.pr = load ptr, ptr %8, align 8, !tbaa !21     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit
  %i.p = load ptr, ptr %.pr, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #16, !inline_history !41
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store double +inf, ptr %i.s, align 8, !tbaa !20
  %i.t = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.t)
  br i1 %i.x, label %bb.av, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.y = load ptr, ptr %0, align 8, !tbaa !7
  call void @_ZN4geos9operation8distance24FacetSequenceTreeBuilder5buildEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %9, ptr noundef %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store double +inf, ptr %10, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aa = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17
          to label %bb.d unwind label %bb.ao      ; 6 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ad, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.af, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !53
  %i.ah = load ptr, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  invoke void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 72 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.noexc20 unwind label %bb.ap

.noexc20:                                         ; preds = %bb.e
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 7 uses
  %.not4.i.i = icmp eq ptr %i.al, null
  br i1 %.not4.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %i.al, ptr %7, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = icmp eq ptr %i.ao, %i.al
  %spec.select.i.i.i.i.i.i.i = or i1 %i.ap, %i.aq
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  store double +inf, ptr %10, align 8, !tbaa !42
  %i.at = invoke fastcc noundef double @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance8distanceEPKNS_9operation8distance13FacetSequenceES7_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.as, ptr noundef nonnull %i.as)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i unwind label %bb.ap

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.i.i.i: ; preds = %bb.f
  %i.au = load <4 x double>, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %i.av = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.aw = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ax = fsub <2 x double> %i.av, %i.aw          ; 3 uses
  %i.ay = fsub <2 x double> %i.ax, %i.ax
  %i.az = fsub <2 x double> %i.ay, %i.ax          ; 2 uses
  %i.ba = fcmp ogt <2 x double> %i.az, zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x double> %i.az, <2 x double> zeroinitializer ; 2 uses
  %i.bc = fmul <2 x double> %i.bb, %i.bb          ; 2 uses
  %shift = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bc, %shift
  %i.bd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.bd)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi double [ %sqrt.i.i.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.i.i.i ], [ %i.at, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %.0.i.i.i.i.i, ptr %i.be, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %4, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEE4pushERKSD_(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %7)
          to label %.preheader.i.i.i.i.i unwind label %bb.m

.preheader.i.i.i.i.i:                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.val3080.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !76 ; 2 uses
  %.val3181.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !76 ; 2 uses
  %i.bg = icmp eq ptr %.val3080.i.i.i.i.i, %.val3181.i.i.i.i.i
  br i1 %i.bg, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.val3185.i.i.i.i.i = phi ptr [ %.val31.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ %.val3181.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %.val3084.i.i.i.i.i = phi ptr [ %.val30.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ %.val3080.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 14 uses
  %.01283.i.i.i.i.i = phi double [ %.2.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ +inf, %.lr.ph.i.preheader.i.i.i.i ] ; 7 uses
  %.sroa.065.082.i.i.i.i.i = phi ptr [ %.sroa.065.1.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ null, %.lr.ph.i.preheader.i.i.i.i ] ; 15 uses
  %i.bj = load <2 x ptr>, ptr %.val3084.i.i.i.i.i, align 8, !tbaa !78 ; 4 uses
  %i.bk = extractelement <2 x ptr> %i.bj, i64 1   ; 11 uses
  %i.bl = extractelement <2 x ptr> %i.bj, i64 0   ; 11 uses
  %.sroa.10.0..val32.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val3084.i.i.i.i.i, i64 16
  %.sroa.10.0.copyload.i.i.i.i.i = load double, ptr %.sroa.10.0..val32.sroa_idx.i.i.i.i.i, align 8, !tbaa !74 ; 5 uses
  %i.bm = ptrtoint ptr %.val3185.i.i.i.i.i to i64
  %i.bn = ptrtoint ptr %.val3084.i.i.i.i.i to i64 ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp sgt i64 %i.bo, 24
  br i1 %i.bp, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -8
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %.val3084.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !79
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bn                    ; 2 uses
  %i.bt = sdiv exact i64 %i.bs, 24                ; 3 uses
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = sdiv i64 %i.bu, 2
  %i.bw = icmp sgt i64 %i.bs, 48
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.042.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.bx = shl i64 %.042.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.by = add i64 %i.bx, 2                        ; 2 uses
  %i.bz = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.by
  %i.ca = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.cb = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bz, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cc, align 8, !tbaa !75
  %i.cd = getelementptr i8, ptr %i.cb, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cd, align 8, !tbaa !75
  %i.ce = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ce, i64 %i.ca, i64 %i.by ; 4 uses
  %i.cf = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.042.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !tbaa.struct !79
  %i.ch = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i.i, %i.bv
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !80

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ci = and i64 %i.bt, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ck = add nsw i64 %i.bt, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, %i.cl
  br i1 %i.cm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cn = shl nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.co
  %i.cq = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !tbaa.struct !79
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.i ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cr = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.j, %bb.k
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.j ] ; 4 uses
  %.097.in.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.097.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ct, align 8, !tbaa !75
  %i.cu = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cu, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.06.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !tbaa.struct !79
  %i.cw = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i, !llvm.loop !82

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.06.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store double %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i.i)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cy = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -24
  store ptr %i.cy, ptr %i.bf, align 8, !tbaa !83
  %.not74.i.i.i.i.i = icmp eq ptr %.sroa.065.082.i.i.i.i.i, null ; 2 uses
  %i.cz = fcmp ult double %.sroa.10.0.copyload.i.i.i.i.i, %.01283.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %.not74.i.i.i.i.i, i1 true, i1 %i.cz
  br i1 %or.cond.i.i.i.i.i, label %bb.n, label %.thread.thread.i.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %bb.l
  %.val40100.i.i.i.i.i = load ptr, ptr %.sroa.065.082.i.i.i.i.i, align 8, !tbaa !66
  %i.da = getelementptr i8, ptr %.sroa.065.082.i.i.i.i.i, i64 8
  %.val41101.i.i.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !68
  %i.db = getelementptr i8, ptr %.val40100.i.i.i.i.i, i64 32
  %.val40.val102.i.i.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !72
  %i.dc = getelementptr i8, ptr %.val41101.i.i.i.i.i, i64 32
  %.val41.val103.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !tbaa !72
  br label %bb.ai

bb.m:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.v, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.x, %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !69 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  %i.dh = icmp eq ptr %i.df, %i.bl
  %spec.select.i.i.i.i3.i.i.i = or i1 %i.dg, %i.dh
  %i.di = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !69 ; 4 uses
  br i1 %spec.select.i.i.i.i3.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i: ; preds = %bb.n
  %i.dk = icmp eq ptr %i.dj, null
  %i.dl = icmp eq ptr %i.dj, %i.bk
  %spec.select.i2.i.i.i7.i.i.i = or i1 %i.dk, %i.dl
  br i1 %spec.select.i2.i.i.i7.i.i.i, label %bb.o, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

bb.o:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i
  br i1 %.not74.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store <2 x ptr> %i.bj, ptr %.sroa.065.082.i.i.i.i.i, align 8, !tbaa !78
  %.sroa.10.0..val36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.065.082.i.i.i.i.i, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..val36.sroa_idx.i.i.i.i.i, align 8, !tbaa !74
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt14default_deleteISD_EED2Ev.exit.i.i.i.i.i unwind label %bb.r ; 3 uses

_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt14default_deleteISD_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.q
  store <2 x ptr> %i.bj, ptr %i.dm, align 16, !tbaa !78, !noalias !85
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 16, !tbaa !74, !noalias !85
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i, %bb.n
  %i.do = icmp ne ptr %i.df, null
  %i.dp = icmp ne ptr %i.df, %i.bl
  %spec.select.i.not.i.i.i.i.i.i.i = and i1 %i.do, %i.dp ; 5 uses
  %i.dq = icmp ne ptr %i.dj, null
  %i.dr = icmp ne ptr %i.dj, %i.bk
  %spec.select.i.not.i34.i.i.i.i.i.i = and i1 %i.dq, %i.dr ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !88 ; 2 uses
  %i.du = fcmp uno double %i.dt, 0.000000e+00
  %i.dv = load double, ptr %i.bl, align 8
  %i.dw = fsub double %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.dy = load double, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.ea = load double, ptr %i.dz, align 8
  %i.eb = fsub double %i.dy, %i.ea
  %i.ec = fmul double %i.dw, %i.eb
  %i.ed = select i1 %i.du, double 0.000000e+00, double %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !88 ; 2 uses
  %i.eg = fcmp uno double %i.ef, 0.000000e+00
  %i.eh = load double, ptr %i.bk, align 8
  %i.ei = fsub double %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.ek = load double, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.em = load double, ptr %i.el, align 8
  %i.en = fsub double %i.ek, %i.em
  %i.eo = fmul double %i.ei, %i.en
  %i.ep = select i1 %i.eg, double 0.000000e+00, double %i.eo
  %i.eq = fcmp ule double %i.ed, %i.ep            ; 3 uses
  %.sroa.058.0.copyload..sroa.8.0.copyload.i.i.i.i.i = select i1 %i.eq, ptr %i.bk, ptr %i.bl
  %.sroa.8.0.copyload..sroa.058.0.copyload.i.i.i.i.i = select i1 %i.eq, ptr %i.bl, ptr %i.bk
  br label %.invoke.i.i.i.i.i

bb.t:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %brmerge.i.i.i.i.i = or i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  %.sroa.058.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %i.bl, ptr %i.bk
  %.sroa.8.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %i.bk, ptr %i.bl
  %not.spec.select.i.not.i.i.i.i.i.i.i = xor i1 %spec.select.i.not.i.i.i.i.i.i.i, true
  br i1 %brmerge.i.i.i.i.i, label %.invoke.i.i.i.i.i, label %bb.y

.invoke.i.i.i.i.i:                                ; preds = %bb.t, %bb.s
  %i.er = phi ptr [ %.sroa.058.0.copyload.mux.i.i.i.i.i, %bb.t ], [ %.sroa.058.0.copyload..sroa.8.0.copyload.i.i.i.i.i, %bb.s ] ; 2 uses
  %i.es = phi ptr [ %.sroa.8.0.copyload.mux.i.i.i.i.i, %bb.t ], [ %.sroa.8.0.copyload..sroa.058.0.copyload.i.i.i.i.i, %bb.s ] ; 11 uses
  %i.et = phi i1 [ %not.spec.select.i.not.i.i.i.i.i.i.i, %bb.t ], [ %i.eq, %bb.s ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !69 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !89
  %i.ey = icmp ult ptr %i.ev, %i.ex
  br i1 %i.ey, label %.lr.ph.i3.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 40 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 2 uses
  %i.fe = fcmp oeq double %.01283.i.i.i.i.i, +inf ; 2 uses
  br i1 %i.et, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i3.i.i.i.i, %.noexc5.i.i.i.i
  %.023.us.i.i.i.i.i = phi ptr [ %i.gz, %.noexc5.i.i.i.i ], [ %i.ev, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %i.es, ptr %1, align 8, !tbaa !66
  store ptr %.023.us.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !68
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !69 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  %i.fh = icmp eq ptr %i.ff, %i.es
  %spec.select.i.i.i.i.us.i.i.i.i.i = or i1 %i.fg, %i.fh
  br i1 %spec.select.i.i.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !69 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  %i.fl = icmp eq ptr %i.fj, %.023.us.i.i.i.i.i
  %spec.select.i2.i.i.i.us.i.i.i.i.i = or i1 %i.fk, %i.fl
  br i1 %spec.select.i2.i.i.i.us.i.i.i.i.i, label %bb.u, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 8
  %i.fn = load double, ptr %i.fa, align 8, !tbaa !74 ; 3 uses
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !74 ; 3 uses
  %i.fp = fcmp olt double %i.fn, %i.fo
  %i.fq = select i1 %i.fp, double %i.fo, double %i.fn
  %i.fr = load double, ptr %.023.us.i.i.i.i.i, align 8, !tbaa !74 ; 3 uses
  %i.fs = load double, ptr %i.es, align 8, !tbaa !74 ; 3 uses
  %i.ft = fcmp olt double %i.fr, %i.fs
  %i.fu = select i1 %i.ft, double %i.fr, double %i.fs
  %i.fv = fsub double %i.fq, %i.fu
  %i.fw = fsub double %i.fn, %i.fs
  %i.fx = fsub double %i.fv, %i.fw
  %i.fy = fsub double %i.fo, %i.fr
  %i.fz = fsub double %i.fx, %i.fy                ; 2 uses
  %i.ga = fcmp ogt double %i.fz, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.ga, double %i.fz, double 0.000000e+00 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 24
  %i.gc = load double, ptr %i.fb, align 8, !tbaa !74 ; 3 uses
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !74 ; 3 uses
  %i.ge = fcmp olt double %i.gc, %i.gd
  %i.gf = select i1 %i.ge, double %i.gd, double %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 16
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !74 ; 3 uses
  %i.gi = load double, ptr %i.fc, align 8, !tbaa !74 ; 3 uses
  %i.gj = fcmp olt double %i.gh, %i.gi
  %i.gk = select i1 %i.gj, double %i.gh, double %i.gi
  %i.gl = fsub double %i.gf, %i.gk
  %i.gm = fsub double %i.gc, %i.gi
  %i.gn = fsub double %i.gl, %i.gm
  %i.go = fsub double %i.gd, %i.gh
  %i.gp = fsub double %i.gn, %i.go                ; 2 uses
  %i.gq = fcmp ogt double %i.gp, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.gq, double %i.gp, double 0.000000e+00 ; 2 uses
  %i.gr = fmul double %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i
  %i.gs = fmul double %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i
  %i.gt = fadd double %i.gr, %i.gs
  %sqrt.i.i.i.i.us.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.gt)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.us.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesXERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx29.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false)
  %.not = icmp eq i64 %.010, 0
  %i.av = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit19, label %bb.c, !llvm.loop !140

.loopexit19:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.40", align 1 ; 3 uses
  %4 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %5 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %6 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %7 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %8 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %9 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %10 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.40", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph32

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEET_SS_SS_T0_.exit
  %i.k = icmp eq i64 %i.m, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph32, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph32:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1831 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.01930 = phi i64 [ %i.m, %bb.b ], [ %2, %.lr.ph ]
  %i.l = phi i64 [ %i.ba, %bb.b ], [ %i.c, %.lr.ph ]
  %i.m = add nsw i64 %.01930, -1                  ; 3 uses
  %i.n = udiv i64 %i.l, 96
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.n ; 6 uses
  %i.p = getelementptr inbounds i8, ptr %storemerge1831, i64 -48 ; 4 uses
  %i.q = load double, ptr %i.f, align 8, !tbaa !124
  %i.r = load double, ptr %i.g, align 8, !tbaa !125
  %i.s = fadd double %i.q, %i.r                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !124
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !125
  %i.x = fadd double %i.u, %i.w                   ; 3 uses
  %i.y = fcmp olt double %i.s, %i.x
  %i.z = getelementptr inbounds i8, ptr %storemerge1831, i64 -32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !124
  %i.ab = getelementptr inbounds i8, ptr %storemerge1831, i64 -24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !125
  %i.ad = fadd double %i.aa, %i.ac                ; 4 uses
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph32
  %i.ae = fcmp olt double %i.x, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.af = fcmp olt double %i.s, %i.ad
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph32
  %i.ag = fcmp olt double %i.s, %i.ad
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ah = fcmp olt double %i.x, %i.ad
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge1831, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %i.ai = load double, ptr %i.h, align 8, !tbaa !124
  %i.aj = load double, ptr %i.i, align 8, !tbaa !125
  %i.ak = fadd double %i.ai, %i.aj                ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i ], [ %i.ar, %bb.m ] ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !124
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !125
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = fcmp olt double %i.ap, %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 48 ; 2 uses
  br i1 %i.aq, label %bb.m, label %.preheader.i.i, !llvm.loop !142

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.at = load double, ptr %i.as, align 8, !tbaa !124
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.av = load double, ptr %i.au, align 8, !tbaa !125
  %i.aw = fadd double %i.at, %i.av
  %i.ax = fcmp olt double %i.ak, %i.aw
  br i1 %i.ax, label %.preheader.i.i, label %bb.n, !llvm.loop !143

bb.n:                                             ; preds = %.preheader.i.i
  %i.ay = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ay, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEET_SS_SS_T0_.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, i64 48, i1 false), !tbaa.struct !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_SS_T0_.exit.i, !llvm.loop !144

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEET_SS_SS_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1831, i64 noundef %i.m)
  %i.az = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 768
  br i1 %i.bb, label %bb.b, label %.loopexit, !llvm.loop !141

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEET_SS_SS_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.03.i.i25 = alloca { double, double }, align 8 ; 4 uses
  %.sroa.7.i.i26 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %2 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %.sroa.03.i.i12 = alloca { double, double }, align 8 ; 4 uses
  %.sroa.7.i.i13 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %.sroa.03.i.i = alloca { double, double }, align 8 ; 4 uses
  %.sroa.7.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %3 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %scevgep = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.020.i.idx = phi i64 [ 48, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.d ] ; 3 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.d ] ; 4 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 64
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !74 ; 3 uses
  %shift = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.h, %shift
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.j = load double, ptr %i.e, align 8, !tbaa !124
  %i.k = load double, ptr %i.f, align 8, !tbaa !125
  %i.l = fadd double %i.j, %i.k
  %i.m = fcmp olt double %i.i, %i.l
  br i1 %i.m, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i.ptr, i64 48, i1 false), !tbaa.struct !107
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.020.i.ptr, i64 16, i1 false), !tbaa.struct !107
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !tbaa.struct !145
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !125
  %i.r = fadd double %i.o, %i.q
  %i.s = fcmp olt double %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.09.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i, i64 48, i1 false), !tbaa.struct !107
  %i.t = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -80
  %i.u = load double, ptr %i.t, align 8, !tbaa !124
  %i.v = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -72
  %i.w = load double, ptr %i.v, align 8, !tbaa !125
  %i.x = fadd double %i.u, %i.w
  %i.y = fcmp olt double %i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i, !llvm.loop !146

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.09.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, i64 16, i1 false), !tbaa.struct !107
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 16
  store <2 x double> %i.h, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 48 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 768
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit, label %bb.b, !llvm.loop !147

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %.not6.i = icmp eq ptr %i.z, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.ao, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16 ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i, i64 16, i1 false), !tbaa.struct !107
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %i.aa = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !74 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i15, i64 16, i1 false), !tbaa.struct !145
  %shift67 = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop68 = fadd <2 x double> %i.aa, %shift67
  %i.ab = extractelement <2 x double> %foldExtExtBinop68, i64 0 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -32
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !124
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !125
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = fcmp olt double %i.ab, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16

.lr.ph.i.i22:                                     ; preds = %.lr.ph.i14, %.lr.ph.i.i22
  %.sroa.09.012.i.i23 = phi ptr [ %.sroa.0.0.i.i24, %.lr.ph.i.i22 ], [ %.sroa.0.07.i, %.lr.ph.i14 ] ; 4 uses
  %.sroa.0.0.i.i24 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i23, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i24, i64 48, i1 false), !tbaa.struct !107
  %i.ai = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -80
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !124
  %i.ak = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -72
  %i.al = load double, ptr %i.ak, align 8, !tbaa !125
  %i.am = fadd double %i.aj, %i.al
  %i.an = fcmp olt double %i.ab, %i.am
  br i1 %i.an, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16, !llvm.loop !146

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i22, %.lr.ph.i14
  %.sroa.09.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i14 ], [ %.sroa.0.0.i.i24, %.lr.ph.i.i22 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.0.lcssa.i.i17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, i64 16, i1 false), !tbaa.struct !107
  %.sroa.5.0..sroa_idx4.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 16
  store <2 x double> %i.aa, ptr %.sroa.5.0..sroa_idx4.i.i18, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx8.i.i20 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i13, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i13)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 48 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ao, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit, label %.lr.ph.i14, !llvm.loop !148

bb.e:                                             ; preds = %bb.a
  %i.ap = icmp eq ptr %0, %1
  br i1 %i.ap, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit, label %.preheader.i27

.preheader.i27:                                   ; preds = %bb.e
  %.sroa.0.017.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not18.i29 = icmp eq ptr %.sroa.0.017.i28, %1
  br i1 %.not18.i29, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.preheader.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i30
  %.sroa.0.020.i31 = phi ptr [ %.sroa.0.017.i28, %.lr.ph.i30 ], [ %.sroa.0.0.i39, %bb.i ] ; 8 uses
  %.pn19.i32 = phi ptr [ %0, %.lr.ph.i30 ], [ %.sroa.0.020.i31, %bb.i ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 64
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !74 ; 3 uses
  %shift70 = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop71 = fadd <2 x double> %i.at, %shift70
  %i.au = extractelement <2 x double> %foldExtExtBinop71, i64 0 ; 3 uses
  %i.av = load double, ptr %i.aq, align 8, !tbaa !124
  %i.aw = load double, ptr %i.ar, align 8, !tbaa !125
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fcmp olt double %i.au, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i31, i64 48, i1 false), !tbaa.struct !107
  %i.az = ptrtoint ptr %.sroa.0.020.i31 to i64
  %i.ba = sub i64 %i.az, %i.b                     ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i.i.i45, label %.loopexit.i44

.lr.ph.preheader.i.i.i.i.i.i45:                   ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 96
  %i.bd = udiv exact i64 %i.ba, 48
  br label %.lr.ph.i.i.i.i.i.i46

.lr.ph.i.i.i.i.i.i46:                             ; preds = %.lr.ph.i.i.i.i.i.i46, %.lr.ph.preheader.i.i.i.i.i.i45
  %.010.i.i.i.i.i.i47 = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i46 ], [ %i.bd, %.lr.ph.preheader.i.i.i.i.i.i45 ] ; 2 uses
  %.069.i.i.i.i.i.i48 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i46 ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i.i45 ]
  %.078.i.i.i.i.i.i49 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i46 ], [ %.sroa.0.020.i31, %.lr.ph.preheader.i.i.i.i.i.i45 ]
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49, i64 -48 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48, i64 -48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false), !tbaa.struct !107
  %i.bg = add nsw i64 %.010.i.i.i.i.i.i47, -1
  %i.bh = icmp samesign ugt i64 %.010.i.i.i.i.i.i47, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i46, label %.loopexit.i44, !llvm.loop !136

.loopexit.i44:                                    ; preds = %.lr.ph.i.i.i.i.i.i46, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i25)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.020.i31, i64 16, i1 false), !tbaa.struct !107
  %.sroa.7.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i33, i64 16, i1 false), !tbaa.struct !145
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !124
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !125
  %i.bm = fadd double %i.bj, %i.bl
  %i.bn = fcmp olt double %i.au, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i34

.lr.ph.i.i41:                                     ; preds = %bb.h, %.lr.ph.i.i41
  %.sroa.09.012.i.i42 = phi ptr [ %.sroa.0.0.i.i43, %.lr.ph.i.i41 ], [ %.sroa.0.020.i31, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i43 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i42, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i42, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i43, i64 48, i1 false), !tbaa.struct !107
  %i.bo = getelementptr inbounds i8, ptr %.sroa.09.012.i.i42, i64 -80
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !124
  %i.bq = getelementptr inbounds i8, ptr %.sroa.09.012.i.i42, i64 -72
  %i.br = load double, ptr %i.bq, align 8, !tbaa !125
  %i.bs = fadd double %i.bp, %i.br
  %i.bt = fcmp olt double %i.au, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i34, !llvm.loop !146

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i34: ; preds = %.lr.ph.i.i41, %bb.h
  %.sroa.09.0.lcssa.i.i35 = phi ptr [ %.sroa.0.020.i31, %bb.h ], [ %.sroa.0.0.i.i43, %.lr.ph.i.i41 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.0.lcssa.i.i35, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i25, i64 16, i1 false), !tbaa.struct !107
  %.sroa.5.0..sroa_idx4.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i35, i64 16
  store <2 x double> %i.at, ptr %.sroa.5.0..sroa_idx4.i.i36, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx8.i.i38 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i35, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i26, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i25)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i26)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i34, %.loopexit.i44
  %.sroa.0.0.i39 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i31, i64 48 ; 2 uses
  %.not.i40 = icmp eq ptr %.sroa.0.0.i39, %1
  br i1 %.not.i40, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit, label %bb.f, !llvm.loop !147

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16, %.preheader.i27, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca { double, double }, align 8 ; 5 uses
  %.sroa.4.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 5 uses
  %.sroa.0.i = alloca { double, double }, align 8 ; 5 uses
  %.sroa.4.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 48
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32
  %i.f = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !74 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !107
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 48                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 96
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.041.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [48 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [48 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !125
  %i.v = fadd double %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !124
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !125
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fcmp olt double %i.v, %i.aa
  %spec.select.i.i = select i1 %i.ab, i64 %i.p, i64 %i.n ; 4 uses
  %i.ac = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select.i.i
  %i.ad = getelementptr inbounds [48 x i8], ptr %0, i64 %.041.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !tbaa.struct !107
  %i.ae = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !149

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.af = and i64 %i.i, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ah = add nsw i64 %i.i, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa.i.i, %i.ai
  br i1 %i.aj, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ak = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !tbaa.struct !145
  br label %.lr.ph.i.preheader.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !tbaa.struct !145
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.c, %.thread.i
  %.1.i10.i = phi i64 [ %i.al, %.thread.i ], [ %.0.lcssa.i.i, %bb.c ]
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.ao = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.preheader.i.i
  %.018.i.i.i = phi i64 [ %.0919.i.i1112.i, %bb.d ], [ %.1.i10.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i1112.i = lshr i64 %.0919.in.i.i.i, 1  ; 3 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0919.i.i1112.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load double, ptr %i.as, align 8, !tbaa !125
  %i.au = fadd double %i.ar, %i.at
  %i.av = fcmp olt double %i.au, %i.ao
  br i1 %i.av, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = getelementptr inbounds [48 x i8], ptr %0, i64 %.018.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false), !tbaa.struct !107
  %.not13.i = icmp eq i64 %.0919.i.i1112.i, 0
  br i1 %.not13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !150

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ax = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !tbaa.struct !107
  %.sroa.2.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x double> %i.f, ptr %.sroa.2.0..sroa_idx25.i.i, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.ay = icmp sgt i64 %i.h, 48
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca { double, double }, align 8   ; 2 uses
  %.sroa.4 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 96
  br i1 %i.d, label %.loopexit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 48                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.ay, %.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds [48 x i8], ptr %0, i64 %.010 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %.sroa.5.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.q = load <2 x double>, ptr %.sroa.5.0..sroa.011.0..sroa_idx, align 8, !tbaa !74 ; 3 uses
  %.sroa.7.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa.011.0..sroa_idx, i64 16, i1 false)
  %i.r = icmp slt i64 %.010, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.041.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
  %i.s = shl i64 %.041.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [48 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [48 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !125
  %i.ab = fadd double %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !125
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = fcmp olt double %i.ab, %i.ag
  %spec.select.i = select i1 %i.ah, i64 %i.v, i64 %i.t ; 4 uses
  %i.ai = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select.i
  %i.aj = getelementptr inbounds [48 x i8], ptr %0, i64 %.041.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false), !tbaa.struct !107
  %i.ak = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !149

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !107
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.am = icmp sgt i64 %.1.i, %.010
  br i1 %i.am, label %.lr.ph.i.preheader.i, label %.loopexit

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0919.i.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !124
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !125
  %i.at = fadd double %i.aq, %i.as
  %i.au = fcmp olt double %i.at, %i.an
  br i1 %i.au, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.018.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i64 48, i1 false), !tbaa.struct !107
  %i.aw = icmp sgt i64 %.0919.i.i, %.010
  br i1 %i.aw, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !150

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0919.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0.lcssa.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.2.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x double> %i.q, ptr %.sroa.2.0..sroa_idx25.i, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %.not = icmp eq i64 %.010, 0
  %i.ay = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit19, label %bb.c, !llvm.loop !152

.loopexit19:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE17_M_realloc_insertIJRPKSA_SG_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !113    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
  unreachable

_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !78     ; 4 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !78     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !122
  %.promoted.i.i = load double, ptr %i.q, align 1, !alias.scope !153 ; 2 uses
  %.06.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.t = icmp ult ptr %.06.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.promoted9.i.i = load double, ptr %i.u, align 8, !tbaa !88, !alias.scope !153
  %.promoted10.i.i = load double, ptr %i.v, align 8, !alias.scope !153
  %.promoted11.i.i = load double, ptr %i.w, align 8, !alias.scope !153
  br label %bb.c

bb.c:                                             ; preds = %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i, %.lr.ph.i.i
  %i.x = phi double [ %.promoted11.i.i, %.lr.ph.i.i ], [ %i.ax, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 2 uses
  %i.y = phi double [ %.promoted10.i.i, %.lr.ph.i.i ], [ %i.ay, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 2 uses
  %i.z = phi double [ %.promoted9.i.i, %.lr.ph.i.i ], [ %i.az, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 3 uses
  %.08.i.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %.0.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 3 uses
  %.pn7.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %.08.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 6 uses
  %i.aa = phi double [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ba, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 2 uses
  %i.ab = fcmp uno double %i.z, 0.000000e+00
  %i.ac = load double, ptr %.08.i.i, align 8, !tbaa !123, !noalias !153 ; 3 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 64
  %i.af = load double, ptr %i.ae, align 8, !tbaa !124, !noalias !153
  %i.ag = load <2 x double>, ptr %i.ad, align 8, !tbaa !74, !noalias !153 ; 2 uses
  store <2 x double> %i.ag, ptr %i.u, align 8, !tbaa !74, !alias.scope !153
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 72
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !125, !noalias !153
  %i.aj = extractelement <2 x double> %i.ag, i64 0
  br label %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.ak = fcmp olt double %i.ac, %i.aa
  %i.al = select i1 %i.ak, double %i.ac, double %i.aa ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !88, !noalias !153 ; 3 uses
  %i.ao = fcmp ogt double %i.an, %i.z
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.an, ptr %i.u, align 8, !tbaa !88, !alias.scope !153
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi double [ %i.an, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !124, !noalias !153 ; 3 uses
  %i.as = fcmp olt double %i.ar, %i.y
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.ar, ptr %i.v, align 8, !tbaa !124, !alias.scope !153
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi double [ %i.ar, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 72
  %i.av = load double, ptr %i.au, align 8, !tbaa !125, !noalias !153 ; 2 uses
  %i.aw = fcmp ogt double %i.av, %i.x
  br i1 %i.aw, label %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i, label %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i

_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i: ; preds = %bb.i, %bb.d
  %.sink.i.i = phi double [ %i.ai, %bb.d ], [ %i.av, %bb.i ] ; 2 uses
  %.ph21.i.i = phi double [ %i.af, %bb.d ], [ %i.at, %bb.i ]
  %.ph22.i.i = phi double [ %i.aj, %bb.d ], [ %i.ap, %bb.i ]
  %.ph23.i.i = phi double [ %i.ac, %bb.d ], [ %i.al, %bb.i ]
  store double %.sink.i.i, ptr %i.w, align 8, !tbaa !125, !alias.scope !153
  br label %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i

_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i: ; preds = %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i, %bb.i
  %i.ax = phi double [ %i.x, %bb.i ], [ %.sink.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i ]
  %i.ay = phi double [ %i.at, %bb.i ], [ %.ph21.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i ]
  %i.az = phi double [ %i.ap, %bb.i ], [ %.ph22.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i ]
  %i.ba = phi double [ %i.al, %bb.i ], [ %.ph23.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i ] ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 48 ; 2 uses
  %i.bb = icmp ult ptr %.0.i.i, %i.s
  br i1 %i.bb, label %bb.c, label %.loopexit, !llvm.loop !126

.loopexit:                                        ; preds = %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i, %_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE12_M_check_lenEmPKc.exit
  %.lcssa.i.i = phi double [ %.promoted.i.i, %_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ]
  store double %.lcssa.i.i, ptr %i.q, align 1, !alias.scope !153
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.s, ptr %i.bc, align 8, !tbaa !89
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.r, ptr %i.bd, align 8, !tbaa !69
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.p, %.loopexit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.c, %.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !107, !alias.scope !156
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !112

_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.bf, %.lr.ph.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit33, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, %.lr.ph.i.i.i.i28
  %.012.i.i.i.i29 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i28 ], [ %i.bg, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 2 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i28 ], [ %1, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i30, i64 48, i1 false), !tbaa.struct !107, !alias.scope !160
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 48 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i.i31, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit33, label %.lr.ph.i.i.i.i28, !llvm.loop !112

_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit33: ; preds = %.lr.ph.i.i.i.i28, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i.i32 = phi ptr [ %i.bg, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.bi, %.lr.ph.i.i.i.i28 ]
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit33
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #19
  br label %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit33, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !113
  store ptr %.0.lcssa.i.i.i.i32, ptr %i.a, align 8, !tbaa !114
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !106
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEE4pushERKSD_(ptr noundef nonnull align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 {
bb.a:
  %.sroa.07.i = alloca { ptr, ptr }, align 8      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !79
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !83
  %.val3.pre = load ptr, ptr %0, align 8, !tbaa !76
  br label %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !165 ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
  unreachable

_ZNKSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.k = sdiv exact i64 %i.i, 24                  ; 3 uses
  %i.l = icmp eq ptr %i.b, %.val.i.i              ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.l, i64 1, i64 %i.k
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.k ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 384307168202282325)
  %i.p = select i1 %i.n, i64 384307168202282325, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 24
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #17 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !79
  br i1 %i.l, label %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit26.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %.val.i.i, %_ZNKSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !79, !alias.scope !166
  %i.t = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit26.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !170

_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i27.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit26.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.val.i.i) #19
  br label %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i

_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit26.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !165
  store ptr %i.v, ptr %i.a, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !164
  br label %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit

_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i
  %.val = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i ] ; 3 uses
  %.val3 = phi ptr [ %.val3.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i ] ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %.val, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %.sroa.412.0..sroa.0.0..val3.sroa_idx.i = getelementptr inbounds i8, ptr %.val, i64 -8
  %.sroa.412.0.copyload.i = load double, ptr %.sroa.412.0..sroa.0.0..val3.sroa_idx.i, align 8, !tbaa !74 ; 2 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = ptrtoint ptr %.val3 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ad = icmp sgt i64 %i.aa, 24
  br i1 %i.ad, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEvT_SO_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit, %bb.f
  %.06.i.i = phi i64 [ %.097.i.i, %bb.f ], [ %i.ac, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit ] ; 4 uses
  %.097.in.i.i = add nsw i64 %.06.i.i, -1
  %.097.i.i = sdiv i64 %.097.in.i.i, 2            ; 3 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val3, i64 %.097.i.i ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %.val2.i.i.i = load double, ptr %i.af, align 8, !tbaa !75
  %i.ag = fcmp ogt double %.val2.i.i.i, %.sroa.412.0.copyload.i
  br i1 %i.ag, label %bb.f, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEvT_SO_T0_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val3, i64 %.06.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !tbaa.struct !79
  %i.ai = icmp sgt i64 %.06.i.i, 2
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEvT_SO_T0_.exit, !llvm.loop !82

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEvT_SO_T0_.exit: ; preds = %.lr.ph.i.i, %bb.f, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ac, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit ], [ %.097.i.i, %bb.f ], [ %.06.i.i, %.lr.ph.i.i ]
  %i.aj = getelementptr inbounds [24 x i8], ptr %.val3, i64 %.0.lcssa.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.i, i64 16, i1 false), !tbaa.struct !79
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store double %.sroa.412.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 24, ptr %i.a, align 8, !tbaa !118
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91
  %i.d = load i64, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.7, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !172
  %i.f = load ptr, ptr %2, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !38
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.a = load ptr, ptr %1, align 8, !tbaa !91, !noalias !173
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !172, !noalias !173 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !171, !alias.scope !176
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !172, !alias.scope !176
  store i8 0, ptr %i.d, align 8, !tbaa !89, !alias.scope !176
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !172, !alias.scope !176
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !172, !alias.scope !176
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !91, !alias.scope !176 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !172, !noalias !179 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !172, !noalias !179
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !91, !noalias !179
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !171, !alias.scope !179
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !91   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !172 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !91, !alias.scope !179
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !89
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !89, !alias.scope !179
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !172
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !172, !alias.scope !179
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !91
  store i64 0, ptr %i.ai, align 8, !tbaa !172
  store i8 0, ptr %i.aa, align 8, !tbaa !89
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !91    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
end_hunk_1
