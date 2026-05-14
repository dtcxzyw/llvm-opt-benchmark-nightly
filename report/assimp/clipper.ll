inline.NumInlined: 2352
inline.NumDeleted: 743
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.ClipperLib::Int128" = type { i64, i64 }
%"struct.ClipperLib::IntPoint" = type { i64, i64 }
%"struct.ClipperLib::IntRect" = type { i64, i64, i64, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ClipperLib::IntPoint, std::allocator<ClipperLib::IntPoint>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::IntPoint, std::allocator<ClipperLib::IntPoint>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::IntPoint, std::allocator<ClipperLib::IntPoint>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::IntPoint, std::allocator<ClipperLib::IntPoint>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<long long, std::allocator<long long>>::_List_impl" }
%"struct.std::__cxx11::_List_base<long long, std::allocator<long long>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"struct.std::__detail::_Scratch_list" = type { %"struct.std::__detail::_List_node_base" }
%"class.ClipperLib::Clipper" = type <{ ptr, %"class.std::vector.33", %"class.std::vector.33", %"class.std::vector.38", i32, [4 x i8], %"class.std::__cxx11::list", ptr, i8, [3 x i8], i32, i32, i8, i8, i8, i8, %"class.ClipperLib::ClipperBase" }>
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<ClipperLib::Join *, std::allocator<ClipperLib::Join *>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::Join *, std::allocator<ClipperLib::Join *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::Join *, std::allocator<ClipperLib::Join *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::Join *, std::allocator<ClipperLib::Join *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.38" = type { %"struct.std::_Vector_base.39" }
%"struct.std::_Vector_base.39" = type { %"struct.std::_Vector_base<ClipperLib::IntersectNode *, std::allocator<ClipperLib::IntersectNode *>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::IntersectNode *, std::allocator<ClipperLib::IntersectNode *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::IntersectNode *, std::allocator<ClipperLib::IntersectNode *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::IntersectNode *, std::allocator<ClipperLib::IntersectNode *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.ClipperLib::ClipperBase" = type { ptr, %"class.__gnu_cxx::__normal_iterator", %"class.std::vector.5", i8, %"class.std::vector.10", i8, i8, %"class.std::vector.15", ptr, %"class.std::priority_queue" }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<ClipperLib::LocalMinimum, std::allocator<ClipperLib::LocalMinimum>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::LocalMinimum, std::allocator<ClipperLib::LocalMinimum>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::LocalMinimum, std::allocator<ClipperLib::LocalMinimum>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::LocalMinimum, std::allocator<ClipperLib::LocalMinimum>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<ClipperLib::TEdge *, std::allocator<ClipperLib::TEdge *>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::TEdge *, std::allocator<ClipperLib::TEdge *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::TEdge *, std::allocator<ClipperLib::TEdge *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::TEdge *, std::allocator<ClipperLib::TEdge *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<ClipperLib::OutRec *, std::allocator<ClipperLib::OutRec *>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::OutRec *, std::allocator<ClipperLib::OutRec *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::OutRec *, std::allocator<ClipperLib::OutRec *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::OutRec *, std::allocator<ClipperLib::OutRec *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::priority_queue" = type <{ %"class.std::vector.20", [8 x i8] }>
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl" }
%"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<std::vector<ClipperLib::IntPoint>, std::allocator<std::vector<ClipperLib::IntPoint>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<ClipperLib::IntPoint>, std::allocator<std::vector<ClipperLib::IntPoint>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<ClipperLib::IntPoint>, std::allocator<std::vector<ClipperLib::IntPoint>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<ClipperLib::IntPoint>, std::allocator<std::vector<ClipperLib::IntPoint>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ClipperLib::LocalMinimum" = type { i64, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.68" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN10ClipperLib16clipperExceptionC2EPKc = comdat any

$_ZN10ClipperLib16clipperExceptionD2Ev = comdat any

$_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE4pushERKx = comdat any

$_ZNSt7__cxx114listIxSaIxEE4sortEv = comdat any

$_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev = comdat any

$_ZN10ClipperLib8PolyNodeD2Ev = comdat any

$_ZN10ClipperLib7ClipperD1Ev = comdat any

$_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSERKS3_ = comdat any

$_ZN10ClipperLib7ClipperD0Ev = comdat any

$_ZTv0_n24_N10ClipperLib7ClipperD1Ev = comdat any

$_ZTv0_n24_N10ClipperLib7ClipperD0Ev = comdat any

$_ZN10ClipperLib8PolyNodeD0Ev = comdat any

$_ZN10ClipperLib16clipperExceptionD0Ev = comdat any

$_ZNK10ClipperLib16clipperException4whatEv = comdat any

$_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_ = comdat any

$_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_default_appendEm = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_T1_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_RT0_ = comdat any

$_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_default_appendEm = comdat any

$_ZTVN10ClipperLib8PolyNodeE = comdat any

$_ZTIN10ClipperLib16clipperExceptionE = comdat any

$_ZTSN10ClipperLib16clipperExceptionE = comdat any

$_ZTIN10ClipperLib8PolyNodeE = comdat any

$_ZTSN10ClipperLib8PolyNodeE = comdat any

$_ZTVN10ClipperLib16clipperExceptionE = comdat any

@_ZTVN10ClipperLib8PolyNodeE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN10ClipperLib8PolyNodeE, ptr @_ZN10ClipperLib8PolyNodeD2Ev, ptr @_ZN10ClipperLib8PolyNodeD0Ev] }, comdat, align 8
@_ZTVN10ClipperLib11ClipperBaseE = hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN10ClipperLib11ClipperBaseE, ptr @_ZN10ClipperLib11ClipperBaseD2Ev, ptr @_ZN10ClipperLib11ClipperBaseD0Ev, ptr @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb, ptr @_ZN10ClipperLib11ClipperBase5ClearEv, ptr @_ZN10ClipperLib11ClipperBase5ResetEv] }, align 8
@.str = private unnamed_addr constant [33 x i8] c"Coordinate outside allowed range\00", align 1
@_ZTIN10ClipperLib16clipperExceptionE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10ClipperLib16clipperExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN10ClipperLib16clipperExceptionE = linkonce_odr hidden constant [33 x i8] c"N10ClipperLib16clipperExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.1 = private unnamed_addr constant [37 x i8] c"AddPath: Open paths must be subject.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"UpdateEdgeIntoAEL: invalid call\00", align 1
@_ZTVN10ClipperLib7ClipperE = hidden unnamed_addr constant { [6 x ptr], [11 x ptr] } { [6 x ptr] [ptr inttoptr (i64 136 to ptr), ptr null, ptr @_ZTIN10ClipperLib7ClipperE, ptr @_ZN10ClipperLib7Clipper15ExecuteInternalEv, ptr @_ZN10ClipperLib7ClipperD1Ev, ptr @_ZN10ClipperLib7ClipperD0Ev], [11 x ptr] [ptr null, ptr null, ptr null, ptr inttoptr (i64 -136 to ptr), ptr inttoptr (i64 -136 to ptr), ptr @_ZTIN10ClipperLib7ClipperE, ptr @_ZTv0_n24_N10ClipperLib7ClipperD1Ev, ptr @_ZTv0_n24_N10ClipperLib7ClipperD0Ev, ptr @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb, ptr @_ZN10ClipperLib11ClipperBase5ClearEv, ptr @_ZN10ClipperLib11ClipperBase5ResetEv] }, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"Error: PolyTree struct is needed for open path clipping.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ProcessIntersections error\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"DoMaxima error\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"), \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTIN10ClipperLib11ClipperBaseE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10ClipperLib11ClipperBaseE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN10ClipperLib11ClipperBaseE = hidden constant [28 x i8] c"N10ClipperLib11ClipperBaseE\00", align 1
@_ZTTN10ClipperLib7ClipperE = hidden unnamed_addr constant [2 x ptr] [ptr getelementptr inbounds inrange(-24, 24) ({ [6 x ptr], [11 x ptr] }, ptr @_ZTVN10ClipperLib7ClipperE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-48, 40) ({ [6 x ptr], [11 x ptr] }, ptr @_ZTVN10ClipperLib7ClipperE, i32 0, i32 1, i32 6)], align 8
@_ZTIN10ClipperLib7ClipperE = hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN10ClipperLib7ClipperE, i32 0, i32 1, ptr @_ZTIN10ClipperLib11ClipperBaseE, i64 -6141 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN10ClipperLib7ClipperE = hidden constant [23 x i8] c"N10ClipperLib7ClipperE\00", align 1
@_ZTIN10ClipperLib8PolyNodeE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10ClipperLib8PolyNodeE }, comdat, align 8
@_ZTSN10ClipperLib8PolyNodeE = linkonce_odr hidden constant [24 x i8] c"N10ClipperLib8PolyNodeE\00", comdat, align 1
@_ZTVN10ClipperLib16clipperExceptionE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN10ClipperLib16clipperExceptionE, ptr @_ZN10ClipperLib16clipperExceptionD2Ev, ptr @_ZN10ClipperLib16clipperExceptionD0Ev, ptr @_ZNK10ClipperLib16clipperException4whatEv] }, comdat, align 8
@.str.12 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

@_ZN10ClipperLib8PolyNodeC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ClipperLib8PolyNodeC2Ev
@_ZN10ClipperLib11ClipperBaseC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ClipperLib11ClipperBaseC2Ev
@_ZN10ClipperLib11ClipperBaseD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ClipperLib11ClipperBaseD2Ev
@_ZN10ClipperLib13ClipperOffsetC1Edd = hidden unnamed_addr alias void (ptr, double, double), ptr @_ZN10ClipperLib13ClipperOffsetC2Edd
@_ZN10ClipperLib13ClipperOffsetD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ClipperLib13ClipperOffsetD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ClipperLib8PolyTree5ClearEv(ptr noundef nonnull align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.e = icmp eq ptr %i.s, %i.r
  br i1 %i.e, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.r, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i4, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit6, label %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5

_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit
  store ptr %i.i, ptr %i.g, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit6

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit6: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit, %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.j = phi ptr [ %i.r, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.s, %bb.c ], [ %i.c, %bb.a ]
  %.010 = phi i64 [ %i.t, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.010
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.m) #30
  %.pre = load ptr, ptr %i.b, align 8
  %.pre14 = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.r = phi ptr [ %i.j, %.lr.ph ], [ %.pre14, %bb.b ] ; 4 uses
  %i.s = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %i.t = add nuw i64 %.010, 1                     ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = icmp ult i64 %i.t, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK10ClipperLib8PolyTree8GetFirstEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK10ClipperLib8PolyTree5TotalEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
end_hunk_0
begin_hunk_1_@_ZN10ClipperLib14IntersectPointERNS_5TEdgeES1_RNS_8IntPointE:bb.a
  br i1 %i.dt, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  store i64 %i.ds, ptr %i.cg, align 8
  %i.du = load double, ptr %i.a, align 8          ; 2 uses
  %i.dv = tail call double @llvm.fabs.f64(double %i.du)
  %i.dw = load double, ptr %i.c, align 8          ; 2 uses
  %i.dx = tail call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp ogt double %i.dv, %i.dx
  br i1 %i.dy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.dz = load i64, ptr %i.ck, align 8
  %i.ea = icmp eq i64 %i.ds, %i.dz
  br i1 %i.ea, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ec = load i64, ptr %i.eb, align 8
  br label %.sink.split130

bb.z:                                             ; preds = %bb.x
  %i.ed = load i64, ptr %1, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = sub nsw i64 %i.ds, %i.ef
  %i.eh = sitofp i64 %i.eg to double
  %i.ei = fmul double %i.dw, %i.eh                ; 2 uses
  %i.ej = fcmp olt double %i.ei, 0.000000e+00
  %.0.in.v.i.i113 = select i1 %i.ej, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i114 = fadd double %i.ei, %.0.in.v.i.i113
  %.0.i.i115 = fptosi double %.0.in.i.i114 to i64
  %i.ek = add nsw i64 %i.ed, %.0.i.i115
  br label %.sink.split130

bb.aa:                                            ; preds = %bb.w
  %i.el = load i64, ptr %i.ch, align 8
  %i.em = icmp eq i64 %i.ds, %i.el
  br i1 %i.em, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eo = load i64, ptr %i.en, align 8
  br label %.sink.split130

bb.ac:                                            ; preds = %bb.aa
  %i.ep = load i64, ptr %0, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = sub nsw i64 %i.ds, %i.er
  %i.et = sitofp i64 %i.es to double
  %i.eu = fmul double %i.du, %i.et                ; 2 uses
  %i.ev = fcmp olt double %i.eu, 0.000000e+00
  %.0.in.v.i.i117 = select i1 %i.ev, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i118 = fadd double %i.eu, %.0.in.v.i.i117
  %.0.i.i119 = fptosi double %.0.in.i.i118 to i64
  %i.ew = add nsw i64 %i.ep, %.0.i.i119
  br label %.sink.split130

.sink.split130:                                   ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.d, %bb.c
  %.sink131 = phi i64 [ %i.ek, %bb.z ], [ %i.v, %bb.d ], [ %i.m, %bb.c ], [ %i.ec, %bb.y ], [ %i.eo, %bb.ab ], [ %i.ew, %bb.ac ]
  store i64 %.sink131, ptr %2, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split130, %bb.v
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE(ptr noundef captures(address) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.b, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.a, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.not11 = icmp eq ptr %i.b, %0
  br i1 %.not11, label %.loopexit, label %.preheader, !llvm.loop !14

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ClipperLib13DisposeOutPtsERPNS_5OutPtE(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.g = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %0, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 40) #33
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib9InitEdge2ERNS_5TEdgeENS_8PolyTypeE(ptr noundef nonnull align 8 captures(none) dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %.not = icmp slt i64 %i.c, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %_ZN10ClipperLib5SetDxERNS_5TEdgeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sub nsw i64 %i.m, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = load i64, ptr %0, align 8
  %i.u = sub nsw i64 %i.s, %i.t
  %i.v = sitofp i64 %i.u to double
  %i.w = sitofp i64 %i.q to double
  %i.x = fdiv double %i.v, %i.w
  br label %_ZN10ClipperLib5SetDxERNS_5TEdgeE.exit

_ZN10ClipperLib5SetDxERNS_5TEdgeE.exit:           ; preds = %bb.d, %bb.e
  %.sink.i = phi double [ %i.x, %bb.e ], [ -1.000000e+40, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sink.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.z, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10ClipperLib10RemoveEdgeEPNS_5TEdgeE(ptr noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.b, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.f, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.a, align 8
  store ptr null, ptr %i.c, align 8
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10ClipperLib10SwapPointsERNS_8IntPointES1_(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib17GetOverlapSegmentENS_8IntPointES0_S0_S0_RS0_S1_(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef byval(%"struct.ClipperLib::IntPoint") align 8 captures(none) %6, ptr noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %7, ptr noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %8) local_unnamed_addr #8 {
bb.a:
  %i.a = sub nsw i64 %0, %2
  %i.b = tail call noundef i64 @llvm.abs.i64(i64 %i.a, i1 true)
  %i.c = sub nsw i64 %1, %3
  %i.d = tail call noundef i64 @llvm.abs.i64(i64 %i.c, i1 true)
  %i.e = icmp samesign ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %0, %2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.1056.0 = phi i64 [ %3, %bb.c ], [ %1, %bb.b ]
  %.sroa.050.0 = phi i64 [ %2, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %1, %bb.c ], [ %3, %bb.b ]
  %.sroa.030.0 = phi i64 [ %0, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %i.g = load i64, ptr %6, align 8                ; 3 uses
  %i.h = icmp sgt i64 %4, %i.g
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.9.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.9.0.copyload24 = load i64, ptr %.sroa.9.0..sroa_idx23, align 8
  store i64 %4, ptr %6, align 8
  store i64 %5, ptr %.sroa.9.0..sroa_idx23, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi i64 [ %4, %bb.e ], [ %i.g, %bb.d ]
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload24, %bb.e ], [ %5, %bb.d ]
  %.sroa.0.0 = phi i64 [ %i.g, %bb.e ], [ %4, %bb.d ] ; 2 uses
  %i.j = icmp sgt i64 %.sroa.050.0, %.sroa.0.0
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.sroa.050.0, i64 %.sroa.0.0)
  %spec.select88 = select i1 %i.j, i64 %.sroa.1056.0, i64 %.sroa.9.0
  store i64 %spec.select, ptr %7, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %spec.select88, ptr %i.k, align 8
  %i.l = icmp slt i64 %.sroa.030.0, %i.i
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %.sroa.030.0, ptr %8, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %.pre72 = load i64, ptr %8, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = phi i64 [ %.pre72, %bb.h ], [ %.sroa.030.0, %bb.g ]
  %i.n = load i64, ptr %7, align 8
  %i.o = icmp slt i64 %i.n, %i.m
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.p = icmp slt i64 %1, %3
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.1056.1 = phi i64 [ %3, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.sroa.050.1 = phi i64 [ %2, %bb.k ], [ %0, %bb.j ]
  %.sroa.10.1 = phi i64 [ %1, %bb.k ], [ %3, %bb.j ] ; 3 uses
  %.sroa.030.1 = phi i64 [ %0, %bb.k ], [ %2, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp slt i64 %5, %i.r
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload18 = load i64, ptr %6, align 8
  store i64 %4, ptr %6, align 8
  store i64 %5, ptr %i.q, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.t = phi i64 [ %5, %bb.m ], [ %i.r, %bb.l ]
  %.sroa.9.1 = phi i64 [ %i.r, %bb.m ], [ %5, %bb.l ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.copyload18, %bb.m ], [ %4, %bb.l ]
  %i.u = icmp slt i64 %.sroa.1056.1, %.sroa.9.1
  %spec.select89 = select i1 %i.u, i64 %.sroa.050.1, i64 %.sroa.0.1
  %spec.select90 = tail call i64 @llvm.smin.i64(i64 %.sroa.1056.1, i64 %.sroa.9.1)
  store i64 %spec.select89, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %spec.select90, ptr %i.v, align 8
  %i.w = icmp sgt i64 %.sroa.10.1, %i.t
  %.sroa.10.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.030.1, ptr %8, align 8
  store i64 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx38, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %.pre = load i64, ptr %.sroa.10.0..sroa_idx38, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.x = phi i64 [ %.pre, %bb.p ], [ %.sroa.10.1, %bb.o ]
  %i.y = load i64, ptr %i.v, align 8
  %i.z = icmp sgt i64 %i.y, %i.x
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.0 = phi i1 [ %i.o, %bb.i ], [ %i.z, %bb.q ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib15FirstIsBottomPtEPKNS_5OutPtES2_(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn52 = phi ptr [ %0, %bb.a ], [ %.048, %bb.b ]
  %.048.in = getelementptr inbounds nuw i8, ptr %.pn52, i64 32
  %.048 = load ptr, ptr %.048.in, align 8         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %.048, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d                   ; 2 uses
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  %i.l = icmp ne ptr %.048, %0
  %i.m = and i1 %i.l, %i.k
  br i1 %i.m, label %bb.b, label %bb.c, !llvm.loop !16

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sub nsw i64 %i.f, %i.b
  %i.o = sitofp i64 %i.n to double
  %i.p = sub nsw i64 %i.i, %i.d
  %i.q = sitofp i64 %i.p to double
  %i.r = fdiv double %i.o, %i.q
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  br label %_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit

_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit:      ; preds = %bb.c, %bb.d
  %i.t = phi double [ %i.s, %bb.d ], [ 1.000000e+40, %bb.c ] ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit
  %.pn51 = phi ptr [ %0, %_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit ], [ %.1, %bb.e ]
  %.1.in = getelementptr inbounds nuw i8, ptr %.pn51, i64 24
  %.1 = load ptr, ptr %.1.in, align 8             ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.b
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.d                   ; 2 uses
  %i.aa = select i1 %i.w, i1 %i.z, i1 false
  %i.ab = icmp ne ptr %.1, %0
  %i.ac = and i1 %i.ab, %i.aa
  br i1 %i.ac, label %bb.e, label %bb.f, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  br i1 %i.z, label %_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit54, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = sub nsw i64 %i.v, %i.b
  %i.ae = sitofp i64 %i.ad to double
  %i.af = sub nsw i64 %i.y, %i.d
  %i.ag = sitofp i64 %i.af to double
  %i.ah = fdiv double %i.ae, %i.ag
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah)
  br label %_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit54

_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit54:    ; preds = %bb.f, %bb.g
  %i.aj = phi double [ %i.ai, %bb.g ], [ 1.000000e+40, %bb.f ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8            ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i64, ptr %i.am, align 8            ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN10ClipperLib5GetDxENS_8IntPointES0_.exit54
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx114listIxSaIxEE4sortEv:bb.a
  store ptr %.ptr.54, ptr %.ptr.54, align 16
  %.ptr.55 = getelementptr inbounds nuw i8, ptr %2, i64 880 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 888
  store ptr %.ptr.55, ptr %i.bg, align 8
  store ptr %.ptr.55, ptr %.ptr.55, align 16
  %.ptr.56 = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 904
  store ptr %.ptr.56, ptr %i.bh, align 8
  store ptr %.ptr.56, ptr %.ptr.56, align 16
  %.ptr.57 = getelementptr inbounds nuw i8, ptr %2, i64 912 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 920
  store ptr %.ptr.57, ptr %i.bi, align 8
  store ptr %.ptr.57, ptr %.ptr.57, align 16
  %.ptr.58 = getelementptr inbounds nuw i8, ptr %2, i64 928 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 936
  store ptr %.ptr.58, ptr %i.bj, align 8
  store ptr %.ptr.58, ptr %.ptr.58, align 16
  %.ptr.59 = getelementptr inbounds nuw i8, ptr %2, i64 944 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 952
  store ptr %.ptr.59, ptr %i.bk, align 8
  store ptr %.ptr.59, ptr %.ptr.59, align 16
  %.ptr.60 = getelementptr inbounds nuw i8, ptr %2, i64 960 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 968
  store ptr %.ptr.60, ptr %i.bl, align 8
  store ptr %.ptr.60, ptr %.ptr.60, align 16
  %.ptr.61 = getelementptr inbounds nuw i8, ptr %2, i64 976 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 984
  store ptr %.ptr.61, ptr %i.bm, align 8
  store ptr %.ptr.61, ptr %.ptr.61, align 16
  %.ptr.62 = getelementptr inbounds nuw i8, ptr %2, i64 992 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1000
  store ptr %.ptr.62, ptr %i.bn, align 8
  store ptr %.ptr.62, ptr %.ptr.62, align 16
  %.ptr.63 = getelementptr inbounds nuw i8, ptr %2, i64 1008 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1016
  store ptr %.ptr.63, ptr %i.bo, align 8
  store ptr %.ptr.63, ptr %.ptr.63, align 16
  %.pre = load ptr, ptr %0, align 8
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.preheader, %.critedge
  %i.bp = phi ptr [ %i.cf, %.critedge ], [ %.pre, %.preheader47.preheader ] ; 2 uses
  %.0.idx = phi i64 [ %.0.add, %.critedge ], [ 0, %.preheader47.preheader ] ; 3 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.0.idx ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bp, ptr noundef %i.bq) #30
  %.not3249 = icmp samesign eq i64 %.0.idx, 0
  br i1 %.not3249, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader47, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit
  %.02550 = phi ptr [ %i.ce, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit ], [ %2, %.preheader47 ] ; 7 uses
  %i.br = load ptr, ptr %.02550, align 8          ; 2 uses
  %i.bs = icmp eq ptr %i.br, %.02550
  br i1 %i.bs, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bt = load ptr, ptr %1, align 8               ; 2 uses
  %.not46 = icmp eq ptr %i.bt, %1
  br i1 %.not46, label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.023.i = phi ptr [ %.1.i, %bb.f ], [ %i.br, %bb.c ] ; 4 uses
  %.01922.i = phi ptr [ %.120.i, %bb.f ], [ %i.bt, %bb.c ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01922.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.023.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp slt i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bz = load ptr, ptr %.01922.i, align 8        ; 2 uses
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %.023.i, ptr noundef nonnull %.01922.i, ptr noundef %i.bz) #30
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ca = load ptr, ptr %.023.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.120.i = phi ptr [ %i.bz, %bb.d ], [ %.01922.i, %bb.e ] ; 3 uses
  %.1.i = phi ptr [ %.023.i, %bb.d ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cb = icmp ne ptr %.1.i, %.02550
  %i.cc = icmp ne ptr %.120.i, %1                 ; 2 uses
  %i.cd = and i1 %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !143

._crit_edge.i:                                    ; preds = %bb.f
  br i1 %i.cc, label %bb.g, label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit

bb.g:                                             ; preds = %._crit_edge.i
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %.02550, ptr noundef %.120.i, ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  br label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit

_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit: ; preds = %bb.c, %bb.g, %._crit_edge.i
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.02550) #30
  %i.ce = getelementptr inbounds nuw i8, ptr %.02550, i64 16 ; 2 uses
  %.not32 = icmp eq ptr %i.ce, %.0.ptr
  br i1 %.not32, label %.critedge, label %.lr.ph, !llvm.loop !144

.critedge:                                        ; preds = %.lr.ph, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit, %.preheader47
  %.025.lcssa = phi ptr [ %2, %.preheader47 ], [ %.0.ptr, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit ], [ %.02550, %.lr.ph ]
  %.not32.lcssa = phi i64 [ 0, %.preheader47 ], [ 0, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit ], [ -16, %.lr.ph ]
  %spec.select.idx = phi i64 [ 16, %.preheader47 ], [ 16, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit ], [ 0, %.lr.ph ]
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.025.lcssa) #30
  %.0.add = add nuw nsw i64 %.0.idx, %spec.select.idx ; 3 uses
  %i.cf = load ptr, ptr %0, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %0
  br i1 %i.cg, label %.preheader, label %.preheader47, !llvm.loop !145

.preheader:                                       ; preds = %.critedge
  %spec.select.ptr.le = getelementptr inbounds nuw i8, ptr %2, i64 %.0.add
  %.not3359 = icmp eq i64 %.0.add, 16
  br i1 %.not3359, label %._crit_edge, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit42
  %.12661 = phi ptr [ %.126, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit42 ], [ %.ptr.1, %.preheader ] ; 6 uses
  %.pn60 = phi ptr [ %.12661, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit42 ], [ %2, %.preheader ] ; 4 uses
  %i.ch = load ptr, ptr %.12661, align 8          ; 2 uses
  %i.ci = load ptr, ptr %.pn60, align 8           ; 3 uses
  %i.cj = icmp ne ptr %i.ch, %.12661
  %i.ck = icmp ne ptr %i.ci, %.pn60               ; 2 uses
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.lr.ph.i37, label %._crit_edge.i34

.lr.ph.i37:                                       ; preds = %.lr.ph62, %bb.j
  %.023.i38 = phi ptr [ %.1.i41, %bb.j ], [ %i.ch, %.lr.ph62 ] ; 4 uses
  %.01922.i39 = phi ptr [ %.120.i40, %bb.j ], [ %i.ci, %.lr.ph62 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01922.i39, i64 16
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.023.i38, i64 16
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = icmp slt i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i37
  %i.cr = load ptr, ptr %.01922.i39, align 8      ; 2 uses
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %.023.i38, ptr noundef nonnull %.01922.i39, ptr noundef %i.cr) #30
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i37
  %i.cs = load ptr, ptr %.023.i38, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.120.i40 = phi ptr [ %i.cr, %bb.h ], [ %.01922.i39, %bb.i ] ; 3 uses
  %.1.i41 = phi ptr [ %.023.i38, %bb.h ], [ %i.cs, %bb.i ] ; 2 uses
  %i.ct = icmp ne ptr %.1.i41, %.12661
  %i.cu = icmp ne ptr %.120.i40, %.pn60           ; 2 uses
  %i.cv = and i1 %i.cu, %i.ct
  br i1 %i.cv, label %.lr.ph.i37, label %._crit_edge.i34, !llvm.loop !143

._crit_edge.i34:                                  ; preds = %bb.j, %.lr.ph62
  %.019.lcssa.i35 = phi ptr [ %i.ci, %.lr.ph62 ], [ %.120.i40, %bb.j ]
  %.lcssa.i36 = phi i1 [ %i.ck, %.lr.ph62 ], [ %i.cu, %bb.j ]
  br i1 %.lcssa.i36, label %bb.k, label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit42

bb.k:                                             ; preds = %._crit_edge.i34
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %.12661, ptr noundef %.019.lcssa.i35, ptr noundef nonnull align 8 dereferenceable(16) %.pn60) #30
  br label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit42

_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit42: ; preds = %._crit_edge.i34, %bb.k
  %.126 = getelementptr inbounds nuw i8, ptr %.12661, i64 16 ; 2 uses
  %.not33 = icmp eq ptr %.126, %spec.select.ptr.le
  br i1 %.not33, label %._crit_edge, label %.lr.ph62

._crit_edge:                                      ; preds = %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIxEvEEEEvRNS_15_List_node_baseET_.exit42, %.preheader
  %spec.select.sroa.sel = getelementptr inbounds i8, ptr %.0.ptr, i64 %.not32.lcssa
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %spec.select.sroa.sel, ptr noundef nonnull align 8 dereferenceable(16) %0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -2147483647, -2147483648) i32 @_ZN10ClipperLib10PointCountEPNS_5OutPtE(ptr noundef readonly captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.07 = phi i32 [ %i.a, %.preheader ], [ 0, %bb.a ]
  %.0 = phi ptr [ %i.c, %.preheader ], [ %0, %bb.a ]
  %i.a = add nuw nsw i32 %.07, 1                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.c, %0
  br i1 %.not10, label %.loopexit, label %.preheader, !llvm.loop !59

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10ClipperLib18SwapIntersectNodesERNS_13IntersectNodeES1_(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load <2 x ptr>, ptr %0, align 8
  store ptr %i.a, ptr %0, align 8
  %i.e = load ptr, ptr %i.b, align 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store <2 x ptr> %i.d, ptr %1, align 8
  store <16 x i8> %.sroa.5.sroa.0.0.copyload, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib10GetOverlapExxxxRxS0_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i64 %0, %1
  %i.b = icmp slt i64 %2, %3                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated51 = tail call i64 @llvm.smax.i64(i64 %0, i64 %2)
  store i64 %.sroa.speculated51, ptr %4, align 8
  %.sroa.speculated28 = tail call i64 @llvm.smin.i64(i64 %3, i64 %1)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.sroa.speculated25 = tail call i64 @llvm.smax.i64(i64 %0, i64 %3)
  store i64 %.sroa.speculated25, ptr %4, align 8
  %.sroa.speculated48 = tail call i64 @llvm.smin.i64(i64 %2, i64 %1)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %1, i64 %2)
  store i64 %.sroa.speculated45, ptr %4, align 8
  %.sroa.speculated22 = tail call i64 @llvm.smin.i64(i64 %3, i64 %0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %1, i64 %3)
  store i64 %.sroa.speculated, ptr %4, align 8
  %.sroa.speculated42 = tail call i64 @llvm.smin.i64(i64 %2, i64 %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.sroa.speculated22.sink = phi i64 [ %.sroa.speculated22, %bb.f ], [ %.sroa.speculated42, %bb.g ], [ %.sroa.speculated28, %bb.c ], [ %.sroa.speculated48, %bb.d ] ; 2 uses
  store i64 %.sroa.speculated22.sink, ptr %5, align 8
  %i.c = load i64, ptr %4, align 8
  %i.d = icmp slt i64 %i.c, %.sroa.speculated22.sink
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10ClipperLib8DupOutPtEPNS_5OutPtEb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = load i32, ptr %0, align 8
  store i32 %i.d, ptr %i.a, align 8
  %. = select i1 %1, i64 24, i64 32               ; 2 uses
  %.33 = select i1 %1, i64 32, i64 24             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.33
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.33
  store ptr %i.a, ptr %i.i, align 8
  store ptr %i.a, ptr %i.e, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib8JoinHorzEPNS_5OutPtES1_S1_S1_NS_8IntPointEb(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef readonly captures(none) %3, i64 %4, i64 %5, i1 noundef zeroext %6) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp sle i64 %i.b, %i.d                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp sle i64 %i.g, %i.i                  ; 2 uses
  %i.k = xor i1 %i.e, %i.j                        ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %.preheader165, label %.preheader166

.preheader165:                                    ; preds = %bb.b, %bb.d
  %.092 = phi ptr [ %i.m, %bb.d ], [ %0, %bb.b ]  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.092, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.not108 = icmp sgt i64 %i.o, %4
  br i1 %.not108, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader165
  %i.p = getelementptr inbounds nuw i8, ptr %.092, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %.not109 = icmp slt i64 %i.o, %i.q
  br i1 %.not109, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, %5
  br i1 %i.t, label %.preheader165, label %.critedge, !llvm.loop !146

.critedge:                                        ; preds = %bb.c, %.preheader165, %bb.d
  br i1 %6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %.092, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %.not110 = icmp eq i64 %i.v, %4
  %spec.select = select i1 %.not110, ptr %.092, ptr %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.33.i = phi i64 [ 32, %.critedge ], [ 24, %bb.e ] ; 4 uses
  %..i = phi i64 [ 24, %.critedge ], [ 32, %bb.e ] ; 3 uses
  %.1 = phi ptr [ %.092, %.critedge ], [ %spec.select, %bb.e ] ; 5 uses
  %i.w = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.z = load i32, ptr %.1, align 8
  store i32 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 %..i ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %..i ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %.33.i
  store ptr %.1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.33.i
  store ptr %i.w, ptr %i.ae, align 8
  store ptr %i.w, ptr %i.aa, align 8
  %i.af = load i64, ptr %i.x, align 8
  %.not.i = icmp ne i64 %i.af, %4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp ne i64 %i.ah, %5
  %i.aj = select i1 %.not.i, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  store i64 %4, ptr %i.x, align 8
  store i64 %5, ptr %i.ag, align 8
  %i.ak = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.am = load i32, ptr %i.w, align 8
  store i32 %i.am, ptr %i.ak, align 8
  %i.an = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %..i
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.33.i
  store ptr %i.w, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.33.i
  store ptr %i.ak, ptr %i.aq, align 8
  store ptr %i.ak, ptr %i.ac, align 8
  br label %bb.m

.preheader166:                                    ; preds = %bb.b, %bb.i
  %.2 = phi ptr [ %i.as, %bb.i ], [ %0, %bb.b ]   ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.as = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %.not = icmp slt i64 %i.au, %4
  br i1 %.not, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %.preheader166
  %i.av = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %.not106 = icmp sgt i64 %i.au, %i.aw
  br i1 %.not106, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.ay, %5
  br i1 %i.az, label %.preheader166, label %.critedge2, !llvm.loop !147

.critedge2:                                       ; preds = %bb.h, %.preheader166, %bb.i
  br i1 %6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge2
  %i.ba = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %.not107 = icmp eq i64 %i.bb, %4
  %spec.select161 = select i1 %.not107, ptr %.2, ptr %i.as
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge2
  %.33.i120 = phi i64 [ 32, %.critedge2 ], [ 24, %bb.j ] ; 4 uses
  %..i119 = phi i64 [ 24, %.critedge2 ], [ 32, %bb.j ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN10ClipperLib13ClipperOffset7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8JoinTypeENS_7EndTypeE:bb.a
  %i.cf = icmp eq i64 %i.bz, %i.cd
  br i1 %i.cf, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cg = load i64, ptr %i.bx, align 8
  %i.ch = load i64, ptr %i.cb, align 8
  %i.ci = icmp slt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit88
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k, %bb.j, %bb.i
  %i.cj = phi ptr [ %i.bv, %bb.k ], [ %i.bv, %bb.j ], [ %i.bv, %bb.i ], [ %i.am, %.lr.ph ]
  %i.ck = phi ptr [ %i.bw, %bb.k ], [ %i.bw, %bb.j ], [ %i.bw, %bb.i ], [ %i.an, %.lr.ph ]
  %i.cl = phi ptr [ %i.bu, %bb.k ], [ %i.bu, %bb.j ], [ %i.bu, %bb.i ], [ %i.ao, %.lr.ph ]
  %.167 = phi i32 [ %i.ba, %bb.k ], [ %i.ba, %bb.j ], [ %i.ba, %bb.i ], [ %.066102, %.lr.ph ] ; 2 uses
  %.165 = phi i32 [ %i.ba, %bb.k ], [ %.064103, %bb.j ], [ %.064103, %bb.i ], [ %.064103, %.lr.ph ] ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next109, %i.ad
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !168

bb.m:                                             ; preds = %._crit_edge
  %i.cm = load ptr, ptr %i.k, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.k) #30
  br label %bb.z

bb.n:                                             ; preds = %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = load ptr, ptr %i.cq, align 8            ; 4 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = ashr exact i64 %i.cw, 3                 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not.i.i.i89 = icmp eq ptr %i.cs, %i.cz
  br i1 %.not.i.i.i89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.k, ptr %i.cs, align 8
  %i.da = load ptr, ptr %i.cr, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.cr, align 8
  br label %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit

bb.p:                                             ; preds = %bb.n
  %i.dc = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.dc, label %bb.q, label %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cx ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.cx
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i.i.i90 = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i90)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #32 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.cw ; 2 uses
  store ptr %i.k, ptr %i.dj, align 8
  %i.dk = icmp sgt i64 %i.cw, 0
  br i1 %i.dk, label %bb.r, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #33
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.di, ptr %i.cq, align 8
  store ptr %i.dl, ptr %i.cr, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.dm, ptr %i.cy, align 8
  br label %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit

_ZN10ClipperLib8PolyNode8AddChildERS0_.exit:      ; preds = %bb.o, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  %i.dn = phi ptr [ %i.db, %bb.o ], [ %i.dl, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.do = trunc i64 %i.cx to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.cp, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 %i.do, ptr %i.dq, align 8
  br i1 %i.o, label %bb.t, label %bb.z

bb.t:                                             ; preds = %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.du = load ptr, ptr %i.cq, align 8
  %i.dv = ptrtoint ptr %i.dn to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = shl i64 %i.dx, 29
  %sext97 = add i64 %i.dy, -4294967296
  %i.dz = ashr i64 %sext97, 32
  store i64 %i.dz, ptr %i.dr, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.064.lcssa, ptr %.sroa.495.0..sroa_idx, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %sext = shl i64 %i.ds, 32
  %i.ea = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.eb = ashr exact i64 %sext, 29
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8
  %sext73 = shl i64 %i.eg, 32
  %i.eh = load ptr, ptr %i.ee, align 8
  %i.ei = ashr exact i64 %sext73, 28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ej, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.ek = load ptr, ptr %i.l, align 8
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %.064.lcssa ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8            ; 2 uses
  %i.eo = icmp sgt i64 %i.en, %.sroa.4.0.copyload
  br i1 %i.eo, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ep = icmp eq i64 %i.en, %.sroa.4.0.copyload
  br i1 %i.ep, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.eq = load i64, ptr %i.el, align 8
  %i.er = icmp slt i64 %i.eq, %.sroa.0.0.copyload
  br i1 %i.er, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.es = ptrtoint ptr %i.dn to i64
  %i.et = ptrtoint ptr %i.ea to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = shl i64 %i.eu, 29
  %sext96 = add i64 %i.ev, -4294967296
  %i.ew = ashr i64 %sext96, 32
  store i64 %i.ew, ptr %i.dr, align 8
  store i64 %.064.lcssa, ptr %i.ef, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit, %bb.w, %bb.x, %bb.y, %bb.u, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8JoinTypeENS_7EndTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.a ]
  %.07 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.07
  tail call void @_ZN10ClipperLib13ClipperOffset7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8JoinTypeENS_7EndTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %2, i32 noundef %3)
  %i.f = add nuw i64 %.07, 1                      ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  %i.m = icmp ult i64 %i.f, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset15FixOrientationsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  br i1 %i.c, label %bb.b, label %._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge

._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge: ; preds = %bb.a
  %.pre62 = load ptr, ptr %i.d, align 8
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.b, 32
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = ashr exact i64 %sext, 29
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 4                   ; 3 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp slt i32 %i.q, 3
  br i1 %i.r, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i64 %i.p, -1
  %wide.trip.count.i.i = and i64 %i.p, 2147483647
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %.023.i.i = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.i.i, %bb.d ]
  %.01821.i.i = phi double [ 0.000000e+00, %bb.c ], [ %i.ai, %bb.d ]
  %sext.i.i = shl i64 %.023.i.i, 32
  %i.t = ashr exact i64 %sext.i.i, 28
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sitofp i64 %i.v to double
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.i.i ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = sitofp i64 %i.y to double
  %i.aa = fadd double %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = sitofp i64 %i.ac to double
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = sitofp i64 %i.af to double
  %i.ah = fsub double %i.ad, %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ah, double %.01821.i.i) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit, label %bb.d, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %bb.d
  %i.aj = fmul double %i.ai, -5.000000e-01
  %i.ak = fcmp ult double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.preheader, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread

.preheader:                                       ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.e to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.at = phi ptr [ %i.ci, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ %i.e, %.preheader ] ; 4 uses
  %i.au = phi ptr [ %i.cj, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ %i.am, %.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ 0, %.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 76
  %i.ay = load i32, ptr %i.ax, align 4
  switch i32 %i.ay, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit [
    i32 0, label %.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge
    i32 1, label %bb.e
  ]

.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge: ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread

bb.e:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8            ; 5 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 4                 ; 3 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = icmp slt i32 %i.bh, 3
  br i1 %i.bi, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = add nsw i64 %i.bg, -1
  %wide.trip.count.i.i16 = and i64 %i.bg, 2147483647
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.i17 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i21, %bb.g ] ; 3 uses
  %.023.i.i18 = phi i64 [ %i.bj, %bb.f ], [ %indvars.iv.i.i17, %bb.g ]
  %.01821.i.i19 = phi double [ 0.000000e+00, %bb.f ], [ %i.bz, %bb.g ]
  %sext.i.i20 = shl i64 %.023.i.i18, 32
  %i.bk = ashr exact i64 %sext.i.i20, 28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = sitofp i64 %i.bm to double
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv.i.i17 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = sitofp i64 %i.bp to double
  %i.br = fadd double %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = sitofp i64 %i.bt to double
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = sitofp i64 %i.bw to double
  %i.by = fsub double %i.bu, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.br, double %i.by, double %.01821.i.i19) ; 2 uses
  %indvars.iv.next.i.i21 = add nuw nsw i64 %indvars.iv.i.i17, 1 ; 2 uses
  %exitcond.not.i.i22 = icmp eq i64 %indvars.iv.next.i.i21, %wide.trip.count.i.i16
  br i1 %exitcond.not.i.i22, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24, label %bb.g, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24: ; preds = %bb.g
  %i.ca = fmul double %i.bz, -5.000000e-01
  %i.cb = fcmp ult double %i.ca, 0.000000e+00
  br i1 %i.cb, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread: ; preds = %.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge, %bb.e, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24
  %i.cc = phi ptr [ %.pre58, %.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge ], [ %i.bb, %bb.e ], [ %i.bb, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24 ] ; 2 uses
  %i.cd = phi ptr [ %.pre, %.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge ], [ %i.bc, %bb.e ], [ %i.bc, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24 ] ; 3 uses
  %i.ce = icmp ne ptr %i.cd, %i.cc
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.cc, i64 -16 ; 2 uses
  %i.cf = icmp ult ptr %i.cd, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %i.cd, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ] ; 3 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.05.09.i.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i.i, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -16 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %.sroa.0.0.i.i.i
  br i1 %i.ch, label %.lr.ph.i.i.i, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit, !llvm.loop !170

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre59 = load ptr, ptr %i.al, align 8
  %.pre60 = load ptr, ptr %i.d, align 8
  br label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread, %.lr.ph, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24
  %i.ci = phi ptr [ %.pre60, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit ], [ %i.at, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ], [ %i.at, %.lr.ph ], [ %i.at, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24 ] ; 2 uses
  %i.cj = phi ptr [ %.pre59, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit ], [ %i.au, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ], [ %i.au, %.lr.ph ], [ %i.au, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %sext67 = shl i64 %i.cm, 29
  %i.cn = ashr i64 %sext67, 32
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %.loopexit, !llvm.loop !171

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread: ; preds = %._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge, %bb.b, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.cp = phi ptr [ %.pre62, %._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge ], [ %i.e, %bb.b ], [ %i.e, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 3
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph49, label %.loopexit

.lr.ph49:                                         ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40
  %i.cz = phi ptr [ %i.en, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40 ], [ %i.cp, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread ] ; 5 uses
  %i.da = phi ptr [ %i.eo, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40 ], [ %i.cs, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread ] ; 4 uses
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40 ], [ 0, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv54
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 76
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.h, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40

bb.h:                                             ; preds = %.lr.ph49
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.dj = load ptr, ptr %i.dg, align 8            ; 6 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = lshr exact i64 %i.dm, 4                 ; 3 uses
  %i.do = trunc i64 %i.dn to i32
  %i.dp = icmp slt i32 %i.do, 3
  br i1 %i.dp, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = add nsw i64 %i.dn, -1
  %wide.trip.count.i.i25 = and i64 %i.dn, 2147483647
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i.i26 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.i30, %bb.j ] ; 3 uses
  %.023.i.i27 = phi i64 [ %i.dq, %bb.i ], [ %indvars.iv.i.i26, %bb.j ]
  %.01821.i.i28 = phi double [ 0.000000e+00, %bb.i ], [ %i.eg, %bb.j ]
  %sext.i.i29 = shl i64 %.023.i.i27, 32
  %i.dr = ashr exact i64 %sext.i.i29, 28
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dr ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = sitofp i64 %i.dt to double
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %indvars.iv.i.i26 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = sitofp i64 %i.dw to double
  %i.dy = fadd double %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = sitofp i64 %i.ea to double
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = sitofp i64 %i.ed to double
  %i.ef = fsub double %i.eb, %i.ee
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.ef, double %.01821.i.i28) ; 2 uses
  %indvars.iv.next.i.i30 = add nuw nsw i64 %indvars.iv.i.i26, 1 ; 2 uses
  %exitcond.not.i.i31 = icmp eq i64 %indvars.iv.next.i.i30, %wide.trip.count.i.i25
  br i1 %exitcond.not.i.i31, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33, label %bb.j, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33: ; preds = %bb.j
  %i.eh = fmul double %i.eg, -5.000000e-01
  %i.ei = fcmp ult double %i.eh, 0.000000e+00
  br i1 %i.ei, label %bb.k, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40

bb.k:                                             ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33
  %i.ej = icmp ne ptr %i.dj, %i.di
  %.sroa.0.08.i.i.i34 = getelementptr inbounds i8, ptr %i.di, i64 -16 ; 2 uses
  %i.ek = icmp ult ptr %i.dj, %.sroa.0.08.i.i.i34
  %or.cond.i.i.i35 = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i.i.i35, label %.lr.ph.i.i.i36, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40

.lr.ph.i.i.i36:                                   ; preds = %bb.k, %.lr.ph.i.i.i36
  %.sroa.0.010.i.i.i37 = phi ptr [ %.sroa.0.0.i.i.i39, %.lr.ph.i.i.i36 ], [ %.sroa.0.08.i.i.i34, %bb.k ] ; 3 uses
  %.sroa.05.09.i.i.i38 = phi ptr [ %i.el, %.lr.ph.i.i.i36 ], [ %i.dj, %bb.k ] ; 3 uses
  %.sroa.079.0.copyload = load <16 x i8>, ptr %.sroa.05.09.i.i.i38, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i37, i64 16, i1 false)
  store <16 x i8> %.sroa.079.0.copyload, ptr %.sroa.0.010.i.i.i37, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i38, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i37, i64 -16 ; 2 uses
  %i.em = icmp ult ptr %i.el, %.sroa.0.0.i.i.i39
  br i1 %i.em, label %.lr.ph.i.i.i36, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit, !llvm.loop !170

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit: ; preds = %.lr.ph.i.i.i36
  %.pre63 = load ptr, ptr %i.cr, align 8
  %.pre64 = load ptr, ptr %i.cq, align 8
  br label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40: ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit, %bb.h, %bb.k, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33, %.lr.ph49
  %i.en = phi ptr [ %.pre64, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit ], [ %i.cz, %bb.h ], [ %i.cz, %bb.k ], [ %i.cz, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33 ], [ %i.cz, %.lr.ph49 ] ; 2 uses
  %i.eo = phi ptr [ %.pre63, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit ], [ %i.da, %bb.h ], [ %i.da, %bb.k ], [ %i.da, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33 ], [ %i.da, %.lr.ph49 ] ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  %sext68 = shl i64 %i.er, 29
  %i.es = ashr i64 %sext68, 32
  %i.et = icmp slt i64 %indvars.iv.next55, %i.es
  br i1 %i.et, label %.lr.ph49, label %.loopexit, !llvm.loop !172

.loopexit:                                        ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40, %.preheader, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ne ptr %i.a, %i.c
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %i.e = icmp ult ptr %i.a, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %bb.a ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.05.09.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -16 ; 2 uses
  %i.g = icmp ult ptr %i.f, %.sroa.0.0.i.i
  br i1 %i.g, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, !llvm.loop !170

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset7ExecuteERSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EEd(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 30 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  tail call void @_ZN10ClipperLib13ClipperOffset15FixOrientationsEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  tail call void @_ZN10ClipperLib13ClipperOffset8DoOffsetEd(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.o, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.l, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i8 0, i64 72, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.q, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i8 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 2 uses
  store i8 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 134
  store i8 0, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, %.noexc
  %i.ad = phi ptr [ %i.al, %.noexc ], [ %i.ac, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit ]
  %.010.i = phi i64 [ %i.aj, %.noexc ], [ 0, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.010.i
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit, !inline_history !173 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.aj = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.ak = load ptr, ptr %i.aa, align 8
  %i.al = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 24
  %i.aq = icmp ult i64 %i.aj, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, !llvm.loop !44

_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit: ; preds = %.noexc, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.ar = fcmp ogt double %2, 0.000000e+00
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  %i.as = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2, i32 noundef 2)
          to label %bb.r unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  %i.at = load ptr, ptr %3, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !174 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !174 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_ZN10ClipperLib11ClipperBase9GetBoundsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !174 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !174 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !174 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.023.064.i = phi ptr [ %i.ay, %bb.e ], [ %i.ci, %bb.h ] ; 3 uses
  %i.bh = phi i64 [ %i.bg, %bb.e ], [ %i.ch, %bb.h ]
  %.promoted475563.i = phi i64 [ %i.be, %bb.e ], [ %i.cb, %bb.h ]
  %.promoted5762.i = phi i64 [ %i.be, %bb.e ], [ %i.cc, %bb.h ]
  %.promoted525861.i = phi i64 [ %i.bg, %bb.e ], [ %i.cf, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.023.064.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !174 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !174
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.023.064.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !174
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f
  %i.bo = phi i64 [ %.promoted525861.i, %bb.f ], [ %i.cf, %._crit_edge.i ]
  %.promoted4350.i = phi i64 [ %.promoted5762.i, %bb.f ], [ %i.cc, %._crit_edge.i ] ; 2 uses
  %.promoted48.i = phi i64 [ %.promoted475563.i, %bb.f ], [ %i.cb, %._crit_edge.i ] ; 2 uses
  %.014.i = phi ptr [ %i.bj, %bb.f ], [ %i.bn, %._crit_edge.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.014.i, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !174 ; 2 uses
  %.not44.i = icmp eq ptr %i.bq, null
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.g, %.lr.ph.i19
  %i.br = phi ptr [ %i.bv, %.lr.ph.i19 ], [ %i.bq, %bb.g ] ; 3 uses
  %.146.i = phi ptr [ %i.br, %.lr.ph.i19 ], [ %.014.i, %bb.g ]
  %spec.store.select4245.i = phi i64 [ %spec.store.select.i, %.lr.ph.i19 ], [ %.promoted48.i, %bb.g ]
  %i.bs = phi i64 [ %spec.store.select36.i, %.lr.ph.i19 ], [ %.promoted4350.i, %bb.g ]
  %i.bt = load i64, ptr %.146.i, align 8, !noalias !174 ; 2 uses
  %spec.store.select.i = call i64 @llvm.smin.i64(i64 %i.bt, i64 %spec.store.select4245.i) ; 2 uses
  %spec.store.select36.i = call i64 @llvm.smax.i64(i64 %i.bt, i64 %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !174 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %._crit_edge.i, label %.lr.ph.i19, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i19, %bb.g
  %.promoted4351.i = phi i64 [ %.promoted4350.i, %bb.g ], [ %spec.store.select36.i, %.lr.ph.i19 ]
  %.promoted49.i = phi i64 [ %.promoted48.i, %bb.g ], [ %spec.store.select.i, %.lr.ph.i19 ]
  %.1.lcssa.i = phi ptr [ %.014.i, %bb.g ], [ %i.br, %.lr.ph.i19 ] ; 3 uses
  %i.bw = load i64, ptr %.1.lcssa.i, align 8, !noalias !174 ; 2 uses
  %i.bx = call i64 @llvm.smin.i64(i64 %i.bw, i64 %.promoted49.i)
  %i.by = call i64 @llvm.smax.i64(i64 %.promoted4351.i, i64 %i.bw)
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !174 ; 2 uses
  %i.cb = call i64 @llvm.smin.i64(i64 %i.ca, i64 %i.bx) ; 3 uses
  %i.cc = call i64 @llvm.smax.i64(i64 %i.by, i64 %i.ca) ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !174
  %i.cf = call i64 @llvm.smin.i64(i64 %i.ce, i64 %i.bo) ; 3 uses
  %i.cg = icmp eq ptr %.014.i, %i.bj
  br i1 %i.cg, label %bb.g, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
end_hunk_3
begin_hunk_4_@_ZN10ClipperLib13ClipperOffset7ExecuteERSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EEd:bb.a
  store ptr %i.cn, ptr %4, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.co, ptr %i.cq, align 8
  store ptr %i.co, ptr %i.cp, align 8
  store i64 %.sroa.037.0, ptr %i.cn, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %.sroa.20.0, ptr %.sroa.435.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %.sroa.14.0, ptr %i.cr, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i64 %.sroa.20.0, ptr %.sroa.433.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i64 %.sroa.14.0, ptr %i.cs, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i64 %.sroa.10.0, ptr %.sroa.431.0..sroa_idx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store i64 %.sroa.037.0, ptr %i.ct, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  store i64 %.sroa.10.0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.cu = invoke noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.j unwind label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24 ; 0 uses

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.v, align 4
  %i.cv = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 3, i32 noundef 3)
          to label %bb.k unwind label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.cw = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.cx = load ptr, ptr %1, align 8               ; 3 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.cz, %i.cw
  br i1 %.not.i.i22, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.cy, %i.da                    ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.m
  %i.dd = udiv exact i64 %i.db, 24
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSEOS3_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ds, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.dr, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.cx, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.dq, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %i.de = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8
  store ptr %i.di, ptr %.0811.i.i.i.i.i.i.i, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  store ptr %i.dk, ptr %i.df, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  store ptr %i.dm, ptr %i.dg, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSEOS3_.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dn = ptrtoint ptr %i.dh to i64
  %i.do = ptrtoint ptr %i.de to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dp) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSEOS3_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSEOS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  %i.ds = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.dt = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.loopexit.i.i, !llvm.loop !177

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.loopexit.i.i: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSEOS3_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.loopexit.i.i, %bb.m, %bb.l
  %i.du = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.loopexit.i.i ], [ %i.cw, %bb.m ], [ %i.cw, %bb.l ] ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -24 ; 2 uses
  store ptr %i.dv, ptr %i.b, align 8
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.i.i
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 -8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

bb.p:                                             ; preds = %_ZN10ClipperLib11ClipperBase9GetBoundsEv.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24: ; preds = %bb.j, %bb.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 64) #33
  br label %bb.q

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN10ClipperLib8IntPointESaIS4_EES2_IS6_SaIS6_EEEESA_ET0_T_SC_SB_.exit.i.i, %bb.o, %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 64) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ed, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit24 ], [ %i.ec, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.v

bb.r:                                             ; preds = %bb.c, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.k, align 8
  %i.ee = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ee, %i.q
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %bb.r, %.lr.ph.i.i.i.i25
  %.09.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i25 ], [ %i.ee, %bb.r ] ; 2 uses
  %i.ef = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #33, !inline_history !178
  %.not.i.i.i.i26 = icmp eq ptr %i.ef, %i.q
  br i1 %.not.i.i.i.i26, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i25, !llvm.loop !82

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i25, %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8            ; 3 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i27, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #33, !inline_history !178
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.s, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eo = load ptr, ptr %i.en, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #33, !inline_history !178
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.eu = load ptr, ptr %i.p, align 8             ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #33, !inline_history !178
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.u
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.k) #30, !inline_history !178
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q
  %.pn17 = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset8DoOffsetEd(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 22 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.e, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %1, ptr %i.o, align 8
  %i.p = tail call double @llvm.fabs.f64(double %1) ; 4 uses
  %or.cond = fcmp olt double %i.p, f0x3BC79CA10C924223
  br i1 %or.cond, label %bb.c, label %bb.l

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %sext446 = shl i64 %i.w, 29
  %i.x = ashr i64 %sext446, 32                    ; 4 uses
  %i.y = icmp ugt i64 %i.x, 384307168202282325
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.e to i64
  %i.ai = sub i64 %i.ah, %i.ad
  %i.aj = mul nuw nsw i64 %i.x, 24
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #32 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ab, %i.e
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i158

.lr.ph.i.i.i.i158:                                ; preds = %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i158
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i158 ], [ %i.ak, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i158 ], [ %i.ab, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.al = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !alias.scope !182, !noalias !179
  store <2 x ptr> %i.al, ptr %.012.i.i.i.i, align 8, !alias.scope !179, !noalias !182
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !182, !noalias !179
  store ptr %i.ao, ptr %i.am, align 8, !alias.scope !179, !noalias !182
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !182, !noalias !179
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i159 = icmp eq ptr %i.ap, %i.e
  br i1 %.not.i.i.i.i159, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i, label %.lr.ph.i.i.i.i158, !llvm.loop !58

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i158
  %.pre.i = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i
  %i.ar = phi ptr [ %.pre.i, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i ], [ %i.ab, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ar, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.as = load ptr, ptr %i.z, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ak, ptr %i.d, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store ptr %i.aw, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.x
  store ptr %i.ax, ptr %i.z, align 8
  %.pre543 = load ptr, ptr %i.r, align 8
  %.pre544 = load ptr, ptr %i.q, align 8          ; 2 uses
  %.pre545 = ptrtoint ptr %.pre543 to i64
  %.pre546 = ptrtoint ptr %.pre544 to i64
  %.pre548 = sub i64 %.pre545, %.pre546
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %.pre-phi549 = phi i64 [ %i.w, %bb.e ], [ %.pre548, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i ]
  %i.ay = phi ptr [ %i.t, %bb.e ], [ %.pre544, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i ]
  %i.az = lshr exact i64 %.pre-phi549, 3
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph504, label %.loopexit

.lr.ph504:                                        ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit
  %i.bc = phi ptr [ %i.ce, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit ], [ %i.ay, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit ]
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit ], [ 0, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv535
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %.lr.ph504
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.bk = load ptr, ptr %i.z, align 8
  %.not.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = icmp ugt i64 %i.bq, 9223372036854775792
  br i1 %i.br, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i, !prof !60

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #32
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.bt = phi ptr [ null, %bb.h ], [ %i.bs, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.bt, ptr %i.bj, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.by = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i ], [ %i.bt, %bb.j ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %i.bx, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.j ], [ %i.ca, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bu, align 8
  %i.cb = load ptr, ptr %i.f, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cc, ptr %i.f, align 8
end_hunk_4
begin_hunk_5_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
  %i.le = load i64, ptr %i.ld, align 8            ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lg = load i64, ptr %i.lf, align 8            ; 2 uses
  %i.lh = icmp eq i64 %i.le, %i.lg
  %or.cond.i = select i1 %i.lc, i1 %i.lh, i1 false
  br i1 %or.cond.i, label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %i.li = sub nsw i64 %i.la, %i.lb
  %i.lj = sitofp i64 %i.li to double              ; 3 uses
  %i.lk = sub nsw i64 %i.le, %i.lg
  %i.ll = sitofp i64 %i.lk to double              ; 3 uses
  %i.lm = fmul nnan double %i.ll, %i.ll
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.lj, double %i.lm)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ln)
  %i.lo = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.lp = fmul double %i.lo, %i.ll
  %i.lq = fneg double %i.lj
  %i.lr = fmul double %i.lo, %i.lq
  br label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit

_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit: ; preds = %.lr.ph, %._crit_edge.i
  %.sroa.3.0.i = phi double [ %i.lr, %._crit_edge.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i = phi double [ %i.lp, %._crit_edge.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.ls = load ptr, ptr %i.fd, align 8
  %.not.i.i220 = icmp eq ptr %i.kw, %i.ls
  br i1 %.not.i.i220, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit
  store double %.sroa.0.0.i, ptr %i.kw, align 8
  %.sroa.5432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store double %.sroa.3.0.i, ptr %.sroa.5432.0..sroa_idx, align 8
  %i.lt = load ptr, ptr %i.fc, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  store ptr %i.lu, ptr %i.fc, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit

bb.as:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit
  %i.lv = load ptr, ptr %i.fb, align 8            ; 5 uses
  %i.lw = ptrtoint ptr %i.kw to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx                    ; 4 uses
  %i.lz = icmp eq i64 %i.ly, 9223372036854775792
  br i1 %i.lz, label %bb.at, label %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.ma = ashr exact i64 %i.ly, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i221 = tail call i64 @llvm.umax.i64(i64 %i.ma, i64 1)
  %i.mb = add nsw i64 %.sroa.speculated.i.i.i.i221, %i.ma ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.ma
  %i.md = tail call i64 @llvm.umin.i64(i64 %i.mb, i64 576460752303423487)
  %i.me = select i1 %i.mc, i64 576460752303423487, i64 %i.md ; 3 uses
  %.not.i.i.i.i222 = icmp ne i64 %i.me, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i222)
  %i.mf = shl nuw nsw i64 %i.me, 4
  %i.mg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #32 ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ly ; 2 uses
  store double %.sroa.0.0.i, ptr %i.mh, align 8
  %.sroa.5432.0..sroa_idx433 = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store double %.sroa.3.0.i, ptr %.sroa.5432.0..sroa_idx433, align 8
  %.not10.i.i.i.i.i.i223 = icmp eq ptr %i.lv, %i.kw
  br i1 %.not10.i.i.i.i.i.i223, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i224

.lr.ph.i.i.i.i.i.i224:                            ; preds = %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i224
  %.012.i.i.i.i.i.i225 = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i224 ], [ %i.mg, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i226 = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i.i224 ], [ %i.lv, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i225, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i226, i64 16, i1 false), !alias.scope !205
  %i.mi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i226, i64 16 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i225, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i227 = icmp eq ptr %i.mi, %i.kw
  br i1 %.not.i.i.i.i.i.i227, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i224, !llvm.loop !204

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i224, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i228 = phi ptr [ %i.mg, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.mj, %.lr.ph.i.i.i.i.i.i224 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i228, i64 16 ; 2 uses
  %.not.i23.i.i.i229 = icmp eq ptr %i.lv, null
  br i1 %.not.i23.i.i.i229, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.ly) #33
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.au, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.mg, ptr %i.fb, align 8
  store ptr %i.mk, ptr %i.fc, align 8
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %i.me
  store ptr %i.ml, ptr %i.fd, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ar, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.mm = phi ptr [ %i.lu, %bb.ar ], [ %i.mk, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !209

bb.av:                                            ; preds = %._crit_edge
  %i.mn = sext i32 %i.kr to i64
  %i.mo = load ptr, ptr %i.ew, align 8            ; 3 uses
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %i.mn ; 2 uses
  %i.mq = load i64, ptr %i.mo, align 8            ; 2 uses
  %i.mr = load i64, ptr %i.mp, align 8            ; 2 uses
  %i.ms = icmp eq i64 %i.mq, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mu = load i64, ptr %i.mt, align 8            ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mw = load i64, ptr %i.mv, align 8            ; 2 uses
  %i.mx = icmp eq i64 %i.mu, %i.mw
  %or.cond.i230 = select i1 %i.ms, i1 %i.mx, i1 false
  br i1 %or.cond.i230, label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237, label %._crit_edge.i231

._crit_edge.i231:                                 ; preds = %bb.av
  %i.my = sub nsw i64 %i.mq, %i.mr
  %i.mz = sitofp i64 %i.my to double              ; 3 uses
  %i.na = sub nsw i64 %i.mu, %i.mw
  %i.nb = sitofp i64 %i.na to double              ; 3 uses
  %i.nc = fmul nnan double %i.nb, %i.nb
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.mz, double %i.nc)
  %sqrt.i232 = tail call double @llvm.sqrt.f64(double %i.nd)
  %i.ne = fdiv double 1.000000e+00, %sqrt.i232    ; 2 uses
  %i.nf = fmul double %i.ne, %i.nb
  %i.ng = fneg double %i.mz
  %i.nh = fmul double %i.ne, %i.ng
  br label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237

_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237: ; preds = %bb.av, %._crit_edge.i231
  %.sroa.3.0.i233 = phi double [ %i.nh, %._crit_edge.i231 ], [ 0.000000e+00, %bb.av ] ; 2 uses
  %.sroa.0.0.i234 = phi double [ %i.nf, %._crit_edge.i231 ], [ 0.000000e+00, %bb.av ] ; 2 uses
  %i.ni = load ptr, ptr %i.fd, align 8
  %.not.i.i238 = icmp eq ptr %i.kt, %i.ni
  br i1 %.not.i.i238, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237
  store double %.sroa.0.0.i234, ptr %i.kt, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store double %.sroa.3.0.i233, ptr %.sroa.5.0..sroa_idx, align 8
  %i.nj = load ptr, ptr %i.fc, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store ptr %i.nk, ptr %i.fc, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251

bb.ax:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237
  %i.nl = load ptr, ptr %i.fb, align 8            ; 5 uses
  %i.nm = ptrtoint ptr %i.kt to i64
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = sub i64 %i.nm, %i.nn                    ; 4 uses
  %i.np = icmp eq i64 %i.no, 9223372036854775792
  br i1 %i.np, label %bb.ay, label %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239: ; preds = %bb.ax
  %i.nq = ashr exact i64 %i.no, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i240 = tail call i64 @llvm.umax.i64(i64 %i.nq, i64 1)
  %i.nr = add nsw i64 %.sroa.speculated.i.i.i.i240, %i.nq ; 2 uses
  %i.ns = icmp ult i64 %i.nr, %i.nq
  %i.nt = tail call i64 @llvm.umin.i64(i64 %i.nr, i64 576460752303423487)
  %i.nu = select i1 %i.ns, i64 576460752303423487, i64 %i.nt ; 3 uses
  %.not.i.i.i.i241 = icmp ne i64 %i.nu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i241)
  %i.nv = shl nuw nsw i64 %i.nu, 4
  %i.nw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nv) #32 ; 5 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.no ; 2 uses
  store double %.sroa.0.0.i234, ptr %i.nx, align 8
  %.sroa.5.0..sroa_idx428 = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store double %.sroa.3.0.i233, ptr %.sroa.5.0..sroa_idx428, align 8
  %.not10.i.i.i.i.i.i242 = icmp eq ptr %i.nl, %i.kt
  br i1 %.not10.i.i.i.i.i.i242, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247, label %.lr.ph.i.i.i.i.i.i243

.lr.ph.i.i.i.i.i.i243:                            ; preds = %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239, %.lr.ph.i.i.i.i.i.i243
  %.012.i.i.i.i.i.i244 = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.i243 ], [ %i.nw, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239 ] ; 2 uses
  %.0911.i.i.i.i.i.i245 = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i.i243 ], [ %i.nl, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i244, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i245, i64 16, i1 false), !alias.scope !210
  %i.ny = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i245, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i244, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i246 = icmp eq ptr %i.ny, %i.kt
  br i1 %.not.i.i.i.i.i.i246, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247, label %.lr.ph.i.i.i.i.i.i243, !llvm.loop !204

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247: ; preds = %.lr.ph.i.i.i.i.i.i243, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239
  %.0.lcssa.i.i.i.i.i.i248 = phi ptr [ %i.nw, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239 ], [ %i.nz, %.lr.ph.i.i.i.i.i.i243 ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i248, i64 16
  %.not.i23.i.i.i249 = icmp eq ptr %i.nl, null
  br i1 %.not.i23.i.i.i249, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.no) #33
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250: ; preds = %bb.az, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247
  store ptr %i.nw, ptr %i.fb, align 8
  store ptr %i.oa, ptr %i.fc, align 8
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %i.nw, i64 %i.nu
  store ptr %i.ob, ptr %i.fd, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251

bb.ba:                                            ; preds = %._crit_edge
  %sext157 = add i64 %sext, -8589934592
  %i.oc = load ptr, ptr %i.fb, align 8            ; 5 uses
  %i.od = ashr exact i64 %sext157, 28
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.od ; 2 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.oe, align 8
  %i.of = load ptr, ptr %i.fd, align 8
  %.not.i.i252 = icmp eq ptr %i.kt, %i.of
  br i1 %.not.i.i252, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i64 16, i1 false)
  %i.og = load ptr, ptr %i.fc, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store ptr %i.oh, ptr %i.fc, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251

bb.bc:                                            ; preds = %bb.ba
  %i.oi = ptrtoint ptr %i.kt to i64
  %i.oj = ptrtoint ptr %i.oc to i64
  %i.ok = sub i64 %i.oi, %i.oj                    ; 4 uses
  %i.ol = icmp eq i64 %i.ok, 9223372036854775792
  br i1 %i.ol, label %bb.bd, label %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253: ; preds = %bb.bc
  %i.om = ashr exact i64 %i.ok, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i254 = tail call i64 @llvm.umax.i64(i64 %i.om, i64 1)
  %i.on = add nsw i64 %.sroa.speculated.i.i.i.i254, %i.om ; 2 uses
  %i.oo = icmp ult i64 %i.on, %i.om
  %i.op = tail call i64 @llvm.umin.i64(i64 %i.on, i64 576460752303423487)
  %i.oq = select i1 %i.oo, i64 576460752303423487, i64 %i.op ; 3 uses
  %.not.i.i.i.i255 = icmp ne i64 %i.oq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i255)
  %i.or = shl nuw nsw i64 %i.oq, 4
  %i.os = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.or) #32 ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ok
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.ot, align 8
  %.not10.i.i.i.i.i.i256 = icmp eq ptr %i.oc, %i.kt
  br i1 %.not10.i.i.i.i.i.i256, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264, label %.lr.ph.i.i.i.i.i.i257

.lr.ph.i.i.i.i.i.i257:                            ; preds = %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253, %.lr.ph.i.i.i.i.i.i257
  %.012.i.i.i.i.i.i258 = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.i.i257 ], [ %i.os, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253 ] ; 2 uses
  %.0911.i.i.i.i.i.i259 = phi ptr [ %i.ou, %.lr.ph.i.i.i.i.i.i257 ], [ %i.oc, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i259, i64 16, i1 false), !alias.scope !214
  %i.ou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i259, i64 16 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i258, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i260 = icmp eq ptr %i.ou, %i.kt
  br i1 %.not.i.i.i.i.i.i260, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264, label %.lr.ph.i.i.i.i.i.i257, !llvm.loop !204

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264: ; preds = %.lr.ph.i.i.i.i.i.i257, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253
  %.0.lcssa.i.i.i.i.i.i262 = phi ptr [ %i.os, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253 ], [ %i.ov, %.lr.ph.i.i.i.i.i.i257 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i262, i64 16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef %i.ok) #33
  store ptr %i.os, ptr %i.fb, align 8
  store ptr %i.ow, ptr %i.fc, align 8
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.os, i64 %i.oq
  store ptr %i.ox, ptr %i.fd, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251: ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264, %bb.bb, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250, %bb.aw
  %i.oy = load i32, ptr %i.ku, align 4            ; 2 uses
  switch i32 %i.oy, label %bb.bv [
    i32 0, label %bb.be
    i32 1, label %bb.bk
  ]

bb.be:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 %i.kr, ptr %i.a, align 4
  %i.oz = icmp sgt i32 %i.fu, 0
  br i1 %i.oz, label %.lr.ph481, label %._crit_edge482

.lr.ph481:                                        ; preds = %bb.be
  %i.pa = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  br label %bb.bj

._crit_edge482:                                   ; preds = %bb.bj, %bb.be
  %i.pb = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.pc = load ptr, ptr %i.dt, align 8
  %.not.i266 = icmp eq ptr %i.pb, %i.pc
  br i1 %.not.i266, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge482
  %i.pd = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.pe = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i267 = icmp eq ptr %i.pd, %i.pe
  br i1 %.not.i.i.i.i.i267, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pi = icmp ugt i64 %i.ph, 9223372036854775792
  br i1 %i.pi, label %.noexc.i.i.i276, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i268, !prof !60

.noexc.i.i.i276:                                  ; preds = %bb.bg
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i268: ; preds = %bb.bg
  %i.pj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ph) #32
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i268, %bb.bf
  %i.pk = phi ptr [ null, %bb.bf ], [ %i.pj, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i268 ] ; 5 uses
  store ptr %i.pk, ptr %i.pb, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 2 uses
  store ptr %i.pk, ptr %i.pl, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.ph
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  store ptr %i.pm, ptr %i.pn, align 8
  %i.po = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.pp = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i269 = icmp eq ptr %i.po, %i.pp
  br i1 %.not7.i.i.i.i.i.i269, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i274, label %.lr.ph.i.i.i.i.i.i270

.lr.ph.i.i.i.i.i.i270:                            ; preds = %bb.bh, %.lr.ph.i.i.i.i.i.i270
  %.09.i.i.i.i.i.i271 = phi ptr [ %i.pr, %.lr.ph.i.i.i.i.i.i270 ], [ %i.pk, %bb.bh ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i272 = phi ptr [ %i.pq, %.lr.ph.i.i.i.i.i.i270 ], [ %i.po, %bb.bh ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i271, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i272, i64 16, i1 false)
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i272, i64 16 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i271, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i273 = icmp eq ptr %i.pq, %i.pp
  br i1 %.not.i.i.i.i.i.i273, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i274, label %.lr.ph.i.i.i.i.i.i270, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i274: ; preds = %.lr.ph.i.i.i.i.i.i270, %bb.bh
  %.0.lcssa.i.i.i.i.i.i275 = phi ptr [ %i.pk, %bb.bh ], [ %i.pr, %.lr.ph.i.i.i.i.i.i270 ]
  store ptr %.0.lcssa.i.i.i.i.i.i275, ptr %i.pl, align 8
  %i.ps = load ptr, ptr %i.f, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  store ptr %i.pt, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit277

bb.bi:                                            ; preds = %._crit_edge482
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.pb, ptr noundef nonnull align 8 dereferenceable(24) %i.ez)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit277

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit277: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i274, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212

bb.bj:                                            ; preds = %.lr.ph481, %bb.bj
  %.0139479 = phi i32 [ 0, %.lr.ph481 ], [ %i.pv, %bb.bj ] ; 2 uses
  %i.pu = load i32, ptr %i.pa, align 8
  call void @_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %.0139479, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.pu)
  %i.pv = add nuw nsw i32 %.0139479, 1            ; 2 uses
  %exitcond526.not = icmp eq i32 %i.pv, %i.fu
  br i1 %exitcond526.not, label %._crit_edge482, label %bb.bj, !llvm.loop !218

bb.bk:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 %i.kr, ptr %i.b, align 4
  %i.pw = icmp sgt i32 %i.fu, 0                   ; 2 uses
  br i1 %i.pw, label %.lr.ph470, label %._crit_edge471

.lr.ph470:                                        ; preds = %bb.bk
  %i.px = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  br label %bb.bp

._crit_edge471:                                   ; preds = %bb.bp, %bb.bk
  %i.py = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.pz = load ptr, ptr %i.dt, align 8
  %.not.i278 = icmp eq ptr %i.py, %i.pz
  br i1 %.not.i278, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge471
  %i.qa = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.qb = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.py, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i279 = icmp eq ptr %i.qa, %i.qb
  br i1 %.not.i.i.i.i.i279, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qf = icmp ugt i64 %i.qe, 9223372036854775792
  br i1 %i.qf, label %.noexc.i.i.i288, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i280, !prof !60

.noexc.i.i.i288:                                  ; preds = %bb.bm
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i280: ; preds = %bb.bm
  %i.qg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qe) #32
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i280, %bb.bl
  %i.qh = phi ptr [ null, %bb.bl ], [ %i.qg, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i280 ] ; 5 uses
  store ptr %i.qh, ptr %i.py, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  store ptr %i.qh, ptr %i.qi, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qe
  %i.qk = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  store ptr %i.qj, ptr %i.qk, align 8
  %i.ql = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.qm = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i281 = icmp eq ptr %i.ql, %i.qm
  br i1 %.not7.i.i.i.i.i.i281, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i286, label %.lr.ph.i.i.i.i.i.i282

.lr.ph.i.i.i.i.i.i282:                            ; preds = %bb.bn, %.lr.ph.i.i.i.i.i.i282
  %.09.i.i.i.i.i.i283 = phi ptr [ %i.qo, %.lr.ph.i.i.i.i.i.i282 ], [ %i.qh, %bb.bn ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i284 = phi ptr [ %i.qn, %.lr.ph.i.i.i.i.i.i282 ], [ %i.ql, %bb.bn ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i283, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i284, i64 16, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i284, i64 16 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i283, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i285 = icmp eq ptr %i.qn, %i.qm
  br i1 %.not.i.i.i.i.i.i285, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i286, label %.lr.ph.i.i.i.i.i.i282, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i286: ; preds = %.lr.ph.i.i.i.i.i.i282, %bb.bn
  %.0.lcssa.i.i.i.i.i.i287 = phi ptr [ %i.qh, %bb.bn ], [ %i.qo, %.lr.ph.i.i.i.i.i.i282 ]
  store ptr %.0.lcssa.i.i.i.i.i.i287, ptr %i.qi, align 8
  %i.qp = load ptr, ptr %i.f, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store ptr %i.qq, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289

bb.bo:                                            ; preds = %._crit_edge471
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.py, ptr noundef nonnull align 8 dereferenceable(24) %i.ez)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i286, %bb.bo
  %i.qr = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.qs = load ptr, ptr %i.fa, align 8
  %.not.i.i290 = icmp eq ptr %i.qs, %i.qr
  br i1 %.not.i.i290, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i291

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i291: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289
  store ptr %i.qr, ptr %i.fa, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i291
  %i.qt = sext i32 %i.kr to i64
  %i.qu = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %i.qu, i64 %i.qt
  %i.qw = load <2 x double>, ptr %i.qv, align 8   ; 2 uses
  br i1 %i.ks, label %.lr.ph473.preheader, label %._crit_edge474

.lr.ph473.preheader:                              ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292
  %i.qx = zext nneg i32 %i.kr to i64
  br label %.lr.ph473

bb.bp:                                            ; preds = %.lr.ph470, %bb.bp
  %.0138468 = phi i32 [ 0, %.lr.ph470 ], [ %i.qz, %bb.bp ] ; 2 uses
  %i.qy = load i32, ptr %i.px, align 8
  call void @_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %.0138468, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.qy)
  %i.qz = add nuw nsw i32 %.0138468, 1            ; 2 uses
  %exitcond522.not = icmp eq i32 %i.qz, %i.fu
  br i1 %exitcond522.not, label %._crit_edge471, label %bb.bp, !llvm.loop !219

._crit_edge474.thread:                            ; preds = %.lr.ph473
  %.pre539 = load ptr, ptr %i.fb, align 8
  %i.ra = fneg <2 x double> %i.qw
  store <2 x double> %i.ra, ptr %.pre539, align 8
  store i32 0, ptr %i.b, align 4
  br label %.lr.ph477

._crit_edge474:                                   ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292
  %i.rb = fneg <2 x double> %i.qw
end_hunk_5
begin_hunk_6_@_ZN10ClipperLib13ClipperOffset7DoRoundEii:bb.a
  %i.bp = phi <2 x double> [ %i.j, %bb.a ], [ %i.dc, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50 ] ; 4 uses
  %i.bq = load ptr, ptr %i.y, align 8
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.g
  %i.bs = load <2 x double>, ptr %i.z, align 8
  %i.bt = load <2 x i64>, ptr %i.br, align 8
  %i.bu = sitofp <2 x i64> %i.bt to <2 x double>
  %i.bv = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bv, <2 x double> %i.bu) ; 2 uses
  %i.bx = fcmp olt <2 x double> %i.bw, zeroinitializer
  %i.by = select <2 x i1> %i.bx, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bz = fadd <2 x double> %i.bw, %i.by
  %i.ca = fptosi <2 x double> %i.bz to <2 x i64>  ; 2 uses
  %i.cb = load ptr, ptr %i.ab, align 8
  %.not.i.i37 = icmp eq ptr %i.bo, %i.cb
  br i1 %.not.i.i37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x i64> %i.ca, ptr %i.bo, align 8
  %i.cc = load ptr, ptr %i.aa, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  store ptr %i.cd, ptr %i.aa, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50

bb.i:                                             ; preds = %bb.g
  %i.ce = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.cf = ptrtoint ptr %i.bo to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775792
  br i1 %i.ci, label %bb.j, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38: ; preds = %bb.i
  %i.cj = ashr exact i64 %i.ch, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i39 = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i39, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 576460752303423487)
  %i.cn = select i1 %i.cl, i64 576460752303423487, i64 %i.cm ; 3 uses
  %.not.i.i.i.i40 = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i40)
  %i.co = shl nuw nsw i64 %i.cn, 4
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #32 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  store <2 x i64> %i.ca, ptr %i.cq, align 8
  %.not10.i.i.i.i.i.i41 = icmp eq ptr %i.ce, %i.bo
  br i1 %.not10.i.i.i.i.i.i41, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38, %.lr.ph.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i43 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i42 ], [ %i.cp, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38 ] ; 2 uses
  %.0911.i.i.i.i.i.i44 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i42 ], [ %i.ce, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i43, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i44, i64 16, i1 false), !alias.scope !275
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i44, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i43, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.cr, %i.bo
  br i1 %.not.i.i.i.i.i.i45, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i42, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38
  %.0.lcssa.i.i.i.i.i.i47 = phi ptr [ %i.cp, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i42 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i47, i64 16 ; 2 uses
  %.not.i23.i.i.i48 = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i.i.i48, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ch) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49: ; preds = %bb.k, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46
  store ptr %i.cp, ptr %i.x, align 8
  store ptr %i.ct, ptr %i.aa, align 8
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.cu, ptr %i.ab, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50: ; preds = %bb.h, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49
  %i.cv = phi ptr [ %i.cd, %bb.h ], [ %i.ct, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49 ] ; 7 uses
  %i.cw = load <2 x double>, ptr %i.ac, align 8   ; 2 uses
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = fneg <2 x double> %i.bp
  %i.cz = shufflevector <2 x double> %i.bp, <2 x double> %i.cy, <2 x i32> <i32 3, i32 1>
  %i.da = fmul <2 x double> %i.cw, %i.cz
  %i.db = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.cx, <2 x double> %i.da)
  %i.dd = add nuw nsw i32 %.065, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dd, %smax
  br i1 %exitcond.not, label %bb.b, label %bb.g, !llvm.loop !279
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset7DoMiterEiid(ptr noundef nonnull align 8 captures(none) dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load double, ptr %i.a, align 8
  %i.c = fdiv double %i.b, %3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = sext i32 %2 to i64
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.f
  %i.n = load <2 x i64>, ptr %i.h, align 8
  %i.o = sitofp <2 x i64> %i.n to <2 x double>
  %i.p = load <2 x double>, ptr %i.l, align 8
  %i.q = load <2 x double>, ptr %i.m, align 8
  %i.r = fadd <2 x double> %i.p, %i.q
  %i.s = insertelement <2 x double> poison, double %i.c, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.o) ; 2 uses
  %i.v = fcmp olt <2 x double> %i.u, zeroinitializer
  %i.w = select <2 x i1> %i.v, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.x = fadd <2 x double> %i.u, %i.w
  %i.y = fptosi <2 x double> %i.x to <2 x i64>    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x i64> %i.y, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %i.z, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ae, ptr %i.z, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775792
  br i1 %i.aj, label %bb.d, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.ak = ashr exact i64 %i.ai, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 576460752303423487)
  %i.ao = select i1 %i.am, i64 576460752303423487, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #32 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store <2 x i64> %i.y, ptr %i.ar, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.af, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !280
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.aq, ptr %i.d, align 8
  store ptr %i.au, ptr %i.z, align 8
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.av, ptr %i.ab, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib12ReversePathsERSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.d = phi ptr [ %i.n, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.o, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ %i.b, %bb.a ]
  %.04 = phi i64 [ %i.p, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.04 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ne ptr %i.g, %i.i
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = icmp ult ptr %i.g, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %.lr.ph ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.g, %.lr.ph ] ; 3 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.05.09.i.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -16 ; 2 uses
  %i.m = icmp ult ptr %i.l, %.sroa.0.0.i.i.i
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit, !llvm.loop !170

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %i.a, align 8
  %.pre5 = load ptr, ptr %0, align 8
  br label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit, %.lr.ph
  %i.n = phi ptr [ %.pre5, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.o = phi ptr [ %.pre, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.p = add nuw i64 %.04, 1                      ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !284
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib15SimplifyPolygonERKSt6vectorINS_8IntPointESaIS1_EERS0_IS3_SaIS3_EENS_12PolyFillTypeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 132
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 134
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 0, ptr %i.o, align 1
  store i8 1, ptr %i.m, align 2
  %i.p = invoke noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.q = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %2)
          to label %bb.c unwind label %bb.g       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.r, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %.09.i.i.i.i, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #33, !inline_history !178
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !82

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #33, !inline_history !178
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #33, !inline_history !178
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.ah = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #33, !inline_history !178
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.f
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #30, !inline_history !178
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib16SimplifyPolygonsERKSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EERS5_NS_12PolyFillTypeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 132
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 134
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 0, ptr %i.o, align 1
  store i8 1, ptr %i.m, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %i.s = phi ptr [ %i.aa, %.noexc ], [ %i.r, %bb.a ]
  %.010.i = phi i64 [ %i.y, %.noexc ], [ 0, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.010.i
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit, !inline_history !173 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, !llvm.loop !44

_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit: ; preds = %.noexc, %bb.a
end_hunk_6
begin_hunk_7_@_ZN10ClipperLib12CleanPolygonERKSt6vectorINS_8IntPointESaIS1_EERS3_d:bb.a
  br i1 %i.ca, label %.lr.ph78, label %.critedge, !llvm.loop !287

.lr.ph78.outer.backedge:                          ; preds = %bb.h, %bb.e, %bb.g
  %.sink119.sink = phi ptr [ %i.bx, %bb.g ], [ %i.av, %bb.e ], [ %i.av, %bb.h ] ; 4 uses
  %.sink117.sink = phi ptr [ %i.by, %bb.g ], [ %i.at, %bb.e ], [ %i.at, %bb.h ] ; 2 uses
  %.sink.sink = phi i64 [ -2, %bb.g ], [ -1, %bb.e ], [ -1, %bb.h ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink119.sink, i64 24
  store ptr %.sink117.sink, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink117.sink, i64 32
  store ptr %.sink119.sink, ptr %i.cc, align 8
  store i32 0, ptr %.sink119.sink, align 8
  %i.cd = add i64 %.06576.ph, %.sink.sink
  br label %.lr.ph78.outer, !llvm.loop !287

.critedge:                                        ; preds = %.lr.ph78, %bb.i, %.lr.ph.peel
  %.067.lcssa = phi ptr [ %i.p, %.lr.ph.peel ], [ %i.at, %bb.i ], [ %.06775, %.lr.ph78 ]
  %.065.lcssa = phi i64 [ %i.g, %.lr.ph.peel ], [ %.06576.ph, %bb.i ], [ %.06576.ph, %.lr.ph78 ] ; 5 uses
  %i.ce = icmp ult i64 %.065.lcssa, 3             ; 2 uses
  %spec.store.select = select i1 %i.ce, i64 0, i64 %.065.lcssa ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = load ptr, ptr %1, align 8               ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 4                 ; 3 uses
  %i.cm = icmp ugt i64 %spec.store.select, %i.cl
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.cn = sub nuw i64 %spec.store.select, %i.cl
  tail call void @_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cn)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.k:                                             ; preds = %.critedge
  %i.co = icmp ult i64 %spec.store.select, %i.cl
  br i1 %i.co, label %bb.l, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %spec.store.select ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.cg, %i.cp
  br i1 %.not.i.i72, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i73

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i73: ; preds = %bb.l
  store ptr %i.cp, ptr %i.cf, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i73
  br i1 %i.ce, label %._crit_edge86, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  %xtraiter = and i64 %.065.lcssa, 1
  %unroll_iter = and i64 %.065.lcssa, -2
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85, %.lr.ph85.preheader
  %.084 = phi i64 [ 0, %.lr.ph85.preheader ], [ %i.db, %.lr.ph85 ] ; 3 uses
  %.283 = phi ptr [ %.067.lcssa, %.lr.ph85.preheader ], [ %i.da, %.lr.ph85 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph85.preheader ], [ %niter.next.1, %.lr.ph85 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.283, i64 8
  %i.cr = load ptr, ptr %1, align 8
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.084
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.283, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %1, align 8
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.084
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = add nuw i64 %.084, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge86.loopexit.unr-lcssa, label %.lr.ph85, !llvm.loop !288

._crit_edge86.loopexit.unr-lcssa:                 ; preds = %.lr.ph85
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge86, label %.lr.ph85.epil.preheader

.lr.ph85.epil.preheader:                          ; preds = %._crit_edge86.loopexit.unr-lcssa
  %lcmp.mod136 = trunc i64 %.065.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load ptr, ptr %1, align 8
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false)
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.lr.ph85.epil.preheader, %._crit_edge86.loopexit.unr-lcssa, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b, %._crit_edge86
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib12CleanPolygonERSt6vectorINS_8IntPointESaIS1_EEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN10ClipperLib12CleanPolygonERKSt6vectorINS_8IntPointESaIS1_EERS3_d(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13CleanPolygonsERKSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EERS5_d(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24                  ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit, %.lr.ph
  %i.ab = phi ptr [ %i.ah, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit ]
  %.09 = phi i64 [ %i.af, %.lr.ph ], [ 0, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.09
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.09
  tail call void @_ZN10ClipperLib12CleanPolygonERKSt6vectorINS_8IntPointESaIS1_EERS3_d(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, double noundef %2)
  %i.af = add nuw i64 %.09, 1                     ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 24
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !289
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13CleanPolygonsERSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN10ClipperLib13CleanPolygonsERKSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EERS5_d(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.28", align 8    ; 18 uses
  %6 = alloca %"class.std::vector", align 8       ; 16 uses
  %7 = alloca %"class.std::vector", align 8       ; 16 uses
  %8 = alloca %"class.std::vector", align 8       ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load ptr, ptr %1, align 8                ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %.invoke, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not422 = icmp eq ptr %i.i, %i.j
  br i1 %.not422, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.q = mul nuw nsw i64 %i.n, 24
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32
          to label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i unwind label %bb.c ; 3 uses

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.r, ptr %5, align 8
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.n
  store ptr %i.t, ptr %i.p, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.b
  %.not324 = icmp eq ptr %i.i, %i.j               ; 2 uses
  br i1 %3, label %.preheader262, label %.preheader274

.preheader274:                                    ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit
  br i1 %.not324, label %.loopexit263, label %.lr.ph298

.lr.ph298:                                        ; preds = %.preheader274
  %i.u = icmp ugt i64 %i.g, 576460752303423487
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br i1 %i.u, label %.lr.ph298.split.us, label %.lr.ph298.split.preheader

.lr.ph298.split.preheader:                        ; preds = %.lr.ph298
  %.not322 = icmp eq ptr %i.b, %i.c
  br label %.lr.ph298.split

.lr.ph298.split.us:                               ; preds = %.lr.ph298
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.noexc108 unwind label %.loopexit.split-lp277

.preheader262:                                    ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit
  br i1 %.not324, label %.loopexit263, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader262
  %i.y = icmp ugt i64 %i.g, 576460752303423487
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br i1 %i.y, label %.lr.ph303.split.us, label %.lr.ph303.split.preheader

.lr.ph303.split.preheader:                        ; preds = %.lr.ph303
  %.not325 = icmp eq ptr %i.b, %i.c
  br label %.lr.ph303.split

.lr.ph303.split.us:                               ; preds = %.lr.ph303
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.noexc86 unwind label %.loopexit.split-lp265

bb.c:                                             ; preds = %.invoke, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i149, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph303.split:                                  ; preds = %.lr.ph303.split.preheader, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit
  %.069302 = phi i64 [ %i.cr, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit ], [ 0, %.lr.ph303.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not325, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i

.noexc86:                                         ; preds = %.lr.ph303.split.us
  unreachable

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %.lr.ph303.split
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32
          to label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.loopexit264 ; 4 uses

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i
  store ptr %i.ad, ptr %6, align 8
  store ptr %i.ad, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.f
  store ptr %i.ae, ptr %i.z, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit: ; preds = %.lr.ph303.split, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.af = phi ptr [ null, %.lr.ph303.split ], [ %i.ad, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %.not326 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not326, label %._crit_edge301, label %.lr.ph300

._crit_edge301:                                   ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit
  %i.ai = phi ptr [ %i.af, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit ], [ %i.cd, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.aj = load ptr, ptr %i.ab, align 8            ; 6 uses
  %i.ak = load ptr, ptr %i.p, align 8
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge301
  %i.al = load ptr, ptr %6, align 8               ; 2 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.i.i.i.i.i, label %.noexc89, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp ugt i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i, !prof !60

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc88 unwind label %.loopexit.split-lp265

.noexc88:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #32
          to label %.noexc89 unwind label %.loopexit264

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i, %bb.d
  %i.ar = phi ptr [ null, %bb.d ], [ %i.aq, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.ar, ptr %i.aj, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %6, align 8               ; 3 uses
  %i.aw = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc89, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %.noexc89 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %.noexc89 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc89
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc89 ], [ %i.ay, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.as, align 8
  %i.az = load ptr, ptr %i.ab, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.ba, ptr %i.ab, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %._crit_edge301
  invoke void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge unwind label %.loopexit264

._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge: ; preds = %bb.f
  %.pre345 = load ptr, ptr %6, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit

.loopexit264:                                     ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i, %bb.f
  %lpad.loopexit266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp265:                            ; preds = %.lr.ph303.split.us, %.noexc.i.i.i
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.lr.ph300:                                        ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit
  %i.bb = phi ptr [ %i.cd, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ], [ %i.af, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.bc = phi ptr [ %i.cg, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ], [ %i.ah, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit ]
  %.068299 = phi i64 [ %i.ce, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ], [ 0, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.bd = load ptr, ptr %1, align 8
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.069302
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.068299
  %i.bg = load <2 x i64>, ptr %i.be, align 8
  %i.bh = load <2 x i64>, ptr %i.bf, align 8
  %i.bi = add nsw <2 x i64> %i.bh, %i.bg          ; 2 uses
  %i.bj = load ptr, ptr %i.z, align 8
  %.not.i.i = icmp eq ptr %i.bb, %i.bj
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph300
  store <2 x i64> %i.bi, ptr %i.bb, align 8
  %i.bk = load ptr, ptr %i.aa, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bl, ptr %i.aa, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %.lr.ph300
  %i.bm = load ptr, ptr %6, align 8               ; 5 uses
  %i.bn = ptrtoint ptr %i.bb to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775792
  br i1 %i.bq, label %bb.i, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
          to label %.noexc95 unwind label %.loopexit.split-lp258

.noexc95:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.br = ashr exact i64 %i.bp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 576460752303423487)
  %i.bv = select i1 %i.bt, i64 576460752303423487, i64 %i.bu ; 3 uses
  %.not.i.i.i.i91 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i91)
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #32
          to label %.noexc96 unwind label %.loopexit257 ; 5 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store <2 x i64> %i.bi, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i92:                             ; preds = %.noexc96, %.lr.ph.i.i.i.i.i.i92
  %.012.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i92 ], [ %i.bx, %.noexc96 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i92 ], [ %i.bm, %.noexc96 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !290
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i93 = icmp eq ptr %i.bz, %i.bb
  br i1 %.not.i.i.i.i.i.i93, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i92, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i92, %.noexc96
  %.0.lcssa.i.i.i.i.i.i94 = phi ptr [ %i.bx, %.noexc96 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i92 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i94, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bx, ptr %6, align 8
  store ptr %i.cb, ptr %i.aa, align 8
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cc, ptr %i.z, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.g
  %i.cd = phi ptr [ %i.cb, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bl, %bb.g ] ; 2 uses
  %i.ce = add nuw i64 %.068299, 1                 ; 2 uses
  %i.cf = load ptr, ptr %i.a, align 8
  %i.cg = load ptr, ptr %0, align 8               ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 4
  %i.cl = icmp ult i64 %i.ce, %i.ck
  br i1 %i.cl, label %.lr.ph300, label %._crit_edge301, !llvm.loop !294

.loopexit257:                                     ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp258:                            ; preds = %bb.i
  %lpad.loopexit.split-lp260 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit: ; preds = %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i
  %i.cm = phi ptr [ %.pre345, %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge ], [ %i.av, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit
  %i.cn = load ptr, ptr %i.z, align 8
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cr = add nuw i64 %.069302, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.cr, %i.n
  br i1 %exitcond341.not, label %.loopexit263, label %.lr.ph303.split, !llvm.loop !295

bb.l:                                             ; preds = %.loopexit257, %.loopexit.split-lp258, %.loopexit264, %.loopexit.split-lp265
  %.pn76 = phi { ptr, i32 } [ %lpad.loopexit.split-lp267, %.loopexit.split-lp265 ], [ %lpad.loopexit266, %.loopexit264 ], [ %lpad.loopexit259, %.loopexit257 ], [ %lpad.loopexit.split-lp260, %.loopexit.split-lp258 ]
  %i.cs = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.z, align 8
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ar

.lr.ph298.split:                                  ; preds = %.lr.ph298.split.preheader, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143
  %.067297 = phi i64 [ %i.fl, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143 ], [ 0, %.lr.ph298.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not322, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i99

.noexc108:                                        ; preds = %.lr.ph298.split.us
  unreachable

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i99: ; preds = %.lr.ph298.split
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32
          to label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i107 unwind label %.loopexit276 ; 4 uses

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i107: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i99
  store ptr %i.cx, ptr %7, align 8
  store ptr %i.cx, ptr %i.w, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.f
  store ptr %i.cy, ptr %i.v, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110: ; preds = %.lr.ph298.split, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i107
  %i.cz = phi ptr [ null, %.lr.ph298.split ], [ %i.cx, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i107 ] ; 2 uses
  %i.da = load ptr, ptr %i.a, align 8
  %i.db = load ptr, ptr %0, align 8               ; 2 uses
  %.not323 = icmp eq ptr %i.da, %i.db
  br i1 %.not323, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110
  %i.dc = phi ptr [ %i.cz, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110 ], [ %i.ex, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141 ] ; 2 uses
  %i.dd = load ptr, ptr %i.x, align 8             ; 6 uses
  %i.de = load ptr, ptr %i.p, align 8
  %.not.i111 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i111, label %bb.p, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.df = load ptr, ptr %7, align 8               ; 2 uses
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i112 = icmp eq ptr %i.dc, %i.df
  br i1 %.not.i.i.i.i.i112, label %.noexc123, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp ugt i64 %i.di, 9223372036854775792
  br i1 %i.dj, label %.noexc.i.i.i121, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i113, !prof !60

.noexc.i.i.i121:                                  ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc122 unwind label %.loopexit.split-lp277

.noexc122:                                        ; preds = %.noexc.i.i.i121
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i113: ; preds = %bb.o
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #32
          to label %.noexc123 unwind label %.loopexit276

.noexc123:                                        ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i113, %bb.n
  %i.dl = phi ptr [ null, %bb.n ], [ %i.dk, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i113 ] ; 5 uses
  store ptr %i.dl, ptr %i.dd, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.dn, ptr %i.do, align 8
  %i.dp = load ptr, ptr %7, align 8               ; 3 uses
  %i.dq = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not7.i.i.i.i.i.i114 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not7.i.i.i.i.i.i114, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i119, label %.lr.ph.i.i.i.i.i.i115

.lr.ph.i.i.i.i.i.i115:                            ; preds = %.noexc123, %.lr.ph.i.i.i.i.i.i115
  %.09.i.i.i.i.i.i116 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i115 ], [ %i.dl, %.noexc123 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i117 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i115 ], [ %i.dp, %.noexc123 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i116, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i117, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i117, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i116, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i118 = icmp eq ptr %i.dr, %i.dq
  br i1 %.not.i.i.i.i.i.i118, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i119, label %.lr.ph.i.i.i.i.i.i115, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i119: ; preds = %.lr.ph.i.i.i.i.i.i115, %.noexc123
  %.0.lcssa.i.i.i.i.i.i120 = phi ptr [ %i.dl, %.noexc123 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i115 ]
  store ptr %.0.lcssa.i.i.i.i.i.i120, ptr %i.dm, align 8
  %i.dt = load ptr, ptr %i.x, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store ptr %i.du, ptr %i.x, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125_crit_edge unwind label %.loopexit276

._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125_crit_edge: ; preds = %bb.p
  %.pre = load ptr, ptr %7, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125

.loopexit276:                                     ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i99, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i113, %bb.p
  %lpad.loopexit278 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp277:                            ; preds = %.lr.ph298.split.us, %.noexc.i.i.i121
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141
  %i.dv = phi ptr [ %i.ex, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141 ], [ %i.cz, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110 ] ; 5 uses
  %i.dw = phi ptr [ %i.fa, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141 ], [ %i.db, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110 ]
  %.066296 = phi i64 [ %i.ey, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141 ], [ 0, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110 ] ; 2 uses
  %i.dx = load ptr, ptr %1, align 8
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.067297
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %.066296
  %i.ea = load <2 x i64>, ptr %i.dy, align 8
  %i.eb = load <2 x i64>, ptr %i.dz, align 8
  %i.ec = sub nsw <2 x i64> %i.ea, %i.eb          ; 2 uses
  %i.ed = load ptr, ptr %i.v, align 8
  %.not.i.i126 = icmp eq ptr %i.dv, %i.ed
  br i1 %.not.i.i126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  store <2 x i64> %i.ec, ptr %i.dv, align 8
  %i.ee = load ptr, ptr %i.w, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  store ptr %i.ef, ptr %i.w, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141

bb.r:                                             ; preds = %.lr.ph
  %i.eg = load ptr, ptr %7, align 8               ; 5 uses
  %i.eh = ptrtoint ptr %i.dv to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775792
  br i1 %i.ek, label %bb.s, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i127

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
          to label %.noexc139 unwind label %.loopexit.split-lp270

.noexc139:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i127: ; preds = %bb.r
  %i.el = ashr exact i64 %i.ej, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i128 = call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.em = add nsw i64 %.sroa.speculated.i.i.i.i128, %i.el ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.el
  %i.eo = call i64 @llvm.umin.i64(i64 %i.em, i64 576460752303423487)
  %i.ep = select i1 %i.en, i64 576460752303423487, i64 %i.eo ; 3 uses
  %.not.i.i.i.i129 = icmp ne i64 %i.ep, 0
  call void @llvm.assume(i1 %.not.i.i.i.i129)
  %i.eq = shl nuw nsw i64 %i.ep, 4
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #32
          to label %.noexc140 unwind label %.loopexit269 ; 5 uses

.noexc140:                                        ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i127
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej
  store <2 x i64> %i.ec, ptr %i.es, align 8
  %.not10.i.i.i.i.i.i130 = icmp eq ptr %i.eg, %i.dv
  br i1 %.not10.i.i.i.i.i.i130, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135, label %.lr.ph.i.i.i.i.i.i131

.lr.ph.i.i.i.i.i.i131:                            ; preds = %.noexc140, %.lr.ph.i.i.i.i.i.i131
  %.012.i.i.i.i.i.i132 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i131 ], [ %i.er, %.noexc140 ] ; 2 uses
  %.0911.i.i.i.i.i.i133 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i131 ], [ %i.eg, %.noexc140 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i132, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i133, i64 16, i1 false), !alias.scope !296
  %i.et = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i133, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i132, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i134 = icmp eq ptr %i.et, %i.dv
  br i1 %.not.i.i.i.i.i.i134, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135, label %.lr.ph.i.i.i.i.i.i131, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135: ; preds = %.lr.ph.i.i.i.i.i.i131, %.noexc140
  %.0.lcssa.i.i.i.i.i.i136 = phi ptr [ %i.er, %.noexc140 ], [ %i.eu, %.lr.ph.i.i.i.i.i.i131 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i136, i64 16 ; 2 uses
  %.not.i23.i.i.i137 = icmp eq ptr %i.eg, null
  br i1 %.not.i23.i.i.i137, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ej) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138: ; preds = %bb.t, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135
  store ptr %i.er, ptr %7, align 8
  store ptr %i.ev, ptr %i.w, align 8
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.ep
  store ptr %i.ew, ptr %i.v, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138, %bb.q
  %i.ex = phi ptr [ %i.ev, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138 ], [ %i.ef, %bb.q ] ; 2 uses
  %i.ey = add nuw i64 %.066296, 1                 ; 2 uses
  %i.ez = load ptr, ptr %i.a, align 8
  %i.fa = load ptr, ptr %0, align 8               ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 4
  %i.ff = icmp ult i64 %i.ey, %i.fe
  br i1 %i.ff, label %.lr.ph, label %._crit_edge, !llvm.loop !300

.loopexit269:                                     ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i127
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp270:                            ; preds = %bb.s
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125: ; preds = %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125_crit_edge, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i119
  %i.fg = phi ptr [ %.pre, %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125_crit_edge ], [ %i.dp, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i119 ] ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125
  %i.fh = load ptr, ptr %i.v, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.fl = add nuw i64 %.067297, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %i.n
  br i1 %exitcond.not, label %.loopexit263, label %.lr.ph298.split, !llvm.loop !301

bb.v:                                             ; preds = %.loopexit269, %.loopexit.split-lp270, %.loopexit276, %.loopexit.split-lp277
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp279, %.loopexit.split-lp277 ], [ %lpad.loopexit278, %.loopexit276 ], [ %lpad.loopexit271, %.loopexit269 ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp270 ]
  %i.fm = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i144 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i144, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fn = load ptr, ptr %i.v, align 8
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fq) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ar

.loopexit263:                                     ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, %.preheader274, %.preheader262
  %i.fr = load ptr, ptr %2, align 8               ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %.not.i.i146 = icmp eq ptr %i.ft, %i.fr
  br i1 %.not.i.i146, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %.loopexit263, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ga, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.fr, %.loopexit263 ] ; 3 uses
  %i.fu = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i147
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fz) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i147
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i148 = icmp eq ptr %i.ga, %i.ft
  br i1 %.not.i.i.i.i148, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i147, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.fr, ptr %i.fs, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %.loopexit263, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.gb = zext i1 %4 to i64
  %i.gc = add nuw nsw i64 %i.n, %i.gb
  %i.gd = add nsw i64 %i.g, 1
  %i.ge = mul i64 %i.gc, %i.gd                    ; 4 uses
  %i.gf = icmp ugt i64 %i.ge, 384307168202282325
  br i1 %i.gf, label %.invoke, label %bb.y

.invoke:                                          ; preds = %bb.a, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = load ptr, ptr %2, align 8               ; 4 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = sdiv exact i64 %i.gl, 24
  %i.gn = icmp ult i64 %i.gm, %i.ge
  br i1 %i.gn, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i149, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i149: ; preds = %bb.y
  %i.go = ptrtoint ptr %i.fr to i64
  %i.gp = sub i64 %i.go, %i.gk
  %i.gq = mul nuw nsw i64 %i.ge, 24
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #32
          to label %.noexc161 unwind label %bb.c  ; 4 uses

.noexc161:                                        ; preds = %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i149
  %.not10.i.i.i.i150 = icmp eq ptr %i.gi, %i.fr
  br i1 %.not10.i.i.i.i150, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157, label %.lr.ph.i.i.i.i151

.lr.ph.i.i.i.i151:                                ; preds = %.noexc161, %.lr.ph.i.i.i.i151
  %.012.i.i.i.i152 = phi ptr [ %i.gx, %.lr.ph.i.i.i.i151 ], [ %i.gr, %.noexc161 ] ; 3 uses
  %.0911.i.i.i.i153 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i151 ], [ %i.gi, %.noexc161 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.gs = load <2 x ptr>, ptr %.0911.i.i.i.i153, align 8, !alias.scope !305, !noalias !302
  store <2 x ptr> %i.gs, ptr %.012.i.i.i.i152, align 8, !alias.scope !302, !noalias !305
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i152, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i153, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !305, !noalias !302
  store ptr %i.gv, ptr %i.gt, align 8, !alias.scope !302, !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i153, i8 0, i64 24, i1 false), !alias.scope !305, !noalias !302
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i153, i64 24 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i152, i64 24
  %.not.i.i.i.i154 = icmp eq ptr %i.gw, %i.fr
  br i1 %.not.i.i.i.i154, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i155, label %.lr.ph.i.i.i.i151, !llvm.loop !58

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i155: ; preds = %.lr.ph.i.i.i.i151
  %.pre.i156 = load ptr, ptr %2, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i155, %.noexc161
  %i.gy = phi ptr [ %.pre.i156, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i155 ], [ %i.gi, %.noexc161 ] ; 3 uses
  %.not.i8.i158 = icmp eq ptr %i.gy, null
  br i1 %.not.i8.i158, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157
  %i.gz = load ptr, ptr %i.gg, align 8
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hc) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159: ; preds = %bb.z, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157
  store ptr %i.gr, ptr %2, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gp
  store ptr %i.hd, ptr %i.fs, align 8
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.ge
  store ptr %i.he, ptr %i.gg, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162: ; preds = %bb.y, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159
  %not. = xor i1 %4, true
  %i.hf = sext i1 %not. to i64
  %i.hg = add nsw i64 %i.n, %i.hf                 ; 2 uses
  %.not327 = icmp eq i64 %i.hg, 0
  br i1 %.not327, label %._crit_edge308, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162
  %.not328 = icmp eq ptr %i.b, %i.c
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 9 uses
  br i1 %.not328, label %._crit_edge308, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge306.us
  %.065307.us = phi i64 [ %i.hj, %._crit_edge306.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.hj = add nuw i64 %.065307.us, 1              ; 3 uses
  br label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us: ; preds = %.preheader.us, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us
  %.0305.us = phi i64 [ 0, %.preheader.us ], [ %i.ia, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.hk = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32
          to label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us unwind label %.loopexit.split.us ; 7 uses

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us
  store ptr %i.hk, ptr %8, align 8
  store ptr %i.hk, ptr %i.hi, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  store ptr %i.hl, ptr %i.hh, align 8
  %i.hm = urem i64 %.065307.us, %i.n              ; 2 uses
  %i.hn = load ptr, ptr %5, align 8               ; 2 uses
  %i.ho = urem i64 %.0305.us, %i.g                ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.hm
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 16, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  store ptr %i.hs, ptr %i.hi, align 8
  %i.ht = urem i64 %i.hj, %i.n                    ; 2 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 3 uses
  store ptr %i.hx, ptr %i.hi, align 8
  %.pre346 = load ptr, ptr %i.hh, align 8         ; 4 uses
  %i.hy = load ptr, ptr %5, align 8               ; 3 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %i.ht
  %i.ia = add nuw i64 %.0305.us, 1                ; 3 uses
  %i.ib = urem i64 %i.ia, %i.g                    ; 2 uses
  %i.ic = load ptr, ptr %i.hz, align 8
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %i.ib ; 2 uses
  %.not.i196.us = icmp eq ptr %i.hx, %.pre346
  br i1 %.not.i196.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 2 uses
  store ptr %i.ie, ptr %i.hi, align 8
  %.pre348 = load ptr, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us

bb.ab:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us
  %i.if = load ptr, ptr %8, align 8               ; 5 uses
  %i.ig = ptrtoint ptr %.pre346 to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 4 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775792
  br i1 %i.ij, label %.split316.us.invoke, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197.us

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197.us: ; preds = %bb.ab
  %i.ik = ashr exact i64 %i.ii, 4                 ; 3 uses
  %.sroa.speculated.i.i.i198.us = call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.il = add nsw i64 %.sroa.speculated.i.i.i198.us, %i.ik ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.ik
  %i.in = call i64 @llvm.umin.i64(i64 %i.il, i64 576460752303423487)
  %i.io = select i1 %i.im, i64 576460752303423487, i64 %i.in ; 3 uses
  %.not.i.i.i199.us = icmp ne i64 %i.io, 0
  call void @llvm.assume(i1 %.not.i.i.i199.us)
  %i.ip = shl nuw nsw i64 %i.io, 4
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #32
          to label %.noexc210.us unwind label %.loopexit.split.us ; 5 uses

.noexc210.us:                                     ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197.us
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false)
  %.not10.i.i.i.i.i200.us = icmp eq ptr %i.if, %.pre346
  br i1 %.not10.i.i.i.i.i200.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us, label %.lr.ph.i.i.i.i.i201.us

.lr.ph.i.i.i.i.i201.us:                           ; preds = %.noexc210.us, %.lr.ph.i.i.i.i.i201.us
  %.012.i.i.i.i.i202.us = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i201.us ], [ %i.iq, %.noexc210.us ] ; 2 uses
  %.0911.i.i.i.i.i203.us = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i201.us ], [ %i.if, %.noexc210.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i202.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i203.us, i64 16, i1 false), !alias.scope !307
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i203.us, i64 16 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i202.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i204.us = icmp eq ptr %i.is, %.pre346
  br i1 %.not.i.i.i.i.i204.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us, label %.lr.ph.i.i.i.i.i201.us, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us: ; preds = %.lr.ph.i.i.i.i.i201.us, %.noexc210.us
  %.0.lcssa.i.i.i.i.i206.us = phi ptr [ %i.iq, %.noexc210.us ], [ %i.it, %.lr.ph.i.i.i.i.i201.us ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i206.us, i64 16 ; 2 uses
  %.not.i23.i.i207.us = icmp eq ptr %i.if, null
  br i1 %.not.i23.i.i207.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ii) #33
  %.pre347.pre = load ptr, ptr %5, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us: ; preds = %bb.ac, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us
  %.pre347 = phi ptr [ %.pre347.pre, %bb.ac ], [ %i.hy, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us ]
  store ptr %i.iq, ptr %8, align 8
  store ptr %i.iu, ptr %i.hi, align 8
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.io ; 2 uses
  store ptr %i.iv, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us, %bb.aa
  %i.iw = phi ptr [ %i.iv, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us ], [ %.pre348, %bb.aa ] ; 4 uses
  %i.ix = phi ptr [ %i.iu, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us ], [ %i.ie, %bb.aa ] ; 3 uses
  %i.iy = phi ptr [ %.pre347, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us ], [ %i.hy, %bb.aa ]
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %i.hm
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %i.ib ; 2 uses
  %.not.i212.us = icmp eq ptr %i.ix, %i.iw
  br i1 %.not.i212.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  store ptr %i.jc, ptr %i.hi, align 8
  %.pre349 = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us

bb.ae:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us
  %i.jd = load ptr, ptr %8, align 8               ; 5 uses
  %i.je = ptrtoint ptr %i.iw to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 4 uses
  %i.jh = icmp eq i64 %i.jg, 9223372036854775792
  br i1 %i.jh, label %.split316.us.invoke, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213.us

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213.us: ; preds = %bb.ae
  %i.ji = ashr exact i64 %i.jg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i214.us = call i64 @llvm.umax.i64(i64 %i.ji, i64 1)
  %i.jj = add nsw i64 %.sroa.speculated.i.i.i214.us, %i.ji ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ji
  %i.jl = call i64 @llvm.umin.i64(i64 %i.jj, i64 576460752303423487)
  %i.jm = select i1 %i.jk, i64 576460752303423487, i64 %i.jl ; 3 uses
  %.not.i.i.i215.us = icmp ne i64 %i.jm, 0
  call void @llvm.assume(i1 %.not.i.i.i215.us)
  %i.jn = shl nuw nsw i64 %i.jm, 4
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #32
          to label %.noexc226.us unwind label %.loopexit.split.us ; 6 uses

.noexc226.us:                                     ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213.us
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false)
  %.not10.i.i.i.i.i216.us = icmp eq ptr %i.jd, %i.iw
  br i1 %.not10.i.i.i.i.i216.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us, label %.lr.ph.i.i.i.i.i217.us

.lr.ph.i.i.i.i.i217.us:                           ; preds = %.noexc226.us, %.lr.ph.i.i.i.i.i217.us
  %.012.i.i.i.i.i218.us = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i217.us ], [ %i.jo, %.noexc226.us ] ; 2 uses
  %.0911.i.i.i.i.i219.us = phi ptr [ %i.jq, %.lr.ph.i.i.i.i.i217.us ], [ %i.jd, %.noexc226.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i218.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i219.us, i64 16, i1 false), !alias.scope !311
  %i.jq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i219.us, i64 16 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i218.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i220.us = icmp eq ptr %i.jq, %i.iw
  br i1 %.not.i.i.i.i.i220.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us, label %.lr.ph.i.i.i.i.i217.us, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us: ; preds = %.lr.ph.i.i.i.i.i217.us, %.noexc226.us
  %.0.lcssa.i.i.i.i.i222.us = phi ptr [ %i.jo, %.noexc226.us ], [ %i.jr, %.lr.ph.i.i.i.i.i217.us ]
  %i.js = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i222.us, i64 16 ; 2 uses
  %.not.i23.i.i223.us = icmp eq ptr %i.jd, null
  br i1 %.not.i23.i.i223.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jg) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us: ; preds = %bb.af, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us
  store ptr %i.jo, ptr %8, align 8
  store ptr %i.js, ptr %i.hi, align 8
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.jm
  store ptr %i.jt, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us, %bb.ad
  %i.ju = phi ptr [ %i.jo, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us ], [ %.pre349, %bb.ad ] ; 6 uses
  %i.jv = phi ptr [ %i.js, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us ], [ %i.jc, %bb.ad ] ; 3 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.ju to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = lshr exact i64 %i.jy, 4                 ; 3 uses
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = icmp slt i32 %i.ka, 3
  br i1 %i.kb, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us
  %i.kc = add nsw i64 %i.jz, -1
  %wide.trip.count.i.i.us = and i64 %i.jz, 2147483647
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv.i.i.us = phi i64 [ 0, %bb.ag ], [ %indvars.iv.next.i.i.us, %bb.ah ] ; 3 uses
  %.023.i.i.us = phi i64 [ %i.kc, %bb.ag ], [ %indvars.iv.i.i.us, %bb.ah ]
  %.01821.i.i.us = phi double [ 0.000000e+00, %bb.ag ], [ %i.ks, %bb.ah ]
  %sext.i.i.us = shl i64 %.023.i.i.us, 32
  %i.kd = ashr exact i64 %sext.i.i.us, 28
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.kd ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = sitofp i64 %i.kf to double
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %indvars.iv.i.i.us ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = sitofp i64 %i.ki to double
  %i.kk = fadd double %i.kg, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = sitofp i64 %i.km to double
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = sitofp i64 %i.kp to double
  %i.kr = fsub double %i.kn, %i.kq
  %i.ks = call double @llvm.fmuladd.f64(double %i.kk, double %i.kr, double %.01821.i.i.us) ; 2 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond.not.i.i.us, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.us, label %bb.ah, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.us: ; preds = %bb.ah
  %i.kt = fmul double %i.ks, -5.000000e-01
  %i.ku = fcmp ult double %i.kt, 0.000000e+00
  br i1 %i.ku, label %bb.ai, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us

bb.ai:                                            ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.us
  %i.kv = icmp ne ptr %i.ju, %i.jv
  %.sroa.0.08.i.i.i.us = getelementptr inbounds i8, ptr %i.jv, i64 -16 ; 2 uses
  %i.kw = icmp ult ptr %i.ju, %.sroa.0.08.i.i.i.us
  %or.cond.i.i.i.us = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %or.cond.i.i.i.us, label %.lr.ph.i.i.i228.us, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us

.lr.ph.i.i.i228.us:                               ; preds = %bb.ai, %.lr.ph.i.i.i228.us
  %.sroa.0.010.i.i.i.us = phi ptr [ %.sroa.0.0.i.i.i.us, %.lr.ph.i.i.i228.us ], [ %.sroa.0.08.i.i.i.us, %bb.ai ] ; 3 uses
  %.sroa.05.09.i.i.i.us = phi ptr [ %i.kx, %.lr.ph.i.i.i228.us ], [ %i.ju, %bb.ai ] ; 3 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.05.09.i.i.i.us, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i.us, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i.i.us, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.us, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.us = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.us, i64 -16 ; 2 uses
  %i.ky = icmp ult ptr %i.kx, %.sroa.0.0.i.i.i.us
  br i1 %i.ky, label %.lr.ph.i.i.i228.us, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us, !llvm.loop !170

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us: ; preds = %.lr.ph.i.i.i228.us, %bb.ai, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.us, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us
  %i.kz = load ptr, ptr %i.fs, align 8            ; 6 uses
  %i.la = load ptr, ptr %i.gg, align 8
  %.not.i231.us = icmp eq ptr %i.kz, %i.la
  br i1 %.not.i231.us, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us
  %i.lb = load ptr, ptr %i.hi, align 8            ; 2 uses
  %i.lc = load ptr, ptr %8, align 8               ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i232.us = icmp eq ptr %i.lb, %i.lc
  br i1 %.not.i.i.i.i.i232.us, label %.noexc243.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lg = icmp ugt i64 %i.lf, 9223372036854775792
  br i1 %i.lg, label %.noexc.i.i.i241, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us, !prof !60

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us: ; preds = %bb.ak
  %i.lh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #32
          to label %.noexc243.us unwind label %.loopexit.split.us

.noexc243.us:                                     ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us, %bb.aj
  %i.li = phi ptr [ null, %bb.aj ], [ %i.lh, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us ] ; 5 uses
  store ptr %i.li, ptr %i.kz, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  store ptr %i.li, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lf
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store ptr %i.lk, ptr %i.ll, align 8
  %i.lm = load ptr, ptr %8, align 8               ; 3 uses
  %i.ln = load ptr, ptr %i.hi, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i234.us = icmp eq ptr %i.lm, %i.ln
  br i1 %.not7.i.i.i.i.i.i234.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us, label %.lr.ph.i.i.i.i.i.i235.us

.lr.ph.i.i.i.i.i.i235.us:                         ; preds = %.noexc243.us, %.lr.ph.i.i.i.i.i.i235.us
  %.09.i.i.i.i.i.i236.us = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i235.us ], [ %i.li, %.noexc243.us ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i237.us = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i.i235.us ], [ %i.lm, %.noexc243.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i236.us, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i237.us, i64 16, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i237.us, i64 16 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i236.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i238.us = icmp eq ptr %i.lo, %i.ln
  br i1 %.not.i.i.i.i.i.i238.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us, label %.lr.ph.i.i.i.i.i.i235.us, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us: ; preds = %.lr.ph.i.i.i.i.i.i235.us, %.noexc243.us
  %.0.lcssa.i.i.i.i.i.i240.us = phi ptr [ %i.li, %.noexc243.us ], [ %i.lp, %.lr.ph.i.i.i.i.i.i235.us ]
  store ptr %.0.lcssa.i.i.i.i.i.i240.us, ptr %i.lj, align 8
  %i.lq = load ptr, ptr %i.fs, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  store ptr %i.lr, ptr %i.fs, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us

bb.al:                                            ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us
  invoke void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.kz, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge unwind label %.loopexit.split.us

._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge: ; preds = %bb.al
  %.pre350 = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us: ; preds = %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us
  %i.ls = phi ptr [ %.pre350, %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge ], [ %i.lm, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us ] ; 3 uses
  %.not.i.i.i246.us = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i246.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us
  %i.lt = load ptr, ptr %i.hh, align 8
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lw) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us: ; preds = %bb.am, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %exitcond343.not = icmp eq i64 %i.ia, %i.g
  br i1 %exitcond343.not, label %._crit_edge306.us, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us, !llvm.loop !315

._crit_edge306.us:                                ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us
  %exitcond344.not = icmp eq i64 %i.hj, %i.hg
  br i1 %exitcond344.not, label %._crit_edge308, label %.preheader.us, !llvm.loop !316

.loopexit.split.us:                               ; preds = %bb.al, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213.us, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197.us, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

._crit_edge308:                                   ; preds = %._crit_edge306.us, %.preheader.lr.ph, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162
  %i.lx = load ptr, ptr %5, align 8               ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lx, %i.lz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge308, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mg, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i ], [ %i.lx, %._crit_edge308 ] ; 3 uses
  %i.ma = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.ma to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mf) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i163 = icmp eq ptr %i.mg, %i.lz
  br i1 %.not.i.i.i163, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %._crit_edge308
  %i.mh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.lx, %._crit_edge308 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.mi = load ptr, ptr %i.p, align 8
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mh to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.ml) #33
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

.split316.us.invoke:                              ; preds = %bb.ae, %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
          to label %.split316.us.cont unwind label %.loopexit.split-lp

.split316.us.cont:                                ; preds = %.split316.us.invoke
  unreachable

.loopexit.split-lp:                               ; preds = %.split316.us.invoke, %.noexc.i.i.i241
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.mm = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i.i229 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mn = load ptr, ptr %i.hh, align 8
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.mm to i64
  %i.mq = sub i64 %i.mo, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mq) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ar

.noexc.i.i.i241:                                  ; preds = %bb.ak
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc242 unwind label %.loopexit.split-lp

.noexc242:                                        ; preds = %.noexc.i.i.i241
  unreachable

bb.ar:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98, %bb.c
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98 ], [ %lpad.phi, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230 ], [ %i.ac, %bb.c ], [ %.pn, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145 ]
  call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn76.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib12MinkowskiSumERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ClipperLib::Clipper", align 8 ; 27 uses
  tail call void @_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true, i1 noundef zeroext %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 134
  store i8 0, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 209
  store i8 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %i.s = phi ptr [ %i.aa, %.noexc ], [ %i.r, %bb.a ]
  %.010.i = phi i64 [ %i.y, %.noexc ], [ 0, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.010.i
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit, !inline_history !173 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, !llvm.loop !44

_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit: ; preds = %.noexc, %bb.a
  %i.ag = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef 1)
          to label %bb.b unwind label %.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.ah = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ah, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.b ] ; 2 uses
  %i.ai = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #33, !inline_history !178
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !82

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #33, !inline_history !178
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #33, !inline_history !178
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.ax = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #33, !inline_history !178
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.e
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #30, !inline_history !178
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  %i.u = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.v = insertelement <2 x i64> %i.u, i64 %3, i64 1
  br label %.lr.ph

end_hunk_7
begin_hunk_8_@_ZNK10ClipperLib16clipperException4whatEv:bb.a
  ret ptr %i.b
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #26

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #27

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #25

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = load ptr, ptr %2, align 8                ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26.thread, label %bb.c

.noexc26.thread:                                  ; preds = %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr null, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %i.aa = icmp ugt i64 %i.w, 9223372036854775792
  br i1 %i.aa, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i, !prof !60

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32
          to label %.noexc26 unwind label %bb.f   ; 4 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc26, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.noexc26 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.t, %.noexc26 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.s
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !61

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc26.thread
  %i.ah = phi ptr [ %i.x, %.noexc26.thread ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc26.thread ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ah, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !344, !noalias !341
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !341, !noalias !344
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !344, !noalias !341
  store ptr %i.al, ptr %i.aj, align 8, !alias.scope !341, !noalias !344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !344, !noalias !341
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !58

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %i.ao, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.at, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !alias.scope !349, !noalias !346
  store <2 x ptr> %i.ap, ptr %.012.i.i.i29, align 8, !alias.scope !346, !noalias !349
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !349, !noalias !346
  store ptr %i.as, ptr %i.aq, align 8, !alias.scope !346, !noalias !349
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !349, !noalias !346
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !58

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ao, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.au, %.lr.ph.i.i.i28 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.az, ptr %i.av, align 8
  ret void

bb.e:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ba

bb.h:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %3 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %4 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %5 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %6 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %7 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %8 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %9 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph49

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEET_SD_SD_T0_.exit
  %i.g = icmp eq i64 %i.bv, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph49, !llvm.loop !351

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa45 = phi i64 [ %i.c, %.lr.ph ], [ %i.cp, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa45, 24             ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_T0_SE_T1_T2_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.am, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_T0_SE_T1_T2_.exit.i.i ] ; 8 uses
  %i.r = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  %.sroa.016.0.copyload.i.i = load i64, ptr %i.r, align 8 ; 2 uses
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.417.0..sroa.0.0..sroa_idx.i.i, align 8
  %i.s = icmp slt i64 %.08.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [24 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = load i64, ptr %i.v, align 8
  %i.aa = icmp slt i64 %i.y, %i.z
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.ad = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ad, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !352

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ae, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.o, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.af = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.af, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_T0_SE_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp slt i64 %.sroa.016.0.copyload.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_T0_SE_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.ak = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_T0_SE_T1_T2_.exit.i.i, !llvm.loop !353

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_T0_SE_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store i64 %.sroa.016.0.copyload.i.i, ptr %i.al, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store <16 x i8> %.sroa.4.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.am = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !354

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_T0_SE_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.an, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_T0_SE_T1_T2_.exit.i.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  %.sroa.08.0.copyload.i.i.i = load i64, ptr %i.an, align 8 ; 2 uses
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16
  %.sroa.4.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.a                     ; 3 uses
  %i.aq = sdiv exact i64 %i.ap, 24                ; 3 uses
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = sdiv i64 %i.ar, 2
  %i.at = icmp sgt i64 %i.ap, 48
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.au = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.av = add i64 %i.au, 2                        ; 2 uses
  %i.aw = getelementptr inbounds [24 x i8], ptr %0, i64 %i.av
  %i.ax = or disjoint i64 %i.au, 1                ; 2 uses
  %i.ay = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.aw, align 8
  %i.bb = icmp slt i64 %i.az, %i.ba
  %spec.select.i.i.i.i = select i1 %i.bb, i64 %i.ax, i64 %i.av ; 4 uses
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  %i.be = icmp slt i64 %spec.select.i.i.i.i, %i.as
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !352

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bf = and i64 %i.aq, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = add nsw i64 %i.aq, -2
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bi
  br i1 %i.bj, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bk = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bl = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bl
  %i.bn = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bl, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i1011.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i1011.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i1011.i.i.i ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp slt i64 %.sroa.08.0.copyload.i.i.i, %i.bp
  br i1 %i.bq, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds [24 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  %.not12.i.i.i = icmp eq i64 %.0919.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !353

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bs = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.08.0.copyload.i.i.i, ptr %i.bs, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <16 x i8> %.sroa.4.i.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %i.bt = icmp sgt i64 %i.ap, 24
  br i1 %i.bt, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_T0_.exit, !llvm.loop !355

.lr.ph49:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2548 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02647 = phi i64 [ %i.bv, %bb.b ], [ %2, %.lr.ph ]
  %i.bu = phi i64 [ %i.cp, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bv = add nsw i64 %.02647, -1                 ; 3 uses
  %i.bw = udiv i64 %i.bu, 48
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bw ; 5 uses
  %i.by = getelementptr inbounds i8, ptr %storemerge2548, i64 -24 ; 5 uses
  %i.bz = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.ca = load i64, ptr %i.e, align 8             ; 3 uses
  %i.cb = icmp slt i64 %i.bz, %i.ca
  %i.cc = load i64, ptr %i.by, align 8            ; 4 uses
  br i1 %i.cb, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph49
  %i.cd = icmp slt i64 %i.cc, %i.bz
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.ce = icmp slt i64 %i.cc, %i.ca
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph49
  %i.cf = icmp slt i64 %i.cc, %i.ca
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cg = icmp slt i64 %i.cc, %i.bz
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.ck, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %i.ch = load i64, ptr %0, align 8               ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.ck, %bb.t ] ; 9 uses
  %i.ci = load i64, ptr %.sroa.010.1.i.i, align 8
  %i.cj = icmp slt i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24 ; 2 uses
  br i1 %i.cj, label %bb.t, label %.preheader.i.i, !llvm.loop !356

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.cl = load i64, ptr %.sroa.0.1.i.i, align 8
  %i.cm = icmp slt i64 %i.cl, %i.ch
  br i1 %i.cm, label %.preheader.i.i, label %bb.u, !llvm.loop !357

bb.u:                                             ; preds = %.preheader.i.i
  %i.cn = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cn, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEET_SD_SD_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.1.i.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !358

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEET_SD_SD_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2548, i64 noundef %i.bv)
  %i.co = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a                     ; 3 uses
  %i.cq = icmp sgt i64 %i.cp, 384
  br i1 %i.cq, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_T0_.exit, !llvm.loop !351

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %3 = alloca %"struct.ClipperLib::LocalMinimum", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load i64, ptr %0, align 8
  %i.f = load i64, ptr %.sroa.0.019.i.ptr, align 8 ; 4 uses
  %i.g = icmp slt i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr, i64 24, i1 false)
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 24
  br i1 %i.h, label %bb.d, label %bb.e, !prof !134

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32
  %.sroa.5.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.j = load i64, ptr %.pn18.i, align 8
  %i.k = icmp slt i64 %i.j, %i.f
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -24 ; 2 uses
  %i.l = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.m = icmp slt i64 %i.l, %i.f
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i, !llvm.loop !359

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i64 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store <16 x i8> %.sroa.5.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !360

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not6.i = icmp eq ptr %i.n, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i15 ], [ %i.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i64, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.5.i.i12.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.5.0..sroa_idx.i.i14, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -24 ; 2 uses
  %i.o = load i64, ptr %.sroa.0.09.i.i, align 8
  %i.p = icmp slt i64 %i.o, %.sroa.03.0.copyload.i.i
  br i1 %i.p, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i15

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i19
  %.sroa.0.011.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.sroa.0.09.i.i, %.lr.ph.i13 ] ; 4 uses
  %.sroa.06.010.i.i21 = phi ptr [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.07.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i20, i64 24, i1 false)
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i20, i64 -24 ; 2 uses
  %i.q = load i64, ptr %.sroa.0.0.i.i22, align 8
  %i.r = icmp slt i64 %i.q, %.sroa.03.0.copyload.i.i
  br i1 %i.r, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i15, !llvm.loop !359

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i19, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ] ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i16, align 8
  %.sroa.5.0..sroa_idx5.i.i17 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16, i64 8
  store <16 x i8> %.sroa.5.i.i12.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx5.i.i17, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.not.i18 = icmp eq ptr %i.s, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit, label %.lr.ph.i13, !llvm.loop !361

bb.h:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %0, %1
  %.sroa.0.016.i25 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not17.i26 = icmp eq ptr %.sroa.0.016.i25, %1
  %or.cond = select i1 %i.t, i1 true, i1 %.not17.i26
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i28 = phi ptr [ %.sroa.0.0.i34, %bb.n ], [ %.sroa.0.016.i25, %bb.h ] ; 7 uses
  %.pn18.i29 = phi ptr [ %.sroa.0.019.i28, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.u = load i64, ptr %0, align 8
  %i.v = load i64, ptr %.sroa.0.019.i28, align 8  ; 4 uses
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i28, i64 24, i1 false)
  %i.x = ptrtoint ptr %.sroa.0.019.i28 to i64
  %i.y = sub i64 %i.x, %i.b                       ; 4 uses
  %i.z = icmp sgt i64 %i.y, 24
  br i1 %i.z, label %bb.j, label %bb.k, !prof !134

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 48
  %.neg24.i41 = udiv exact i64 %i.y, 24
  %.neg24.neg.i42 = sub nsw i64 0, %.neg24.i41
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %.neg24.neg.i42
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.y, 24
  br i1 %i.ac, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i27
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 32
  %.sroa.5.i.i23.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.5.0..sroa_idx.i.i30, align 8
  %i.ae = load i64, ptr %.pn18.i29, align 8
  %i.af = icmp slt i64 %i.ae, %i.v
  br i1 %i.af, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i31

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.0.011.i.i37 = phi ptr [ %.sroa.0.0.i.i39, %.lr.ph.i.i36 ], [ %.pn18.i29, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i38 = phi ptr [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ], [ %.sroa.0.019.i28, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i37, i64 24, i1 false)
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i37, i64 -24 ; 2 uses
  %i.ag = load i64, ptr %.sroa.0.0.i.i39, align 8
  %i.ah = icmp slt i64 %i.ag, %i.v
  br i1 %i.ah, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i31, !llvm.loop !359

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i31: ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.06.0.lcssa.i.i32 = phi ptr [ %.sroa.0.019.i28, %bb.m ], [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ] ; 2 uses
  store i64 %i.v, ptr %.sroa.06.0.lcssa.i.i32, align 8
  %.sroa.5.0..sroa_idx5.i.i33 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i32, i64 8
  store <16 x i8> %.sroa.5.i.i23.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx5.i.i33, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i31, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i40
  %.sroa.0.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i28, i64 24 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.0.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit, label %.lr.ph.i27, !llvm.loop !360

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12LocMinSorterEEEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib12LocalMinimumESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_12LocMinSorterEEEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN10ClipperLib8IntPointESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN10ClipperLib8IntPointESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #31
  unreachable

_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !365, !noalias !362
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !alias.scope !362, !noalias !365
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !365, !noalias !362
  store ptr %i.aa, ptr %i.y, align 8, !alias.scope !362, !noalias !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !365, !noalias !362
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !58

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIN10ClipperLib8IntPointESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.68", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph30

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEET_SF_SF_T0_.exit
  %i.h = icmp eq i64 %i.av, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph30, !llvm.loop !367

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i ], [ %storemerge19.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %0, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = sdiv i64 %i.o, 2
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = call noundef zeroext i1 %3(ptr noundef %i.w, ptr noundef %i.x), !inline_history !368
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !369

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.al, ptr %i.am, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN10ClipperLib13IntersectNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i78.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
end_hunk_8
