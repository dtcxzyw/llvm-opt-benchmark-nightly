inline.NumInlined: 1486
inline.NumDeleted: 584
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%class.LogMessage = type { i8, %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, duckdb_re2::Prefilter *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, duckdb_re2::Prefilter *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, duckdb_re2::Prefilter *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, duckdb_re2::Prefilter *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.duckdb_re2::SparseArray" = type { i32, %"class.duckdb_re2::PODArray", %"class.duckdb_re2::PODArray.35" }
%"class.duckdb_re2::PODArray" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Tuple_impl.33", %"struct.std::_Head_base.34" }
%"struct.std::_Tuple_impl.33" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %"struct.duckdb_re2::PODArray<int>::Deleter" }
%"struct.duckdb_re2::PODArray<int>::Deleter" = type { i32 }
%"struct.std::_Head_base.34" = type { ptr }
%"class.duckdb_re2::PODArray.35" = type { %"class.std::unique_ptr.36" }
%"class.std::unique_ptr.36" = type { %"struct.std::__uniq_ptr_data.37" }
%"struct.std::__uniq_ptr_data.37" = type { %"class.std::__uniq_ptr_impl.38" }
%"class.std::__uniq_ptr_impl.38" = type { %"class.std::tuple.39" }
%"class.std::tuple.39" = type { %"struct.std::_Tuple_impl.40" }
%"struct.std::_Tuple_impl.40" = type { %"struct.std::_Tuple_impl.41", %"struct.std::_Head_base.43" }
%"struct.std::_Tuple_impl.41" = type { %"struct.std::_Head_base.42" }
%"struct.std::_Head_base.42" = type { %"struct.duckdb_re2::PODArray<duckdb_re2::SparseArray<int>::IndexValue>::Deleter" }
%"struct.duckdb_re2::PODArray<duckdb_re2::SparseArray<int>::IndexValue>::Deleter" = type { i32 }
%"struct.std::_Head_base.43" = type { ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, duckdb_re2::Prefilter *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, duckdb_re2::Prefilter *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZN10LogMessageD2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev = comdat any

$_ZN10duckdb_re211SparseArrayIiED2Ev = comdat any

$_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJS5_RSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE17_M_default_appendEm = comdat any

$_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_T1_ = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_T2_ = comdat any

$_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_ = comdat any

$_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_ = comdat any

$_ZSt17__merge_sort_loopIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_ = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_ = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag = comdat any

$_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_SC_T2_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_ = comdat any

$_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEvNS4_IPiS1_EET_SA_St20forward_iterator_tag = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

@.str.1 = private unnamed_addr constant [26 x i8] c"Add called after Compile.\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Compile called already.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unexpected op in KeepNode: \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Unexpected op: \00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"RegexpsGivenStrings called before Compile.\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"#Unique Atoms: \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"#Unique Nodes: \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"EntryId: \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" N: \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" R: \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Map:\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"NodeId: \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" Str: \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1

@_ZN10duckdb_re213PrefilterTreeC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10duckdb_re213PrefilterTreeC2Ev
@_ZN10duckdb_re213PrefilterTreeC1Ei = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN10duckdb_re213PrefilterTreeC2Ei
@_ZN10duckdb_re213PrefilterTreeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10duckdb_re213PrefilterTreeD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10duckdb_re213PrefilterTreeC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(104) initializes((0, 97), (100, 104)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %0, i8 0, i64 97, i1 false)
  store i32 3, ptr %i.a, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10duckdb_re213PrefilterTreeC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(104) initializes((0, 97), (100, 104)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %0, i8 0, i64 97, i1 false)
  store i32 %1, ptr %i.a, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10duckdb_re213PrefilterTreeD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(104) dereferenceable(104) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.e = phi ptr [ %i.d, %bb.a ], [ %i.y, %bb.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #22
  %.pre10 = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.b
  %i.h = phi ptr [ %i.e, %._crit_edge ], [ %.pre10, %bb.b ] ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #22
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit, %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6, %_ZSt8_DestroyIN10duckdb_re213PrefilterTree5EntryEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN10duckdb_re213PrefilterTree5EntryEEvPT_.exit.i.i.i ], [ %i.k, %_ZNSt6vectorIiSaIiEED2Ev.exit6 ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.e, %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN10duckdb_re213PrefilterTree5EntryEEvPT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #22
  br label %_ZSt8_DestroyIN10duckdb_re213PrefilterTree5EntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN10duckdb_re213PrefilterTree5EntryEEvPT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !32

_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN10duckdb_re213PrefilterTree5EntryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit6
  %i.s = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %_ZNSt6vectorIiSaIiEED2Ev.exit6 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #22
  br label %_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN10duckdb_re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i, %bb.g
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.t = phi ptr [ %i.y, %bb.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %i.z, %bb.i ], [ %i.c, %bb.a ]
  %.08 = phi i64 [ %i.aa, %bb.i ], [ 0, %bb.a ]   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.08
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  tail call void @_ZN10duckdb_re29PrefilterD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.w) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #22
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !27
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.y = phi ptr [ %i.t, %.lr.ph ], [ %.pre9, %bb.h ] ; 3 uses
  %i.z = phi ptr [ %i.u, %.lr.ph ], [ %.pre, %bb.h ] ; 2 uses
  %i.aa = add nuw i64 %.08, 1                     ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !36
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN10duckdb_re29PrefilterD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re213PrefilterTree3AddEPNS_9PrefilterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !37, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i8 0, ptr %2, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.d)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.1, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !53
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.k, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.m) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.k, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #23
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.r

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZNK10duckdb_re213PrefilterTree8KeepNodeEPNS_9PrefilterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1)
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN10duckdb_re29PrefilterD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %1) #23
  tail call void @_ZdlPv(ptr noundef nonnull %1) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %1, %bb.e ], [ null, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.0, ptr %i.v, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.u, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !28   ; 4 uses
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.j, label %_ZNKSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZNKSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #25 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store ptr %.0, ptr %i.al, align 8, !tbaa !34
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.k, label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.not.i17.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #22
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !28
  store ptr %i.an, ptr %i.u, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !56
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.h, %_ZN10LogMessageD2Ev.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.i) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re213PrefilterTree8KeepNodeEPNS_9PrefilterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !57
  switch i32 %i.b, label %bb.c [
    i32 0, label %.loopexit
    i32 1, label %.loopexit
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i8 0, ptr %2, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.i)
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.5, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !57
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.k)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !53
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.t) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.r, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #23
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp uge i64 %i.aa, %i.ad
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 3 uses
  %.not48 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not48, label %._crit_edge, label %.lr.ph43

._crit_edge:                                      ; preds = %bb.n, %bb.g
  %.031.lcssa = phi i32 [ 0, %bb.g ], [ %.132, %bb.n ] ; 2 uses
  %.lcssa36 = phi ptr [ %i.ai, %bb.g ], [ %i.bd, %bb.n ]
  %.lcssa35 = phi ptr [ %i.aj, %bb.g ], [ %i.bb, %bb.n ]
  %.lcssa = phi i64 [ 0, %bb.g ], [ %i.bh, %bb.n ] ; 3 uses
  %i.ak = sext i32 %.031.lcssa to i64             ; 4 uses
  %i.al = icmp ult i64 %.lcssa, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.am = sub nuw nsw i64 %i.ak, %.lcssa
  tail call void @_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.am)
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE6resizeEm.exit

bb.i:                                             ; preds = %._crit_edge
  %i.an = icmp ugt i64 %.lcssa, %i.ak
  br i1 %i.an, label %bb.j, label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.lcssa35, i64 %i.ak ; 2 uses
  %.not.i.i = icmp eq ptr %.lcssa36, %i.ao
  br i1 %.not.i.i, label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN10duckdb_re29PrefilterES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN10duckdb_re29PrefilterES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPPN10duckdb_re29PrefilterES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ap = icmp sgt i32 %.031.lcssa, 0
  br label %.loopexit

.lr.ph43:                                         ; preds = %bb.g, %bb.n
  %i.aq = phi ptr [ %i.bb, %bb.n ], [ %i.aj, %bb.g ]
  %.02942 = phi i64 [ %i.bc, %bb.n ], [ 0, %bb.g ] ; 3 uses
  %.03141 = phi i32 [ %.132, %bb.n ], [ 0, %bb.g ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.02942
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.at = tail call noundef zeroext i1 @_ZNK10duckdb_re213PrefilterTree8KeepNodeEPNS_9PrefilterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.as)
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.02942
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34 ; 4 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph43
  %i.ax = add nsw i32 %.03141, 1
  %i.ay = sext i32 %.03141 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ay
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !34
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph43
  %i.ba = icmp eq ptr %i.aw, null
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN10duckdb_re29PrefilterD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.aw) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #22
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %i.bb = phi ptr [ %i.au, %bb.k ], [ %i.au, %bb.l ], [ %.pre, %bb.m ] ; 3 uses
  %.132 = phi i32 [ %i.ax, %bb.k ], [ %.03141, %bb.l ], [ %.03141, %bb.m ] ; 2 uses
  %i.bc = add nuw i64 %.02942, 1                  ; 2 uses
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3                 ; 2 uses
  %i.bi = icmp ult i64 %i.bc, %i.bh
  br i1 %i.bi, label %.lr.ph43, label %._crit_edge, !llvm.loop !63

bb.o:                                             ; preds = %.lr.ph
  %i.bj = add nuw i64 %.02838, 1                  ; 2 uses
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !61  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !28 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %.not = icmp ult i64 %i.bj, %i.br
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !64

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %i.bs = phi ptr [ %i.bn, %bb.o ], [ %i.g, %.preheader ]
  %.02838 = phi i64 [ %i.bj, %bb.o ], [ 0, %.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.02838
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !34
  %i.bv = tail call noundef zeroext i1 @_ZNK10duckdb_re213PrefilterTree8KeepNodeEPNS_9PrefilterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.bu) ; 3 uses
  br i1 %i.bv, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.o, %.preheader, %bb.b, %bb.b, %bb.a, %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE6resizeEm.exit, %bb.f, %_ZN10LogMessageD2Ev.exit
  %.1 = phi i1 [ false, %bb.b ], [ false, %_ZN10LogMessageD2Ev.exit ], [ false, %bb.a ], [ %i.ae, %bb.f ], [ %i.ap, %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EE6resizeEm.exit ], [ false, %bb.b ], [ true, %.preheader ], [ %i.bv, %bb.o ], [ %i.bv, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re213PrefilterTree7CompileEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %3 = alloca %"class.std::map", align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !37, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re213PrefilterTree15AssignUniqueIdsEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_9PrefilterESt4lessIS7_ESaISt4pairIKS7_S9_EEEPSt6vectorIS7_SaIS7_EE:bb.a
  %.sroa.032.051.i.i.i = phi ptr [ %i.oy, %.lr.ph.i.i.i ], [ %i.pw, %bb.cn ] ; 9 uses
  %i.pl = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !3
  %i.pm = icmp eq i32 %i.pl, %i.mo
  br i1 %i.pm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3
  %i.pp = icmp eq i32 %i.po, %i.mo
  br i1 %i.pp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit607, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !3
  %i.ps = icmp eq i32 %i.pr, %i.mo
  br i1 %i.ps, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit605, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !3
  %i.pv = icmp eq i32 %i.pu, %i.mo
  br i1 %i.pv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.px = add nsw i64 %.052.i.i.i, -1
  %i.py = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.py, label %bb.cj, label %._crit_edge.loopexit.i.i.i, !llvm.loop !106

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.cn
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.oz, %.pre59.i.i.i
  br label %._crit_edge.i.i.i208

._crit_edge.i.i.i208:                             ; preds = %._crit_edge.loopexit.i.i.i, %bb.ci
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.pb, %bb.ci ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.oy, %bb.ci ] ; 5 uses
  %i.pz = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.pz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.co
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i208
  %i.qa = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !3
  %i.qb = icmp eq i32 %i.qa, %i.mo
  br i1 %i.qb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i208, %bb.cp
  %.sroa.032.1.i.i.i = phi ptr [ %i.qc, %bb.cp ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i208 ] ; 3 uses
  %i.qd = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !3
  %i.qe = icmp eq i32 %i.qd, %i.mo
  br i1 %i.qe, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i208, %bb.cq
  %.sroa.032.2.i.i.i = phi ptr [ %i.qf, %bb.cq ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i208 ] ; 2 uses
  %i.qg = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !3
  %i.qh = icmp eq i32 %i.qg, %i.mo
  %spec.select.i.i.i = select i1 %i.qh, ptr %.sroa.032.2.i.i.i, ptr %i.ox
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.cm
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit605: ; preds = %bb.cl
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit607: ; preds = %bb.ck
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit: ; preds = %bb.cj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit605, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit607, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.co
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.co ], [ %i.qk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit607 ], [ %i.qj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit605 ], [ %i.qi, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.cj ] ; 2 uses
  %.not283 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.ox
  br i1 %.not283, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %i.ql = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.qm = sub i64 %i.ql, %i.pa
  %i.qn = getelementptr inbounds i8, ptr %i.oy, i64 %i.qm ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 4 uses
  %.not.i.i209 = icmp eq ptr %i.qo, %i.ox
  br i1 %.not.i.i209, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = sub i64 %i.oz, %i.qp                    ; 3 uses
  %i.qr = icmp sgt i64 %i.qq, 4
  br i1 %i.qr, label %bb.ct, label %bb.cu, !prof !107

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.qn, ptr nonnull align 4 %i.qo, i64 %i.qq, i1 false)
  %.pre.i.i = load ptr, ptr %i.ow, align 8, !tbaa !80
  %.pre493 = load ptr, ptr %0, align 8, !tbaa !30
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs
  %i.qs = icmp eq i64 %i.qq, 4
  br i1 %i.qs, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.qt = load i32, ptr %i.qo, align 4, !tbaa !3
  store i32 %i.qt, ptr %i.qn, align 4, !tbaa !3
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cr
  %i.qu = phi ptr [ %i.oo, %bb.cv ], [ %i.oo, %bb.cu ], [ %.pre493, %bb.ct ], [ %i.oo, %bb.cr ] ; 3 uses
  %i.qv = phi ptr [ %i.ox, %bb.cv ], [ %i.ox, %bb.cu ], [ %.pre.i.i, %bb.ct ], [ %i.ox, %bb.cr ]
  %i.qw = getelementptr inbounds i8, ptr %i.qv, i64 -4
  store ptr %i.qw, ptr %i.ow, align 8, !tbaa !80
  %i.qx = getelementptr inbounds nuw [56 x i8], ptr %i.qu, i64 %i.mu ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !93
  %i.qz = add nsw i32 %i.qy, -1
  store i32 %i.qz, ptr %i.qx, align 8, !tbaa !93
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i208, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, %bb.cw, %bb.ch, %bb.cg
  %i.ra = phi ptr [ %i.oo, %bb.cg ], [ %i.oo, %bb.ch ], [ %i.oo, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ], [ %i.qu, %bb.cw ], [ %i.oo, %._crit_edge.i.i.i208 ]
  %i.rb = phi ptr [ %i.op, %bb.cg ], [ %i.op, %bb.ch ], [ %i.op, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ], [ %i.qu, %bb.cw ], [ %i.op, %._crit_edge.i.i.i208 ]
  %.1113 = phi double [ %i.pg, %bb.cg ], [ %.0112438, %bb.ch ], [ %.0112438, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ], [ %.0112438, %bb.cw ], [ %.0112438, %._crit_edge.i.i.i208 ]
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0219.0437, i64 16 ; 2 uses
  %.not282 = icmp eq ptr %i.rc, %.sroa.11.1.lcssa
  br i1 %.not282, label %.loopexit, label %bb.cf

.loopexit:                                        ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.preheader, %bb.bz, %.lr.ph447, %bb.bw
  %.sroa.18.2 = phi ptr [ %.sroa.18.0442, %.lr.ph447 ], [ %.sroa.18.0442, %bb.bw ], [ %.sroa.18.0442, %bb.bz ], [ %.sroa.18.1.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.preheader ], [ %.sroa.18.1.lcssa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread ]
  %.sroa.11.2 = phi ptr [ %.sroa.11.0443, %.lr.ph447 ], [ %.sroa.11.0443, %bb.bw ], [ %.sroa.11.0443, %bb.bz ], [ %.sroa.11.1.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.preheader ], [ %.sroa.11.1.lcssa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread ]
  %.sroa.0230.2 = phi ptr [ %.sroa.0230.0444, %.lr.ph447 ], [ %.sroa.0230.0444, %bb.bw ], [ %.sroa.0230.0444, %bb.bz ], [ %.sroa.0230.1.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.preheader ], [ %.sroa.0230.1.lcssa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread ] ; 3 uses
  %i.rd = icmp sgt i64 %indvars.iv483, 1
  br i1 %i.rd, label %.lr.ph447, label %._crit_edge448, !llvm.loop !108

bb.cx:                                            ; preds = %.loopexit286, %.loopexit.split-lp, %bb.ca, %bb.bx
  %.sroa.0230.3 = phi ptr [ %.sroa.0230.0444, %bb.bx ], [ %.sroa.0230.1.lcssa, %bb.ca ], [ %.sroa.0230.1421, %.loopexit286 ], [ %.sroa.0230.1421, %.loopexit.split-lp ] ; 2 uses
  %.pn132.pn = phi { ptr, i32 } [ %i.ml, %bb.bx ], [ %i.mv, %bb.ca ], [ %lpad.loopexit, %.loopexit286 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %.sroa.0230.3, null
  br i1 %.not.i.i.i210, label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0230.3) #22
  br label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211

_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit:        ; preds = %.critedge._crit_edge, %bb.bv, %._crit_edge448
  %.not.i.i.i212 = icmp eq ptr %.sroa.0253.1.lcssa573581, null
  br i1 %.not.i.i.i212, label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.thread, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0253.1.lcssa573581) #22
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit, %bb.cz
  ret void

_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211:     ; preds = %.loopexit287, %.loopexit.split-lp288, %.loopexit292, %.loopexit.split-lp293, %.loopexit303, %.loopexit.split-lp304, %.loopexit313, %.loopexit.split-lp314, %.loopexit308, %.loopexit.split-lp309, %bb.at, %bb.bu, %bb.cx, %bb.cy
  %.sroa.0253.4 = phi ptr [ %.sroa.0253.1.lcssa573581, %.loopexit292 ], [ %.sroa.0253.0381, %.loopexit.split-lp314 ], [ %.sroa.0253.0381, %.loopexit.split-lp309 ], [ %.sroa.0253.1.lcssa573581, %bb.cy ], [ %.sroa.0253.1.lcssa573581, %bb.cx ], [ %.sroa.0253.3, %bb.at ], [ %.sroa.0253.2387, %.loopexit.split-lp304 ], [ %.sroa.0253.1.lcssa573581, %bb.bu ], [ %.sroa.0253.0381, %.loopexit308 ], [ %.sroa.0253.0381, %.loopexit313 ], [ %.sroa.0253.2387, %.loopexit303 ], [ %.sroa.0253.1.lcssa573581, %.loopexit.split-lp293 ], [ %.sroa.0253.1.lcssa573581, %.loopexit.split-lp288 ], [ %.sroa.0253.1.lcssa573581, %.loopexit287 ] ; 2 uses
  %.pn142.pn = phi { ptr, i32 } [ %lpad.loopexit294, %.loopexit292 ], [ %lpad.loopexit.split-lp316, %.loopexit.split-lp314 ], [ %lpad.loopexit.split-lp311, %.loopexit.split-lp309 ], [ %.pn132.pn, %bb.cy ], [ %.pn132.pn, %bb.cx ], [ %i.gz, %bb.at ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp304 ], [ %i.mg, %bb.bu ], [ %lpad.loopexit310, %.loopexit308 ], [ %lpad.loopexit315, %.loopexit313 ], [ %lpad.loopexit305, %.loopexit303 ], [ %lpad.loopexit.split-lp295, %.loopexit.split-lp293 ], [ %lpad.loopexit.split-lp290, %.loopexit.split-lp288 ], [ %lpad.loopexit289, %.loopexit287 ] ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %.sroa.0253.4, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit214, label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211.thread

_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211.thread: ; preds = %bb.as, %bb.aw, %bb.bc, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211
  %.pn142.pn280 = phi { ptr, i32 } [ %.pn142.pn, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211 ], [ %.pn, %bb.bc ], [ %i.he, %bb.aw ], [ %.pn139, %bb.as ]
  %.sroa.0253.4279 = phi ptr [ %.sroa.0253.4, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211 ], [ %.sroa.0253.1.lcssa573581, %bb.bc ], [ %.sroa.0253.1.lcssa573581, %bb.aw ], [ %.sroa.0253.3, %bb.as ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0253.4279) #22
  br label %_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit214

_ZNSt6vectorIPN10duckdb_re29PrefilterESaIS2_EED2Ev.exit214: ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211.thread
  %.pn142.pn281 = phi { ptr, i32 } [ %.pn142.pn, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211 ], [ %.pn142.pn280, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit211.thread ]
  resume { ptr, i32 } %.pn142.pn281
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re213PrefilterTree13CanonicalNodeEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_9PrefilterESt4lessIS7_ESaISt4pairIKS7_S9_EEES9_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNK10duckdb_re213PrefilterTree10NodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull align 8 poison, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62   ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.e, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = call i32 @memcmp(ptr noundef %i.j, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.l = sub i64 %i.g, %i.e
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.m, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !110

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.n, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.e) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.t = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.s, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.u = sub i64 %i.e, %i.p
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %bb.d
  %.0 = phi ptr [ %i.x, %bb.d ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = icmp eq ptr %.pre, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  call void @_ZdlPv(ptr noundef %.pre) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re213PrefilterTree10NodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = load i32, ptr %2, align 8, !tbaa !57
  call void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.3, i32 noundef %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !113
  %i.d = icmp eq i64 %i.c, 4611686018427387903
  br i1 %i.d, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %.noexc21 unwind label %bb.i   ; 6 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !87, !alias.scope !113
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc21
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc21
  store ptr %i.g, ptr %0, align 8, !tbaa !55, !alias.scope !113
  %i.n = load i64, ptr %i.h, align 8, !tbaa !89
  store i64 %i.n, ptr %i.f, align 8, !tbaa !89, !alias.scope !113
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.o = phi i64 [ %i.k, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 %i.o, ptr %i.q, align 8, !tbaa !62, !alias.scope !113
  store ptr %i.h, ptr %i.e, align 8, !tbaa !55
  store i64 0, ptr %i.p, align 8, !tbaa !62
  store i8 0, ptr %i.h, align 8, !tbaa !89
  %i.r = load ptr, ptr %3, align 8, !tbaa !55     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.u = load i32, ptr %2, align 8, !tbaa !57
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !28  ; 2 uses
  %.not44 = icmp eq ptr %i.z, %i.aa
  br i1 %.not44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !85
  invoke void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.3, i32 noundef %i.ae)
          to label %bb.f unwind label %.loopexit.split-lp52

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !62
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %.loopexit56, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.peel: ; preds = %bb.f
  %i.aj = load ptr, ptr %4, align 8, !tbaa !55
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aj, i64 noundef %i.af)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.peel
  %i.al = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ac
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32.peel
  call void @_ZdlPv(ptr noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !61  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.at, 8
  br i1 %i.au, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !62 ; 2 uses
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !62
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc23 unwind label %bb.j

.noexc23:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bb, i64 noundef %i.aw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.j ; 0 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.be) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.m
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.043 = phi i64 [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel ] ; 2 uses
  %i.bi = load i64, ptr %i.q, align 8, !tbaa !62  ; 4 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.f                 ; 2 uses
  br i1 %i.bl, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.l:                                             ; preds = %.peel.next
  %i.bm = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.l, %.peel.next
  %i.bn = load i64, ptr %i.f, align 8
  %i.bo = select i1 %i.bl, i64 15, i64 %i.bn
  %i.bp = icmp ugt i64 %i.bj, %i.bo
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc28 unwind label %bb.k

.noexc28:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %.noexc28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bq = phi ptr [ %.pre.i.i, %.noexc28 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  store i8 44, ptr %i.br, align 1, !tbaa !89
  store i64 %i.bj, ptr %i.q, align 8, !tbaa !62
  %i.bs = load ptr, ptr %0, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bj
  store i8 0, ptr %i.bt, align 1, !tbaa !89
  %.pre60 = load ptr, ptr %i.w, align 8, !tbaa !61
  %.pre61 = load ptr, ptr %.pre60, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre61, i64 %.043
  %.pre62 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %.pre62, i64 48
  %.pre64 = load i32, ptr %.phi.trans.insert63, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.3, i32 noundef %.pre64)
          to label %bb.o unwind label %.loopexit51

bb.o:                                             ; preds = %bb.n
  %i.bu = load i64, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %i.bv = load i64, ptr %i.q, align 8, !tbaa !62
  %i.bw = sub i64 4611686018427387903, %i.bv
  %i.bx = icmp ult i64 %i.bw, %i.bu
  br i1 %i.bx, label %.loopexit56, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29

.loopexit56:                                      ; preds = %bb.o, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %.loopexit56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29: ; preds = %bb.o
  %i.by = load ptr, ptr %4, align 8, !tbaa !55
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.by, i64 noundef %i.bu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32 unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29
  %i.ca = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ac
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32
  call void @_ZdlPv(ptr noundef %i.ca) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cc = add nuw i64 %.043, 1                    ; 2 uses
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !61  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !27
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !28
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3
  %i.cl = icmp ult i64 %i.cc, %i.ck
  br i1 %i.cl, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, !llvm.loop !116

.loopexit51:                                      ; preds = %bb.n
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit.split-lp52:                             ; preds = %bb.e
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i29.peel
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit56
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit57, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp58, %.loopexit.loopexit.split-lp ] ; 2 uses
  %i.cm = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ac
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.loopexit, %.loopexit51, %.loopexit.split-lp52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp52 ], [ %lpad.loopexit53, %.loopexit51 ], [ %lpad.phi, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  ret void

bb.p:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.j
  %.pn18 = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %lpad.loopexit48, %bb.k ] ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.f
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.co) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn18.pn = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn18, %bb.p ]
  resume { ptr, i32 } %.pn18.pn
}

declare void @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %4 = alloca %"class.duckdb_re2::SparseArray", align 8 ; 12 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i8, ptr %i.d, align 8, !tbaa !37, !range !38, !noundef !39
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.7, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.n = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !53
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.p = getelementptr i8, ptr %i.n, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %i.q
  store ptr %i.o, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.u) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #23
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !28
  %.not81 = icmp eq ptr %i.z, %i.aa
  %.pre103 = load ptr, ptr %i.b, align 8, !tbaa !91 ; 2 uses
  br i1 %.not81, label %.loopexit62, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10LogMessageD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre95 = load ptr, ptr %i.ab, align 8, !tbaa !81
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ad = phi ptr [ %.pre95, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.ae = phi ptr [ %.pre103, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.02763 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.af = trunc i64 %.02763 to i32                ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %2, align 8, !tbaa !29    ; 4 uses
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775804
  br i1 %i.al, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.am = ashr exact i64 %i.ak, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 2305843009213693951)
  %i.aq = select i1 %i.ao, i64 2305843009213693951, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #25 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  store i32 %i.af, ptr %i.at, align 4, !tbaa !3
  %i.au = icmp sgt i64 %i.ak, 0
  br i1 %i.au, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.as, ptr %2, align 8, !tbaa !29
  store ptr %i.av, ptr %i.b, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  store ptr %i.aw, ptr %i.ab, align 8, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.ax = phi ptr [ %i.ad, %bb.f ], [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ]
  %i.ay = phi ptr [ %i.ag, %bb.f ], [ %i.av, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.az = add nuw i64 %.02763, 1                  ; 2 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = icmp ult i64 %i.az, %i.bf
  br i1 %i.bg, label %bb.e, label %.loopexit62, !llvm.loop !118

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !28
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr exact i64 %i.bm, 3                 ; 2 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 4 uses
  store i32 0, ptr %4, align 8, !tbaa !119
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i, !prof !142

.noexc.i.i:                                       ; preds = %bb.k
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i: ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = and i64 %i.bn, 2147483647               ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #25 ; 3 uses
  store i32 %i.bo, ptr %i.bq, align 8, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !143
  %i.bv = shl nuw nsw i64 %i.br, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #25
          to label %bb.l unwind label %.thread.i

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.bo, ptr %i.bx, align 8, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !144
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.bz = lshr exact i64 %i.bm, 1
  %i.ca = add nuw i64 %i.bz, 17179869180
  %i.cb = and i64 %i.ca, 17179869180
  %i.cc = add nuw nsw i64 %i.cb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bt, i8 -85, i64 %i.cc, i1 false), !tbaa !3
end_hunk_1
begin_hunk_2_@_ZNK10duckdb_re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_:bb.a
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %bb.m
  %i.dw = load ptr, ptr %i.by, align 8, !tbaa !146 ; 4 uses
  %i.dx = load i32, ptr %4, align 8, !tbaa !119   ; 2 uses
  %.not76 = icmp eq i32 %i.dx, 0
  %.pre101 = load ptr, ptr %i.b, align 8, !tbaa !91 ; 2 uses
  br i1 %.not76, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre99 = load ptr, ptr %i.dy, align 8, !tbaa !81
  br label %bb.v

._crit_edge80:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47, %bb.t
  %i.dz = phi ptr [ %.pre101, %bb.t ], [ %i.fh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !91
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !91
  %i.ee = load ptr, ptr %2, align 8, !tbaa !91    ; 2 uses
  %i.ef = ptrtoint ptr %i.dz to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEvNS4_IPiS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ei, ptr %i.eb, ptr %i.ed)
          to label %bb.ab unwind label %bb.af

bb.u:                                             ; preds = %bb.m
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %.lr.ph79, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47
  %i.ek = phi i32 [ %i.dx, %.lr.ph79 ], [ %i.ff, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47 ]
  %i.el = phi ptr [ %.pre99, %.lr.ph79 ], [ %i.fg, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47 ] ; 3 uses
  %i.em = phi ptr [ %.pre101, %.lr.ph79 ], [ %i.fh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47 ] ; 3 uses
  %.02977 = phi ptr [ %i.dw, %.lr.ph79 ], [ %i.fi, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47 ] ; 2 uses
  %i.en = load i32, ptr %.02977, align 4, !tbaa !147 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.em, %i.el
  br i1 %.not.i.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.en, ptr %i.em, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  store ptr %i.eo, ptr %i.b, align 8, !tbaa !80
  %.pre100 = load i32, ptr %4, align 8, !tbaa !119
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47

bb.x:                                             ; preds = %bb.v
  %i.ep = load ptr, ptr %2, align 8, !tbaa !29    ; 4 uses
  %i.eq = ptrtoint ptr %i.el to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 5 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775804
  br i1 %i.et, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i39

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i39: ; preds = %bb.x
  %i.eu = ashr exact i64 %i.es, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i.i40, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 2305843009213693951)
  %i.ey = select i1 %i.ew, i64 2305843009213693951, i64 %i.ex ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.ey, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #25
          to label %.noexc46 unwind label %.loopexit ; 4 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i39
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  store i32 %i.en, ptr %i.fb, align 4, !tbaa !3
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i42

bb.z:                                             ; preds = %.noexc46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fa, ptr align 4 %i.ep, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i42

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i42: ; preds = %bb.z, %.noexc46
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %.not.i17.i.i.i43 = icmp eq ptr %i.ep, null
  br i1 %.not.i17.i.i.i43, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i44, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i42
  tail call void @_ZdlPv(ptr noundef nonnull %i.ep) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i44

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i44: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i42
  store ptr %i.fa, ptr %2, align 8, !tbaa !29
  store ptr %i.fd, ptr %i.b, align 8, !tbaa !80
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ey ; 2 uses
  store ptr %i.fe, ptr %i.dy, align 8, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit47

_ZNSt6vectorIiSaIiEE9push_backEOi.exit47:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i44, %bb.w
  %i.ff = phi i32 [ %i.ek, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i44 ], [ %.pre100, %bb.w ] ; 2 uses
  %i.fg = phi ptr [ %i.fe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i44 ], [ %i.el, %bb.w ]
  %i.fh = phi ptr [ %i.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i44 ], [ %i.eo, %bb.w ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.02977, i64 8 ; 2 uses
  %i.fj = sext i32 %i.ff to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fj
  %.not = icmp eq ptr %i.fi, %i.fk
  br i1 %.not, label %._crit_edge80, label %bb.v, !llvm.loop !149

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i39
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %._crit_edge80
  %.not.i.i.i48 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdlPv(ptr noundef nonnull %i.ck) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i49 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i49, label %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.dw) #22
  br label %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit.i

_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fl = load ptr, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i1.i, label %_ZN10duckdb_re211SparseArrayIiED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.fl) #22
  br label %_ZN10duckdb_re211SparseArrayIiED2Ev.exit

_ZN10duckdb_re211SparseArrayIiED2Ev.exit:         ; preds = %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre102 = load ptr, ptr %i.b, align 8, !tbaa !91
  br label %.loopexit62

bb.af:                                            ; preds = %._crit_edge80
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit57, %.loopexit.split-lp58, %bb.af, %bb.u
  %i.fn = phi ptr [ %i.cp, %.loopexit.split-lp58 ], [ %i.ck, %bb.u ], [ %i.ck, %bb.af ], [ %i.cp, %.loopexit57 ], [ %i.ck, %.loopexit ], [ %i.ck, %.loopexit.split-lp ] ; 2 uses
  %.pn31 = phi { ptr, i32 } [ %lpad.loopexit.split-lp60, %.loopexit.split-lp58 ], [ %i.ej, %bb.u ], [ %i.fm, %bb.af ], [ %lpad.loopexit59, %.loopexit57 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i50 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIiSaIiEED2Ev.exit51, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZdlPv(ptr noundef nonnull %i.fn) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51

_ZNSt6vectorIiSaIiEED2Ev.exit51:                  ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN10duckdb_re211SparseArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

.loopexit62:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZN10LogMessageD2Ev.exit, %_ZN10duckdb_re211SparseArrayIiED2Ev.exit
  %i.fo = phi ptr [ %.pre102, %_ZN10duckdb_re211SparseArrayIiED2Ev.exit ], [ %.pre103, %_ZN10LogMessageD2Ev.exit ], [ %i.ay, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %i.fp = load ptr, ptr %2, align 8, !tbaa !91    ; 4 uses
  %.not.i.i52 = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i.i52, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit62
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 2
  %i.fu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ft, i1 true)
  %i.fv = shl nuw nsw i64 %i.fu, 1
  %i.fw = xor i64 %i.fv, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.fp, ptr %i.fo, i64 noundef %i.fw)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.fp, ptr %i.fo)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %bb.ai, %.loopexit62, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re213PrefilterTree14PropagateMatchERKSt6vectorIiSaIiEEPNS_11SparseArrayIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_re2::SparseArray", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = trunc i64 %i.g to i32                    ; 7 uses
  store i32 0, ptr %3, align 8, !tbaa !119
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i, !prof !142

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = and i64 %i.g, 2147483647                 ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 5 uses
  store i32 %i.h, ptr %i.j, align 8, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !143
  %i.o = shl nuw nsw i64 %i.k, 3                  ; 2 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
          to label %bb.b unwind label %.thread.i  ; 4 uses

bb.b:                                             ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.h, ptr %i.q, align 8, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.p, ptr %i.r, align 8, !tbaa !144
  %.not.i = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %.not.i, label %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = shl nsw i64 %i.g, 2
  %i.t = add nsw i64 %i.s, 17179869180
  %i.u = and i64 %i.t, 17179869180
  %i.v = add nuw nsw i64 %i.u, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.m, i8 -85, i64 %i.v, i1 false), !tbaa !3
  br label %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44

common.resume:                                    ; preds = %.body, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.thread.i ], [ %.pn41.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #22
  br label %common.resume

_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44: ; preds = %.lr.ph.i.i, %bb.b
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25
          to label %.noexc49 unwind label %bb.d   ; 5 uses

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
          to label %bb.c unwind label %.thread.i45 ; 9 uses

bb.c:                                             ; preds = %.noexc49
  br i1 %.not.i, label %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.c
  %i.z = shl nsw i64 %i.g, 2
  %i.aa = add nsw i64 %i.z, 17179869180
  %i.ab = and i64 %i.aa, 17179869180
  %i.ac = add nuw nsw i64 %i.ab, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.x, i8 -85, i64 %i.ac, i1 false), !tbaa !3
  br label %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50

.thread.i45:                                      ; preds = %.noexc49
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #22
  br label %.body

_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50:       ; preds = %bb.c, %.lr.ph.i.i47
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !29    ; 3 uses
  %.not112 = icmp eq ptr %i.af, %i.ag
  br i1 %.not112, label %_ZN10duckdb_re211SparseArrayIiED2Ev.exit55, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  br label %bb.e

.preheader:                                       ; preds = %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit
  %.not107 = icmp eq i32 %i.bg, 0
  br i1 %.not107, label %_ZN10duckdb_re211SparseArrayIiED2Ev.exit55, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.h

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.lr.ph, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit
  %.03393 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit ] ; 2 uses
  %i.ap = phi i32 [ 0, %.lr.ph ], [ %i.bg, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.03393
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 4 uses
  %.not11.i.i = icmp ult i32 %i.ar, %i.h
  br i1 %.not11.i.i, label %bb.f, label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit

bb.f:                                             ; preds = %bb.e
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = icmp ult i32 %i.au, %i.ap
  br i1 %i.av, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i: ; preds = %bb.f
  %i.aw = sext i32 %i.au to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !147
  %i.az = icmp eq i32 %i.ay, %i.ar
  br i1 %i.az, label %bb.g, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i: ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i, %bb.f
  store i32 %i.ap, ptr %i.at, align 4, !tbaa !3
  %i.ba = sext i32 %i.ap to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ba
  store i32 %i.ar, ptr %i.bb, align 4, !tbaa !147
  %i.bc = add nsw i32 %i.ap, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i
  %i.bd = phi i32 [ %i.bc, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i ], [ %i.ap, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i ]
  %.pre-phi.i = phi i64 [ %i.ba, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i ], [ %i.aw, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 1, ptr %i.bf, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit

_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit:    ; preds = %bb.g, %bb.e
  %i.bg = phi i32 [ %i.bd, %bb.g ], [ %i.ap, %bb.e ] ; 3 uses
  %i.bh = add nuw i64 %.03393, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.ak
  br i1 %exitcond.not, label %.preheader, label %bb.e, !llvm.loop !151

_ZN10duckdb_re211SparseArrayIiED2Ev.exit55:       ; preds = %._crit_edge103, %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50, %.preheader
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.h:                                             ; preds = %.lr.ph110, %._crit_edge103
  %.035109 = phi ptr [ %i.y, %.lr.ph110 ], [ %i.cs, %._crit_edge103 ] ; 2 uses
  %.lcssa98106108 = phi i32 [ %i.bg, %.lr.ph110 ], [ %.lcssa98, %._crit_edge103 ] ; 2 uses
  %i.bi = load i32, ptr %.035109, align 4, !tbaa !147
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.bj ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !80 ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !29 ; 3 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 2
  %.not113 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not113, label %._crit_edge, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.h
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !146
  %.fr = freeze ptr %i.bt                         ; 4 uses
  %.not.i.i.i56.not = icmp eq ptr %.fr, null
  br i1 %.not.i.i.i56.not, label %._crit_edge, label %.lr.ph95.split

._crit_edge:                                      ; preds = %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65, %.lr.ph95, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !91 ; 2 uses
  %.not9299 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not9299, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %.promoted96 = load i32, ptr %3, align 8
  %i.by = load i32, ptr %i.q, align 8
  br label %bb.k

.lr.ph95.split:                                   ; preds = %.lr.ph95, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65
  %.03494 = phi i64 [ %i.cr, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65 ], [ 0, %.lr.ph95 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03494
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 4 uses
  %i.cb = load i32, ptr %i.al, align 8
  %.not11.i.i57 = icmp ugt i32 %i.cb, %i.ca
  br i1 %.not11.i.i57, label %bb.i, label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65

bb.i:                                             ; preds = %.lr.ph95.split
  %i.cc = sext i32 %i.ca to i64
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cc ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %i.cg = load i32, ptr %2, align 8, !tbaa !119   ; 4 uses
  %i.ch = icmp ult i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64: ; preds = %bb.i
  %i.ci = sext i32 %i.cf to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !147
  %i.cl = icmp eq i32 %i.ck, %i.ca
  br i1 %i.cl, label %bb.j, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60: ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64, %bb.i
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.cm = sext i32 %i.cg to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.cm
  store i32 %i.ca, ptr %i.cn, align 4, !tbaa !147
  %i.co = add nsw i32 %i.cg, 1
  store i32 %i.co, ptr %2, align 8, !tbaa !119
  %.pre.i61 = load i32, ptr %i.ce, align 4, !tbaa !3
  %.pre2.i62 = sext i32 %.pre.i61 to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64
  %.pre-phi.i63 = phi i64 [ %.pre2.i62, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60 ], [ %i.ci, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64 ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %.pre-phi.i63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 1, ptr %i.cq, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65

_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65:  ; preds = %bb.j, %.lr.ph95.split
  %i.cr = add nuw i64 %.03494, 1                  ; 2 uses
  %exitcond118.not = icmp eq i64 %i.cr, %i.bs
  br i1 %exitcond118.not, label %._crit_edge, label %.lr.ph95.split, !llvm.loop !152

._crit_edge103:                                   ; preds = %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81, %._crit_edge
  %.lcssa98 = phi i32 [ %.lcssa98106108, %._crit_edge ], [ %i.eg, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.035109, i64 8 ; 2 uses
  %i.ct = sext i32 %.lcssa98 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ct
  %.not = icmp eq ptr %i.cs, %i.cu
  br i1 %.not, label %_ZN10duckdb_re211SparseArrayIiED2Ev.exit55, label %bb.h, !llvm.loop !153

bb.k:                                             ; preds = %.lr.ph102, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81
  %.sroa.082.0100 = phi ptr [ %i.bv, %.lr.ph102 ], [ %i.ei, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81 ] ; 2 uses
  %i.cv = phi i32 [ %.promoted96, %.lr.ph102 ], [ %i.eh, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81 ] ; 8 uses
  %i.cw = phi i32 [ %.lcssa98106108, %.lr.ph102 ], [ %i.eg, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81 ] ; 7 uses
  %i.cx = load i32, ptr %.sroa.082.0100, align 4, !tbaa !3 ; 8 uses
  %i.cy = sext i32 %i.cx to i64                   ; 3 uses
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !93 ; 2 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not6.i = icmp ugt i32 %i.by, %i.cx
  br i1 %.not6.i, label %bb.m, label %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cy ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3  ; 2 uses
  %i.de = icmp ult i32 %i.dd, %i.cv
  br i1 %i.de, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit, label %.thread91

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit: ; preds = %bb.m
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !147
  %i.di = icmp eq i32 %i.dh, %i.cx
  br i1 %i.di, label %bb.n, label %.thread91

bb.n:                                             ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit

.thread91:                                        ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit, %bb.m
  store i32 %i.cv, ptr %i.dc, align 4, !tbaa !3
  %i.dm = sext i32 %i.cv to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dm ; 2 uses
  store i32 %i.cx, ptr %i.dn, align 4, !tbaa !147
  %i.do = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.do, ptr %3, align 8, !tbaa !119
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 1, ptr %i.dp, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit

_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit: ; preds = %.thread91, %bb.l, %bb.n
  %i.dq = phi i32 [ %i.cv, %bb.n ], [ %i.cv, %bb.l ], [ %i.do, %.thread91 ] ; 2 uses
  %.0 = phi i32 [ %i.dl, %bb.n ], [ 1, %bb.l ], [ 1, %.thread91 ]
  %i.dr = icmp sge i32 %.0, %i.da
  %.not11.i.i73 = icmp ult i32 %i.cx, %i.h
  %or.cond = and i1 %i.dr, %.not11.i.i73
  br i1 %or.cond, label %bb.p, label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81

bb.o:                                             ; preds = %bb.k
  %.not11.i.i73.old = icmp ult i32 %i.cx, %i.h
  br i1 %.not11.i.i73.old, label %bb.p, label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81

bb.p:                                             ; preds = %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit, %bb.o
  %i.ds = phi i32 [ %i.dq, %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit ], [ %i.cv, %bb.o ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cy ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3  ; 2 uses
  %i.dv = icmp ult i32 %i.du, %i.cw
  br i1 %i.dv, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80: ; preds = %bb.p
  %i.dw = sext i32 %i.du to i64                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !147
  %i.dz = icmp eq i32 %i.dy, %i.cx
  br i1 %i.dz, label %bb.q, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76: ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80, %bb.p
  store i32 %i.cw, ptr %i.dt, align 4, !tbaa !3
  %i.ea = sext i32 %i.cw to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ea
  store i32 %i.cx, ptr %i.eb, align 4, !tbaa !147
  %i.ec = add nsw i32 %i.cw, 1
  br label %bb.q

bb.q:                                             ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80
  %i.ed = phi i32 [ %i.ec, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76 ], [ %i.cw, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80 ]
  %.pre-phi.i79 = phi i64 [ %i.ea, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76 ], [ %i.dw, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80 ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi.i79
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 1, ptr %i.ef, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81

_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81:  ; preds = %bb.o, %bb.q, %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit
  %i.eg = phi i32 [ %i.cw, %bb.o ], [ %i.ed, %bb.q ], [ %i.cw, %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit ] ; 2 uses
  %i.eh = phi i32 [ %i.cv, %bb.o ], [ %i.ds, %bb.q ], [ %i.dq, %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.082.0100, i64 4 ; 2 uses
  %.not92 = icmp eq ptr %i.ei, %i.bx
  br i1 %.not92, label %._crit_edge103, label %bb.k

.body:                                            ; preds = %bb.d, %.thread.i45
  %.pn41.pn = phi { ptr, i32 } [ %i.ad, %.thread.i45 ], [ %i.ao, %bb.d ]
  call void @_ZN10duckdb_re211SparseArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re211SparseArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit

_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_ZN10duckdb_re28PODArrayIiED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #22
  br label %_ZN10duckdb_re28PODArrayIiED2Ev.exit

_ZN10duckdb_re28PODArrayIiED2Ev.exit:             ; preds = %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re213PrefilterTree14PrintPrefilterEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i8 0, ptr %2, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = sext i32 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  invoke void @_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !62
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %3, align 8, !tbaa !55     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZdlPv(ptr noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.n = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !53
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.p = getelementptr i8, ptr %i.n, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 %i.q
  store ptr %i.o, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.u) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #23
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ab) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i64 0, ptr %i.b, align 8, !tbaa !62
  store i8 0, ptr %i.a, align 8, !tbaa !89
  %i.c = load i32, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  br i1 %i.g, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i
  %i.k = icmp eq i32 %i.c, 3                      ; 2 uses
  %i.l = select i1 %i.k, i64 3, i64 2
  %i.m = select i1 %i.k, ptr @.str.17, ptr @.str.18
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.m, i64 noundef %i.l)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !62
  %i.p = icmp eq i64 %i.o, 4611686018427387903
  br i1 %i.p, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34.preheader unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %.not82 = icmp eq ptr %i.u, %i.v
  br i1 %.not82, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !85
  invoke void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.3, i32 noundef %i.ab)
          to label %bb.d unwind label %.loopexit.split-lp87

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !62
  %i.ae = sub i64 4611686018427387903, %i.ad
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %.loopexit90, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40.peel: ; preds = %bb.d
  %i.ag = load ptr, ptr %3, align 8, !tbaa !55
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ag, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43.peel unwind label %.loopexit64.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40.peel
  %i.ai = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.x
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43.peel
  call void @_ZdlPv(ptr noundef %i.ai) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !62
  %i.al = icmp eq i64 %i.ak, 4611686018427387903
  br i1 %i.al, label %.loopexit94, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  invoke void @_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.ap)
          to label %bb.e unwind label %.loopexit.split-lp96

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47.peel
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !62  ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !62
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %.loopexit100, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48.peel: ; preds = %bb.e
  %i.au = load ptr, ptr %4, align 8, !tbaa !55
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.au, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51.peel unwind label %.loopexit69.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48.peel
  %i.aw = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.z
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51.peel
  call void @_ZdlPv(ptr noundef %i.aw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !61  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !28
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ugt i64 %i.be, 8
  br i1 %i.bf, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34.preheader
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !62
  %i.bh = icmp eq i64 %i.bg, 4611686018427387903
  br i1 %i.bh, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke

.invoke:                                          ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bi = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ], [ @.str.20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge ]
  %i.bj = phi i64 [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge ]
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bi, i64 noundef %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.b ; 0 uses

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44, %bb.g
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44.peel
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit94
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.081 = phi i64 [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.peel ] ; 3 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !62  ; 4 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.a                 ; 2 uses
  br i1 %i.bo, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.f:                                             ; preds = %.peel.next
  %i.bp = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.f, %.peel.next
  %i.bq = load i64, ptr %i.a, align 8
  %i.br = select i1 %i.bo, i64 15, i64 %i.bq
  %i.bs = icmp ugt i64 %i.bm, %i.br
  br i1 %i.bs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc39 unwind label %.loopexit.loopexit

.noexc39:                                         ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %.noexc39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bt = phi ptr [ %.pre.i.i, %.noexc39 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
end_hunk_2
begin_hunk_3_@_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE:._crit_edge.i.i
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %.pre106, i64 48
  %.pre108 = load i32, ptr %.phi.trans.insert107, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.3, i32 noundef %.pre108)
          to label %bb.i unwind label %.loopexit86

bb.i:                                             ; preds = %bb.h
  %i.bx = load i64, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %i.by = load i64, ptr %i.b, align 8, !tbaa !62
  %i.bz = sub i64 4611686018427387903, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %.loopexit90, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40

.loopexit90:                                      ; preds = %bb.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc41 unwind label %.loopexit.split-lp65

.noexc41:                                         ; preds = %.loopexit90
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40: ; preds = %bb.i
  %i.cb = load ptr, ptr %3, align 8, !tbaa !55
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cb, i64 noundef %i.bx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43 unwind label %.loopexit64.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40
  %i.cd = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.x
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43
  call void @_ZdlPv(ptr noundef %i.cd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !62
  %i.cg = icmp eq i64 %i.cf, 4611686018427387903
  br i1 %i.cg, label %.loopexit94, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44

.loopexit94:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %.loopexit94
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47 unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !28
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.081
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !34
  invoke void @_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.cl)
          to label %bb.j unwind label %.loopexit95

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47
  %i.cm = load i64, ptr %i.y, align 8, !tbaa !62  ; 2 uses
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !62
  %i.co = sub i64 4611686018427387903, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.cm
  br i1 %i.cp, label %.loopexit100, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48

.loopexit100:                                     ; preds = %bb.j, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc49 unwind label %.loopexit.split-lp70

.noexc49:                                         ; preds = %.loopexit100
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48: ; preds = %bb.j
  %i.cq = load ptr, ptr %4, align 8, !tbaa !55
  %i.cr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cq, i64 noundef %i.cm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51 unwind label %.loopexit69.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48
  %i.cs = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.z
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51
  call void @_ZdlPv(ptr noundef %i.cs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cu = add nuw i64 %.081, 1                    ; 2 uses
  %i.cv = load ptr, ptr %i.r, align 8, !tbaa !61  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !27
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  %i.dd = icmp ult i64 %i.cu, %i.dc
  br i1 %i.dd, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34._crit_edge, !llvm.loop !154

.loopexit86:                                      ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

.loopexit.split-lp87:                             ; preds = %bb.c
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

.loopexit64.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit64

.loopexit64.loopexit.split-lp:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i40.peel
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit64

.loopexit.split-lp65:                             ; preds = %.loopexit90
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit64

.loopexit64:                                      ; preds = %.loopexit64.loopexit, %.loopexit64.loopexit.split-lp, %.loopexit.split-lp65
  %lpad.phi68 = phi { ptr, i32 } [ %lpad.loopexit.split-lp67, %.loopexit.split-lp65 ], [ %lpad.loopexit91, %.loopexit64.loopexit ], [ %lpad.loopexit.split-lp92, %.loopexit64.loopexit.split-lp ] ; 2 uses
  %i.de = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.x
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %.loopexit64
  call void @_ZdlPv(ptr noundef %i.de) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %.loopexit64, %.loopexit86, %.loopexit.split-lp87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  %.pn = phi { ptr, i32 } [ %lpad.phi68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp87 ], [ %lpad.loopexit, %.loopexit86 ], [ %lpad.phi68, %.loopexit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.loopexit

.loopexit95:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

.loopexit.split-lp96:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47.peel
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

.loopexit69.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit69

.loopexit69.loopexit.split-lp:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48.peel
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit69

.loopexit.split-lp70:                             ; preds = %.loopexit100
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit69

.loopexit69:                                      ; preds = %.loopexit69.loopexit, %.loopexit69.loopexit.split-lp, %.loopexit.split-lp70
  %lpad.phi73 = phi { ptr, i32 } [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ], [ %lpad.loopexit101, %.loopexit69.loopexit ], [ %lpad.loopexit.split-lp102, %.loopexit69.loopexit.split-lp ] ; 2 uses
  %i.dg = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.z
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %.loopexit69
  call void @_ZdlPv(ptr noundef %i.dg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %.loopexit69, %.loopexit95, %.loopexit.split-lp96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %.pn21 = phi { ptr, i32 } [ %lpad.phi73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp96 ], [ %lpad.loopexit97, %.loopexit95 ], [ %lpad.phi73, %.loopexit69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.invoke
  ret void

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit84, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp85, %.loopexit.loopexit.split-lp ]
  %i.di = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.a
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.di) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re213PrefilterTree14PrintDebugInfoEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_9PrefilterESt4lessIS7_ESaISt4pairIKS7_S9_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %5 = alloca %class.LogMessage, align 8          ; 18 uses
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  %7 = alloca %class.LogMessage, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i8 0, ptr %2, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.8, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.j)
          to label %_ZNSolsEm.exit unwind label %bb.b ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 7 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !53
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 6 uses
  %i.n = getelementptr i8, ptr %i.l, i64 -24      ; 6 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  store ptr %i.m, ptr %i.p, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.q, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSolsEm.exit
  call void @_ZdlPv(ptr noundef %i.s) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZNSolsEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #23
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.x)
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.9, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZN10LogMessageD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = load ptr, ptr %0, align 8, !tbaa !30
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 56
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.af)
          to label %_ZNSolsEm.exit21 unwind label %bb.c ; 0 uses

_ZNSolsEm.exit21:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  store ptr %i.l, ptr %i.x, align 8, !tbaa !53
  %i.ah = load i64, ptr %i.n, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.x, i64 %i.ah
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN10LogMessageD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22: ; preds = %_ZNSolsEm.exit21
  call void @_ZdlPv(ptr noundef %i.al) #22
  br label %_ZN10LogMessageD2Ev.exit24

_ZN10LogMessageD2Ev.exit24:                       ; preds = %_ZNSolsEm.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #23
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ar = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %.not70 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not70, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZN10LogMessageD2Ev.exit24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 336
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 345
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 96
  br label %bb.d

._crit_edge65:                                    ; preds = %._crit_edge, %_ZN10LogMessageD2Ev.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i8 0, ptr %6, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bo)
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.13, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.l ; 0 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %_ZN10LogMessageD2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.d:                                             ; preds = %.lr.ph64, %._crit_edge
  %i.bs = phi ptr [ %i.ar, %.lr.ph64 ], [ %i.cy, %._crit_edge ]
  %.01763 = phi i64 [ 0, %.lr.ph64 ], [ %i.cw, %._crit_edge ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bs, i64 %.01763 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i8 0, ptr %4, align 8, !tbaa !40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.as)
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.10, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %bb.d
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %.01763)
          to label %_ZNSolsEm.exit27 unwind label %bb.e ; 2 uses

_ZNSolsEm.exit27:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.11, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZNSolsEm.exit27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !80
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !29
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i64 noundef %i.cf)
          to label %_ZNSolsEm.exit29 unwind label %bb.e ; 2 uses

_ZNSolsEm.exit29:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.12, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZNSolsEm.exit29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !80
  %i.ck = load ptr, ptr %i.bv, align 8, !tbaa !29
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 2
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef %i.co)
          to label %_ZNSolsEm.exit31 unwind label %bb.e ; 0 uses

_ZNSolsEm.exit31:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  store ptr %i.l, ptr %i.as, align 8, !tbaa !53
  %i.cq = load i64, ptr %i.n, align 8
  %i.cr = getelementptr inbounds i8, ptr %i.as, i64 %i.cq
  store ptr %i.m, ptr %i.cr, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.at, align 8, !tbaa !53
  %i.cs = load ptr, ptr %i.au, align 8, !tbaa !55 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJS5_RSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_:bb.a
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ad = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.ae = sub i64 %i.w, %i.y
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ag = phi i1 [ %i.af, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.a, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !74
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !74
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.c
  br i1 %i.am, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.al) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i
  %.sroa.3.015 = phi i8 [ 1, %.thread ], [ 0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i ]
  %.sroa.010.014 = phi ptr [ %i.a, %.thread ], [ %i.s, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.014, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.015, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !109 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !181

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !55
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #23 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.d) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10duckdb_re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 5
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #25 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !87
  %i.k = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.m, ptr %i.a, align 8, !tbaa !88
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !55
  %i.p = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.p, ptr %i.j, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !89
  store i8 %i.r, ptr %i.q, align 1, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !62
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %11, %bb.e ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i.i, align 8, !tbaa !87, !alias.scope !182, !noalias !185
  %i.x = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !55, !alias.scope !185, !noalias !182 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62, !alias.scope !185, !noalias !182 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !187
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.x, ptr %.012.i.i.i.i, align 8, !tbaa !55, !alias.scope !182, !noalias !185
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !89, !alias.scope !185, !noalias !182
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !89, !alias.scope !182, !noalias !185
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !62, !alias.scope !185, !noalias !182
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !62, !alias.scope !182, !noalias !185
  store ptr %i.y, ptr %.0911.i.i.i.i, align 8, !tbaa !55, !alias.scope !185, !noalias !182
  store i64 0, ptr %i.ag, align 8, !tbaa !62, !alias.scope !185, !noalias !182
  store i8 0, ptr %i.y, align 8, !tbaa !89, !alias.scope !185, !noalias !182
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !188

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %11, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33
  %.012.i.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i.i28, align 8, !tbaa !87, !alias.scope !189, !noalias !192
  %i.am = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !55, !alias.scope !192, !noalias !189 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !62, !alias.scope !192, !noalias !189 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !194
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i.i28, align 8, !tbaa !55, !alias.scope !189, !noalias !192
  %i.at = load i64, ptr %i.an, align 8, !tbaa !89, !alias.scope !192, !noalias !189
  store i64 %i.at, ptr %i.al, align 8, !tbaa !89, !alias.scope !189, !noalias !192
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !62, !alias.scope !192, !noalias !189
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !62, !alias.scope !189, !noalias !192
  store ptr %i.an, ptr %.0911.i.i.i.i29, align 8, !tbaa !55, !alias.scope !192, !noalias !189
  store i64 0, ptr %i.av, align 8, !tbaa !62, !alias.scope !192, !noalias !189
  store i8 0, ptr %i.an, align 8, !tbaa !89, !alias.scope !192, !noalias !189
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27, !llvm.loop !188

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %0, align 8, !tbaa !75
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !78
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !86
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = call ptr @__cxa_begin_catch(ptr %i.bd) #23 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %11) #22
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #26
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN10duckdb_re213PrefilterTree5EntryEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN10duckdb_re213PrefilterTree5EntryEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 56                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 164703072086692425) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 56
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.x = load i32, ptr %.0911.i.i.i.i, align 8, !tbaa !93, !alias.scope !199, !noalias !196
  store i32 %i.x, ptr %.012.i.i.i.i, align 8, !tbaa !93, !alias.scope !196, !noalias !199
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.z, align 8, !tbaa !91, !alias.scope !199, !noalias !196
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !91, !alias.scope !196, !noalias !199
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81, !alias.scope !199, !noalias !196
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !81, !alias.scope !196, !noalias !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !alias.scope !199, !noalias !196
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !91, !alias.scope !199, !noalias !196
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !91, !alias.scope !196, !noalias !199
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81, !alias.scope !199, !noalias !196
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !81, !alias.scope !196, !noalias !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !199, !noalias !196
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !201

_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN10duckdb_re213PrefilterTree5EntryESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22
  br label %_ZNSt12_Vector_baseIN10duckdb_re213PrefilterTree5EntryESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIN10duckdb_re213PrefilterTree5EntryESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %_ZNSt6vectorIN10duckdb_re213PrefilterTree5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %1
  store ptr %i.am, ptr %i.a, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.s
  store ptr %i.an, ptr %i.h, align 8, !tbaa !195
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN10duckdb_re213PrefilterTree5EntryEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN10duckdb_re213PrefilterTree5EntryESaIS2_EE13_M_deallocateEPS2_m.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 4             ; 3 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #28 ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit, label %.lr.ph.i.i, !llvm.loop !202

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEEvT_S9_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = add nsw i64 %i.i, -32                    ; 2 uses
  %i.p = lshr exact i64 %i.o, 4
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01320.i.i.i.prol = phi ptr [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.prol, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !203

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01320.i.i.i.unr = phi ptr [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.019.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.o, 48
  br i1 %i.s, label %_ZSt29__uninitialized_construct_bufIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEEvT_S9_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i.3, %.lr.ph.i.i.i ], [ %.01320.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.019.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 16
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 32
  %.013.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 48
  %.013.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 48
end_hunk_4
