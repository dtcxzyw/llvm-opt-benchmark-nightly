Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/list_test?download=true
inline.NumInlined: 14997
inline.NumDeleted: 3402
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 149
begin_hunk_0
@.str.32 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 334\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"c2.get_stored_allocator().ctr_copies_ == 0\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"c2.get_stored_allocator().ctr_moves_ > 0\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 445\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 446\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 445\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"c2.get_stored_allocator().ctr_moves_ == 0\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"c2.get_stored_allocator().assign_copies_ == 1\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 556\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 557\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 557\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"c.get_stored_allocator().assign_moves_ == 1\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 667\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 668\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"c2.get_stored_allocator().swaps_ == 1\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"c.get_stored_allocator().swaps_ == 1\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 224\00", align 1
@_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeIcNS0_3dtl9list_hookIPvEELb0EEELb1ELb1ELb1ELb1ELb1EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@.str.49 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"): test '\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"' failed in function '\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE20boost_container_listEEEEvv = private unnamed_addr constant [248 x i8] c"void boost::container::test::test_propagate_allocator_allocator_arg() [Container = boost::container::test::alloc_propagate_wrapper<char, boost::container::test::propagation_test_allocator<char, true, true, true, true, true>, boost_container_list>]\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"c.get_stored_allocator().ctr_copies_ > 0\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"c2.get_stored_allocator().ctr_copies_ > 0\00", align 1
@_ZN5boost9container4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeIcNS0_3dtl9list_hookIPvEELb0EEELb0ELb0ELb0ELb0ELb1EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE20boost_container_listEEEEvv = private unnamed_addr constant [252 x i8] c"void boost::container::test::test_propagate_allocator_allocator_arg() [Container = boost::container::test::alloc_propagate_wrapper<char, boost::container::test::propagation_test_allocator<char, false, false, false, false, true>, boost_container_list>]\00", align 1
@_ZN5boost9container4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeIcNS0_3dtl9list_hookIPvEELb0EEELb0ELb0ELb0ELb0ELb0EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"b != e\00", align 1
@.str.56 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/boost/boost/libs/container/test/../../intrusive/test/iterator_test.hpp\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS4_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEEvT_SK_ = private unnamed_addr constant [188 x i8] c"void boost::intrusive::test::test_iterator_operations(I, I) [I = boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, false>]\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"!(b == e)\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS4_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEEvT_SK_ = private unnamed_addr constant [187 x i8] c"void boost::intrusive::test::test_iterator_operations(I, I) [I = boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, true>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_7movelib16reverse_iteratorINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS5_9base_nodeIiNS6_9list_hookIPvEELb0EEENS0_16list_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEEEEvT_SN_ = private unnamed_addr constant [222 x i8] c"void boost::intrusive::test::test_iterator_operations(I, I) [I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, false>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_7movelib16reverse_iteratorINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS5_9base_nodeIiNS6_9list_hookIPvEELb0EEENS0_16list_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEEEEvT_SN_ = private unnamed_addr constant [221 x i8] c"void boost::intrusive::test::test_iterator_operations(I, I) [I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, true>>]\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"it == it2++\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container4listIivEENS3_3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS6_9list_hookIPvEELb0EEENS0_16list_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEEvRKT_T0_SP_ = private unnamed_addr constant [251 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::list<int>, I = boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, false>]\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"&(++ittmp) == iaddr\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"ittmp == it2\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"i == c.size()\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"it == e\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container4listIivEENS3_3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS6_9list_hookIPvEELb0EEENS0_16list_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEEvRKT_T0_SP_ = private unnamed_addr constant [250 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::list<int>, I = boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, true>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container4listIivEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS8_9list_hookIPvEELb0EEENS0_16list_node_traitsISE_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEEEEvRKT_T0_SS_ = private unnamed_addr constant [285 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::list<int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, false>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container4listIivEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS8_9list_hookIPvEELb0EEENS0_16list_node_traitsISE_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEEEEvRKT_T0_SS_ = private unnamed_addr constant [284 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::list<int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, true>>]\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"it == it2--\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container4listIivEENS3_3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS6_9list_hookIPvEELb0EEENS0_16list_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEEvRKT_T0_SP_ = private unnamed_addr constant [257 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::list<int>, I = boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, false>]\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"&(--ittmp) == iaddr\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"(++ittmp) == it\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"it == b\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container4listIivEENS3_3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS6_9list_hookIPvEELb0EEENS0_16list_node_traitsISC_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEEvRKT_T0_SP_ = private unnamed_addr constant [256 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::list<int>, I = boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, true>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container4listIivEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS8_9list_hookIPvEELb0EEENS0_16list_node_traitsISE_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEEEEvRKT_T0_SS_ = private unnamed_addr constant [291 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::list<int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, false>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container4listIivEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS3_9base_nodeIiNS8_9list_hookIPvEELb0EEENS0_16list_node_traitsISE_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEEEEvRKT_T0_SS_ = private unnamed_addr constant [290 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::list<int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<intrusive_list_type<std::allocator<int>>::container_type::iterator, true>>]\00", align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.1, ptr @_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE13create_objectE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.2, ptr @_ZN5boost9container3dtl17singleton_defaultINS1_16shared_node_poolILm24ELm256ELm8EEEE13create_objectE }]
@llvm.used = appending global [2 x ptr] [ptr @_ZN5boost9container3dtl17singleton_defaultINS1_16shared_node_poolILm24ELm256ELm8EEEE13create_objectE, ptr @_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE13create_objectE], section "llvm.metadata"

@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1Ev = weak_odr hidden unnamed_addr alias void (ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2Ev
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1ERKS5_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2ERKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1Em = weak_odr hidden unnamed_addr alias void (ptr, i64), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2Em
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1EmRKS5_ = weak_odr hidden unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2EmRKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1EmRKS3_RKS5_ = weak_odr hidden unnamed_addr alias void (ptr, i64, ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2EmRKS3_RKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1ERKS6_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2ERKS6_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1EOS6_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2EOS6_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1ERKS6_RKS5_ = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2ERKS6_RKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1EOS6_RKS5_ = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2EOS6_RKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC1ESt16initializer_listIS3_ERKS5_ = weak_odr hidden unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2ESt16initializer_listIS3_ERKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEED1Ev = weak_odr hidden unnamed_addr alias void (ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEED2Ev
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE17insertion_functorC1ERNS_9intrusive9list_implINS8_8bhtraitsINS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEENS8_16list_node_traitsISE_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEEmLb1EvEENS8_13list_iteratorISL_Lb1EEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE17insertion_functorC2ERNS_9intrusive9list_implINS8_8bhtraitsINS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEENS8_16list_node_traitsISE_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEEmLb1EvEENS8_13list_iteratorISL_Lb1EEE
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1Ev = weak_odr hidden unnamed_addr alias void (ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2Ev
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1ERKS5_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2ERKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1Em = weak_odr hidden unnamed_addr alias void (ptr, i64), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2Em
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1EmRKS5_ = weak_odr hidden unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2EmRKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1EmRKS3_RKS5_ = weak_odr hidden unnamed_addr alias void (ptr, i64, ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2EmRKS3_RKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1ERKS6_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2ERKS6_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1EOS6_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2EOS6_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1ERKS6_RKS5_ = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2ERKS6_RKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1EOS6_RKS5_ = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2EOS6_RKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC1ESt16initializer_listIS3_ERKS5_ = weak_odr hidden unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2ESt16initializer_listIS3_ERKS5_
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEED1Ev = weak_odr hidden unnamed_addr alias void (ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEED2Ev
@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE17insertion_functorC1ERNS_9intrusive9list_implINS8_8bhtraitsINS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEENS8_16list_node_traitsISE_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEEmLb1EvEENS8_13list_iteratorISL_Lb1EEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE17insertion_functorC2ERNS_9intrusive9list_implINS8_8bhtraitsINS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEENS8_16list_node_traitsISE_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEEmLb1EvEENS8_13list_iteratorISL_Lb1EEE
@_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1Ev = weak_odr hidden unnamed_addr alias void (ptr), ptr @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC2Ev
@_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC2ESG_
@_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC2ERKSH_
@_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKNS2_ISG_Lb0EEE = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC2ERKNS2_ISG_Lb0EEE
@_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1Ev = weak_odr hidden unnamed_addr alias void (ptr), ptr @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC2Ev
@_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC2ESG_
@_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ERKSH_ = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC2ERKSH_
@_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ERKNSH_3natE = weak_odr hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC2ERKNSH_3natE

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC5ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC5Em) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  invoke void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17node_alloc_holderINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEENS_9intrusive9list_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !384

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !385

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !0

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !399 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !399
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !399
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !399 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !169, !noalias !399
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !399
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !399
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #24, !noalias !399
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !399
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !399
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !400 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !169, !noalias !400
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !400
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !400
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !401 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !401
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !401
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !401
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !401
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !401
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !401
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !400 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !169, !noalias !400
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !400
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !400
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !402 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !402
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !402
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !402
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !402
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !402
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !402
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !398

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl17node_alloc_holderINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEENS_9intrusive9list_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !405 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !161 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 16
  store i32 -2147483648, ptr %i.d, align 8, !tbaa !169
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i, i64 noundef 24) #24
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC5EmRKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  invoke void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17node_alloc_holderINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEENS_9intrusive9list_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC2EmRKS3_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEEC5EmRKS3_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %0, align 8
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc unwind label %.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %2, align 4, !tbaa !169, !noalias !414
  store i32 %i.e, ptr %i.d, align 4, !tbaa !169, !noalias !414
  %i.f = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !414
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !414
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !162, !noalias !415 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !415
  store ptr %i.a, ptr %i.c, align 8, !tbaa !161, !noalias !415
  store ptr %i.c, ptr %i.b, align 8, !tbaa !162, !noalias !415
  store ptr %i.c, ptr %i.h, align 8, !tbaa !161, !noalias !415
  %i.j = load i64, ptr %0, align 8, !tbaa !165, !noalias !415
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %0, align 8, !tbaa !165, !noalias !415
  %i.l = add i64 %1, -1                           ; 2 uses
  %.not1415.i.i = icmp eq i64 %i.l, 0
  br i1 %.not1415.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc5
  %.sroa.3.116.i.i = phi i64 [ %i.v, %.noexc5 ], [ %i.l, %.noexc ]
  %i.m = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc5 unwind label %.loopexit ; 5 uses

.noexc5:                                          ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %2, align 4, !tbaa !169, !noalias !414
  store i32 %i.o, ptr %i.n, align 4, !tbaa !169, !noalias !414
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !414
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !414
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !162, !noalias !416 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !162, !noalias !416
  store ptr %i.a, ptr %i.m, align 8, !tbaa !161, !noalias !416
  store ptr %i.m, ptr %i.b, align 8, !tbaa !162, !noalias !416
  store ptr %i.m, ptr %i.r, align 8, !tbaa !161, !noalias !416
  %i.t = load i64, ptr %0, align 8, !tbaa !165, !noalias !416
  %i.u = add i64 %i.t, 1
end_hunk_0
begin_hunk_1_@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6assignINS0_17constant_iteratorIS3_EEEEvT_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE:bb.a
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !562
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !562
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162, !noalias !563 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !162, !noalias !563
  store ptr %i.a, ptr %i.r, align 8, !tbaa !161, !noalias !563
  store ptr %i.r, ptr %i.w, align 8, !tbaa !162, !noalias !563
  store ptr %i.r, ptr %i.x, align 8, !tbaa !161, !noalias !563
  %i.z = load i64, ptr %0, align 8, !tbaa !165, !noalias !563
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %0, align 8, !tbaa !165, !noalias !563
  %i.ab = add i64 %.sroa.3.0.lcssa, -1            ; 2 uses
  %.not1415.i = icmp eq i64 %i.ab, %4
  br i1 %.not1415.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.3.116.i = phi i64 [ %i.al, %.lr.ph.i ], [ %i.ab, %bb.c ]
  %i.ac = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !562 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %1, align 4, !tbaa !169, !noalias !562
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !169, !noalias !562
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !562
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !562
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !162, !noalias !564 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !564
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !161, !noalias !564
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !162, !noalias !564
  store ptr %i.ac, ptr %i.ah, align 8, !tbaa !161, !noalias !564
  %i.aj = load i64, ptr %0, align 8, !tbaa !165, !noalias !564
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %0, align 8, !tbaa !165, !noalias !564
  %i.al = add i64 %.sroa.3.116.i, -1              ; 2 uses
  %.not14.i = icmp eq i64 %i.al, %4
  br i1 %.not14.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit, label %.lr.ph.i, !llvm.loop !4

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6assignESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6assignIPKS3_EEvT_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE13get_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE4cendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !174, !alias.scope !567
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !572
  store ptr %i.b, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !580
  store ptr %i.b, ptr %0, align 8, !tbaa !174, !alias.scope !579
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5crendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !585
  store ptr %i.b, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %.not = icmp eq i64 %i.a, 0
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i64 4611686018427387903
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 4 uses
  %i.b = icmp ugt i64 %i.a, %1                    ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = sub nuw i64 %i.a, %1                     ; 5 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.preheader, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.prol.loopexit, label %.preheader25.prol

.preheader25.prol:                                ; preds = %.preheader25.preheader, %.preheader25.prol
  %.sroa.020.1.in.prol = phi ptr [ %.sroa.020.1.prol, %.preheader25.prol ], [ %i.c, %.preheader25.preheader ]
  %.0.prol = phi i64 [ %i.h, %.preheader25.prol ], [ %1, %.preheader25.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.prol ], [ 0, %.preheader25.preheader ]
  %.sroa.020.1.prol = load ptr, ptr %.sroa.020.1.in.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.prol, -1                     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.prol.loopexit, label %.preheader25.prol, !llvm.loop !586

.preheader25.prol.loopexit:                       ; preds = %.preheader25.prol, %.preheader25.preheader
  %.sroa.020.1.lcssa.unr = phi ptr [ poison, %.preheader25.preheader ], [ %.sroa.020.1.prol, %.preheader25.prol ]
  %.sroa.020.1.in.unr = phi ptr [ %i.c, %.preheader25.preheader ], [ %.sroa.020.1.prol, %.preheader25.prol ]
  %.0.unr = phi i64 [ %1, %.preheader25.preheader ], [ %i.h, %.preheader25.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit, label %.preheader25

.preheader:                                       ; preds = %bb.b
  %.not1627 = icmp eq i64 %i.d, 0
  br i1 %.not1627, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter40 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01129.prol = phi i64 [ %i.j, %.lr.ph.prol ], [ %i.d, %.lr.ph.preheader ]
  %.sroa.020.028.prol = phi ptr [ %i.l, %.lr.ph.prol ], [ %i.c, %.lr.ph.preheader ]
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = add i64 %.01129.prol, -1                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !587

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.01129.unr = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.sroa.020.028.unr = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01129 = phi i64 [ %i.ac, %.lr.ph ], [ %.01129.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.028 = phi ptr [ %i.ae, %.lr.ph ], [ %.sroa.020.028.unr, %.lr.ph.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129, -8                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.7, label %.loopexit, label %.lr.ph, !llvm.loop !0

.preheader25:                                     ; preds = %.preheader25.prol.loopexit, %.preheader25
  %.sroa.020.1.in = phi ptr [ %.sroa.020.1.7, %.preheader25 ], [ %.sroa.020.1.in.unr, %.preheader25.prol.loopexit ]
  %.0 = phi i64 [ %i.af, %.preheader25 ], [ %.0.unr, %.preheader25.prol.loopexit ] ; 2 uses
  %.sroa.020.1 = load ptr, ptr %.sroa.020.1.in, align 8, !tbaa !161
  %.sroa.020.1.1 = load ptr, ptr %.sroa.020.1, align 8, !tbaa !161
  %.sroa.020.1.2 = load ptr, ptr %.sroa.020.1.1, align 8, !tbaa !161
  %.sroa.020.1.3 = load ptr, ptr %.sroa.020.1.2, align 8, !tbaa !161
  %.sroa.020.1.4 = load ptr, ptr %.sroa.020.1.3, align 8, !tbaa !161
  %.sroa.020.1.5 = load ptr, ptr %.sroa.020.1.4, align 8, !tbaa !161
  %.sroa.020.1.6 = load ptr, ptr %.sroa.020.1.5, align 8, !tbaa !161
  %.sroa.020.1.7 = load ptr, ptr %.sroa.020.1.6, align 8, !tbaa !161 ; 2 uses
  %.not.7 = icmp eq i64 %.0, 7
  %i.af = add i64 %.0, -8
  br i1 %.not.7, label %.loopexit, label %.preheader25, !llvm.loop !1

.loopexit:                                        ; preds = %.preheader25.prol.loopexit, %.preheader25, %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.020.2 = phi ptr [ %i.ae, %.lr.ph ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.020.1.lcssa.unr, %.preheader25.prol.loopexit ], [ %.sroa.020.1.7, %.preheader25 ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.020.2, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !594 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !594
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !594
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.020.2, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i, align 8, !tbaa !161, !noalias !594 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !169, !noalias !594
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !594
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !594
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #24, !noalias !594
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !594
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !594
  %.not.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit: ; preds = %.lr.ph.i.i.i, %.preheader, %.loopexit, %bb.a
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !595

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter19 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod20.not = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod20.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter21 = phi i64 [ %prol.iter21.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter21.next = add i64 %prol.iter21, 1     ; 2 uses
  %prol.iter21.cmp.not = icmp eq i64 %prol.iter21.next, %xtraiter19
  br i1 %prol.iter21.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !596

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !0

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !611 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !611
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !611
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !611 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !169, !noalias !611
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !611
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !611
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #24, !noalias !611
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !611
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !611
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %1, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !612 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %2, align 4, !tbaa !169, !noalias !612
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !169, !noalias !612
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !612
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !612
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !162, !noalias !613 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !162, !noalias !613
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !613
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !162, !noalias !613
  store ptr %i.ap, ptr %i.av, align 8, !tbaa !161, !noalias !613
  %i.ax = load i64, ptr %0, align 8, !tbaa !165, !noalias !613
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %0, align 8, !tbaa !165, !noalias !613
  %i.az = xor i64 %i.a, -1
  %i.ba = add i64 %1, %i.az                       ; 2 uses
  %.not1415.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not1415.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.3.116.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %i.ba, %bb.c ]
  %i.bb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !612 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %2, align 4, !tbaa !169, !noalias !612
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !169, !noalias !612
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !612
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !612
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !162, !noalias !614 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !162, !noalias !614
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !161, !noalias !614
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !162, !noalias !614
  store ptr %i.bb, ptr %i.bg, align 8, !tbaa !161, !noalias !614
  %i.bi = load i64, ptr %0, align 8, !tbaa !165, !noalias !614
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %0, align 8, !tbaa !165, !noalias !614
  %i.bk = add i64 %.sroa.3.116.i.i, -1            ; 2 uses
  %.not14.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not14.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i, %.loopexit.i, %bb.c, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15priv_try_shrinkEm.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !619
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !626
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE10push_frontERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %1, align 4, !tbaa !169
  store i32 %i.c, ptr %i.b, align 4, !tbaa !169
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !162
  store ptr %i.g, ptr %i.a, align 8, !tbaa !161
  store ptr %i.a, ptr %i.h, align 8, !tbaa !162
  store ptr %i.a, ptr %i.i, align 8, !tbaa !161
  %i.k = load i64, ptr %0, align 8, !tbaa !165
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %0, align 8, !tbaa !165
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE10push_frontEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %1, align 4, !tbaa !169
  store i32 %i.c, ptr %i.b, align 4, !tbaa !169
  store i32 0, ptr %1, align 4, !tbaa !169
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !162
  store ptr %i.g, ptr %i.a, align 8, !tbaa !161
  store ptr %i.a, ptr %i.h, align 8, !tbaa !162
  store ptr %i.a, ptr %i.i, align 8, !tbaa !161
  %i.k = load i64, ptr %0, align 8, !tbaa !165
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %0, align 8, !tbaa !165
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %1, align 4, !tbaa !169
  store i32 %i.c, ptr %i.b, align 4, !tbaa !169
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE16priv_move_assignEOS6_NS_11move_detail5bool_ILb0EEE:bb.a
  %i.i = icmp eq ptr %1, %0
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5clearEv.exit.i
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !161  ; 3 uses
  %.not.i24.i.i.i.i = icmp eq ptr %i.j, null      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not.i24.i.i.i.i, label %bb.c, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.b
  %.pre26.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !162 ; 2 uses
  %.phi.trans.insert27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre28.i.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !162
  %.pre29.i.i.i.i = load ptr, ptr %.pre26.i.i.i.i, align 8, !tbaa !161
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.h, align 8, !tbaa !161
  store ptr %i.h, ptr %i.k, align 8, !tbaa !162
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !161
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !162 ; 2 uses
  %.pre3.i = load ptr, ptr %.pre.i, align 8, !tbaa !161
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %i.l = phi ptr [ %.pre3.i, %bb.c ], [ %i.a, %._crit_edge.i.i.i.i ]
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.a, %._crit_edge.i.i.i.i ]
  %i.n = phi ptr [ %i.h, %bb.c ], [ %.pre29.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.o = phi ptr [ %i.h, %bb.c ], [ %.pre28.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.p = phi ptr [ %i.h, %bb.c ], [ %.pre26.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.q = phi ptr [ %i.h, %bb.c ], [ %i.j, %._crit_edge.i.i.i.i ]
  %i.r = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.a, %._crit_edge.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.o, ptr %i.s, align 8, !tbaa !162
  store ptr %i.t, ptr %i.u, align 8, !tbaa !162
  store ptr %i.n, ptr %i.m, align 8, !tbaa !161
  store ptr %i.l, ptr %i.p, align 8, !tbaa !161
  %i.v = load <2 x ptr>, ptr %i.h, align 8, !tbaa !175
  %i.w = load <2 x ptr>, ptr %i.a, align 8, !tbaa !175
  store <2 x ptr> %i.v, ptr %i.a, align 8, !tbaa !175
  store <2 x ptr> %i.w, ptr %i.h, align 8, !tbaa !175
  br i1 %.not.i24.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5clearEv.exit.i
  %i.x = load i64, ptr %1, align 8, !tbaa !165
  store i64 %i.x, ptr %0, align 8, !tbaa !165
  store i64 0, ptr %1, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE14priv_is_linkedENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEE(ptr noundef align 8 dead_on_return %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !173    ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.i = icmp eq ptr %i.h, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE17insertion_functorC2ERNS_9intrusive9list_implINS8_8bhtraitsINS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEENS8_16list_node_traitsISE_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEEmLb1EvEENS8_13list_iteratorISL_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2) unnamed_addr #0 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE17insertion_functorC5ERNS_9intrusive9list_implINS8_8bhtraitsINS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEENS8_16list_node_traitsISE_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEEmLb1EvEENS8_13list_iteratorISL_Lb1EEE) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !178
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %2, align 8, !tbaa !180
  store ptr %i.b, ptr %i.a, align 8, !tbaa !174
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE17insertion_functorclERNS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !700, !nonnull !181, !align !182 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162, !noalias !701 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !162, !noalias !701
  store ptr %i.c, ptr %1, align 8, !tbaa !161, !noalias !701
  store ptr %1, ptr %i.d, align 8, !tbaa !162, !noalias !701
  store ptr %1, ptr %i.e, align 8, !tbaa !161, !noalias !701
  %i.g = load i64, ptr %i.a, align 8, !tbaa !165, !noalias !701
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.a, align 8, !tbaa !165, !noalias !701
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC5ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 comdat($_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEEC5Em) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  store ptr %i.a, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  invoke void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13adaptive_poolINS0_4test24movable_and_copyable_intELm256ELm2ELm1ELj2EEENS_9intrusive9list_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 7 uses
  %3 = alloca %"class.boost::container::list<boost::container::test::movable_and_copyable_int, boost::container::adaptive_pool<boost::container::test::movable_and_copyable_int>>::insertion_functor", align 8 ; 5 uses
  %4 = alloca %"class.boost::intrusive::list_iterator.7", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 7 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 7 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter31 = and i64 %i.g, 7                   ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter31
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !702

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter33 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01131.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.030.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter35 = phi i64 [ %prol.iter35.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01131.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter35.next = add i64 %prol.iter35, 1     ; 2 uses
  %prol.iter35.cmp.not = icmp eq i64 %prol.iter35.next, %xtraiter33
  br i1 %prol.iter35.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !703

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa29.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01131.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.030.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01131.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01131.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.030.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.030.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01131.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !11

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !12

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa29.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !721
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 16, i1 false), !noalias !721
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !187, !noalias !721
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162, !noalias !722 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !162, !noalias !722
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !161, !noalias !722
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !722
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.al = phi i64 [ %i.a, %.lr.ph.i.i.i.i ], [ %i.at, %bb.c ]
  %i.am = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.as, %bb.c ]
  %.0910.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i, %bb.c ] ; 2 uses
  %.09.i.i.i.i = phi ptr [ %.sroa.020.2.i, %.lr.ph.i.i.i.i ], [ %i.ao, %bb.c ] ; 6 uses
  %i.an = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.c ]
  %i.ao = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !722 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ap, align 8, !tbaa !169, !noalias !722
  %i.aq = add i32 %i.an, -1                       ; 2 uses
  %i.ar = load ptr, ptr %.0910.i.i.i.i, align 8, !tbaa !188, !noalias !722
  store ptr %i.ar, ptr %.09.i.i.i.i, align 8, !tbaa !188, !noalias !722
  store ptr %.09.i.i.i.i, ptr %.0910.i.i.i.i, align 8, !tbaa !188, !noalias !722
  %i.as = add i64 %i.am, 1                        ; 2 uses
  %i.at = add i64 %i.al, -1                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.c
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.c, !llvm.loop !13

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  store i64 %i.as, ptr %5, align 8, !tbaa !165, !noalias !722
  store i64 %i.at, ptr %0, align 8, !tbaa !165, !noalias !722
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !722
  store ptr %.09.i.i.i.i, ptr %i.ah, align 8, !tbaa !187, !noalias !722
  br label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit.thread

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit.thread: ; preds = %.loopexit.i, %._crit_edge.i.i.i.i
  call void @_ZN5boost9container13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS0_3dtl9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EE21deallocate_individualERNS5_31transform_multiallocation_chainINS5_27basic_multiallocation_chainIS7_EES9_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #24, !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !721
  br label %bb.e

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %i.au = sub nuw i64 %1, %i.a                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !723
  store ptr %i.c, ptr %4, align 8, !tbaa !174, !noalias !723
  call void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE17insertion_functorC1ERNS_9intrusive9list_implINS8_8bhtraitsINS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEENS8_16list_node_traitsISE_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEEmLb1EvEENS8_13list_iteratorISL_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %4), !noalias !723
  %i.av = load ptr, ptr %3, align 8, !tbaa !190, !noalias !723, !nonnull !181, !align !182 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !180, !noalias !723 ; 4 uses
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valuentoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj2EEENSW_IjLj1EEEE5valueEEENST_13enable_if_natEE4typeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !723
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false), !noalias !723
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !187, !noalias !723
  call void @_ZN5boost9container13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS0_3dtl9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EE19allocate_individualEmRNS5_31transform_multiallocation_chainINS5_27basic_multiallocation_chainIS7_EES9_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !723
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !188, !noalias !724 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false), !noalias !723
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !723
  %.promoted.i.i = load i64, ptr %i.av, align 8, !tbaa !165, !noalias !725
  %.pre.i.i = load ptr, ptr %i.bb, align 8, !tbaa !162, !noalias !725 ; 3 uses
  %.neg = add i64 %i.a, 1
  %xtraiter = and i64 %i.au, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.d
  %i.bc = add nsw i64 %i.au, -1
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !188, !noalias !723
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !169, !noalias !723
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.pre.i.i, ptr %i.bf, align 8, !tbaa !162, !noalias !725
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !161, !noalias !725
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !162, !noalias !725
  store ptr %i.ba, ptr %.pre.i.i, align 8, !tbaa !161, !noalias !725
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.d
  %.unr = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ba, %.prol.loopexit.unr-lcssa ]
  %.037.i.i.unr = phi i64 [ %i.au, %bb.d ], [ %i.bc, %.prol.loopexit.unr-lcssa ]
  %.sroa.030.036.i.i.unr = phi ptr [ %i.ba, %bb.d ], [ %i.bd, %.prol.loopexit.unr-lcssa ]
  %i.bg = icmp eq i64 %1, %.neg
  br i1 %i.bg, label %_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bh = phi ptr [ %i.bi, %.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.037.i.i = phi i64 [ %i.bl, %.new ], [ %.037.i.i.unr, %.prol.loopexit ]
  %.sroa.030.036.i.i = phi ptr [ %i.bm, %.new ], [ %.sroa.030.036.i.i.unr, %.prol.loopexit ] ; 8 uses
  %i.bi = load ptr, ptr %.sroa.030.036.i.i, align 8, !tbaa !188, !noalias !723 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.030.036.i.i, i64 16
  store i32 0, ptr %i.bj, align 8, !tbaa !169, !noalias !723
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.030.036.i.i, i64 8
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !162, !noalias !725
  store ptr %i.ax, ptr %.sroa.030.036.i.i, align 8, !tbaa !161, !noalias !725
  store ptr %.sroa.030.036.i.i, ptr %i.bb, align 8, !tbaa !162, !noalias !725
  store ptr %.sroa.030.036.i.i, ptr %i.bh, align 8, !tbaa !161, !noalias !725
  %i.bl = add i64 %.037.i.i, -2                   ; 2 uses
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !188, !noalias !723
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 0, ptr %i.bn, align 8, !tbaa !169, !noalias !723
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.030.036.i.i, ptr %i.bo, align 8, !tbaa !162, !noalias !725
  store ptr %i.ax, ptr %i.bi, align 8, !tbaa !161, !noalias !725
  store ptr %i.bi, ptr %i.bb, align 8, !tbaa !162, !noalias !725
  store ptr %i.bi, ptr %.sroa.030.036.i.i, align 8, !tbaa !161, !noalias !725
  %.not17.i.i.1 = icmp eq i64 %i.bl, 0
  br i1 %.not17.i.i.1, label %_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i, label %.new, !llvm.loop !720

_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i: ; preds = %.new, %.prol.loopexit
  %i.bp = trunc i64 %i.au to i32
  %i.bq = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bp
  %i.br = add i64 %.promoted.i.i, %i.au
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !723
  store i64 %i.br, ptr %i.av, align 8, !tbaa !165, !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !723
  br label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valuentoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj2EEENSW_IjLj1EEEE5valueEEENST_13enable_if_natEE4typeE.exit

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valuentoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj2EEENSW_IjLj1EEEE5valueEEENST_13enable_if_natEE4typeE.exit: ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit, %_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit.thread, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valuentoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj2EEENSW_IjLj1EEEE5valueEEENST_13enable_if_natEE4typeE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl17node_alloc_holderINS0_13adaptive_poolINS0_4test24movable_and_copyable_intELm256ELm2ELm1ELj2EEENS_9intrusive9list_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !728 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not8.i.i, label %.critedge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.e = phi i64 [ 0, %.lr.ph.i.i ], [ %i.k, %bb.b ]
  %.sroa.04.0910.i.i = phi ptr [ %i.a, %.lr.ph.i.i ], [ %.sroa.04.09.i.i, %bb.b ] ; 2 uses
  %.sroa.04.09.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.g, %bb.b ] ; 6 uses
  %i.f = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %bb.b ]
  %i.g = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !161 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 16
  store i32 -2147483648, ptr %i.h, align 8, !tbaa !169
  %i.i = add i32 %i.f, -1                         ; 2 uses
  %i.j = load ptr, ptr %.sroa.04.0910.i.i, align 8, !tbaa !188
  store ptr %i.j, ptr %.sroa.04.09.i.i, align 8, !tbaa !188
  store ptr %.sroa.04.09.i.i, ptr %.sroa.04.0910.i.i, align 8, !tbaa !188
  %i.k = add i64 %i.e, 1                          ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %bb.b
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  store ptr %.sroa.04.09.i.i, ptr %i.b, align 8, !tbaa !187
  store i64 %i.k, ptr %1, align 8, !tbaa !165
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.l = icmp eq ptr %.pr.i, null
  store ptr %i.c, ptr %i.c, align 8, !tbaa !161
end_hunk_2
begin_hunk_3_@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6assignINS0_17constant_iteratorIS3_EEEEvT_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE:bb.a
  %i.al = phi ptr [ %i.an, %.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.am = phi i32 [ %i.aw, %.new ], [ %.unr50, %.prol.loopexit ] ; 2 uses
  %.036.i.i = phi i64 [ %i.as, %.new ], [ %.036.i.i.unr, %.prol.loopexit ]
  %.sroa.030.035.i.i = phi ptr [ %i.at, %.new ], [ %.sroa.030.035.i.i.unr, %.prol.loopexit ] ; 8 uses
  %i.an = load ptr, ptr %.sroa.030.035.i.i, align 8, !tbaa !188, !noalias !918 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.030.035.i.i, i64 16
  %i.ap = load i32, ptr %1, align 4, !tbaa !169, !noalias !918
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !169, !noalias !918
  %i.aq = add i32 %i.am, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !918
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.030.035.i.i, i64 8
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !162, !noalias !920
  store ptr %i.z, ptr %.sroa.030.035.i.i, align 8, !tbaa !161, !noalias !920
  store ptr %.sroa.030.035.i.i, ptr %i.ad, align 8, !tbaa !162, !noalias !920
  store ptr %.sroa.030.035.i.i, ptr %i.al, align 8, !tbaa !161, !noalias !920
  %i.as = add i64 %.036.i.i, -2                   ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !188, !noalias !918
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = load i32, ptr %1, align 4, !tbaa !169, !noalias !918
  store i32 %i.av, ptr %i.au, align 8, !tbaa !169, !noalias !918
  %i.aw = add i32 %i.am, 2                        ; 2 uses
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !918
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.030.035.i.i, ptr %i.ax, align 8, !tbaa !162, !noalias !920
  store ptr %i.z, ptr %i.an, align 8, !tbaa !161, !noalias !920
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !162, !noalias !920
  store ptr %i.an, ptr %.sroa.030.035.i.i, align 8, !tbaa !161, !noalias !920
  %.not17.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not17.i.i.1, label %_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i, label %.new, !llvm.loop !15

_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i: ; preds = %.new, %.prol.loopexit
  %i.ay = add i64 %.promoted.i.i, %i.w
  store i64 %i.ay, ptr %i.x, align 8, !tbaa !165, !noalias !920
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6assignESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6assignIPKS3_EEvT_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::adaptive_pool.10") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE4cendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !174, !alias.scope !923
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !928
  store ptr %i.b, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !936
  store ptr %i.b, ptr %0, align 8, !tbaa !174, !alias.scope !935
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5crendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !941
  store ptr %i.b, ptr %0, align 8, !tbaa !174
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %.not = icmp eq i64 %i.a, 0
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 11 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 5 uses
  %i.b = icmp ugt i64 %i.a, %1                    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = sub nuw i64 %i.a, %1                     ; 5 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.preheader, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.prol.loopexit, label %.preheader25.prol

.preheader25.prol:                                ; preds = %.preheader25.preheader, %.preheader25.prol
  %.sroa.020.1.in.prol = phi ptr [ %.sroa.020.1.prol, %.preheader25.prol ], [ %i.c, %.preheader25.preheader ]
  %.0.prol = phi i64 [ %i.h, %.preheader25.prol ], [ %1, %.preheader25.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.prol ], [ 0, %.preheader25.preheader ]
  %.sroa.020.1.prol = load ptr, ptr %.sroa.020.1.in.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.prol, -1                     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.prol.loopexit, label %.preheader25.prol, !llvm.loop !942

.preheader25.prol.loopexit:                       ; preds = %.preheader25.prol, %.preheader25.preheader
  %.sroa.020.1.lcssa.unr = phi ptr [ poison, %.preheader25.preheader ], [ %.sroa.020.1.prol, %.preheader25.prol ]
  %.sroa.020.1.in.unr = phi ptr [ %i.c, %.preheader25.preheader ], [ %.sroa.020.1.prol, %.preheader25.prol ]
  %.0.unr = phi i64 [ %1, %.preheader25.preheader ], [ %i.h, %.preheader25.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit, label %.preheader25

.preheader:                                       ; preds = %bb.b
  %.not1629 = icmp eq i64 %i.d, 0
  br i1 %.not1629, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter54 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01131.prol = phi i64 [ %i.j, %.lr.ph.prol ], [ %i.d, %.lr.ph.preheader ]
  %.sroa.020.030.prol = phi ptr [ %i.l, %.lr.ph.prol ], [ %i.c, %.lr.ph.preheader ]
  %prol.iter56 = phi i64 [ %prol.iter56.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = add i64 %.01131.prol, -1                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.030.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !943

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa52.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.01131.unr = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.sroa.020.030.unr = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit, label %.lr.ph

.loopexit.thread:                                 ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !950
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false), !noalias !950
  store ptr %i.o, ptr %i.p, align 8, !tbaa !187, !noalias !950
  br label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01131 = phi i64 [ %i.ae, %.lr.ph ], [ %.01131.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.030 = phi ptr [ %i.ag, %.lr.ph ], [ %.sroa.020.030.unr, %.lr.ph.prol.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.020.030, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !162
  %i.ae = add i64 %.01131, -8                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !162 ; 2 uses
  %.not16.7 = icmp eq i64 %i.ae, 0
  br i1 %.not16.7, label %.loopexit, label %.lr.ph, !llvm.loop !11

.preheader25:                                     ; preds = %.preheader25.prol.loopexit, %.preheader25
  %.sroa.020.1.in = phi ptr [ %.sroa.020.1.7, %.preheader25 ], [ %.sroa.020.1.in.unr, %.preheader25.prol.loopexit ]
  %.0 = phi i64 [ %i.ah, %.preheader25 ], [ %.0.unr, %.preheader25.prol.loopexit ] ; 2 uses
  %.sroa.020.1 = load ptr, ptr %.sroa.020.1.in, align 8, !tbaa !161
  %.sroa.020.1.1 = load ptr, ptr %.sroa.020.1, align 8, !tbaa !161
  %.sroa.020.1.2 = load ptr, ptr %.sroa.020.1.1, align 8, !tbaa !161
  %.sroa.020.1.3 = load ptr, ptr %.sroa.020.1.2, align 8, !tbaa !161
  %.sroa.020.1.4 = load ptr, ptr %.sroa.020.1.3, align 8, !tbaa !161
  %.sroa.020.1.5 = load ptr, ptr %.sroa.020.1.4, align 8, !tbaa !161
  %.sroa.020.1.6 = load ptr, ptr %.sroa.020.1.5, align 8, !tbaa !161
  %.sroa.020.1.7 = load ptr, ptr %.sroa.020.1.6, align 8, !tbaa !161 ; 2 uses
  %.not.7 = icmp eq i64 %.0, 7
  %i.ah = add i64 %.0, -8
  br i1 %.not.7, label %.loopexit, label %.preheader25, !llvm.loop !12

.loopexit:                                        ; preds = %.preheader25.prol.loopexit, %.preheader25, %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.020.2 = phi ptr [ %i.ag, %.lr.ph ], [ %.lcssa52.unr, %.lr.ph.prol.loopexit ], [ %.sroa.020.1.lcssa.unr, %.preheader25.prol.loopexit ], [ %.sroa.020.1.7, %.preheader25 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !950
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false), !noalias !950
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !187, !noalias !950
  %.not.i.i.i.i = icmp eq ptr %.sroa.020.2, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.020.2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !162, !noalias !951 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !162, !noalias !951
  store ptr %i.c, ptr %i.al, align 8, !tbaa !161, !noalias !951
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !951
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.an = phi i64 [ %i.a, %.lr.ph.i.i.i ], [ %i.av, %bb.c ]
  %i.ao = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.au, %bb.c ]
  %.0910.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %.09.i.i.i = phi ptr [ %.sroa.020.2, %.lr.ph.i.i.i ], [ %i.aq, %bb.c ] ; 6 uses
  %i.ap = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.as, %bb.c ]
  %i.aq = load ptr, ptr %.09.i.i.i, align 8, !tbaa !161, !noalias !951 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ar, align 8, !tbaa !169, !noalias !951
  %i.as = add i32 %i.ap, -1                       ; 2 uses
  %i.at = load ptr, ptr %.0910.i.i.i, align 8, !tbaa !188, !noalias !951
  store ptr %i.at, ptr %.09.i.i.i, align 8, !tbaa !188, !noalias !951
  store ptr %.09.i.i.i, ptr %.0910.i.i.i, align 8, !tbaa !188, !noalias !951
  %i.au = add i64 %i.ao, 1                        ; 2 uses
  %i.av = add i64 %i.an, -1                       ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.c
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !13

._crit_edge.i.i.i:                                ; preds = %bb.c
  store i64 %i.au, ptr %2, align 8, !tbaa !165, !noalias !951
  store i64 %i.av, ptr %0, align 8, !tbaa !165, !noalias !951
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !951
  store ptr %.09.i.i.i, ptr %i.aj, align 8, !tbaa !187, !noalias !951
  br label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit: ; preds = %.loopexit.thread, %.loopexit, %._crit_edge.i.i.i
  call void @_ZN5boost9container13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS0_3dtl9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EE21deallocate_individualERNS5_31transform_multiallocation_chainINS5_27basic_multiallocation_chainIS7_EES9_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #24, !noalias !950
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !950
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEESN_.exit
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 7 uses
  %4 = alloca %"class.boost::container::list<boost::container::test::movable_and_copyable_int, boost::container::adaptive_pool<boost::container::test::movable_and_copyable_int>>::insertion_functor", align 8 ; 5 uses
  %5 = alloca %"class.boost::intrusive::list_iterator.7", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 7 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 7 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter30 = and i64 %i.g, 7                   ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter30
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !952

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter32 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01131.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.030.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01131.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !953

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa27.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01131.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.030.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01131.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01131.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.030.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.030.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01131.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !11

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !12

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa27.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !972
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 16, i1 false), !noalias !972
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !187, !noalias !972
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162, !noalias !973 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !162, !noalias !973
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !161, !noalias !973
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !973
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.al = phi i64 [ %i.a, %.lr.ph.i.i.i.i ], [ %i.at, %bb.c ]
  %i.am = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.as, %bb.c ]
  %.0910.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i, %bb.c ] ; 2 uses
  %.09.i.i.i.i = phi ptr [ %.sroa.020.2.i, %.lr.ph.i.i.i.i ], [ %i.ao, %bb.c ] ; 6 uses
  %i.an = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.c ]
  %i.ao = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !973 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ap, align 8, !tbaa !169, !noalias !973
  %i.aq = add i32 %i.an, -1                       ; 2 uses
  %i.ar = load ptr, ptr %.0910.i.i.i.i, align 8, !tbaa !188, !noalias !973
  store ptr %i.ar, ptr %.09.i.i.i.i, align 8, !tbaa !188, !noalias !973
  store ptr %.09.i.i.i.i, ptr %.0910.i.i.i.i, align 8, !tbaa !188, !noalias !973
  %i.as = add i64 %i.am, 1                        ; 2 uses
  %i.at = add i64 %i.al, -1                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.c
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.c, !llvm.loop !13

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  store i64 %i.as, ptr %6, align 8, !tbaa !165, !noalias !973
  store i64 %i.at, ptr %0, align 8, !tbaa !165, !noalias !973
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !973
  store ptr %.09.i.i.i.i, ptr %i.ah, align 8, !tbaa !187, !noalias !973
  br label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit.thread

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit.thread: ; preds = %.loopexit.i, %._crit_edge.i.i.i.i
  call void @_ZN5boost9container13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS0_3dtl9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EE21deallocate_individualERNS5_31transform_multiallocation_chainINS5_27basic_multiallocation_chainIS7_EES9_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6) #24, !noalias !972
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !972
  br label %bb.e

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %i.au = sub nuw i64 %1, %i.a                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !974
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !975
  store ptr %i.c, ptr %5, align 8, !tbaa !174, !noalias !975
  call void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE17insertion_functorC1ERNS_9intrusive9list_implINS8_8bhtraitsINS0_9base_nodeIS3_NS0_3dtl9list_hookIPvEELb0EEENS8_16list_node_traitsISE_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEEmLb1EvEENS8_13list_iteratorISL_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %5), !noalias !975
  %i.av = load ptr, ptr %4, align 8, !tbaa !190, !noalias !975, !nonnull !181, !align !182 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !180, !noalias !975 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !975
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 16, i1 false), !noalias !975
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !187, !noalias !975
  call void @_ZN5boost9container13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS0_3dtl9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EE19allocate_individualEmRNS5_31transform_multiallocation_chainINS5_27basic_multiallocation_chainIS7_EES9_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !975
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !188, !noalias !976 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 16, i1 false), !noalias !975
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.av, align 8, !tbaa !165, !noalias !977
  %.pre.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !975 ; 2 uses
  %.pre37.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !162, !noalias !977 ; 3 uses
  %.neg = add i64 %i.a, 1
  %xtraiter = and i64 %i.au, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.d
  %i.bc = add nsw i64 %i.au, -1
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !188, !noalias !975
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load i32, ptr %2, align 4, !tbaa !169, !noalias !975
  store i32 %i.bf, ptr %i.be, align 8, !tbaa !169, !noalias !975
  %i.bg = add i32 %.pre.i.i.i, 1                  ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !975
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.pre37.i.i.i, ptr %i.bh, align 8, !tbaa !162, !noalias !977
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !161, !noalias !977
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !162, !noalias !977
  store ptr %i.ba, ptr %.pre37.i.i.i, align 8, !tbaa !161, !noalias !977
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.d
  %.unr = phi ptr [ %.pre37.i.i.i, %bb.d ], [ %i.ba, %.prol.loopexit.unr-lcssa ]
  %.unr29 = phi i32 [ %.pre.i.i.i, %bb.d ], [ %i.bg, %.prol.loopexit.unr-lcssa ]
  %.036.i.i.i.unr = phi i64 [ %i.au, %bb.d ], [ %i.bc, %.prol.loopexit.unr-lcssa ]
  %.sroa.030.035.i.i.i.unr = phi ptr [ %i.ba, %bb.d ], [ %i.bd, %.prol.loopexit.unr-lcssa ]
  %i.bi = icmp eq i64 %1, %.neg
  br i1 %i.bi, label %_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bj = phi ptr [ %i.bl, %.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.bk = phi i32 [ %i.bu, %.new ], [ %.unr29, %.prol.loopexit ] ; 2 uses
  %.036.i.i.i = phi i64 [ %i.bq, %.new ], [ %.036.i.i.i.unr, %.prol.loopexit ]
  %.sroa.030.035.i.i.i = phi ptr [ %i.br, %.new ], [ %.sroa.030.035.i.i.i.unr, %.prol.loopexit ] ; 8 uses
  %i.bl = load ptr, ptr %.sroa.030.035.i.i.i, align 8, !tbaa !188, !noalias !975 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.030.035.i.i.i, i64 16
  %i.bn = load i32, ptr %2, align 4, !tbaa !169, !noalias !975
  store i32 %i.bn, ptr %i.bm, align 8, !tbaa !169, !noalias !975
  %i.bo = add i32 %i.bk, 1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !975
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.030.035.i.i.i, i64 8
  store ptr %i.bj, ptr %i.bp, align 8, !tbaa !162, !noalias !977
  store ptr %i.ax, ptr %.sroa.030.035.i.i.i, align 8, !tbaa !161, !noalias !977
  store ptr %.sroa.030.035.i.i.i, ptr %i.bb, align 8, !tbaa !162, !noalias !977
  store ptr %.sroa.030.035.i.i.i, ptr %i.bj, align 8, !tbaa !161, !noalias !977
  %i.bq = add i64 %.036.i.i.i, -2                 ; 2 uses
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !188, !noalias !975
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %2, align 4, !tbaa !169, !noalias !975
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !169, !noalias !975
  %i.bu = add i32 %i.bk, 2                        ; 2 uses
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !975
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.030.035.i.i.i, ptr %i.bv, align 8, !tbaa !162, !noalias !977
  store ptr %i.ax, ptr %i.bl, align 8, !tbaa !161, !noalias !977
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !162, !noalias !977
  store ptr %i.bl, ptr %.sroa.030.035.i.i.i, align 8, !tbaa !161, !noalias !977
  %.not17.i.i.i.1 = icmp eq i64 %i.bq, 0
  br i1 %.not17.i.i.i.1, label %_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i.i, label %.new, !llvm.loop !15

_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i.i: ; preds = %.new, %.prol.loopexit
  %i.bw = add i64 %.promoted.i.i.i, %i.au
  store i64 %i.bw, ptr %i.av, align 8, !tbaa !165, !noalias !977
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !975
  br label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit: ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit, %_ZN5boost9container3dtl18scoped_deallocatorINS0_13adaptive_poolINS0_9base_nodeINS0_4test24movable_and_copyable_intENS1_9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EEEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !975
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !974
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm.exit.thread, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS3_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEmRKS3_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !982
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !989
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container4listINS0_4test24movable_and_copyable_intENS0_13adaptive_poolIS3_Lm256ELm2ELm1ELj2EEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
end_hunk_3
begin_hunk_4_@_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareIS9_St7greaterIiEbEEEEvRSF_T_:bb.a
.preheader38.preheader:                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !3293
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.preheader, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit
  %.pre51 = phi ptr [ %.pre52, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit ], [ %i.c, %.preheader38.preheader ] ; 2 uses
  %i.g = phi ptr [ %i.ao, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit ], [ %i.c, %.preheader38.preheader ] ; 10 uses
  %.sroa.026.047 = phi ptr [ %.sroa.026.1.lcssa, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit ], [ %i.f, %.preheader38.preheader ] ; 3 uses
  %.not42 = icmp eq ptr %.sroa.026.047, %i.a
  br i1 %.not42, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !170
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.026.143 = phi ptr [ %.sroa.026.047, %.lr.ph ], [ %i.m, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.026.143, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !170
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.026.143, align 8, !tbaa !161 ; 3 uses
  %.not = icmp eq ptr %i.m, %i.a
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !69

.critedge:                                        ; preds = %bb.b, %bb.c, %.preheader38
  %.sroa.026.1.lcssa = phi ptr [ %.sroa.026.047, %.preheader38 ], [ %i.m, %bb.c ], [ %.sroa.026.143, %bb.b ] ; 7 uses
  %i.n = icmp eq ptr %.sroa.026.1.lcssa, %i.a
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.026.1.lcssa, i64 16
  br label %bb.f

bb.d:                                             ; preds = %.critedge
  %.not23.i.i = icmp eq ptr %i.a, %i.g
  %.not24.i.i = icmp eq ptr %0, %1
  %or.cond25.i.i = or i1 %.not24.i.i, %.not23.i.i
  br i1 %or.cond25.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !162  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  store ptr %i.a, ptr %i.u, align 8, !tbaa !161
  store ptr %i.u, ptr %i.p, align 8, !tbaa !162
  store ptr %i.b, ptr %i.s, align 8, !tbaa !161
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162
  store ptr %i.g, ptr %i.q, align 8, !tbaa !161
  store ptr %i.q, ptr %i.r, align 8, !tbaa !162
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit.thread

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit.thread: ; preds = %bb.e, %bb.d
  %i.v = load i64, ptr %1, align 8, !tbaa !165
  %i.w = load i64, ptr %0, align 8, !tbaa !165
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %0, align 8, !tbaa !165
  store i64 0, ptr %1, align 8, !tbaa !165
  br label %.loopexit

bb.f:                                             ; preds = %.preheader, %bb.g
  %.sroa.021.0 = phi ptr [ %i.y, %bb.g ], [ %i.g, %.preheader ]
  %.0 = phi i64 [ %i.z, %bb.g ], [ 0, %.preheader ]
  %i.y = load ptr, ptr %.sroa.021.0, align 8, !tbaa !161 ; 7 uses
  %i.z = add i64 %.0, 1                           ; 4 uses
  %.not37 = icmp eq ptr %i.y, %i.b
  br i1 %.not37, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !170
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !170
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %.critedge2, !llvm.loop !70

.critedge2:                                       ; preds = %bb.f, %bb.g
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit, label %bb.h

bb.h:                                             ; preds = %.critedge2
  %.not.i.i12 = icmp eq ptr %i.g, %i.y
  %.not23.i.i13 = icmp eq ptr %.sroa.026.1.lcssa, %i.g
  %or.cond.i.i = or i1 %.not23.i.i13, %.not.i.i12
  %.not24.i.i14 = icmp eq ptr %.sroa.026.1.lcssa, %i.y
  %or.cond25.i.i15 = or i1 %.not24.i.i14, %or.cond.i.i
  br i1 %or.cond25.i.i15, label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.026.1.lcssa, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !162 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 2 uses
  store ptr %.sroa.026.1.lcssa, ptr %i.aj, align 8, !tbaa !161
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !162
  store ptr %i.y, ptr %i.ah, align 8, !tbaa !161
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162
  store ptr %i.g, ptr %i.af, align 8, !tbaa !161
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !162
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !161
  br label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16

_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16: ; preds = %bb.i, %bb.h
  %.pre = phi ptr [ %.pre.pre, %bb.i ], [ %.pre51, %bb.h ] ; 2 uses
  %i.ak = load i64, ptr %0, align 8, !tbaa !165
  %i.al = add i64 %i.ak, %i.z
  store i64 %i.al, ptr %0, align 8, !tbaa !165
  %i.am = load i64, ptr %1, align 8, !tbaa !165
  %i.an = sub i64 %i.am, %i.z
  store i64 %i.an, ptr %1, align 8, !tbaa !165
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit: ; preds = %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16, %.critedge2
  %.pre52 = phi ptr [ %.pre, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16 ], [ %.pre51, %.critedge2 ]
  %i.ao = phi ptr [ %.pre, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16 ], [ %i.g, %.critedge2 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  %i.ap = icmp eq ptr %i.ao, %i.b
  %i.aq = or i1 %.not.i.i, %i.ap
  br i1 %i.aq, label %.loopexit, label %.preheader38

.loopexit:                                        ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit, %bb.a, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISE_Lb1EEERSF_SH_SH_m.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listIiNS0_13new_allocatorIiEEE11priv_insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEOi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 2 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %3, align 4, !tbaa !170
  store i32 %i.c, ptr %i.b, align 4, !tbaa !170
  %i.d = load ptr, ptr %2, align 8, !tbaa !213    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3296)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162, !noalias !3296 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !162, !noalias !3296
  store ptr %i.d, ptr %i.a, align 8, !tbaa !161, !noalias !3296
  store ptr %i.a, ptr %i.e, align 8, !tbaa !162, !noalias !3296
  store ptr %i.a, ptr %i.f, align 8, !tbaa !161, !noalias !3296
  %i.h = load i64, ptr %1, align 8, !tbaa !165, !noalias !3296
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %1, align 8, !tbaa !165, !noalias !3296
  store ptr %i.a, ptr %4, align 8, !tbaa !211, !alias.scope !3296
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dead_on_return %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4listIiNS0_13new_allocatorIiEEE15priv_try_shrinkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %3 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 6 uses
  %7 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 4 uses
  %i.b = icmp ugt i64 %i.a, %1                    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !211, !alias.scope !3317, !noalias !3318
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.d = sub nuw i64 %i.a, %1                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %storemerge21 = load ptr, ptr %5, align 8, !tbaa !175 ; 3 uses
  %.not1622 = icmp eq i64 %i.d, 0
  br i1 %.not1622, label %.loopexit17.sink.split, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %.preheader
  %xtraiter34 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol

.lr.ph25.prol:                                    ; preds = %.lr.ph25.preheader, %.lr.ph25.prol
  %storemerge24.prol = phi ptr [ %storemerge.prol, %.lr.ph25.prol ], [ %storemerge21, %.lr.ph25.preheader ]
  %.01123.prol = phi i64 [ %i.g, %.lr.ph25.prol ], [ %i.d, %.lr.ph25.preheader ]
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.lr.ph25.prol ], [ 0, %.lr.ph25.preheader ]
  %i.g = add i64 %.01123.prol, -1                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge24.prol, i64 8
  %storemerge.prol = load ptr, ptr %i.h, align 8, !tbaa !175 ; 3 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol, !llvm.loop !3301

.lr.ph25.prol.loopexit:                           ; preds = %.lr.ph25.prol, %.lr.ph25.preheader
  %storemerge.lcssa.unr = phi ptr [ poison, %.lr.ph25.preheader ], [ %storemerge.prol, %.lr.ph25.prol ]
  %storemerge24.unr = phi ptr [ %storemerge21, %.lr.ph25.preheader ], [ %storemerge.prol, %.lr.ph25.prol ]
  %.01123.unr = phi i64 [ %i.d, %.lr.ph25.preheader ], [ %i.g, %.lr.ph25.prol ]
  %i.i = sub i64 %1, %i.a
  %i.j = icmp ugt i64 %i.i, -8
  br i1 %i.j, label %.loopexit17.sink.split, label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph25.prol.loopexit, %.lr.ph25
  %storemerge24 = phi ptr [ %storemerge.7, %.lr.ph25 ], [ %storemerge24.unr, %.lr.ph25.prol.loopexit ]
  %.01123 = phi i64 [ %i.r, %.lr.ph25 ], [ %.01123.unr, %.lr.ph25.prol.loopexit ]
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge24, i64 8
  %storemerge = load ptr, ptr %i.k, align 8, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %storemerge.1 = load ptr, ptr %i.l, align 8, !tbaa !175
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge.1, i64 8
  %storemerge.2 = load ptr, ptr %i.m, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge.2, i64 8
  %storemerge.3 = load ptr, ptr %i.n, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge.3, i64 8
  %storemerge.4 = load ptr, ptr %i.o, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge.4, i64 8
  %storemerge.5 = load ptr, ptr %i.p, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge.5, i64 8
  %storemerge.6 = load ptr, ptr %i.q, align 8, !tbaa !175
  %i.r = add i64 %.01123, -8                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge.6, i64 8
  %storemerge.7 = load ptr, ptr %i.s, align 8, !tbaa !175 ; 2 uses
  %.not16.7 = icmp eq i64 %i.r, 0
  br i1 %.not16.7, label %.loopexit17.sink.split, label %.lr.ph25, !llvm.loop !3302

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !3319)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !3320
  store ptr %i.t, ptr %3, align 8, !tbaa !211, !alias.scope !3319, !noalias !3321
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dead_on_return %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.u = load ptr, ptr %7, align 8, !tbaa !213    ; 3 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %.loopexit17, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.019.prol = phi i64 [ %i.w, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ]
  %i.v = phi ptr [ %i.x, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = add i64 %.019.prol, -1                   ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !161  ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !3307

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.019.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp ult i64 %1, 8
  br i1 %i.y, label %.loopexit17.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.019 = phi i64 [ %i.ah, %.lr.ph ], [ %.019.unr, %.lr.ph.prol.loopexit ]
  %i.z = phi ptr [ %i.ai, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !161
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !161
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !161
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !161
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161
  %i.ah = add i64 %.019, -8                       ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !161 ; 2 uses
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %.loopexit17.sink.split, label %.lr.ph, !llvm.loop !3308

.loopexit17.sink.split:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph25.prol.loopexit, %.lr.ph25, %.preheader
  %.lcssa.sink = phi ptr [ %storemerge.7, %.lr.ph25 ], [ %storemerge21, %.preheader ], [ %storemerge.lcssa.unr, %.lr.ph25.prol.loopexit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ai, %.lr.ph ]
  store ptr %.lcssa.sink, ptr %6, align 8, !tbaa !213
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.sink.split, %bb.c
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  %i.aj = load ptr, ptr %8, align 8, !tbaa !213, !noalias !3323 ; 3 uses
  %i.ak = load ptr, ptr %9, align 8, !tbaa !213, !noalias !3323 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listIiNS0_13new_allocatorIiEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit17
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !162, !noalias !3325 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !162, !noalias !3325
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !161, !noalias !3325
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %.09.i.i.i, align 8, !tbaa !161, !noalias !3325 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #24, !noalias !3325
  %i.ap = load i64, ptr %0, align 8, !tbaa !165, !noalias !3325
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %0, align 8, !tbaa !165, !noalias !3325
  %.not.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not.i.i.i, label %_ZN5boost9container4listIiNS0_13new_allocatorIiEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit, label %.lr.ph.i.i.i, !llvm.loop !41

_ZN5boost9container4listIiNS0_13new_allocatorIiEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit17
  store ptr %i.ak, ptr %2, align 8, !tbaa !211, !alias.scope !3326, !noalias !3327
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5boost9container4listIiNS0_13new_allocatorIiEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq i64 %1, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.c ]  ; 3 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.c, align 4, !tbaa !170
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %i.d = load i64, ptr %i.a, align 8, !tbaa !252
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.a, align 8, !tbaa !252
  %i.f = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !3328

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #24 ; 0 uses
  %.not10 = icmp eq i64 %.09, 0
  br i1 %.not10, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph13, %bb.e
  %.111 = phi i64 [ %.09, %.lr.ph13 ], [ %i.n, %bb.e ]
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !247  ; 2 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !252
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.a, align 8, !tbaa !252
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 24) #28
  %i.n = add i64 %.111, -1                        ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge14, label %bb.e, !llvm.loop !3329

._crit_edge14:                                    ; preds = %bb.e, %bb.d
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge14
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

bb.i:                                             ; preds = %._crit_edge14
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listIiSaIiEE6insertESt20_List_const_iteratorIiEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 18 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !247
  store ptr %4, ptr %4, align 8, !tbaa !243
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !249
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.noexc.i
  %.04.i.i = phi i64 [ %i.h, %.noexc.i ], [ %2, %bb.b ]
  %i.c = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
end_hunk_4
begin_hunk_5_@_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6insertINS_13move_iteratorIPS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSD_8bhtraitsINS0_9base_nodeIS3_NSB_9list_hookIPvEELb0EEENSD_16list_node_traitsISI_EELNSD_14link_mode_typeE0ENSD_7dft_tagELj1EEELb0EEELb0EEENSC_ISQ_Lb1EEET_ST_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleIST_mEE5valueoosr3dtl17is_input_iteratorIST_EE5valueL_ZNSU_7is_sameINSU_17integral_constantIjLj1EEESY_E5valueEEENSU_13enable_if_natEE4typeE:bb.a
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !307
  store i32 %i.p, ptr %i.o, align 4, !tbaa !307
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !307
  %i.q = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !3560 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !3560
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !3560
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !3560
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !3560
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !3560
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !3560
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSF_8bhtraitsINS0_9base_nodeIS3_NSD_9list_hookIPvEELb0EEENSF_16list_node_traitsISK_EELNSF_14link_mode_typeE0ENSF_7dft_tagELj1EEELb0EEELb0EEENSE_ISS_Lb1EEET_SV_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISV_mEE5valueoosr3dtl17is_input_iteratorISV_EE5valueL_ZNSW_7is_sameINSW_17integral_constantIjLj1EEES10_E5valueEEENSW_13enable_if_natEE4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !311    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !309
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !307
  store i32 %i.d, ptr %i.c, align 4, !tbaa !307
  store i32 0, ptr %3, align 4, !tbaa !307
  %i.e = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162, !noalias !3565 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !3565
  store ptr %i.a, ptr %i.b, align 8, !tbaa !161, !noalias !3565
  store ptr %i.b, ptr %i.g, align 8, !tbaa !162, !noalias !3565
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !noalias !3565
  %i.j = load i64, ptr %1, align 8, !tbaa !165, !noalias !3565
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %1, align 8, !tbaa !165, !noalias !3565
  store ptr %i.b, ptr %0, align 8, !tbaa !311
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !307
  store i32 %i.p, ptr %i.o, align 4, !tbaa !307
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !307
  %i.q = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !3566 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !3566
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !3566
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !3566
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !3566
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !3566
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !3566
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !3572 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1718.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not1718.i.i, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.021.i.i = phi i64 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.012.020.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.019.i.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !307
  %i.g = load i32, ptr %i.e, align 4, !tbaa !307
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.019.i.i, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !3573 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !3573
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !3573
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !3573
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !3573
  store i32 -2147483648, ptr %i.e, align 8, !tbaa !307, !noalias !3573
  %i.o = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !3573
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !3573
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.019.i.i, i64 noundef 24) #24, !noalias !3573
  %i.q = add i64 %.021.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.020.i.i, %bb.c ], [ %.sroa.06.019.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %i.q, %bb.c ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not17.i.i = icmp eq ptr %i.i, %i.a
  br i1 %.not17.i.i, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !3571

_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit: ; preds = %bb.d, %bb.a, %bb.b
  %.2.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1.i.i, %bb.d ]
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !3574

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !3575

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3576

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !3577

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !3591 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !3591
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !3591
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !3591 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !307, !noalias !3591
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !3591
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !3591
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #24, !noalias !3591
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !3591
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !3591
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !3592 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !307, !noalias !3592
  %i.ar = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !3592
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !3592
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !3593 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !3593
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !3593
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !3593
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !3593
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !3593
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !3593
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !3592 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !307, !noalias !3592
  %i.bc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !3592
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !3592
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !3594 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !3594
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !3594
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !3594
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !3594
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !3594
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !3594
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !3590

_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !3607 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3609)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !3610
  store ptr %i.g, ptr %.sroa.0, align 8, !tbaa !309, !alias.scope !3611
  %.not1.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0, %bb.b ]
  %i.h = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !307
  %i.l = load i32, ptr %i.j, align 4, !tbaa !307
  %i.m = icmp eq i32 %i.k, %i.l                   ; 3 uses
  br i1 %i.m, label %bb.c, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i, !llvm.loop !76

_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerneERKNS0_4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEEES8_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !3624 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3626)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !3627
  store ptr %i.g, ptr %.sroa.0.i, align 8, !tbaa !309, !alias.scope !3628
  %.not1.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.i, %bb.b ]
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !307
  %i.l = load i32, ptr %i.j, align 4, !tbaa !307
  %.not.not = icmp ne i32 %i.k, %i.l              ; 3 uses
  br i1 %.not.not, label %_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %.lr.ph.i.i.i, !llvm.loop !76

_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEEES8_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_4listINS0_4test11movable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !3641 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !3642 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i, %i.c
  br i1 %i.f, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_SM_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_5
begin_hunk_6_@_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6insertINS_13move_iteratorIPS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSD_8bhtraitsINS0_9base_nodeIS3_NSB_9list_hookIPvEELb0EEENSD_16list_node_traitsISI_EELNSD_14link_mode_typeE0ENSD_7dft_tagELj1EEELb0EEELb0EEENSC_ISQ_Lb1EEET_ST_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleIST_mEE5valueoosr3dtl17is_input_iteratorIST_EE5valueL_ZNSU_7is_sameINSU_17integral_constantIjLj1EEESY_E5valueEEENSU_13enable_if_natEE4typeE:bb.a
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !169
  store i32 %i.p, ptr %i.o, align 4, !tbaa !169
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !169
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !3820 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !3820
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !3820
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !3820
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !3820
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !3820
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !3820
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSF_8bhtraitsINS0_9base_nodeIS3_NSD_9list_hookIPvEELb0EEENSF_16list_node_traitsISK_EELNSF_14link_mode_typeE0ENSF_7dft_tagELj1EEELb0EEELb0EEENSE_ISS_Lb1EEET_SV_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISV_mEE5valueoosr3dtl17is_input_iteratorISV_EE5valueL_ZNSW_7is_sameINSW_17integral_constantIjLj1EEES10_E5valueEEENSW_13enable_if_natEE4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !173    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !174
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !169
  store i32 %i.d, ptr %i.c, align 4, !tbaa !169
  store i32 0, ptr %3, align 4, !tbaa !169
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162, !noalias !3825 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !3825
  store ptr %i.a, ptr %i.b, align 8, !tbaa !161, !noalias !3825
  store ptr %i.b, ptr %i.g, align 8, !tbaa !162, !noalias !3825
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !noalias !3825
  %i.j = load i64, ptr %1, align 8, !tbaa !165, !noalias !3825
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %1, align 8, !tbaa !165, !noalias !3825
  store ptr %i.b, ptr %0, align 8, !tbaa !173
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !169
  store i32 %i.p, ptr %i.o, align 4, !tbaa !169
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !169
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !3826 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !3826
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !3826
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !3826
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !3826
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !3826
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !3826
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !3832 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1718.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not1718.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.021.i.i = phi i64 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.012.020.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.019.i.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !169
  %i.g = load i32, ptr %i.e, align 4, !tbaa !169
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.019.i.i, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !3833 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !3833
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !3833
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !3833
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !3833
  store i32 -2147483648, ptr %i.e, align 8, !tbaa !169, !noalias !3833
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !3833
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !3833
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.019.i.i, i64 noundef 24) #24, !noalias !3833
  %i.q = add i64 %.021.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.020.i.i, %bb.c ], [ %.sroa.06.019.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %i.q, %bb.c ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not17.i.i = icmp eq ptr %i.i, %i.a
  br i1 %.not17.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !3831

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit: ; preds = %bb.d, %bb.a, %bb.b
  %.2.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1.i.i, %bb.d ]
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !3834

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !3835

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3836

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !3837

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !3851 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !3851
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !3851
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !3851 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !169, !noalias !3851
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !3851
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !3851
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #24, !noalias !3851
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !3851
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !3851
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !84

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !3852 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !169, !noalias !3852
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !3852
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !3852
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !3853 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !3853
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !3853
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !3853
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !3853
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !3853
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !3853
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !3852 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !169, !noalias !3852
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !3852
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !3852
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !3854 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !3854
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !3854
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !3854
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !3854
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !3854
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !3854
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !3850

_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !3867 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3869)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !3870
  store ptr %i.g, ptr %.sroa.0, align 8, !tbaa !174, !alias.scope !3871
  %.not1.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0, %bb.b ]
  %i.h = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !169
  %i.l = load i32, ptr %i.j, align 4, !tbaa !169
  %i.m = icmp eq i32 %i.k, %i.l                   ; 3 uses
  br i1 %i.m, label %bb.c, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i, !llvm.loop !85

_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerneERKNS0_4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEEES8_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !3884 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3886)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !3887
  store ptr %i.g, ptr %.sroa.0.i, align 8, !tbaa !174, !alias.scope !3888
  %.not1.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.i, %bb.b ]
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !169
  %i.l = load i32, ptr %i.j, align 4, !tbaa !169
  %.not.not = icmp ne i32 %i.k, %i.l              ; 3 uses
  br i1 %.not.not, label %_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %.lr.ph.i.i.i, !llvm.loop !85

_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEEES8_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_4listINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !3901 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !3902 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i, %i.c
  br i1 %i.f, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_SM_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_6
begin_hunk_7_@_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6insertINS_13move_iteratorIPS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSD_8bhtraitsINS0_9base_nodeIS3_NSB_9list_hookIPvEELb0EEENSD_16list_node_traitsISI_EELNSD_14link_mode_typeE0ENSD_7dft_tagELj1EEELb0EEELb0EEENSC_ISQ_Lb1EEET_ST_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleIST_mEE5valueoosr3dtl17is_input_iteratorIST_EE5valueL_ZNSU_7is_sameINSU_17integral_constantIjLj1EEESY_E5valueEEENSU_13enable_if_natEE4typeE:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !325
  store i32 %i.p, ptr %i.o, align 4, !tbaa !325
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !4233 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !4233
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !4233
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !4233
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !4233
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !4233
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !4233
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSF_8bhtraitsINS0_9base_nodeIS3_NSD_9list_hookIPvEELb0EEENSF_16list_node_traitsISK_EELNSF_14link_mode_typeE0ENSF_7dft_tagELj1EEELb0EEELb0EEENSE_ISS_Lb1EEET_SV_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISV_mEE5valueoosr3dtl17is_input_iteratorISV_EE5valueL_ZNSW_7is_sameINSW_17integral_constantIjLj1EEES10_E5valueEEENSW_13enable_if_natEE4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.179") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !329    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !327
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !325
  store i32 %i.d, ptr %i.c, align 4, !tbaa !325
  %i.e = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162, !noalias !4238 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !4238
  store ptr %i.a, ptr %i.b, align 8, !tbaa !161, !noalias !4238
  store ptr %i.b, ptr %i.g, align 8, !tbaa !162, !noalias !4238
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !noalias !4238
  %i.j = load i64, ptr %1, align 8, !tbaa !165, !noalias !4238
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %1, align 8, !tbaa !165, !noalias !4238
  store ptr %i.b, ptr %0, align 8, !tbaa !329
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !325
  store i32 %i.p, ptr %i.o, align 4, !tbaa !325
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !4239 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !4239
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !4239
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !4239
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !4239
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !4239
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !4239
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !4245 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1718.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not1718.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.021.i.i = phi i64 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.012.020.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.019.i.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !325
  %i.g = load i32, ptr %i.e, align 4, !tbaa !325
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.019.i.i, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !4246 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !4246
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !4246
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !4246
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !4246
  store i32 -2147483648, ptr %i.e, align 8, !tbaa !325, !noalias !4246
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !4246
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !4246
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.019.i.i, i64 noundef 24) #24, !noalias !4246
  %i.q = add i64 %.021.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.020.i.i, %bb.c ], [ %.sroa.06.019.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %i.q, %bb.c ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not17.i.i = icmp eq ptr %i.i, %i.a
  br i1 %.not17.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !4244

_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit: ; preds = %bb.d, %bb.a, %bb.b
  %.2.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1.i.i, %bb.d ]
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !4247

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4248

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !4249

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !4250

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !4264 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !4264
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !4264
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !4264 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !325, !noalias !4264
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !4264
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !4264
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #24, !noalias !4264
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !4264
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !4264
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !4265 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !325, !noalias !4265
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !4265
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !4265
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !4266 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !4266
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !4266
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !4266
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !4266
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !4266
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !4266
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !4265 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !325, !noalias !4265
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !4265
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !4265
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !4267 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !4267
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !4267
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !4267
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !4267
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !4267
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !4267
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !4263

_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !4280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4282)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !4283
  store ptr %i.g, ptr %.sroa.0, align 8, !tbaa !327, !alias.scope !4284
  %.not1.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0, %bb.b ]
  %i.h = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !325
  %i.l = load i32, ptr %i.j, align 4, !tbaa !325
  %i.m = icmp eq i32 %i.k, %i.l                   ; 3 uses
  br i1 %i.m, label %bb.c, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i, !llvm.loop !96

_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerneERKNS0_4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEEES8_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !4297 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4299)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !4300
  store ptr %i.g, ptr %.sroa.0.i, align 8, !tbaa !327, !alias.scope !4301
  %.not1.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.i, %bb.b ]
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !325
  %i.l = load i32, ptr %i.j, align 4, !tbaa !325
  %.not.not = icmp ne i32 %i.k, %i.l              ; 3 uses
  br i1 %.not.not, label %_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEEES8_.exit, label %.lr.ph.i.i.i, !llvm.loop !96

_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEEES8_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_4listINS0_4test12copyable_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !4314 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !4315 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i, %i.c
  br i1 %i.f, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_SM_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_7
begin_hunk_8_@_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6insertINS_13move_iteratorIPS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSD_8bhtraitsINS0_9base_nodeIS3_NSB_9list_hookIPvEELb0EEENSD_16list_node_traitsISI_EELNSD_14link_mode_typeE0ENSD_7dft_tagELj1EEELb0EEELb0EEENSC_ISQ_Lb1EEET_ST_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleIST_mEE5valueoosr3dtl17is_input_iteratorIST_EE5valueL_ZNSU_7is_sameINSU_17integral_constantIjLj1EEESY_E5valueEEENSU_13enable_if_natEE4typeE:bb.a
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !335
  store i32 %i.p, ptr %i.o, align 4, !tbaa !335
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !335
  %i.q = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !4633 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !4633
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !4633
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !4633
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !4633
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !4633
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !4633
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !4631

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSF_8bhtraitsINS0_9base_nodeIS3_NSD_9list_hookIPvEELb0EEENSF_16list_node_traitsISK_EELNSF_14link_mode_typeE0ENSF_7dft_tagELj1EEELb0EEELb0EEENSE_ISS_Lb1EEET_SV_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISV_mEE5valueoosr3dtl17is_input_iteratorISV_EE5valueL_ZNSW_7is_sameINSW_17integral_constantIjLj1EEES10_E5valueEEENSW_13enable_if_natEE4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.227") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !339    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !337
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !335
  store i32 %i.d, ptr %i.c, align 4, !tbaa !335
  store i32 0, ptr %3, align 4, !tbaa !335
  %i.e = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162, !noalias !4639 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !4639
  store ptr %i.a, ptr %i.b, align 8, !tbaa !161, !noalias !4639
  store ptr %i.b, ptr %i.g, align 8, !tbaa !162, !noalias !4639
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !noalias !4639
  %i.j = load i64, ptr %1, align 8, !tbaa !165, !noalias !4639
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %1, align 8, !tbaa !165, !noalias !4639
  store ptr %i.b, ptr %0, align 8, !tbaa !339
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !335
  store i32 %i.p, ptr %i.o, align 4, !tbaa !335
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !335
  %i.q = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !4640 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !4640
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !4640
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !4640
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !4640
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !4640
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !4640
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !4638

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !4646 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1718.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not1718.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.021.i.i = phi i64 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.012.020.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.019.i.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !335
  %i.g = load i32, ptr %i.e, align 4, !tbaa !335
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.019.i.i, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !4647 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !4647
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !4647
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !4647
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !4647
  store i32 -2147483648, ptr %i.e, align 8, !tbaa !335, !noalias !4647
  %i.o = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !4647
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !4647
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.019.i.i, i64 noundef 24) #24, !noalias !4647
  %i.q = add i64 %.021.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.020.i.i, %bb.c ], [ %.sroa.06.019.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %i.q, %bb.c ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not17.i.i = icmp eq ptr %i.i, %i.a
  br i1 %.not17.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !4645

_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit: ; preds = %bb.d, %bb.a, %bb.b
  %.2.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1.i.i, %bb.d ]
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !4648

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4649

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !4650

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !4651

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !4666 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !4666
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !4666
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !4666 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !335, !noalias !4666
  %i.al = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !4666
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !4666
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #24, !noalias !4666
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !4666
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !4666
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4658

_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !4667 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !335, !noalias !4667
  %i.ar = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !4667
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !4667
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !4668 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !4668
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !4668
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !4668
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !4668
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !4668
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !4668
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26, !noalias !4667 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !335, !noalias !4667
  %i.bc = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !4667
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !4667
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !4669 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !4669
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !4669
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !4669
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !4669
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !4669
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !4669
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !4665

_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !4682 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4684)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !4685
  store ptr %i.g, ptr %.sroa.0, align 8, !tbaa !337, !alias.scope !4686
  %.not1.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0, %bb.b ]
  %i.h = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !335
  %i.l = load i32, ptr %i.j, align 4, !tbaa !335
  %i.m = icmp eq i32 %i.k, %i.l                   ; 3 uses
  br i1 %i.m, label %bb.c, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i, !llvm.loop !108

_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerneERKNS0_4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEEES8_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !4699 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4701)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !4702
  store ptr %i.g, ptr %.sroa.0.i, align 8, !tbaa !337, !alias.scope !4703
  %.not1.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEEES8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.i, %bb.b ]
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !335
  %i.l = load i32, ptr %i.j, align 4, !tbaa !335
  %.not.not = icmp ne i32 %i.k, %i.l              ; 3 uses
  br i1 %.not.not, label %_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEEES8_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEEES8_.exit, label %.lr.ph.i.i.i, !llvm.loop !108

_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEEES8_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_4listINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !4716 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !4717 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i, %i.c
  br i1 %i.f, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_SM_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_8
begin_hunk_9_@_ZN5boost9container4listIiSaIiEE6assignINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEEvT_SB_PNS_11move_detail22disable_if_convertibleISB_mvE4typeE:bb.a
  %i.c = load ptr, ptr %11, align 8, !tbaa !213   ; 2 uses
  %.promoted = load ptr, ptr %10, align 8, !tbaa !213 ; 2 uses
  %i.d = icmp ne ptr %.promoted, %i.c
  %i.e = icmp ne ptr %1, %2
  %or.cond7 = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond7, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.08 = phi ptr [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.g = load i32, ptr %.sroa.03.08, align 4, !tbaa !170
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.g, ptr %i.h, align 4, !tbaa !170
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !161  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 4 ; 3 uses
  %i.k = icmp ne ptr %i.i, %i.c
  %i.l = icmp ne ptr %i.j, %2
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph, label %..critedge_crit_edge, !llvm.loop !5806

..critedge_crit_edge:                             ; preds = %.lr.ph
  store ptr %i.i, ptr %10, align 8, !tbaa !213
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %.sroa.03.0.lcssa = phi ptr [ %i.j, %..critedge_crit_edge ], [ %1, %bb.a ] ; 3 uses
  %i.m = icmp eq ptr %.sroa.03.0.lcssa, %2
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKNS2_ISG_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %10) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKNS2_ISG_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !5826)
  %i.n = load ptr, ptr %12, align 8, !tbaa !213, !noalias !5827 ; 3 uses
  %i.o = load ptr, ptr %13, align 8, !tbaa !213, !noalias !5827 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5828)
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listIiSaIiEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !162, !noalias !5829 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !162, !noalias !5829
  store ptr %i.o, ptr %i.q, align 8, !tbaa !161, !noalias !5829
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.n, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.s = load ptr, ptr %.09.i.i.i, align 8, !tbaa !161, !noalias !5829 ; 2 uses
  call void @_ZdlPvm(ptr noundef %.09.i.i.i, i64 noundef 24) #28, !noalias !5829
  %i.t = load i64, ptr %0, align 8, !tbaa !165, !noalias !5829
  %i.u = add i64 %i.t, -1
  store i64 %i.u, ptr %0, align 8, !tbaa !165, !noalias !5829
  %.not.i.i.i = icmp eq ptr %i.s, %i.o
  br i1 %.not.i.i.i, label %_ZN5boost9container4listIiSaIiEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_.exit, label %.lr.ph.i.i.i, !llvm.loop !126

_ZN5boost9container4listIiSaIiEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  store ptr %i.o, ptr %7, align 8, !tbaa !211, !alias.scope !5830, !noalias !5831
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dead_on_return %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.d

bb.c:                                             ; preds = %.critedge
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKNS2_ISG_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !5832)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.v = load ptr, ptr %15, align 8, !tbaa !213, !noalias !5832 ; 4 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !211, !noalias !5832
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !5832
  %i.w = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %.sroa.03.0.lcssa, align 4, !tbaa !170, !noalias !5832
  store i32 %i.y, ptr %i.x, align 4, !tbaa !170
  call void @llvm.experimental.noalias.scope.decl(metadata !5833)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !162, !noalias !5833 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !162, !noalias !5833
  store ptr %i.v, ptr %i.w, align 8, !tbaa !161, !noalias !5833
  store ptr %i.w, ptr %i.z, align 8, !tbaa !162, !noalias !5833
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !161, !noalias !5833
  %i.ac = load i64, ptr %0, align 8, !tbaa !165, !noalias !5834
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %0, align 8, !tbaa !165, !noalias !5834
  store ptr %i.w, ptr %6, align 8, !tbaa !211, !alias.scope !5833, !noalias !5832
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dead_on_return %6) #24
  %i.ae = load ptr, ptr %5, align 8, !tbaa !213, !noalias !5832
  store ptr %i.ae, ptr %16, align 8, !tbaa !213, !alias.scope !5832
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !5832
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 4 ; 2 uses
  %.not1314.i = icmp eq ptr %i.af, %2
  br i1 %.not1314.i, label %_ZN5boost9container4listIiSaIiEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSD_8bhtraitsINS0_9base_nodeIiNSB_9list_hookIPvEELb0EEENSD_16list_node_traitsISI_EELNSD_14link_mode_typeE0ENSD_7dft_tagELj1EEELb0EEELb0EEENSC_ISQ_Lb1EEET_ST_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleIST_mEE5valueoosr3dtl17is_input_iteratorIST_EE5valueL_ZNSU_7is_sameINSU_17integral_constantIjLj1EEESY_E5valueEEENSU_13enable_if_natEE4typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.09.115.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.ag = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %.sroa.09.115.i, align 4, !tbaa !170, !noalias !5832
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !170
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !162, !noalias !5835 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !162, !noalias !5835
  store ptr %i.v, ptr %i.ag, align 8, !tbaa !161, !noalias !5835
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !162, !noalias !5835
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !161, !noalias !5835
  %i.al = load i64, ptr %0, align 8, !tbaa !165, !noalias !5836
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %0, align 8, !tbaa !165, !noalias !5836
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.115.i, i64 4 ; 2 uses
  %.not13.i = icmp eq ptr %i.an, %2
  br i1 %.not13.i, label %_ZN5boost9container4listIiSaIiEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSD_8bhtraitsINS0_9base_nodeIiNSB_9list_hookIPvEELb0EEENSD_16list_node_traitsISI_EELNSD_14link_mode_typeE0ENSD_7dft_tagELj1EEELb0EEELb0EEENSC_ISQ_Lb1EEET_ST_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleIST_mEE5valueoosr3dtl17is_input_iteratorIST_EE5valueL_ZNSU_7is_sameINSU_17integral_constantIjLj1EEESY_E5valueEEENSU_13enable_if_natEE4typeE.exit, label %.lr.ph.i, !llvm.loop !124

_ZN5boost9container4listIiSaIiEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSD_8bhtraitsINS0_9base_nodeIiNSB_9list_hookIPvEELb0EEENSD_16list_node_traitsISI_EELNSD_14link_mode_typeE0ENSD_7dft_tagELj1EEELb0EEELb0EEENSC_ISQ_Lb1EEET_ST_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleIST_mEE5valueoosr3dtl17is_input_iteratorIST_EE5valueL_ZNSU_7is_sameINSU_17integral_constantIjLj1EEESY_E5valueEEENSU_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container4listIiSaIiEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSD_8bhtraitsINS0_9base_nodeIiNSB_9list_hookIPvEELb0EEENSD_16list_node_traitsISI_EELNSD_14link_mode_typeE0ENSD_7dft_tagELj1EEELb0EEELb0EEENSC_ISQ_Lb1EEET_ST_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleIST_mEE5valueoosr3dtl17is_input_iteratorIST_EE5valueL_ZNSU_7is_sameINSU_17integral_constantIjLj1EEESY_E5valueEEENSU_13enable_if_natEE4typeE.exit, %_ZN5boost9container4listIiSaIiEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listIiSaIiEE11priv_insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEOi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 2 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %3, align 4, !tbaa !170
  store i32 %i.c, ptr %i.b, align 4, !tbaa !170
  %i.d = load ptr, ptr %2, align 8, !tbaa !213    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5839)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162, !noalias !5839 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !162, !noalias !5839
  store ptr %i.d, ptr %i.a, align 8, !tbaa !161, !noalias !5839
  store ptr %i.a, ptr %i.e, align 8, !tbaa !162, !noalias !5839
  store ptr %i.a, ptr %i.f, align 8, !tbaa !161, !noalias !5839
  %i.h = load i64, ptr %1, align 8, !tbaa !165, !noalias !5839
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %1, align 8, !tbaa !165, !noalias !5839
  store ptr %i.a, ptr %4, align 8, !tbaa !211, !alias.scope !5839
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dead_on_return %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4listIiSaIiEE15priv_try_shrinkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %3 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 6 uses
  %7 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 4 uses
  %i.b = icmp ugt i64 %i.a, %1                    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !211, !alias.scope !5860, !noalias !5861
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.d = sub nuw i64 %i.a, %1                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %storemerge21 = load ptr, ptr %5, align 8, !tbaa !175 ; 3 uses
  %.not1622 = icmp eq i64 %i.d, 0
  br i1 %.not1622, label %.loopexit17.sink.split, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %.preheader
  %xtraiter34 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol

.lr.ph25.prol:                                    ; preds = %.lr.ph25.preheader, %.lr.ph25.prol
  %storemerge24.prol = phi ptr [ %storemerge.prol, %.lr.ph25.prol ], [ %storemerge21, %.lr.ph25.preheader ]
  %.01123.prol = phi i64 [ %i.g, %.lr.ph25.prol ], [ %i.d, %.lr.ph25.preheader ]
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.lr.ph25.prol ], [ 0, %.lr.ph25.preheader ]
  %i.g = add i64 %.01123.prol, -1                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge24.prol, i64 8
  %storemerge.prol = load ptr, ptr %i.h, align 8, !tbaa !175 ; 3 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.lr.ph25.prol.loopexit, label %.lr.ph25.prol, !llvm.loop !5844

.lr.ph25.prol.loopexit:                           ; preds = %.lr.ph25.prol, %.lr.ph25.preheader
  %storemerge.lcssa.unr = phi ptr [ poison, %.lr.ph25.preheader ], [ %storemerge.prol, %.lr.ph25.prol ]
  %storemerge24.unr = phi ptr [ %storemerge21, %.lr.ph25.preheader ], [ %storemerge.prol, %.lr.ph25.prol ]
  %.01123.unr = phi i64 [ %i.d, %.lr.ph25.preheader ], [ %i.g, %.lr.ph25.prol ]
  %i.i = sub i64 %1, %i.a
  %i.j = icmp ugt i64 %i.i, -8
  br i1 %i.j, label %.loopexit17.sink.split, label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph25.prol.loopexit, %.lr.ph25
  %storemerge24 = phi ptr [ %storemerge.7, %.lr.ph25 ], [ %storemerge24.unr, %.lr.ph25.prol.loopexit ]
  %.01123 = phi i64 [ %i.r, %.lr.ph25 ], [ %.01123.unr, %.lr.ph25.prol.loopexit ]
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge24, i64 8
  %storemerge = load ptr, ptr %i.k, align 8, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %storemerge.1 = load ptr, ptr %i.l, align 8, !tbaa !175
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge.1, i64 8
  %storemerge.2 = load ptr, ptr %i.m, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge.2, i64 8
  %storemerge.3 = load ptr, ptr %i.n, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge.3, i64 8
  %storemerge.4 = load ptr, ptr %i.o, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge.4, i64 8
  %storemerge.5 = load ptr, ptr %i.p, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge.5, i64 8
  %storemerge.6 = load ptr, ptr %i.q, align 8, !tbaa !175
  %i.r = add i64 %.01123, -8                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge.6, i64 8
  %storemerge.7 = load ptr, ptr %i.s, align 8, !tbaa !175 ; 2 uses
  %.not16.7 = icmp eq i64 %i.r, 0
  br i1 %.not16.7, label %.loopexit17.sink.split, label %.lr.ph25, !llvm.loop !5845

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !5862)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !5863
  store ptr %i.t, ptr %3, align 8, !tbaa !211, !alias.scope !5862, !noalias !5864
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dead_on_return %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.u = load ptr, ptr %7, align 8, !tbaa !213    ; 3 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %.loopexit17, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.019.prol = phi i64 [ %i.w, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ]
  %i.v = phi ptr [ %i.x, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = add i64 %.019.prol, -1                   ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !161  ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !5850

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.019.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp ult i64 %1, 8
  br i1 %i.y, label %.loopexit17.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.019 = phi i64 [ %i.ah, %.lr.ph ], [ %.019.unr, %.lr.ph.prol.loopexit ]
  %i.z = phi ptr [ %i.ai, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !161
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !161
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !161
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !161
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161
  %i.ah = add i64 %.019, -8                       ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !161 ; 2 uses
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %.loopexit17.sink.split, label %.lr.ph, !llvm.loop !5851

.loopexit17.sink.split:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph25.prol.loopexit, %.lr.ph25, %.preheader
  %.lcssa.sink = phi ptr [ %storemerge.7, %.lr.ph25 ], [ %storemerge21, %.preheader ], [ %storemerge.lcssa.unr, %.lr.ph25.prol.loopexit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ai, %.lr.ph ]
  store ptr %.lcssa.sink, ptr %6, align 8, !tbaa !213
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.sink.split, %bb.c
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !5865)
  %i.aj = load ptr, ptr %8, align 8, !tbaa !213, !noalias !5866 ; 3 uses
  %i.ak = load ptr, ptr %9, align 8, !tbaa !213, !noalias !5866 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5867)
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listIiSaIiEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit17
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !162, !noalias !5868 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !162, !noalias !5868
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !161, !noalias !5868
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %.09.i.i.i, align 8, !tbaa !161, !noalias !5868 ; 2 uses
  call void @_ZdlPvm(ptr noundef %.09.i.i.i, i64 noundef 24) #28, !noalias !5868
  %i.ap = load i64, ptr %0, align 8, !tbaa !165, !noalias !5868
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %0, align 8, !tbaa !165, !noalias !5868
  %.not.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not.i.i.i, label %_ZN5boost9container4listIiSaIiEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_.exit, label %.lr.ph.i.i.i, !llvm.loop !126

_ZN5boost9container4listIiSaIiEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit17
  store ptr %i.ak, ptr %2, align 8, !tbaa !211, !alias.scope !5869, !noalias !5870
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5boost9container4listIiSaIiEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_.exit
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container4listIiSaIiEEEJRS5_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.251") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %3 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  store i64 0, ptr %i.a, align 8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.b, ptr %4, align 8, !tbaa !211, !alias.scope !5889, !noalias !5890
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !5891
  call void @llvm.experimental.noalias.scope.decl(metadata !5892)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !5893
  store ptr %i.e, ptr %3, align 8, !tbaa !211, !alias.scope !5892, !noalias !5894
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dead_on_return %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !5891
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !5895
  store ptr %i.d, ptr %2, align 8, !tbaa !211, !alias.scope !5896, !noalias !5897
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dead_on_return %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !5895
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN5boost9container4listIiSaIiEE6insertINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEENS6_ISK_Lb0EEESL_T_SN_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISN_mEE5valueoosr3dtl17is_input_iteratorISN_EE5valueL_ZNSO_7is_sameINSO_17integral_constantIjLj1EEESS_E5valueEEENSO_13enable_if_natEE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator.17") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef null)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !161, !noalias !5898 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderISaIiENS_9intrusive9list_implINS4_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS4_16list_node_traitsIS9_EELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb1EvEEED2Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sroa.04.09.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.09.i.i.i.i, align 8, !tbaa !161 ; 2 uses
  call void @_ZdlPvm(ptr noundef %.sroa.04.09.i.i.i.i, i64 noundef 24) #28
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderISaIiENS_9intrusive9list_implINS4_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS4_16list_node_traitsIS9_EELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb1EvEEED2Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !114

_ZN5boost9container3dtl17node_alloc_holderISaIiENS_9intrusive9list_implINS4_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS4_16list_node_traitsIS9_EELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb1EvEEED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.b
  store ptr %i.b, ptr %i.b, align 8, !tbaa !161
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #28
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.a, ptr %0, align 8, !tbaa !346
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listIiSaIiEE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEEEEvT_SM_PNS_11move_detail22disable_if_convertibleISM_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %5 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %6 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 6 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 6 uses
  %9 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5916)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !5917
  store ptr %i.b, ptr %6, align 8, !tbaa !211, !alias.scope !5916, !noalias !5918
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dead_on_return %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8, !tbaa !211, !alias.scope !5919, !noalias !5920
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dead_on_return %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.c = load ptr, ptr %8, align 8, !tbaa !213    ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6insertINS_13move_iteratorIPS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE:bb.a
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !307
  store i32 %i.p, ptr %i.o, align 4, !tbaa !307
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !307
  %i.q = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !6097 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !6097
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !6097
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !6097
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !6097
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !6097
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !6097
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !127

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIS3_NSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj1EEESZ_E5valueEEENSV_13enable_if_natEE4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !311    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !309
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !307
  store i32 %i.d, ptr %i.c, align 4, !tbaa !307
  store i32 0, ptr %3, align 4, !tbaa !307
  %i.e = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162, !noalias !6102 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !6102
  store ptr %i.a, ptr %i.b, align 8, !tbaa !161, !noalias !6102
  store ptr %i.b, ptr %i.g, align 8, !tbaa !162, !noalias !6102
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !noalias !6102
  %i.j = load i64, ptr %1, align 8, !tbaa !165, !noalias !6102
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %1, align 8, !tbaa !165, !noalias !6102
  store ptr %i.b, ptr %0, align 8, !tbaa !311
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !307
  store i32 %i.p, ptr %i.o, align 4, !tbaa !307
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !307
  %i.q = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !6103 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !6103
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !6103
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !6103
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !6103
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !6103
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !6103
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !128

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !6109 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1718.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not1718.i.i, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.021.i.i = phi i64 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.012.020.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.019.i.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !307
  %i.g = load i32, ptr %i.e, align 4, !tbaa !307
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.019.i.i, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !6110 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !6110
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !6110
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !6110
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !6110
  store i32 -2147483648, ptr %i.e, align 8, !tbaa !307, !noalias !6110
  %i.o = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !6110
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !6110
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.019.i.i, i64 noundef 24) #28, !noalias !6110
  %i.q = add i64 %.021.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.020.i.i, %bb.c ], [ %.sroa.06.019.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %i.q, %bb.c ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not17.i.i = icmp eq ptr %i.i, %i.a
  br i1 %.not17.i.i, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !6108

_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit: ; preds = %bb.d, %bb.a, %bb.b
  %.2.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1.i.i, %bb.d ]
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !6111

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !6112

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !6113

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !6114

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !6128 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !6128
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !6128
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !6128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !307, !noalias !6128
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !6128
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !6128
  tail call void @_ZdlPvm(ptr noundef %.09.i.i.i.i, i64 noundef 24) #28, !noalias !6128
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !6128
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !6128
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !129

_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !6129 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !307, !noalias !6129
  %i.ar = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !6129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !6129
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !6130 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !6130
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !6130
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !6130
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !6130
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !6130
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !6130
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !6129 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !307, !noalias !6129
  %i.bc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !6129
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !170, !noalias !6129
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !6131 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !6131
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !6131
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !6131
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !6131
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !6131
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !6131
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !6127

_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test11movable_intESaIS3_EE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !6144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6146)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !6147
  store ptr %i.g, ptr %.sroa.0, align 8, !tbaa !309, !alias.scope !6148
  %.not1.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0, %bb.b ]
  %i.h = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !307
  %i.l = load i32, ptr %i.j, align 4, !tbaa !307
  %i.m = icmp eq i32 %i.k, %i.l                   ; 3 uses
  br i1 %i.m, label %bb.c, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i, !llvm.loop !76

_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerneERKNS0_4listINS0_4test11movable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intESaIS3_EEES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !6161 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6163)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !6164
  store ptr %i.g, ptr %.sroa.0.i, align 8, !tbaa !309, !alias.scope !6165
  %.not1.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intESaIS3_EEES7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.i, %bb.b ]
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !307
  %i.l = load i32, ptr %i.j, align 4, !tbaa !307
  %.not.not = icmp ne i32 %i.k, %i.l              ; 3 uses
  br i1 %.not.not, label %_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intESaIS3_EEES7_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intESaIS3_EEES7_.exit, label %.lr.ph.i.i.i, !llvm.loop !76

_ZN5boost9containereqERKNS0_4listINS0_4test11movable_intESaIS3_EEES7_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_4listINS0_4test11movable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !6178 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !6179 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i, %i.c
  br i1 %i.f, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test11movable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_SM_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_10
begin_hunk_11_@_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS_13move_iteratorIPS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE:bb.a
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !169
  store i32 %i.p, ptr %i.o, align 4, !tbaa !169
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !169
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !6339 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !6339
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !6339
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !6339
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !6339
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !6339
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !6339
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIS3_NSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj1EEESZ_E5valueEEENSV_13enable_if_natEE4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !173    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !174
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !169
  store i32 %i.d, ptr %i.c, align 4, !tbaa !169
  store i32 0, ptr %3, align 4, !tbaa !169
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162, !noalias !6344 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !6344
  store ptr %i.a, ptr %i.b, align 8, !tbaa !161, !noalias !6344
  store ptr %i.b, ptr %i.g, align 8, !tbaa !162, !noalias !6344
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !noalias !6344
  %i.j = load i64, ptr %1, align 8, !tbaa !165, !noalias !6344
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %1, align 8, !tbaa !165, !noalias !6344
  store ptr %i.b, ptr %0, align 8, !tbaa !173
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !169
  store i32 %i.p, ptr %i.o, align 4, !tbaa !169
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !169
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !6345 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !6345
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !6345
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !6345
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !6345
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !6345
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !6345
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !6351 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1718.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not1718.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.021.i.i = phi i64 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.012.020.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.019.i.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !169
  %i.g = load i32, ptr %i.e, align 4, !tbaa !169
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.019.i.i, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !6352 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !6352
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !6352
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !6352
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !6352
  store i32 -2147483648, ptr %i.e, align 8, !tbaa !169, !noalias !6352
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !6352
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !6352
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.019.i.i, i64 noundef 24) #28, !noalias !6352
  %i.q = add i64 %.021.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.020.i.i, %bb.c ], [ %.sroa.06.019.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %i.q, %bb.c ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not17.i.i = icmp eq ptr %i.i, %i.a
  br i1 %.not17.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !6350

_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit: ; preds = %bb.d, %bb.a, %bb.b
  %.2.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1.i.i, %bb.d ]
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !6353

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !6354

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !6355

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !6356

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !6370 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !6370
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !6370
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !6370 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !169, !noalias !6370
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !6370
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !6370
  tail call void @_ZdlPvm(ptr noundef %.09.i.i.i.i, i64 noundef 24) #28, !noalias !6370
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !6370
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !6370
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !132

_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !6371 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !169, !noalias !6371
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !6371
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !6371
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !6372 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !6372
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !6372
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !6372
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !6372
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !6372
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !6372
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !6371 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !169, !noalias !6371
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !6371
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !170, !noalias !6371
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !6373 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !6373
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !6373
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !6373
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !6373
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !6373
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !6373
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !6369

_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test24movable_and_copyable_intESaIS3_EE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !6386 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6388)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !6389
  store ptr %i.g, ptr %.sroa.0, align 8, !tbaa !174, !alias.scope !6390
  %.not1.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0, %bb.b ]
  %i.h = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !169
  %i.l = load i32, ptr %i.j, align 4, !tbaa !169
  %i.m = icmp eq i32 %i.k, %i.l                   ; 3 uses
  br i1 %i.m, label %bb.c, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i, !llvm.loop !85

_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerneERKNS0_4listINS0_4test24movable_and_copyable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intESaIS3_EEES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !6403 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6405)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !6406
  store ptr %i.g, ptr %.sroa.0.i, align 8, !tbaa !174, !alias.scope !6407
  %.not1.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intESaIS3_EEES7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.i, %bb.b ]
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !169
  %i.l = load i32, ptr %i.j, align 4, !tbaa !169
  %.not.not = icmp ne i32 %i.k, %i.l              ; 3 uses
  br i1 %.not.not, label %_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intESaIS3_EEES7_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intESaIS3_EEES7_.exit, label %.lr.ph.i.i.i, !llvm.loop !85

_ZN5boost9containereqERKNS0_4listINS0_4test24movable_and_copyable_intESaIS3_EEES7_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_4listINS0_4test24movable_and_copyable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !6420 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !6421 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i, %i.c
  br i1 %i.f, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_SM_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_11
begin_hunk_12_@_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6insertINS_13move_iteratorIPS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !325
  store i32 %i.p, ptr %i.o, align 4, !tbaa !325
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !6743 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !6743
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !6743
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !6743
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !6743
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !6743
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !6743
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIS3_NSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj1EEESZ_E5valueEEENSV_13enable_if_natEE4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.179") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !329    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !327
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !325
  store i32 %i.d, ptr %i.c, align 4, !tbaa !325
  %i.e = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162, !noalias !6748 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !6748
  store ptr %i.a, ptr %i.b, align 8, !tbaa !161, !noalias !6748
  store ptr %i.b, ptr %i.g, align 8, !tbaa !162, !noalias !6748
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !noalias !6748
  %i.j = load i64, ptr %1, align 8, !tbaa !165, !noalias !6748
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %1, align 8, !tbaa !165, !noalias !6748
  store ptr %i.b, ptr %0, align 8, !tbaa !329
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !325
  store i32 %i.p, ptr %i.o, align 4, !tbaa !325
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !6749 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !6749
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !6749
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !6749
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !6749
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !6749
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !6749
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !6755 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1718.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not1718.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.021.i.i = phi i64 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.012.020.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.019.i.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !325
  %i.g = load i32, ptr %i.e, align 4, !tbaa !325
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.019.i.i, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !6756 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !6756
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !6756
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !6756
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !6756
  store i32 -2147483648, ptr %i.e, align 8, !tbaa !325, !noalias !6756
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !6756
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !6756
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.019.i.i, i64 noundef 24) #28, !noalias !6756
  %i.q = add i64 %.021.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.020.i.i, %bb.c ], [ %.sroa.06.019.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %i.q, %bb.c ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not17.i.i = icmp eq ptr %i.i, %i.a
  br i1 %.not17.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !6754

_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit: ; preds = %bb.d, %bb.a, %bb.b
  %.2.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1.i.i, %bb.d ]
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !6757

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !6758

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !6759

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !6760

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !6774 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !6774
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !6774
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !6774 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !325, !noalias !6774
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !6774
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !6774
  tail call void @_ZdlPvm(ptr noundef %.09.i.i.i.i, i64 noundef 24) #28, !noalias !6774
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !6774
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !6774
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !6775 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !325, !noalias !6775
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !6775
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !6775
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !6776 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !6776
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !6776
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !6776
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !6776
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !6776
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !6776
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !6775 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !325, !noalias !6775
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !6775
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !170, !noalias !6775
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !6777 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !6777
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !6777
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !6777
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !6777
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !6777
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !6777
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !6773

_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test12copyable_intESaIS3_EE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !6790 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6792)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !6793
  store ptr %i.g, ptr %.sroa.0, align 8, !tbaa !327, !alias.scope !6794
  %.not1.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0, %bb.b ]
  %i.h = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !325
  %i.l = load i32, ptr %i.j, align 4, !tbaa !325
  %i.m = icmp eq i32 %i.k, %i.l                   ; 3 uses
  br i1 %i.m, label %bb.c, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i, !llvm.loop !96

_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerneERKNS0_4listINS0_4test12copyable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intESaIS3_EEES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !6807 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6809)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !6810
  store ptr %i.g, ptr %.sroa.0.i, align 8, !tbaa !327, !alias.scope !6811
  %.not1.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intESaIS3_EEES7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.i, %bb.b ]
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !325
  %i.l = load i32, ptr %i.j, align 4, !tbaa !325
  %.not.not = icmp ne i32 %i.k, %i.l              ; 3 uses
  br i1 %.not.not, label %_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intESaIS3_EEES7_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intESaIS3_EEES7_.exit, label %.lr.ph.i.i.i, !llvm.loop !96

_ZN5boost9containereqERKNS0_4listINS0_4test12copyable_intESaIS3_EEES7_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_4listINS0_4test12copyable_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !6824 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !6825 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i, %i.c
  br i1 %i.f, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test12copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_SM_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_12
begin_hunk_13_@_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6insertINS_13move_iteratorIPS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIS3_NSA_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENSB_ISP_Lb1EEET_SS_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISS_mEE5valueoosr3dtl17is_input_iteratorISS_EE5valueL_ZNST_7is_sameINST_17integral_constantIjLj1EEESX_E5valueEEENST_13enable_if_natEE4typeE:bb.a
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !335
  store i32 %i.p, ptr %i.o, align 4, !tbaa !335
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !335
  %i.q = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !7125 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !7125
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !7125
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !7125
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !7125
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !7125
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !7125
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !7123

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6insertINS_13move_iteratorINS2_22input_iterator_wrapperIPS3_EEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIS3_NSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj1EEESZ_E5valueEEENSV_13enable_if_natEE4typeE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.227") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr %3, ptr %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !339    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !337
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !335
  store i32 %i.d, ptr %i.c, align 4, !tbaa !335
  store i32 0, ptr %3, align 4, !tbaa !335
  %i.e = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162, !noalias !7131 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !162, !noalias !7131
  store ptr %i.a, ptr %i.b, align 8, !tbaa !161, !noalias !7131
  store ptr %i.b, ptr %i.g, align 8, !tbaa !162, !noalias !7131
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !noalias !7131
  %i.j = load i64, ptr %1, align 8, !tbaa !165, !noalias !7131
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %1, align 8, !tbaa !165, !noalias !7131
  store ptr %i.b, ptr %0, align 8, !tbaa !339
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.0 = phi ptr [ %i.l, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %.sroa.012.0, %4
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.012.118 = phi ptr [ %.sroa.012.0, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %.sroa.012.118, align 4, !tbaa !335
  store i32 %i.p, ptr %i.o, align 4, !tbaa !335
  store i32 0, ptr %.sroa.012.118, align 4, !tbaa !335
  %i.q = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !162, !noalias !7132 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !7132
  store ptr %i.a, ptr %i.n, align 8, !tbaa !161, !noalias !7132
  store ptr %i.n, ptr %i.m, align 8, !tbaa !162, !noalias !7132
  store ptr %i.n, ptr %i.s, align 8, !tbaa !161, !noalias !7132
  %i.u = load i64, ptr %1, align 8, !tbaa !165, !noalias !7132
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %1, align 8, !tbaa !165, !noalias !7132
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.118, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %i.w, %4
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !7130

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !7138 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1718.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not1718.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.021.i.i = phi i64 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.012.020.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.019.i.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !335
  %i.g = load i32, ptr %i.e, align 4, !tbaa !335
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.019.i.i, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !7139 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !7139
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !7139
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !7139
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !7139
  store i32 -2147483648, ptr %i.e, align 8, !tbaa !335, !noalias !7139
  %i.o = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !7139
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !7139
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.019.i.i, i64 noundef 24) #28, !noalias !7139
  %i.q = add i64 %.021.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.020.i.i, %bb.c ], [ %.sroa.06.019.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %i.q, %bb.c ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not17.i.i = icmp eq ptr %i.i, %i.a
  br i1 %.not17.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !7137

_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6uniqueINS_9intrusive11value_equalIS3_EEEEmT_.exit: ; preds = %bb.d, %bb.a, %bb.b
  %.2.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1.i.i, %bb.d ]
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 6 uses
  %i.b = icmp ugt i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br i1 %i.b, label %bb.b, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE15priv_try_shrinkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.a, %1                     ; 4 uses
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader25.i.preheader

.preheader25.i.preheader:                         ; preds = %bb.b
  %i.g = add i64 %1, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol

.preheader25.i.prol:                              ; preds = %.preheader25.i.preheader, %.preheader25.i.prol
  %.sroa.020.1.in.i.prol = phi ptr [ %.sroa.020.1.i.prol, %.preheader25.i.prol ], [ %i.c, %.preheader25.i.preheader ]
  %.0.i.prol = phi i64 [ %i.h, %.preheader25.i.prol ], [ %1, %.preheader25.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader25.i.prol ], [ 0, %.preheader25.i.preheader ]
  %.sroa.020.1.i.prol = load ptr, ptr %.sroa.020.1.in.i.prol, align 8, !tbaa !161 ; 3 uses
  %i.h = add i64 %.0.i.prol, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader25.i.prol.loopexit, label %.preheader25.i.prol, !llvm.loop !7140

.preheader25.i.prol.loopexit:                     ; preds = %.preheader25.i.prol, %.preheader25.i.preheader
  %.sroa.020.1.i.lcssa.unr = phi ptr [ poison, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.sroa.020.1.in.i.unr = phi ptr [ %i.c, %.preheader25.i.preheader ], [ %.sroa.020.1.i.prol, %.preheader25.i.prol ]
  %.0.i.unr = phi i64 [ %1, %.preheader25.i.preheader ], [ %i.h, %.preheader25.i.prol ]
  %i.i = icmp ult i64 %1, 7
  br i1 %i.i, label %.loopexit.i, label %.preheader25.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter24 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01129.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %.sroa.020.028.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.j = add i64 %.01129.i.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i.prol, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !7141

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01129.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.sroa.020.028.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = sub i64 %1, %i.a
  %i.n = icmp ugt i64 %i.m, -8
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01129.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.01129.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.020.028.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.020.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = add i64 %.01129.i, -8                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.ac, 0
  br i1 %.not16.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !7142

.preheader25.i:                                   ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i
  %.sroa.020.1.in.i = phi ptr [ %.sroa.020.1.i.7, %.preheader25.i ], [ %.sroa.020.1.in.i.unr, %.preheader25.i.prol.loopexit ]
  %.0.i = phi i64 [ %i.af, %.preheader25.i ], [ %.0.i.unr, %.preheader25.i.prol.loopexit ] ; 2 uses
  %.sroa.020.1.i = load ptr, ptr %.sroa.020.1.in.i, align 8, !tbaa !161
  %.sroa.020.1.i.1 = load ptr, ptr %.sroa.020.1.i, align 8, !tbaa !161
  %.sroa.020.1.i.2 = load ptr, ptr %.sroa.020.1.i.1, align 8, !tbaa !161
  %.sroa.020.1.i.3 = load ptr, ptr %.sroa.020.1.i.2, align 8, !tbaa !161
  %.sroa.020.1.i.4 = load ptr, ptr %.sroa.020.1.i.3, align 8, !tbaa !161
  %.sroa.020.1.i.5 = load ptr, ptr %.sroa.020.1.i.4, align 8, !tbaa !161
  %.sroa.020.1.i.6 = load ptr, ptr %.sroa.020.1.i.5, align 8, !tbaa !161
  %.sroa.020.1.i.7 = load ptr, ptr %.sroa.020.1.i.6, align 8, !tbaa !161 ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.i, 7
  %i.af = add i64 %.0.i, -8
  br i1 %.not.i.7, label %.loopexit.i, label %.preheader25.i, !llvm.loop !7143

.loopexit.i:                                      ; preds = %.preheader25.i.prol.loopexit, %.preheader25.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.020.2.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.020.1.i.lcssa.unr, %.preheader25.i.prol.loopexit ], [ %.sroa.020.1.i.7, %.preheader25.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.020.2.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.2.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162, !noalias !7158 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !162, !noalias !7158
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !161, !noalias !7158
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.020.2.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !161, !noalias !7158 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i32 -2147483648, ptr %i.ak, align 8, !tbaa !335, !noalias !7158
  %i.al = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !7158
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !7158
  tail call void @_ZdlPvm(ptr noundef %.09.i.i.i.i, i64 noundef 24) #28, !noalias !7158
  %i.an = load i64, ptr %0, align 8, !tbaa !165, !noalias !7158
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %0, align 8, !tbaa !165, !noalias !7158
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !7150

_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE15priv_try_shrinkEm.exit: ; preds = %bb.a
  %.not.i2 = icmp eq i64 %1, %i.a
  br i1 %.not.i2, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE15priv_try_shrinkEm.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !7159 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !335, !noalias !7159
  %i.ar = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !7159
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !7159
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !7160 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !162, !noalias !7160
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !161, !noalias !7160
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !162, !noalias !7160
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !161, !noalias !7160
  %i.aw = load i64, ptr %0, align 8, !tbaa !165, !noalias !7160
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !165, !noalias !7160
  %i.ay = xor i64 %i.a, -1
  %i.az = add i64 %1, %i.ay                       ; 2 uses
  %.not1516.i = icmp eq i64 %i.az, 0
  br i1 %.not1516.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.c, %.lr.ph.i3
  %.sroa.011.117.i = phi i64 [ %i.bi, %.lr.ph.i3 ], [ %i.az, %bb.c ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !7159 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 0, ptr %i.bb, align 4, !tbaa !335, !noalias !7159
  %i.bc = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !7159
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !170, !noalias !7159
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !162, !noalias !7161 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !162, !noalias !7161
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !161, !noalias !7161
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !162, !noalias !7161
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !161, !noalias !7161
  %i.bg = load i64, ptr %0, align 8, !tbaa !165, !noalias !7161
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %0, align 8, !tbaa !165, !noalias !7161
  %i.bi = add i64 %.sroa.011.117.i, -1            ; 2 uses
  %.not15.i = icmp eq i64 %i.bi, 0
  br i1 %.not15.i, label %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit, label %.lr.ph.i3, !llvm.loop !7157

_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE6insertINS0_29value_init_construct_iteratorIS3_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS9_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENSA_ISO_Lb1EEET_SR_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISR_mEE5valueoosr3dtl17is_input_iteratorISR_EE5valueL_ZNSS_7is_sameINSS_17integral_constantIjLj1EEESW_E5valueEEENSS_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i3, %.lr.ph.i.i.i.i, %_ZN5boost9container4listINS0_4test17moveconstruct_intESaIS3_EE15priv_try_shrinkEm.exit, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !7174 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7176)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !7177
  store ptr %i.g, ptr %.sroa.0, align 8, !tbaa !337, !alias.scope !7178
  %.not1.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0, %bb.b ]
  %i.h = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !335
  %i.l = load i32, ptr %i.j, align 4, !tbaa !335
  %i.m = icmp eq i32 %i.k, %i.l                   ; 3 uses
  br i1 %i.m, label %bb.c, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit, label %.lr.ph.i.i, !llvm.loop !108

_ZN5boost9intrusive10algo_equalINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_.exit: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerneERKNS0_4listINS0_4test17moveconstruct_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = load i64, ptr %0, align 8, !tbaa !165
  %i.b = load i64, ptr %1, align 8, !tbaa !165
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intESaIS3_EEES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !7191 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7193)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !7194
  store ptr %i.g, ptr %.sroa.0.i, align 8, !tbaa !337, !alias.scope !7195
  %.not1.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not1.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intESaIS3_EEES7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.i, %bb.b ]
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !335
  %i.l = load i32, ptr %i.j, align 4, !tbaa !335
  %.not.not = icmp ne i32 %i.k, %i.l              ; 3 uses
  br i1 %.not.not, label %_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intESaIS3_EEES7_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intESaIS3_EEES7_.exit, label %.lr.ph.i.i.i, !llvm.loop !108

_ZN5boost9containereqERKNS0_4listINS0_4test17moveconstruct_intESaIS3_EEES7_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_4listINS0_4test17moveconstruct_intESaIS3_EEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !7208 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !7209 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i, %i.c
  br i1 %i.f, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test17moveconstruct_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEESK_EEbT_SL_T0_SM_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_13
begin_hunk_14_@_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE6assignINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEEvT_SC_PNS_11move_detail22disable_if_convertibleISC_mvE4typeE:bb.a
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !142

._crit_edge.i.i.i:                                ; preds = %bb.c
  store i64 %i.y, ptr %4, align 8, !tbaa !165, !noalias !7713
  store i64 %i.z, ptr %0, align 8, !tbaa !165, !noalias !7713
  store ptr %.09.i.i.i, ptr %i.o, align 8, !tbaa !187, !noalias !7713
  br label %_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit

_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit: ; preds = %bb.b, %._crit_edge.i.i.i
  store ptr %i.q, ptr %5, align 8, !tbaa !211, !alias.scope !7714, !noalias !7715
  call void @_ZN5boost9container13adaptive_poolINS0_9base_nodeIiNS0_3dtl9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EE21deallocate_individualERNS3_31transform_multiallocation_chainINS3_27basic_multiallocation_chainIS5_EES7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #24, !noalias !7711
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !7711
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dead_on_return %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKNS2_ISG_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIiNSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj2EEENSY_IjLj1EEEE5valueEEENSV_13enable_if_natEE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator.17") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %13, ptr %.sroa.03.0.lcssa, ptr %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE18unique_and_disposeINS3_21value_to_node_compareIS9_NS0_11value_equalIiEEbEENS5_24allocator_node_destroyerINS3_13adaptive_poolIS9_Lm256ELm2ELm1ELj2EEEEEEEmT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !7721 ; 3 uses
  %.not = icmp eq ptr %i.b, %i.a
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not1719 = icmp eq ptr %i.c, %i.a
  br i1 %.not1719, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.022 = phi i64 [ %.1, %bb.g ], [ 0, %bb.b ]    ; 2 uses
  %.sroa.06.021 = phi ptr [ %i.i, %bb.g ], [ %i.c, %bb.b ] ; 5 uses
  %.sroa.012.020 = phi ptr [ %.sroa.012.1, %bb.g ], [ %i.b, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.021, i64 16
  %i.f = load i32, ptr %i.d, align 4, !tbaa !170
  %i.g = load i32, ptr %i.e, align 4, !tbaa !170
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load ptr, ptr %.sroa.06.021, align 8, !tbaa !161 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.021, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162, !noalias !7722 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !161, !noalias !7722
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162, !noalias !7722
  %i.m = load i64, ptr %0, align 8, !tbaa !165, !noalias !7722
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %0, align 8, !tbaa !165, !noalias !7722
  %i.o = load atomic i8, ptr @_ZGVZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj acquire, align 8, !noalias !7722
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEv.exit.i.i.i.i, !prof !191

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj) #24, !noalias !7722
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEv.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, align 8, !tbaa !204, !noalias !7722
  store <2 x ptr> <ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 16)>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 24), align 8, !tbaa !283, !noalias !7722
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 8), i8 0, i64 16, i1 false), !noalias !7722
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 40), align 8, !tbaa !207, !noalias !7722
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 48), align 8, !tbaa !209, !noalias !7722
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9container3dtl34private_adaptive_node_pool_impl_ctINS1_20fake_segment_managerELm2ELm24ELm256ELm1ELm8ELj6EED2Ev, ptr nonnull @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, ptr nonnull @__dso_handle) #24, !noalias !7722 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj) #24, !noalias !7722
  br label %_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEv.exit.i.i.i.i

_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  invoke void @_ZN5boost9container3dtl25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EE15deallocate_nodeEPv(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, ptr noundef nonnull %.sroa.06.021)
          to label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS5_24allocator_node_destroyerINS3_13adaptive_poolIS9_Lm256ELm2ELm1ELj2EEEEEEENS0_13list_iteratorISE_Lb0EEENSL_ISE_Lb1EEET_.exit unwind label %bb.f, !noalias !7722

bb.f:                                             ; preds = %_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEv.exit.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25, !noalias !7722
  unreachable

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS5_24allocator_node_destroyerINS3_13adaptive_poolIS9_Lm256ELm2ELm1ELj2EEEEEEENS0_13list_iteratorISE_Lb0EEENSL_ISE_Lb1EEET_.exit: ; preds = %_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEv.exit.i.i.i.i
  %i.u = add i64 %.022, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS5_24allocator_node_destroyerINS3_13adaptive_poolIS9_Lm256ELm2ELm1ELj2EEEEEEENS0_13list_iteratorISE_Lb0EEENSL_ISE_Lb1EEET_.exit
  %.sroa.012.1 = phi ptr [ %.sroa.012.020, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS5_24allocator_node_destroyerINS3_13adaptive_poolIS9_Lm256ELm2ELm1ELj2EEEEEEENS0_13list_iteratorISE_Lb0EEENSL_ISE_Lb1EEET_.exit ], [ %.sroa.06.021, %.lr.ph ]
  %.1 = phi i64 [ %i.u, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS5_24allocator_node_destroyerINS3_13adaptive_poolIS9_Lm256ELm2ELm1ELj2EEEEEEENS0_13list_iteratorISE_Lb0EEENSL_ISE_Lb1EEET_.exit ], [ %.022, %.lr.ph ] ; 2 uses
  %.not17 = icmp eq ptr %i.i, %i.a
  br i1 %.not17, label %.loopexit, label %.lr.ph, !llvm.loop !7720

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1, %bb.g ]
  ret i64 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE11priv_insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEOi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 2 uses
  %i.a = load atomic i8, ptr @_ZGVZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEE11create_nodeIJiEEEPSC_DpOT_.exit, !prof !191

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEE11create_nodeIJiEEEPSC_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, align 8, !tbaa !204
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 24), align 8, !tbaa !205
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 32), align 8, !tbaa !206
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 8), i8 0, i64 16, i1 false)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 40), align 8, !tbaa !207
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, i64 48), align 8, !tbaa !209
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9container3dtl34private_adaptive_node_pool_impl_ctINS1_20fake_segment_managerELm2ELm24ELm256ELm1ELm8ELj6EED2Ev, ptr nonnull @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj) #24
  br label %_ZN5boost9container3dtl17node_alloc_holderINS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEE11create_nodeIJiEEEPSC_DpOT_.exit

_ZN5boost9container3dtl17node_alloc_holderINS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEE11create_nodeIJiEEEPSC_DpOT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef ptr @_ZN5boost9container3dtl25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EE13allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm24ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj) ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %3, align 4, !tbaa !170
  store i32 %i.g, ptr %i.f, align 4, !tbaa !170
  %i.h = load ptr, ptr %2, align 8, !tbaa !213    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7725)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162, !noalias !7725 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !162, !noalias !7725
  store ptr %i.h, ptr %i.e, align 8, !tbaa !161, !noalias !7725
  store ptr %i.e, ptr %i.i, align 8, !tbaa !162, !noalias !7725
  store ptr %i.e, ptr %i.j, align 8, !tbaa !161, !noalias !7725
  %i.l = load i64, ptr %1, align 8, !tbaa !165, !noalias !7725
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %1, align 8, !tbaa !165, !noalias !7725
  store ptr %i.e, ptr %4, align 8, !tbaa !211, !alias.scope !7725
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dead_on_return %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE15priv_try_shrinkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::dtl::transform_multiallocation_chain.328", align 8 ; 7 uses
  %3 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %5 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 6 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 4 uses
  %i.b = icmp ugt i64 %i.a, %1                    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !211, !alias.scope !7746, !noalias !7747
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dead_on_return %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.d = sub nuw i64 %i.a, %1                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %storemerge23 = load ptr, ptr %6, align 8, !tbaa !175 ; 3 uses
  %.not1624 = icmp eq i64 %i.d, 0
  br i1 %.not1624, label %.loopexit17.sink.split, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %.preheader
  %xtraiter44 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph27.prol.loopexit, label %.lr.ph27.prol

.lr.ph27.prol:                                    ; preds = %.lr.ph27.preheader, %.lr.ph27.prol
  %storemerge26.prol = phi ptr [ %storemerge.prol, %.lr.ph27.prol ], [ %storemerge23, %.lr.ph27.preheader ]
  %.01125.prol = phi i64 [ %i.g, %.lr.ph27.prol ], [ %i.d, %.lr.ph27.preheader ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph27.prol ], [ 0, %.lr.ph27.preheader ]
  %i.g = add i64 %.01125.prol, -1                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge26.prol, i64 8
  %storemerge.prol = load ptr, ptr %i.h, align 8, !tbaa !175 ; 3 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph27.prol.loopexit, label %.lr.ph27.prol, !llvm.loop !7730

.lr.ph27.prol.loopexit:                           ; preds = %.lr.ph27.prol, %.lr.ph27.preheader
  %storemerge.lcssa.unr = phi ptr [ poison, %.lr.ph27.preheader ], [ %storemerge.prol, %.lr.ph27.prol ]
  %storemerge26.unr = phi ptr [ %storemerge23, %.lr.ph27.preheader ], [ %storemerge.prol, %.lr.ph27.prol ]
  %.01125.unr = phi i64 [ %i.d, %.lr.ph27.preheader ], [ %i.g, %.lr.ph27.prol ]
  %i.i = sub i64 %1, %i.a
  %i.j = icmp ugt i64 %i.i, -8
  br i1 %i.j, label %.loopexit17.sink.split, label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.prol.loopexit, %.lr.ph27
  %storemerge26 = phi ptr [ %storemerge.7, %.lr.ph27 ], [ %storemerge26.unr, %.lr.ph27.prol.loopexit ]
  %.01125 = phi i64 [ %i.r, %.lr.ph27 ], [ %.01125.unr, %.lr.ph27.prol.loopexit ]
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge26, i64 8
  %storemerge = load ptr, ptr %i.k, align 8, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %storemerge.1 = load ptr, ptr %i.l, align 8, !tbaa !175
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge.1, i64 8
  %storemerge.2 = load ptr, ptr %i.m, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge.2, i64 8
  %storemerge.3 = load ptr, ptr %i.n, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge.3, i64 8
  %storemerge.4 = load ptr, ptr %i.o, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge.4, i64 8
  %storemerge.5 = load ptr, ptr %i.p, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge.5, i64 8
  %storemerge.6 = load ptr, ptr %i.q, align 8, !tbaa !175
  %i.r = add i64 %.01125, -8                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge.6, i64 8
  %storemerge.7 = load ptr, ptr %i.s, align 8, !tbaa !175 ; 2 uses
  %.not16.7 = icmp eq i64 %i.r, 0
  br i1 %.not16.7, label %.loopexit17.sink.split, label %.lr.ph27, !llvm.loop !7731

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !7748)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !7749
  store ptr %i.t, ptr %4, align 8, !tbaa !211, !alias.scope !7748, !noalias !7750
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = load ptr, ptr %8, align 8, !tbaa !213    ; 3 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not19 = icmp eq i64 %1, 0
  br i1 %.not19, label %.loopexit17, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.020.prol = phi i64 [ %i.w, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ]
  %i.v = phi ptr [ %i.x, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = add i64 %.020.prol, -1                   ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !161  ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !7736

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa43.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.020.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp ult i64 %1, 8
  br i1 %i.y, label %.loopexit17.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.020 = phi i64 [ %i.ah, %.lr.ph ], [ %.020.unr, %.lr.ph.prol.loopexit ]
  %i.z = phi ptr [ %i.ai, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !161
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !161
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !161
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !161
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161
  %i.ah = add i64 %.020, -8                       ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !161 ; 2 uses
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %.loopexit17.sink.split, label %.lr.ph, !llvm.loop !7737

.loopexit17.sink.split:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph27.prol.loopexit, %.lr.ph27, %.preheader
  %.lcssa37.sink = phi ptr [ %storemerge.7, %.lr.ph27 ], [ %storemerge23, %.preheader ], [ %storemerge.lcssa.unr, %.lr.ph27.prol.loopexit ], [ %.lcssa43.unr, %.lr.ph.prol.loopexit ], [ %i.ai, %.lr.ph ]
  store ptr %.lcssa37.sink, ptr %7, align 8, !tbaa !213
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.sink.split, %bb.c
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %7) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !7751)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !7752
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false), !noalias !7752
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !187, !noalias !7752
  %i.al = load ptr, ptr %9, align 8, !tbaa !213, !noalias !7752 ; 3 uses
  %i.am = load ptr, ptr %10, align 8, !tbaa !213, !noalias !7752 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7753)
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit17
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !162, !noalias !7754 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !162, !noalias !7754
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !161, !noalias !7754
  %.promoted8.i.i = load i64, ptr %0, align 8, !tbaa !165, !noalias !7754
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %i.aq = phi i64 [ %.promoted8.i.i, %.lr.ph.i.i.i ], [ %i.av, %bb.d ]
  %i.ar = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.au, %bb.d ]
  %.0910.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.09.i.i.i, %bb.d ] ; 2 uses
  %.09.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.as, %bb.d ] ; 5 uses
  %i.as = load ptr, ptr %.09.i.i.i, align 8, !tbaa !161, !noalias !7754 ; 2 uses
  %i.at = load ptr, ptr %.0910.i.i.i, align 8, !tbaa !188, !noalias !7754
  store ptr %i.at, ptr %.09.i.i.i, align 8, !tbaa !188, !noalias !7754
  store ptr %.09.i.i.i, ptr %.0910.i.i.i, align 8, !tbaa !188, !noalias !7754
  %i.au = add i64 %i.ar, 1                        ; 2 uses
  %i.av = add i64 %i.aq, -1                       ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.am
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.d, !llvm.loop !142

._crit_edge.i.i.i:                                ; preds = %bb.d
  store i64 %i.au, ptr %2, align 8, !tbaa !165, !noalias !7754
  store i64 %i.av, ptr %0, align 8, !tbaa !165, !noalias !7754
  store ptr %.09.i.i.i, ptr %i.ak, align 8, !tbaa !187, !noalias !7754
  br label %_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit

_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit: ; preds = %.loopexit17, %._crit_edge.i.i.i
  store ptr %i.am, ptr %3, align 8, !tbaa !211, !alias.scope !7755, !noalias !7756
  call void @_ZN5boost9container13adaptive_poolINS0_9base_nodeIiNS0_3dtl9list_hookIPvEELb0EEELm256ELm2ELm1ELj2EE21deallocate_individualERNS3_31transform_multiallocation_chainINS3_27basic_multiallocation_chainIS5_EES7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #24, !noalias !7752
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !7752
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dead_on_return %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container4listIiNS2_13adaptive_poolIiLm256ELm2ELm1ELj2EEEEEJRS6_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %3 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %i.a, align 8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.b, ptr %4, align 8, !tbaa !211, !alias.scope !7773, !noalias !7774
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !7775
  call void @llvm.experimental.noalias.scope.decl(metadata !7776)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !7777
  store ptr %i.e, ptr %3, align 8, !tbaa !211, !alias.scope !7776, !noalias !7778
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dead_on_return %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !7775
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !7779
  store ptr %i.d, ptr %2, align 8, !tbaa !211, !alias.scope !7780, !noalias !7781
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dead_on_return %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !7779
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE6insertINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS7_ISL_Lb0EEESM_T_SO_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISO_mEE5valuentoosr3dtl17is_input_iteratorISO_EE5valueL_ZNSP_7is_sameINSP_17integral_constantIjLj2EEENSS_IjLj1EEEE5valueEEENSP_13enable_if_natEE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator.17") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef null)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #28
  resume { ptr, i32 } %i.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.a, ptr %0, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listIiNS0_13adaptive_poolIiLm256ELm2ELm1ELj2EEEE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb0EEEEEvT_SN_PNS_11move_detail22disable_if_convertibleISN_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::dtl::transform_multiallocation_chain.328", align 8 ; 7 uses
  %5 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %6 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %7 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 6 uses
  %9 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 6 uses
  %10 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  %13 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7799)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !7800
  store ptr %i.b, ptr %7, align 8, !tbaa !211, !alias.scope !7799, !noalias !7801
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dead_on_return %7) #24
end_hunk_14
begin_hunk_15_@_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE6assignINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEEvT_SC_PNS_11move_detail22disable_if_convertibleISC_mvE4typeE:bb.a

..critedge_crit_edge:                             ; preds = %.lr.ph
  store ptr %i.i, ptr %11, align 8, !tbaa !213
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %.sroa.03.0.lcssa = phi ptr [ %i.j, %..critedge_crit_edge ], [ %1, %bb.a ] ; 3 uses
  %i.m = icmp eq ptr %.sroa.03.0.lcssa, %2
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.critedge
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKNS2_ISG_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %11) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKNS2_ISG_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.experimental.noalias.scope.decl(metadata !8416)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !8417
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 16, i1 false), !noalias !8417
  store ptr %i.n, ptr %i.o, align 8, !tbaa !187, !noalias !8417
  %i.p = load ptr, ptr %13, align 8, !tbaa !213, !noalias !8417 ; 3 uses
  %i.q = load ptr, ptr %14, align 8, !tbaa !213, !noalias !8417 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8418)
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !162, !noalias !8419 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !162, !noalias !8419
  store ptr %i.q, ptr %i.s, align 8, !tbaa !161, !noalias !8419
  %.promoted8.i.i = load i64, ptr %0, align 8, !tbaa !165, !noalias !8419
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.u = phi i64 [ %.promoted8.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ]
  %i.v = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.y, %bb.c ]
  %.0910.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %.09.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.w = load ptr, ptr %.09.i.i.i, align 8, !tbaa !161, !noalias !8419 ; 2 uses
  %i.x = load ptr, ptr %.0910.i.i.i, align 8, !tbaa !188, !noalias !8419
  store ptr %i.x, ptr %.09.i.i.i, align 8, !tbaa !188, !noalias !8419
  store ptr %.09.i.i.i, ptr %.0910.i.i.i, align 8, !tbaa !188, !noalias !8419
  %i.y = add i64 %i.v, 1                          ; 2 uses
  %i.z = add i64 %i.u, -1                         ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.q
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !146

._crit_edge.i.i.i:                                ; preds = %bb.c
  store i64 %i.y, ptr %7, align 8, !tbaa !165, !noalias !8419
  store i64 %i.z, ptr %0, align 8, !tbaa !165, !noalias !8419
  store ptr %.09.i.i.i, ptr %i.o, align 8, !tbaa !187, !noalias !8419
  br label %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit

_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit: ; preds = %bb.b, %._crit_edge.i.i.i
  store ptr %i.q, ptr %8, align 8, !tbaa !211, !alias.scope !8420, !noalias !8421
  call void @_ZN5boost9container14node_allocatorINS0_9base_nodeIiNS0_3dtl9list_hookIPvEELb0EEELm256ELm2EE21deallocate_individualERNS3_31transform_multiallocation_chainINS3_27basic_multiallocation_chainIS5_EES7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #24, !noalias !8417
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !8417
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dead_on_return %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKNS2_ISG_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !8422)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.aa = load ptr, ptr %16, align 8, !tbaa !213, !noalias !8422 ; 4 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !211, !noalias !8422
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !8422
  %i.ab = call noundef ptr @_ZN5boost9container14node_allocatorINS0_9base_nodeIiNS0_3dtl9list_hookIPvEELb0EEELm256ELm2EE12allocate_oneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %.sroa.03.0.lcssa, align 4, !tbaa !170, !noalias !8422
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !170
  call void @llvm.experimental.noalias.scope.decl(metadata !8423)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !162, !noalias !8423 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !162, !noalias !8423
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !161, !noalias !8423
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !162, !noalias !8423
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !161, !noalias !8423
  %i.ah = load i64, ptr %0, align 8, !tbaa !165, !noalias !8424
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %0, align 8, !tbaa !165, !noalias !8424
  store ptr %i.ab, ptr %6, align 8, !tbaa !211, !alias.scope !8423, !noalias !8422
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dead_on_return %6) #24
  %i.aj = load ptr, ptr %5, align 8, !tbaa !213, !noalias !8422
  store ptr %i.aj, ptr %17, align 8, !tbaa !213, !alias.scope !8422
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !8422
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 4 ; 2 uses
  %.not1314.i = icmp eq ptr %i.ak, %2
  br i1 %.not1314.i, label %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIiNSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj2EEENSY_IjLj1EEEE5valueEEENSV_13enable_if_natEE4typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.09.115.i = phi ptr [ %i.as, %.lr.ph.i ], [ %i.ak, %bb.d ] ; 2 uses
  %i.al = call noundef ptr @_ZN5boost9container14node_allocatorINS0_9base_nodeIiNS0_3dtl9list_hookIPvEELb0EEELm256ELm2EE12allocate_oneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %.sroa.09.115.i, align 4, !tbaa !170, !noalias !8422
  store i32 %i.an, ptr %i.am, align 4, !tbaa !170
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !162, !noalias !8425 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !162, !noalias !8425
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !161, !noalias !8425
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !162, !noalias !8425
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !161, !noalias !8425
  %i.aq = load i64, ptr %0, align 8, !tbaa !165, !noalias !8426
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %0, align 8, !tbaa !165, !noalias !8426
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.09.115.i, i64 4 ; 2 uses
  %.not13.i = icmp eq ptr %i.as, %2
  br i1 %.not13.i, label %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIiNSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj2EEENSY_IjLj1EEEE5valueEEENSV_13enable_if_natEE4typeE.exit, label %.lr.ph.i, !llvm.loop !144

_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIiNSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj2EEENSY_IjLj1EEEE5valueEEENSV_13enable_if_natEE4typeE.exit: ; preds = %.lr.ph.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE6insertINS_13move_iteratorINS0_4test22input_iterator_wrapperIPiEEEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINSE_8bhtraitsINS0_9base_nodeIiNSC_9list_hookIPvEELb0EEENSE_16list_node_traitsISJ_EELNSE_14link_mode_typeE0ENSE_7dft_tagELj1EEELb0EEELb0EEENSD_ISR_Lb1EEET_SU_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISU_mEE5valueoosr3dtl17is_input_iteratorISU_EE5valueL_ZNSV_7is_sameINSV_17integral_constantIjLj2EEENSY_IjLj1EEEE5valueEEENSV_13enable_if_natEE4typeE.exit, %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE11priv_insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEOi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 2 uses
  %i.a = tail call noundef ptr @_ZN5boost9container14node_allocatorINS0_9base_nodeIiNS0_3dtl9list_hookIPvEELb0EEELm256ELm2EE12allocate_oneEv(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %3, align 4, !tbaa !170
  store i32 %i.c, ptr %i.b, align 4, !tbaa !170
  %i.d = load ptr, ptr %2, align 8, !tbaa !213    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8429)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162, !noalias !8429 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !162, !noalias !8429
  store ptr %i.d, ptr %i.a, align 8, !tbaa !161, !noalias !8429
  store ptr %i.a, ptr %i.e, align 8, !tbaa !162, !noalias !8429
  store ptr %i.a, ptr %i.f, align 8, !tbaa !161, !noalias !8429
  %i.h = load i64, ptr %1, align 8, !tbaa !165, !noalias !8429
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %1, align 8, !tbaa !165, !noalias !8429
  store ptr %i.a, ptr %4, align 8, !tbaa !211, !alias.scope !8429
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dead_on_return %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE15priv_try_shrinkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::dtl::transform_multiallocation_chain.328", align 8 ; 7 uses
  %3 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %5 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 6 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !165    ; 4 uses
  %i.b = icmp ugt i64 %i.a, %1                    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !211, !alias.scope !8450, !noalias !8451
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dead_on_return %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.d = sub nuw i64 %i.a, %1                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.e = lshr i64 %i.a, 1
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %storemerge23 = load ptr, ptr %6, align 8, !tbaa !175 ; 3 uses
  %.not1624 = icmp eq i64 %i.d, 0
  br i1 %.not1624, label %.loopexit17.sink.split, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %.preheader
  %xtraiter44 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph27.prol.loopexit, label %.lr.ph27.prol

.lr.ph27.prol:                                    ; preds = %.lr.ph27.preheader, %.lr.ph27.prol
  %storemerge26.prol = phi ptr [ %storemerge.prol, %.lr.ph27.prol ], [ %storemerge23, %.lr.ph27.preheader ]
  %.01125.prol = phi i64 [ %i.g, %.lr.ph27.prol ], [ %i.d, %.lr.ph27.preheader ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph27.prol ], [ 0, %.lr.ph27.preheader ]
  %i.g = add i64 %.01125.prol, -1                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge26.prol, i64 8
  %storemerge.prol = load ptr, ptr %i.h, align 8, !tbaa !175 ; 3 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph27.prol.loopexit, label %.lr.ph27.prol, !llvm.loop !8434

.lr.ph27.prol.loopexit:                           ; preds = %.lr.ph27.prol, %.lr.ph27.preheader
  %storemerge.lcssa.unr = phi ptr [ poison, %.lr.ph27.preheader ], [ %storemerge.prol, %.lr.ph27.prol ]
  %storemerge26.unr = phi ptr [ %storemerge23, %.lr.ph27.preheader ], [ %storemerge.prol, %.lr.ph27.prol ]
  %.01125.unr = phi i64 [ %i.d, %.lr.ph27.preheader ], [ %i.g, %.lr.ph27.prol ]
  %i.i = sub i64 %1, %i.a
  %i.j = icmp ugt i64 %i.i, -8
  br i1 %i.j, label %.loopexit17.sink.split, label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.prol.loopexit, %.lr.ph27
  %storemerge26 = phi ptr [ %storemerge.7, %.lr.ph27 ], [ %storemerge26.unr, %.lr.ph27.prol.loopexit ]
  %.01125 = phi i64 [ %i.r, %.lr.ph27 ], [ %.01125.unr, %.lr.ph27.prol.loopexit ]
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge26, i64 8
  %storemerge = load ptr, ptr %i.k, align 8, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %storemerge.1 = load ptr, ptr %i.l, align 8, !tbaa !175
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge.1, i64 8
  %storemerge.2 = load ptr, ptr %i.m, align 8, !tbaa !175
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge.2, i64 8
  %storemerge.3 = load ptr, ptr %i.n, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge.3, i64 8
  %storemerge.4 = load ptr, ptr %i.o, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge.4, i64 8
  %storemerge.5 = load ptr, ptr %i.p, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge.5, i64 8
  %storemerge.6 = load ptr, ptr %i.q, align 8, !tbaa !175
  %i.r = add i64 %.01125, -8                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge.6, i64 8
  %storemerge.7 = load ptr, ptr %i.s, align 8, !tbaa !175 ; 2 uses
  %.not16.7 = icmp eq i64 %i.r, 0
  br i1 %.not16.7, label %.loopexit17.sink.split, label %.lr.ph27, !llvm.loop !8435

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !8452)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !161, !noalias !8453
  store ptr %i.t, ptr %4, align 8, !tbaa !211, !alias.scope !8452, !noalias !8454
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = load ptr, ptr %8, align 8, !tbaa !213    ; 3 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not19 = icmp eq i64 %1, 0
  br i1 %.not19, label %.loopexit17, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.020.prol = phi i64 [ %i.w, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ]
  %i.v = phi ptr [ %i.x, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = add i64 %.020.prol, -1                   ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !161  ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !8440

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa43.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.020.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp ult i64 %1, 8
  br i1 %i.y, label %.loopexit17.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.020 = phi i64 [ %i.ah, %.lr.ph ], [ %.020.unr, %.lr.ph.prol.loopexit ]
  %i.z = phi ptr [ %i.ai, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !161
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !161
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !161
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !161
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161
  %i.ah = add i64 %.020, -8                       ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !161 ; 2 uses
  %.not.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.7, label %.loopexit17.sink.split, label %.lr.ph, !llvm.loop !8441

.loopexit17.sink.split:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph27.prol.loopexit, %.lr.ph27, %.preheader
  %.lcssa37.sink = phi ptr [ %storemerge.7, %.lr.ph27 ], [ %storemerge23, %.preheader ], [ %storemerge.lcssa.unr, %.lr.ph27.prol.loopexit ], [ %.lcssa43.unr, %.lr.ph.prol.loopexit ], [ %i.ai, %.lr.ph ]
  store ptr %.lcssa37.sink, ptr %7, align 8, !tbaa !213
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.sink.split, %bb.c
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %7) #24
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ERKSH_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !8455)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !8456
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false), !noalias !8456
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !187, !noalias !8456
  %i.al = load ptr, ptr %9, align 8, !tbaa !213, !noalias !8456 ; 3 uses
  %i.am = load ptr, ptr %10, align 8, !tbaa !213, !noalias !8456 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8457)
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i, label %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit17
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !162, !noalias !8458 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !162, !noalias !8458
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !161, !noalias !8458
  %.promoted8.i.i = load i64, ptr %0, align 8, !tbaa !165, !noalias !8458
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %i.aq = phi i64 [ %.promoted8.i.i, %.lr.ph.i.i.i ], [ %i.av, %bb.d ]
  %i.ar = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.au, %bb.d ]
  %.0910.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.09.i.i.i, %bb.d ] ; 2 uses
  %.09.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.as, %bb.d ] ; 5 uses
  %i.as = load ptr, ptr %.09.i.i.i, align 8, !tbaa !161, !noalias !8458 ; 2 uses
  %i.at = load ptr, ptr %.0910.i.i.i, align 8, !tbaa !188, !noalias !8458
  store ptr %i.at, ptr %.09.i.i.i, align 8, !tbaa !188, !noalias !8458
  store ptr %.09.i.i.i, ptr %.0910.i.i.i, align 8, !tbaa !188, !noalias !8458
  %i.au = add i64 %i.ar, 1                        ; 2 uses
  %i.av = add i64 %i.aq, -1                       ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.am
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.d, !llvm.loop !146

._crit_edge.i.i.i:                                ; preds = %bb.d
  store i64 %i.au, ptr %2, align 8, !tbaa !165, !noalias !8458
  store i64 %i.av, ptr %0, align 8, !tbaa !165, !noalias !8458
  store ptr %.09.i.i.i, ptr %i.ak, align 8, !tbaa !187, !noalias !8458
  br label %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit

_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit: ; preds = %.loopexit17, %._crit_edge.i.i.i
  store ptr %i.am, ptr %3, align 8, !tbaa !211, !alias.scope !8459, !noalias !8460
  call void @_ZN5boost9container14node_allocatorINS0_9base_nodeIiNS0_3dtl9list_hookIPvEELb0EEELm256ELm2EE21deallocate_individualERNS3_31transform_multiallocation_chainINS3_27basic_multiallocation_chainIS5_EES7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #24, !noalias !8456
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !8456
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dead_on_return %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEESL_.exit
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container4listIiNS2_14node_allocatorIiLm256ELm2EEEEEJRS6_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.335") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %3 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %4 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %i.a, align 8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.b, ptr %4, align 8, !tbaa !211, !alias.scope !8477, !noalias !8478
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dead_on_return %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !8479
  call void @llvm.experimental.noalias.scope.decl(metadata !8480)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !8481
  store ptr %i.e, ptr %3, align 8, !tbaa !211, !alias.scope !8480, !noalias !8482
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dead_on_return %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !8479
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !8483
  store ptr %i.d, ptr %2, align 8, !tbaa !211, !alias.scope !8484, !noalias !8485
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb1EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dead_on_return %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !8483
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE6insertINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS7_ISL_Lb0EEESM_T_SO_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISO_mEE5valuentoosr3dtl17is_input_iteratorISO_EE5valueL_ZNSP_7is_sameINSP_17integral_constantIjLj2EEENSS_IjLj1EEEE5valueEEENSP_13enable_if_natEE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator.17") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef null)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_14node_allocatorIiLm256ELm2EEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #28
  resume { ptr, i32 } %i.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.a, ptr %0, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4listIiNS0_14node_allocatorIiLm256ELm2EEEE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb0EEEEEvT_SN_PNS_11move_detail22disable_if_convertibleISN_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::dtl::transform_multiallocation_chain.328", align 8 ; 7 uses
  %5 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %6 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %7 = alloca %"class.boost::intrusive::list_iterator.14", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 6 uses
  %9 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 6 uses
  %10 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  %13 = alloca %"class.boost::container::dtl::iterator_from_iiterator.16", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::dtl::iterator_from_iiterator.17", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8503)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !8504
  store ptr %i.b, ptr %7, align 8, !tbaa !211, !alias.scope !8503, !noalias !8505
  call void @_ZN5boost9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS3_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS3_16list_node_traitsIS8_EELNS3_14link_mode_typeE0ENS3_7dft_tagELj1EEELb0EEELb0EEC1ESG_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dead_on_return %7) #24
end_hunk_15
