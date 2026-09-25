Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/layout?download=true
inline.NumInlined: 1479
inline.NumDeleted: 647
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::__1::array" = type { [51 x i64] }
%"class.tsl::detail_robin_hash::bucket_entry" = type { i16, i8, [5 x i8], [16 x i8] }
%"struct.std::__1::piecewise_construct_t" = type { i8 }
%"struct.std::__1::array.68" = type { [51 x ptr] }
%"struct.nanogui::Array" = type { [2 x i32] }
%"class.std::__1::vector.11" = type { ptr, ptr, %"class.std::__1::__compressed_pair.12" }
%"class.std::__1::__compressed_pair.12" = type { %"struct.std::__1::__compressed_pair_elem.13" }
%"struct.std::__1::__compressed_pair_elem.13" = type { ptr }
%"struct.std::__1::hash" = type { i8 }
%"struct.std::__1::equal_to" = type { i8 }
%"class.std::__1::allocator.44" = type { i8 }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf" }
%"class.std::__1::__tuple_leaf" = type { ptr }
%"class.std::__1::tuple.63" = type { %"struct.std::__1::__tuple_impl.64" }
%"struct.std::__1::__tuple_impl.64" = type { %"class.std::__1::__tuple_leaf.65" }
%"class.std::__1::__tuple_leaf.65" = type { ptr }
%"struct.std::__1::pair.40" = type <{ ptr, %"struct.nanogui::AdvancedGridLayout::Anchor", [2 x i8] }>
%"struct.nanogui::AdvancedGridLayout::Anchor" = type { [2 x i8], [2 x i8], [2 x i8] }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.5, i64, ptr }
%struct.anon.5 = type { i64 }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.50" }
%"class.std::__1::__compressed_pair.50" = type { %"struct.std::__1::__compressed_pair_elem.13", %"struct.std::__1::__compressed_pair_elem.51" }
%"struct.std::__1::__compressed_pair_elem.51" = type { ptr }
%"class.tsl::detail_robin_hash::robin_hash" = type <{ %"class.tsl::rh::prime_growth_policy", [4 x i8], %"class.std::__1::vector.33", ptr, i64, i64, i64, float, float, i8, i8, [6 x i8] }>
%"class.tsl::rh::prime_growth_policy" = type { i32 }
%"class.std::__1::vector.33" = type { ptr, ptr, %"class.std::__1::__compressed_pair.34" }
%"class.std::__1::__compressed_pair.34" = type { %"struct.std::__1::__compressed_pair_elem.35" }
%"struct.std::__1::__compressed_pair_elem.35" = type { ptr }

$_ZN7nanogui18AdvancedGridLayout4ImplC2Ev = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEE6insertENS_11__wrap_iterIPKiEERS5_ = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEE6insertENS_11__wrap_iterIPKiEEOi = comdat any

$_ZNK7nanogui18AdvancedGridLayout6AnchorcvNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEv = comdat any

$_ZN7nanogui11GroupLayoutD0Ev = comdat any

$_ZN7nanogui10GridLayoutD2Ev = comdat any

$_ZN7nanogui10GridLayoutD0Ev = comdat any

$_ZN7nanogui9BoxLayoutD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_EC2EmRKSD_RKSF_RKSH_ff = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZNKSt3__16vectorIN3tsl17detail_robin_hash12bucket_entryINS_4pairIPKN7nanogui6WidgetENS5_18AdvancedGridLayout6AnchorEEELb0EEENS_9allocatorISC_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8ne180100v = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi = comdat any

$_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev = comdat any

$_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8ne180100IPiS5_EEvT_T0_l = comdat any

$_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEmRKf = comdat any

$_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_out_of_rangeB8ne180100Ev = comdat any

$_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc = comdat any

$_ZNSt12out_of_rangeC2B8ne180100EPKc = comdat any

$_ZN3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E11insert_implIS7_JRKNS2_21piecewise_construct_tENS2_5tupleIJRKS7_EEENSS_IJRKS9_EEEEEENS3_INSN_14robin_iteratorILb0EEEbEERKT_DpOT0_ = comdat any

$_ZN3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E22rehash_on_extreme_loadEs = comdat any

$_ZN3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E11rehash_implEm = comdat any

$_ZTIN7nanogui6LayoutE = comdat any

$_ZTSN7nanogui6LayoutE = comdat any

$_ZN3tsl2rh6detail6PRIMESE = comdat any

$_ZZN3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E23static_empty_bucket_ptrEvE12empty_bucket = comdat any

$_ZGVZN3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E23static_empty_bucket_ptrEvE12empty_bucket = comdat any

$_ZNSt3__119piecewise_constructE = comdat any

$_ZN3tsl2rh6detail9MOD_PRIMEE = comdat any

@_ZTVN7nanogui9BoxLayoutE = hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7nanogui9BoxLayoutE, ptr @_ZN7nanogui6ObjectD2Ev, ptr @_ZN7nanogui9BoxLayoutD0Ev, ptr @_ZNK7nanogui9BoxLayout14perform_layoutEP10NVGcontextPNS_6WidgetE, ptr @_ZNK7nanogui9BoxLayout14preferred_sizeEP10NVGcontextPKNS_6WidgetE] }, align 8
@_ZTIN7nanogui6WidgetE = external constant ptr
@_ZTIN7nanogui6WindowE = external constant ptr
@_ZTIN7nanogui5LabelE = external constant ptr
@_ZTVN7nanogui18AdvancedGridLayoutE = hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7nanogui18AdvancedGridLayoutE, ptr @_ZN7nanogui18AdvancedGridLayoutD2Ev, ptr @_ZN7nanogui18AdvancedGridLayoutD0Ev, ptr @_ZNK7nanogui18AdvancedGridLayout14perform_layoutEP10NVGcontextPNS_6WidgetE, ptr @_ZNK7nanogui18AdvancedGridLayout14preferred_sizeEP10NVGcontextPKNS_6WidgetE] }, align 8
@.str = private unnamed_addr constant [48 x i8] c"Widget was not registered with the grid layout!\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [48 x i8] c"Advanced grid layout: widget is out of bounds: \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Advanced grid layout: no space to place widget: \00", align 1
@_ZTVN7nanogui11GroupLayoutE = hidden local_unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7nanogui11GroupLayoutE, ptr @_ZN7nanogui6ObjectD2Ev, ptr @_ZN7nanogui11GroupLayoutD0Ev, ptr @_ZNK7nanogui11GroupLayout14perform_layoutEP10NVGcontextPNS_6WidgetE, ptr @_ZNK7nanogui11GroupLayout14preferred_sizeEP10NVGcontextPKNS_6WidgetE] }, align 8
@_ZTIN7nanogui11GroupLayoutE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui11GroupLayoutE, ptr @_ZTIN7nanogui6LayoutE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7nanogui11GroupLayoutE = hidden constant [24 x i8] c"N7nanogui11GroupLayoutE\00", align 1
@_ZTIN7nanogui6LayoutE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui6LayoutE, ptr @_ZTIN7nanogui6ObjectE }, comdat, align 8
@_ZTSN7nanogui6LayoutE = linkonce_odr hidden constant [18 x i8] c"N7nanogui6LayoutE\00", comdat, align 1
@_ZTIN7nanogui6ObjectE = external constant ptr
@_ZTVN7nanogui10GridLayoutE = hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7nanogui10GridLayoutE, ptr @_ZN7nanogui10GridLayoutD2Ev, ptr @_ZN7nanogui10GridLayoutD0Ev, ptr @_ZNK7nanogui10GridLayout14perform_layoutEP10NVGcontextPNS_6WidgetE, ptr @_ZNK7nanogui10GridLayout14preferred_sizeEP10NVGcontextPKNS_6WidgetE] }, align 8
@_ZTIN7nanogui10GridLayoutE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui10GridLayoutE, ptr @_ZTIN7nanogui6LayoutE }, align 8
@_ZTSN7nanogui10GridLayoutE = hidden constant [23 x i8] c"N7nanogui10GridLayoutE\00", align 1
@_ZTIN7nanogui9BoxLayoutE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui9BoxLayoutE, ptr @_ZTIN7nanogui6LayoutE }, align 8
@_ZTSN7nanogui9BoxLayoutE = hidden constant [21 x i8] c"N7nanogui9BoxLayoutE\00", align 1
@_ZTIN7nanogui18AdvancedGridLayoutE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui18AdvancedGridLayoutE, ptr @_ZTIN7nanogui6LayoutE }, align 8
@_ZTSN7nanogui18AdvancedGridLayoutE = hidden constant [31 x i8] c"N7nanogui18AdvancedGridLayoutE\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"The map exceeds its maximum bucket count.\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZN3tsl2rh6detail6PRIMESE = linkonce_odr hidden constant %"struct.std::__1::array" { [51 x i64] [i64 1, i64 5, i64 17, i64 29, i64 37, i64 53, i64 67, i64 79, i64 97, i64 131, i64 193, i64 257, i64 389, i64 521, i64 769, i64 1031, i64 1543, i64 2053, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291, i64 6442450939, i64 12884901893, i64 25769803751, i64 51539607551, i64 103079215111, i64 206158430209, i64 412316860441, i64 824633720831, i64 1649267441651, i64 3298534883309, i64 6597069766657] }, comdat, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"The hash table exceeds its maximum size.\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt20bad_array_new_length = external constant ptr
@_ZZN3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E23static_empty_bucket_ptrEvE12empty_bucket = linkonce_odr hidden global %"class.tsl::detail_robin_hash::bucket_entry" zeroinitializer, comdat, align 8
@_ZGVZN3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E23static_empty_bucket_ptrEvE12empty_bucket = linkonce_odr hidden global i64 0, comdat, align 8
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"Format[pos=(%i, %i), size=(%i, %i), align=(%i, %i)]\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12out_of_range = external constant ptr
@_ZTVSt12out_of_range = external constant { [5 x ptr] }, align 8
@_ZNSt3__119piecewise_constructE = linkonce_odr hidden constant %"struct.std::__1::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZN3tsl2rh6detail9MOD_PRIMEE = linkonce_odr hidden local_unnamed_addr constant %"struct.std::__1::array.68" { [51 x ptr] [ptr @_ZN3tsl2rh6detailL3modILj0EEEmm, ptr @_ZN3tsl2rh6detailL3modILj1EEEmm, ptr @_ZN3tsl2rh6detailL3modILj2EEEmm, ptr @_ZN3tsl2rh6detailL3modILj3EEEmm, ptr @_ZN3tsl2rh6detailL3modILj4EEEmm, ptr @_ZN3tsl2rh6detailL3modILj5EEEmm, ptr @_ZN3tsl2rh6detailL3modILj6EEEmm, ptr @_ZN3tsl2rh6detailL3modILj7EEEmm, ptr @_ZN3tsl2rh6detailL3modILj8EEEmm, ptr @_ZN3tsl2rh6detailL3modILj9EEEmm, ptr @_ZN3tsl2rh6detailL3modILj10EEEmm, ptr @_ZN3tsl2rh6detailL3modILj11EEEmm, ptr @_ZN3tsl2rh6detailL3modILj12EEEmm, ptr @_ZN3tsl2rh6detailL3modILj13EEEmm, ptr @_ZN3tsl2rh6detailL3modILj14EEEmm, ptr @_ZN3tsl2rh6detailL3modILj15EEEmm, ptr @_ZN3tsl2rh6detailL3modILj16EEEmm, ptr @_ZN3tsl2rh6detailL3modILj17EEEmm, ptr @_ZN3tsl2rh6detailL3modILj18EEEmm, ptr @_ZN3tsl2rh6detailL3modILj19EEEmm, ptr @_ZN3tsl2rh6detailL3modILj20EEEmm, ptr @_ZN3tsl2rh6detailL3modILj21EEEmm, ptr @_ZN3tsl2rh6detailL3modILj22EEEmm, ptr @_ZN3tsl2rh6detailL3modILj23EEEmm, ptr @_ZN3tsl2rh6detailL3modILj24EEEmm, ptr @_ZN3tsl2rh6detailL3modILj25EEEmm, ptr @_ZN3tsl2rh6detailL3modILj26EEEmm, ptr @_ZN3tsl2rh6detailL3modILj27EEEmm, ptr @_ZN3tsl2rh6detailL3modILj28EEEmm, ptr @_ZN3tsl2rh6detailL3modILj29EEEmm, ptr @_ZN3tsl2rh6detailL3modILj30EEEmm, ptr @_ZN3tsl2rh6detailL3modILj31EEEmm, ptr @_ZN3tsl2rh6detailL3modILj32EEEmm, ptr @_ZN3tsl2rh6detailL3modILj33EEEmm, ptr @_ZN3tsl2rh6detailL3modILj34EEEmm, ptr @_ZN3tsl2rh6detailL3modILj35EEEmm, ptr @_ZN3tsl2rh6detailL3modILj36EEEmm, ptr @_ZN3tsl2rh6detailL3modILj37EEEmm, ptr @_ZN3tsl2rh6detailL3modILj38EEEmm, ptr @_ZN3tsl2rh6detailL3modILj39EEEmm, ptr @_ZN3tsl2rh6detailL3modILj40EEEmm, ptr @_ZN3tsl2rh6detailL3modILj41EEEmm, ptr @_ZN3tsl2rh6detailL3modILj42EEEmm, ptr @_ZN3tsl2rh6detailL3modILj43EEEmm, ptr @_ZN3tsl2rh6detailL3modILj44EEEmm, ptr @_ZN3tsl2rh6detailL3modILj45EEEmm, ptr @_ZN3tsl2rh6detailL3modILj46EEEmm, ptr @_ZN3tsl2rh6detailL3modILj47EEEmm, ptr @_ZN3tsl2rh6detailL3modILj48EEEmm, ptr @_ZN3tsl2rh6detailL3modILj49EEEmm, ptr @_ZN3tsl2rh6detailL3modILj50EEEmm] }, comdat, align 8

@_ZN7nanogui9BoxLayoutC1ENS_11OrientationENS_9AlignmentEii = hidden unnamed_addr alias void (ptr, i32, i8, i32, i32), ptr @_ZN7nanogui9BoxLayoutC2ENS_11OrientationENS_9AlignmentEii
@_ZN7nanogui18AdvancedGridLayoutC1ERKNSt3__16vectorIiNS1_9allocatorIiEEEES7_i = hidden unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN7nanogui18AdvancedGridLayoutC2ERKNSt3__16vectorIiNS1_9allocatorIiEEEES7_i
@_ZN7nanogui18AdvancedGridLayoutD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7nanogui18AdvancedGridLayoutD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui9BoxLayoutC2ENS_11OrientationENS_9AlignmentEii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 21), (24, 32)) %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7nanogui9BoxLayoutE, i64 16), ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %2, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %4, ptr %i.e, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden i64 @_ZNK7nanogui9BoxLayout14preferred_sizeEP10NVGcontextPKNS_6WidgetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr nofree noundef readonly %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.nanogui::Array", align 4   ; 7 uses
  %4 = alloca %"struct.nanogui::Array", align 4   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 8 uses
  store i32 %i.c, ptr %3, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !27
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6WindowE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  %i.i = trunc i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i8 %i.h, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = select i1 %i.i, i64 %i.k, i64 %i.m
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = icmp eq i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !36   ; 2 uses
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.neg = sdiv i32 %i.b, -2
  %i.w = add i32 %i.c, %.neg
  %i.x = add i32 %i.w, %i.v                       ; 2 uses
  store i32 %i.x, ptr %i.d, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.a, %bb.b, %bb.e, %bb.c
  %i.y = phi i32 [ %i.x, %bb.e ], [ %i.c, %bb.a ], [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.d ]
  %.020 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.v, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %.not4243 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4243, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  %i.ag = srem i32 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = sext i32 %i.ae to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ai
  %i.al = sext i32 %i.ag to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.al
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre = load i32, ptr %3, align 4, !tbaa !27
  %.pre46 = load i32, ptr %i.d, align 4, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %i.ao = phi i32 [ %.pre46, %._crit_edge.loopexit ], [ %i.y, %.critedge ]
  %i.ap = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.c, %.critedge ]
  %i.aq = add nsw i32 %i.ao, %.020
  %.sroa.2.0.insert.ext.i = zext i32 %i.aq to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ap to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i64 %.sroa.0.0.insert.insert.i

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %.045 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %.sroa.036.044 = phi ptr [ %i.aa, %.lr.ph ], [ %i.bi, %bb.j ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.036.044, align 8, !tbaa !45 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load i8, ptr %i.as, align 8, !tbaa !56, !range !57, !noundef !58
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %.045, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.ax = add nsw i32 %i.aw, %i.av
  store i32 %i.ax, ptr %i.aj, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ay = tail call i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148) %i.ar, ptr noundef %1) ; 2 uses
  %.sroa.033.0.extract.trunc = trunc i64 %i.ay to i32
  %.sroa.434.0.extract.shift = lshr i64 %i.ay, 32
  %.sroa.434.0.extract.trunc = trunc nuw i64 %.sroa.434.0.extract.shift to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %6 = load i32, ptr %i.az, align 8               ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  %7 = load i32, ptr %.sroa_idx, align 4          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.not23 = icmp eq i32 %6, 0
  %spec.select = select i1 %.not23, i32 %.sroa.033.0.extract.trunc, i32 %6
  %.not24 = icmp eq i32 %7, 0
  %.in25.sroa.speculated = select i1 %.not24, i32 %.sroa.434.0.extract.trunc, i32 %7
  store i32 %spec.select, ptr %4, align 4, !tbaa !27
  store i32 %.in25.sroa.speculated, ptr %5, align 4, !tbaa !27
  %i.ba = load i32, ptr %i.ak, align 4, !tbaa !27
  %i.bb = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.bc = add nsw i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.aj, align 4, !tbaa !27
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !27
  %i.be = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bf = shl nsw i32 %i.be, 1
  %i.bg = add nsw i32 %i.bf, %i.bd
  %i.bh = load i32, ptr %i.am, align 4, !tbaa !27
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bg)
  store i32 %.sroa.speculated, ptr %i.am, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.1 = phi i1 [ false, %bb.i ], [ %.045, %bb.f ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.036.044, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.bi, %i.ac
  br i1 %.not42, label %._crit_edge.loopexit, label %bb.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7nanogui9BoxLayout14perform_layoutEP10NVGcontextPNS_6WidgetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr nofree noundef readonly %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.nanogui::Array", align 4   ; 5 uses
  %4 = alloca %"struct.nanogui::Array", align 8   ; 4 uses
  %5 = alloca %"struct.nanogui::Array", align 8   ; 8 uses
  %6 = alloca %"struct.nanogui::Array", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load i64, ptr %i.a, align 4, !tbaa !59   ; 2 uses
  %.sroa.059.0.extract.trunc = trunc i64 %i.b to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.b, 32    ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.not = icmp eq i32 %.sroa.059.0.extract.trunc, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ %.sroa.059.0.extract.trunc, %bb.a ]
  %.not45 = icmp eq i64 %.sroa.5.0.extract.shift, 0
  br i1 %.not45, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi i32 [ %i.g, %bb.d ], [ %.sroa.5.0.extract.trunc, %bb.c ] ; 2 uses
  store i32 %i.e, ptr %3, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = srem i32 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25   ; 5 uses
  %i.p = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6WindowE, i64 0) #25 ; 3 uses
  %.not46 = icmp eq ptr %i.p, null
  br i1 %.not46, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.r = load i8, ptr %i.q, align 8               ; 2 uses
  %i.s = trunc i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.r, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.s, i64 %i.u, i64 %i.w
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq i32 %i.k, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !36 ; 3 uses
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.neg = sdiv i32 %i.o, -2
  %i.ae = add i32 %.neg, %i.o
  %i.af = add i32 %i.ae, %i.ad
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ag = sub nsw i32 %i.h, %i.ad
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.i, %bb.f
  %.041 = phi i32 [ %i.af, %bb.h ], [ %i.o, %bb.i ], [ %i.o, %bb.f ], [ %i.o, %bb.e ]
  %.040 = phi i32 [ 0, %bb.h ], [ %i.ad, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not6266 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not6266, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ao = sext i32 %i.k to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ar = sext i32 %i.m to i64                    ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ar ; 8 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ar
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ar ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ao
  br label %bb.j

._crit_edge:                                      ; preds = %bb.v, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.v
  %.069 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.v ] ; 2 uses
  %.14268 = phi i32 [ %.041, %.lr.ph ], [ %.3, %bb.v ] ; 3 uses
  %.sroa.054.067 = phi ptr [ %i.ai, %.lr.ph ], [ %i.da, %bb.v ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.054.067, align 8, !tbaa !45 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !56, !range !57, !noundef !58
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  br i1 %.069, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.al, align 4, !tbaa !26
  %i.bc = add nsw i32 %i.bb, %.14268
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.243 = phi i32 [ %i.bc, %bb.l ], [ %.14268, %bb.k ] ; 2 uses
  %i.bd = tail call i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148) %i.ax, ptr noundef %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.bd to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.bd, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !59 ; 3 uses
  store i64 %i.bf, ptr %4, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %.not47 = icmp eq i32 %i.bg, 0
  %spec.select = select i1 %.not47, i32 %.sroa.0.0.extract.trunc, i32 %i.bg ; 5 uses
  %i.bh = lshr i64 %i.bf, 32                      ; 2 uses
  %.not48 = icmp eq i64 %i.bh, 0
  %.in49.sroa.speculated.v = select i1 %.not48, i64 %.sroa.4.0.extract.shift, i64 %i.bh
  %.in49.sroa.speculated = trunc nuw i64 %.in49.sroa.speculated.v to i32 ; 5 uses
  store i32 %spec.select, ptr %5, align 8, !tbaa !27
  store i32 %.in49.sroa.speculated, ptr %i.am, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 0, ptr %6, align 8, !tbaa !27
  store i32 %.040, ptr %i.an, align 4, !tbaa !27
  store i32 %.243, ptr %i.ap, align 4, !tbaa !27
  %i.bi = load i8, ptr %i.aq, align 4, !tbaa !24
  switch i8 %i.bi, label %bb.t [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bj = load i32, ptr %i.n, align 8, !tbaa !25
  %i.bk = load i32, ptr %i.as, align 4, !tbaa !27
  %i.bl = add nsw i32 %i.bk, %i.bj
  store i32 %i.bl, ptr %i.as, align 4, !tbaa !27
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %i.au, align 4, !tbaa !27
  %i.bn = load i32, ptr %i.av, align 4, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZNK7nanogui10GridLayout14preferred_sizeEP10NVGcontextPKNS_6WidgetE:bb.a
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !69   ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !70 ; 4 uses
  %.not5.i20 = icmp eq ptr %i.z, %i.ab
  br i1 %.not5.i20, label %.loopexit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %.loopexit39
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = ptrtoaddr ptr %i.z to i64
  %i.ae = add i64 %i.ac, -4
  %i.af = sub i64 %i.ae, %i.ad                    ; 2 uses
  %i.ag = lshr i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.af, 28
  br i1 %min.iters.check55, label %.lr.ph.i21.preheader71, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.i21.preheader
  %n.vec57 = and i64 %i.ah, 9223372036854775800   ; 3 uses
  %i.ai = shl i64 %n.vec57, 2
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body58 ] ; 2 uses
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph56 ], [ %i.am, %vector.body58 ]
  %vec.phi61 = phi <4 x i32> [ zeroinitializer, %vector.ph56 ], [ %i.an, %vector.body58 ]
  %i.ak = shl i64 %index59, 2
  %next.gep62 = getelementptr i8, ptr %i.z, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !27
  %wide.load64 = load <4 x i32>, ptr %i.al, align 4, !tbaa !27
  %i.am = add <4 x i32> %wide.load63, %vec.phi60  ; 2 uses
  %i.an = add <4 x i32> %wide.load64, %vec.phi61  ; 2 uses
  %index.next65 = add nuw i64 %index59, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next65, %n.vec57
  br i1 %i.ao, label %middle.block66, label %vector.body58, !llvm.loop !138

middle.block66:                                   ; preds = %vector.body58
  %bin.rdx67 = add <4 x i32> %i.an, %i.am
  %i.ap = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx67) ; 2 uses
  %cmp.n68 = icmp eq i64 %i.ah, %n.vec57
  br i1 %cmp.n68, label %.loopexit, label %.lr.ph.i21.preheader71

.lr.ph.i21.preheader71:                           ; preds = %.lr.ph.i21.preheader, %middle.block66
  %.07.i22.ph = phi i32 [ 0, %.lr.ph.i21.preheader ], [ %i.ap, %middle.block66 ]
  %.sroa.02.06.i23.ph = phi ptr [ %i.z, %.lr.ph.i21.preheader ], [ %i.aj, %middle.block66 ]
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader71, %.lr.ph.i21
  %.07.i22 = phi i32 [ %i.ar, %.lr.ph.i21 ], [ %.07.i22.ph, %.lr.ph.i21.preheader71 ]
  %.sroa.02.06.i23 = phi ptr [ %i.as, %.lr.ph.i21 ], [ %.sroa.02.06.i23.ph, %.lr.ph.i21.preheader71 ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.02.06.i23, align 4, !tbaa !27
  %i.ar = add nsw i32 %i.aq, %.07.i22             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i23, i64 4 ; 2 uses
  %.not.i24 = icmp eq ptr %i.as, %i.ab
  br i1 %.not.i24, label %.loopexit, label %.lr.ph.i21, !llvm.loop !139

.loopexit:                                        ; preds = %.lr.ph.i21, %middle.block66, %.loopexit39
  %.0.lcssa.i25 = phi i32 [ 0, %.loopexit39 ], [ %i.ap, %middle.block66 ], [ %i.ar, %.lr.ph.i21 ]
  %i.at = ptrtoint ptr %i.ab to i64
  %i.au = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.av = sub i64 %i.at, %i.au
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = shl nsw i32 %i.b, 1                     ; 2 uses
  %i.az = add nsw i32 %.0.lcssa.i25, %i.ay
  %i.ba = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %.sroa.speculated = add nsw i32 %i.ba, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !27
  %i.bd = mul nsw i32 %i.bc, %.sroa.speculated
  %i.be = add nsw i32 %i.az, %i.bd                ; 4 uses
  %i.bf = icmp eq ptr %2, null
  br i1 %i.bf, label %.critedge, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !69 ; 4 uses
  %.not.i.i27 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i27, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit28, label %bb.i

bb.d:                                             ; preds = %.loopexit
  %i.bj = call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6WindowE, i64 0) #25 ; 3 uses
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load i8, ptr %i.bk, align 8             ; 2 uses
  %i.bm = trunc i8 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = lshr i8 %i.bl, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bm, i64 %i.bo, i64 %i.bq
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 52
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !36
  %.neg = sdiv i32 %i.b, -2
  %i.bx = add i32 %i.be, %.neg
  %i.by = add i32 %i.bx, %i.bw
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.f, %bb.e
  %.sroa.2.0 = phi i32 [ %i.by, %bb.f ], [ %i.be, %bb.e ], [ %i.be, %bb.d ], [ %i.be, %.loopexit ]
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.z, ptr %i.bz, align 16, !tbaa !70
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !74
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.cd) #26
  %.pre = load ptr, ptr %3, align 16, !tbaa !69
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit: ; preds = %.critedge, %bb.g
  %i.ce = phi ptr [ %i.c, %.critedge ], [ %.pre, %bb.g ] ; 4 uses
  %.not.i.i.1 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.1, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit.1, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !70
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !74
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.ce to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ck) #26
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit.1

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit.1: ; preds = %bb.h, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.cl = add nsw i32 %.0.lcssa.i, %i.ay
  %i.cm = ptrtoint ptr %i.e to i64
  %i.cn = ptrtoint ptr %i.c to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = call i32 @llvm.smax.i32(i32 %i.cq, i32 1)
  %.sroa.speculated32 = add nsw i32 %i.cr, -1
  %i.cs = mul nsw i32 %i.x, %.sroa.speculated32
  %i.ct = add nsw i32 %i.cl, %i.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.sroa.2.0.insert.ext = zext i32 %.sroa.2.0 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.037.0.insert.ext = zext i32 %i.ct to i64
  %.sroa.037.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.037.0.insert.ext
  ret i64 %.sroa.037.0.insert.insert

bb.i:                                             ; preds = %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.bi, ptr %i.cu, align 16, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !74
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.bi to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.cz) #26
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit28

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit28: ; preds = %bb.c, %bb.i
  %i.da = load ptr, ptr %3, align 16, !tbaa !69   ; 4 uses
  %.not.i.i27.1 = icmp eq ptr %i.da, null
  br i1 %.not.i.i27.1, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit28.1, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit28
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.da, ptr %i.db, align 8, !tbaa !70
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dd = load ptr, ptr %i.dc, align 16, !tbaa !74
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dg) #26
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit28.1

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit28.1: ; preds = %bb.j, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7nanogui10GridLayout14compute_layoutEP10NVGcontextPKNS_6WidgetEPNSt3__16vectorIiNS6_9allocatorIiEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanogui::Array", align 4   ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.nanogui::Array", align 4   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  %i.f = srem i32 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not7988 = icmp eq ptr %i.j, %i.i
  br i1 %.not7988, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.o = add i64 %i.aq, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.058.lcssa = phi i64 [ -1, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !143  ; 2 uses
  %i.r = sext i32 %i.d to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.r ; 2 uses
  store i32 %i.q, ptr %i.s, align 4, !tbaa !27
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = add i64 %.058.lcssa, %i.t
  %i.v = udiv i64 %i.u, %i.t                      ; 3 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = sext i32 %i.f to i64                     ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.x
  store i32 %i.w, ptr %i.y, align 4, !tbaa !27
  %i.z = getelementptr inbounds [24 x i8], ptr %3, i64 %i.r ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !69
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !70
  %i.ac = load i32, ptr %i.s, align 4, !tbaa !27  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %.not80 = icmp eq i32 %i.ac, 0
  br i1 %.not80, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ad = sext i32 %i.ac to i64
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ae = getelementptr inbounds [24 x i8], ptr %3, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !69
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !70
  %sext = shl i64 %i.v, 32                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %.not81 = icmp eq i64 %sext, 0
  br i1 %.not81, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit63, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit
  %i.ah = ashr exact i64 %sext, 32
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit63

_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit63: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ai = icmp sgt i32 %i.w, 0
  br i1 %i.ai, label %.preheader84.lr.ph, label %.loopexit

.preheader84.lr.ph:                               ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit63
  %.not6291 = icmp sgt i32 %i.ac, 0
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.r
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.x
  br i1 %.not6291, label %.preheader84.preheader, label %.loopexit

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph
  %i.al = and i64 %i.v, 2147483647
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %.preheader84

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05890 = phi i64 [ %i.aq, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.071.089 = phi ptr [ %i.ar, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.071.089, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !56, !range !57, !noundef !58
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = add i64 %.05890, %i.ap                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.ar, %i.i
  br i1 %.not79, label %._crit_edge.loopexit, label %.lr.ph

.preheader84:                                     ; preds = %.preheader84.preheader, %..thread76_crit_edge
  %indvars.iv102 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next103, %..thread76_crit_edge ] ; 2 uses
  %.05595 = phi i64 [ 0, %.preheader84.preheader ], [ %i.at, %..thread76_crit_edge ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader84, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.15692 = phi i64 [ %.05595, %.preheader84 ], [ %i.at, %bb.e ] ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %.15692, i64 %i.n)
  %exitcond.not114.not = icmp ult i64 %.15692, %i.n
  br i1 %exitcond.not114.not, label %.lr.ph116.preheader, label %.loopexit

.lr.ph116.preheader:                              ; preds = %.preheader
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %.lr.ph116

bb.d:                                             ; preds = %.lr.ph116
  %exitcond.not = icmp eq i64 %i.at, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph116, !llvm.loop !140

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.d
  %.257115 = phi i64 [ %i.at, %bb.d ], [ %.15692, %.lr.ph116.preheader ] ; 2 uses
  %i.at = add i64 %.257115, 1                     ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.257115
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !56, !range !57, !noundef !58
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.e, label %bb.d, !llvm.loop !140

bb.e:                                             ; preds = %.lr.ph116
  %i.az = call i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148) %i.av, ptr noundef %1) ; 2 uses
  %.sroa.069.0.extract.trunc = trunc i64 %i.az to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.az, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %7 = load i32, ptr %i.ba, align 4               ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 60
  %8 = load i32, ptr %.sroa_idx, align 4          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.not59 = icmp eq i32 %7, 0
  %spec.select = select i1 %.not59, i32 %.sroa.069.0.extract.trunc, i32 %7
  %.not60 = icmp eq i32 %8, 0
  %.in61.sroa.speculated = select i1 %.not60, i32 %.sroa.4.0.extract.trunc, i32 %8
  store i32 %spec.select, ptr %5, align 4, !tbaa !27
  store i32 %.in61.sroa.speculated, ptr %6, align 4, !tbaa !27
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.be = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.bf = call i32 @llvm.smax.i32(i32 %i.bd, i32 %i.be)
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !27
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv102 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  %i.bj = load i32, ptr %i.ak, align 4, !tbaa !27
  %i.bk = call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bj)
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond101.not, label %..thread76_crit_edge, label %.preheader, !llvm.loop !141

..thread76_crit_edge:                             ; preds = %bb.e
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next103, %i.al
  br i1 %i.bl, label %.preheader84, label %.loopexit, !llvm.loop !142

.loopexit:                                        ; preds = %..thread76_crit_edge, %.preheader, %bb.d, %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi.exit63, %.preheader84.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7nanogui10GridLayout14perform_layoutEP10NVGcontextPNS_6WidgetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, ptr nofree noundef readonly %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [2 x %"class.std::__1::vector.11"], align 16 ; 26 uses
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %4 = alloca %"struct.nanogui::Array", align 8   ; 5 uses
  %5 = alloca %"struct.nanogui::Array", align 8   ; 7 uses
  %6 = alloca %"struct.nanogui::Array", align 8   ; 6 uses
  %7 = alloca %"struct.nanogui::Array", align 8   ; 13 uses
  %8 = alloca %"struct.nanogui::Array", align 8   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load i64, ptr %i.b, align 4, !tbaa !59   ; 2 uses
  %.sroa.0150.0.extract.trunc = trunc i64 %i.c to i32 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.c, 32    ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %.not = icmp eq i32 %.sroa.0150.0.extract.trunc, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %.sroa.0150.0.extract.trunc, %bb.a ] ; 3 uses
  %.not129 = icmp eq i64 %.sroa.6.0.extract.shift, 0
  br i1 %.not129, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %i.h, %bb.d ], [ %.sroa.6.0.extract.trunc, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  invoke void @_ZNK7nanogui10GridLayout14compute_layoutEP10NVGcontextPKNS_6WidgetEPNSt3__16vectorIiNS6_9allocatorIiEEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = load ptr, ptr %3, align 16, !tbaa !69    ; 8 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = lshr i64 %i.o, 2                         ; 8 uses
  %i.q = trunc i64 %i.p to i32                    ; 5 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !70
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !69   ; 8 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = lshr i64 %i.y, 2                         ; 8 uses
  %i.aa = trunc i64 %i.z to i32                   ; 5 uses
  store i32 %i.aa, ptr %i.r, align 4, !tbaa !27
  %i.ab = call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6WindowE, i64 0) #25 ; 3 uses
  %.not131 = icmp eq ptr %i.ab, null
  br i1 %.not131, label %.critedge, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %i.ae = load i8, ptr %i.ad, align 8             ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i8 %i.ae, 1
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = select i1 %i.af, i64 %i.ah, i64 %i.aj
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 52
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !64
  %.neg = sdiv i32 %i.ar, -2
  %i.as = add i32 %.neg, %i.ap
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.h
  %.sroa.5.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.av = icmp sgt i32 %i.q, 0
  br i1 %i.av, label %.lr.ph, label %.critedge4

.lr.ph:                                           ; preds = %.critedge
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !64
  %i.ax = shl nsw i32 %i.aw, 1                    ; 2 uses
  %i.ay = and i64 %i.p, 2147483647                ; 3 uses
  %wide.trip.count = and i64 %i.p, 2147483647     ; 4 uses
  %i.az = icmp eq i64 %wide.trip.count, 1
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.p, 2147483646
  br label %bb.k

._crit_edge.unr-lcssa:                            ; preds = %bb.o
  %i.ba = and i64 %i.o, 4
  %lcmp.mod.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1317, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0113165.epil.init = phi i32 [ %i.ax, %.lr.ph ], [ %.1114.1318, %._crit_edge.unr-lcssa ]
  %lcmp.mod314 = trunc i64 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.epil.init
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bd = add nsw i32 %i.bc, %.0113165.epil.init  ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1
  %i.be = icmp samesign ult i64 %indvars.iv.next.epil, %i.ay
  br i1 %i.be, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.epil.preheader
  %i.bf = load i32, ptr %i.au, align 4, !tbaa !27
  %i.bg = add nsw i32 %i.bf, %i.bd
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.j, %._crit_edge.unr-lcssa
  %.1114.lcssa = phi i32 [ %.1114.1318, %._crit_edge.unr-lcssa ], [ %i.bg, %bb.j ], [ %i.bd, %.epil.preheader ] ; 3 uses
  %i.bh = icmp slt i32 %.1114.lcssa, %i.f
  br i1 %i.bh, label %.lr.ph170, label %.critedge4

bb.k:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1317, %bb.o ] ; 3 uses
  %.0113165 = phi i32 [ %i.ax, %.lr.ph.new ], [ %.1114.1318, %bb.o ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.o ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !27
  %i.bk = add nsw i32 %i.bj, %.0113165            ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = load i32, ptr %i.au, align 4, !tbaa !27
  %i.bn = add nsw i32 %i.bm, %i.bk
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1114 = phi i32 [ %i.bn, %bb.l ], [ %i.bk, %bb.k ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !27
  %i.bq = add nsw i32 %i.bp, %.1114               ; 2 uses
  %indvars.iv.next.1317 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next.1317, %i.ay
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = load i32, ptr %i.au, align 4, !tbaa !27
  %i.bt = add nsw i32 %i.bs, %i.bq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
end_hunk_1
