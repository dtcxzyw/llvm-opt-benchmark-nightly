Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/map_test?download=true
inline.NumInlined: 25391
inline.NumDeleted: 5895
loop-unroll.NumCompletelyUnrolled: 461
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 468
begin_hunk_0

$_ZTSN5boost9container3mapINS0_4test10EmplaceIntES3_St4lessIS3_EvvEE = comdat any

$_ZTSN5boost9container8multimapINS0_4test10EmplaceIntES3_St4lessIS3_EvvEE = comdat any

$_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeISt4pairIKccENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEELb1ELb1ELb1ELb1ELb1EE10unique_id_E = comdat any

$_ZN5boost9container4test26propagation_test_allocatorISt4pairIKccELb1ELb1ELb1ELb1ELb1EE10unique_id_E = comdat any

$_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeISt4pairIKccENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEELb0ELb0ELb0ELb0ELb1EE10unique_id_E = comdat any

$_ZN5boost9container4test26propagation_test_allocatorISt4pairIKccELb0ELb0ELb0ELb0ELb1EE10unique_id_E = comdat any

$_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeISt4pairIKccENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEELb0ELb0ELb0ELb0ELb0EE10unique_id_E = comdat any

$_ZTIN5boost9container12out_of_rangeE = comdat any

$_ZTSN5boost9container12out_of_rangeE = comdat any

$_ZTVN5boost9container12out_of_rangeE = comdat any

@_ZN5boost9container4test11movable_int5countE = hidden local_unnamed_addr global i32 0, align 4
@_ZN5boost9container4test17moveconstruct_int5countE = hidden local_unnamed_addr global i32 0, align 4
@_ZN5boost9container4test24movable_and_copyable_int5countE = hidden local_unnamed_addr global i32 0, align 4
@_ZN5boost9container4test12copyable_int5countE = hidden local_unnamed_addr global i32 0, align 4
@_ZN5boost9container4test19non_copymovable_int5countE = hidden local_unnamed_addr global i32 0, align 4
@_ZN5boost9container4test24overaligned_copyable_int5countE = hidden local_unnamed_addr global i32 0, align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [56 x i8] c"Error in map_test<std::allocator<void>, red_black_tree>\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Error in map_test<new_allocator<void>, avl_tree>\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Error in map_test<adaptive_pool<void>, scapegoat_tree>\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Error in map_test<new_allocator<void>, splay_tree>\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Error in map_test<new_allocator<void>, red_black_tree>\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Error in map_test<new_allocator<void>, red_black_tree>>, transparent\00", align 1
@_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm32ELm256ELm2ELm1ELm8EEEE13create_objectE = linkonce_odr hidden global %"struct.boost::container::dtl::singleton_default<boost::container::dtl::shared_adaptive_node_pool<32, 256, 2, 1, 8>>::object_creator" zeroinitializer, comdat, align 1
@_ZGVN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm32ELm256ELm2ELm1ELm8EEEE13create_objectE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm32ELm256ELm2ELm1ELm8EEEE13create_objectE), align 8
@_ZN5boost9container4testL12pair_storageE = internal global %"union.boost::move_detail::aligned_struct_wrapper.162" zeroinitializer, align 16
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"No errors detected.\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" error\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" detected.\00", align 1
@_ZZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global %"class.boost::detail::test_result" zeroinitializer, comdat, align 4
@_ZGVZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.12 = private unnamed_addr constant [37 x i8] c"main() should return report_errors()\00", align 1
@_ZTIN5boost9container9bad_allocE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9container9bad_allocE, ptr @_ZTIN5boost9container9exceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost9container9bad_allocE = linkonce_odr dso_local constant [29 x i8] c"N5boost9container9bad_allocE\00", comdat, align 1
@_ZTIN5boost9container9exceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9container9exceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5boost9container9exceptionE = linkonce_odr dso_local constant [29 x i8] c"N5boost9container9exceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.13 = private unnamed_addr constant [35 x i8] c"boost::container::bad_alloc thrown\00", align 1
@_ZTVN5boost9container9bad_allocE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost9container9bad_allocE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5boost9container9bad_allocD0Ev, ptr @_ZNK5boost9container9exception4whatEv] }, comdat, align 8
@.str.14 = private unnamed_addr constant [35 x i8] c"unknown boost::container exception\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Error in construct<MyBoostMap>(MyBoostMap3)\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Error in construct<MyBoostMultiMap>(MyBoostMultiMap3)\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Error in boostmap move constructor\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Error in boostmultimap move constructor\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Error in boostmap move assignment\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Error in boostmultimap move assignment\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Error in boostmap.rebalance()\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Error in boostmultimap.rebalance()\00", align 1
@_ZZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm32ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj = linkonce_odr hidden global %"class.boost::container::dtl::shared_adaptive_node_pool" zeroinitializer, comdat, align 8
@_ZGVZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm32ELm256ELm2ELm1ELm8EEEE8instanceEvE3obj = linkonce_odr hidden global i64 0, comdat, align 8
@.str.23 = private unnamed_addr constant [34 x i8] c"Starting test_emplace_assoc_pair.\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"  Class: \00", align 1
@_ZTSN5boost9container3mapINS0_4test10EmplaceIntES3_St4lessIS3_EvvEE = linkonce_odr hidden constant [64 x i8] c"N5boost9container3mapINS0_4test10EmplaceIntES3_St4lessIS3_EvvEE\00", comdat, align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Error after c.emplace();\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Error after c.emplace(1);\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Error after c.emplace(2, 2);\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"...OK\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Error in first: \00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Error in second: \00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"EmplaceInt: \00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Starting test_emplace_hint_pair.\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Error after c.emplace(it, 1);\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Error after c.emplace(it, 2, 2);\0A\00", align 1
@_ZTSN5boost9container8multimapINS0_4test10EmplaceIntES3_St4lessIS3_EvvEE = linkonce_odr hidden constant [69 x i8] c"N5boost9container8multimapINS0_4test10EmplaceIntES3_St4lessIS3_EvvEE\00", comdat, align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 112\00", align 1
@.str.36 = private unnamed_addr constant [77 x i8] c"/opt-bench/work/boost/boost/libs/container/test/propagate_allocator_test.hpp\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9container4test24test_propagate_allocatorI19boost_container_mapEEbv = private unnamed_addr constant [89 x i8] c"bool boost::container::test::test_propagate_allocator() [Selector = boost_container_map]\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"c.get_stored_allocator().ctr_copies_ == 0\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"c.get_stored_allocator().ctr_moves_ == 0\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"c.get_stored_allocator().assign_copies_ == 0\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"c.get_stored_allocator().assign_moves_ == 0\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"c.get_stored_allocator().swaps_ == 0\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 223\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 223\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"c2.get_stored_allocator().ctr_copies_ >= 1\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"c2.get_stored_allocator().assign_copies_ == 0\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"c2.get_stored_allocator().assign_moves_ == 0\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"c2.get_stored_allocator().swaps_ == 0\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 334\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 334\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"c2.get_stored_allocator().ctr_copies_ == 0\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"c2.get_stored_allocator().ctr_moves_ > 0\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 445\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 446\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 445\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"c2.get_stored_allocator().ctr_moves_ == 0\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"c2.get_stored_allocator().assign_copies_ == 1\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 556\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 557\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 557\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"c.get_stored_allocator().assign_moves_ == 1\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"c.get_stored_allocator().id_ == 667\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 668\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"c2.get_stored_allocator().swaps_ == 1\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"c.get_stored_allocator().swaps_ == 1\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"c2.get_stored_allocator().id_ == 224\00", align 1
@_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeISt4pairIKccENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEELb1ELb1ELb1ELb1ELb1EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@.str.66 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"): test '\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"' failed in function '\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE19boost_container_mapEEEEvv = private unnamed_addr constant [247 x i8] c"void boost::container::test::test_propagate_allocator_allocator_arg() [Container = boost::container::test::alloc_propagate_wrapper<char, boost::container::test::propagation_test_allocator<char, true, true, true, true, true>, boost_container_map>]\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"c.get_stored_allocator().ctr_copies_ > 0\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"c2.get_stored_allocator().ctr_copies_ > 0\00", align 1
@_ZN5boost9container4test26propagation_test_allocatorISt4pairIKccELb1ELb1ELb1ELb1ELb1EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeISt4pairIKccENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEELb0ELb0ELb0ELb0ELb1EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE19boost_container_mapEEEEvv = private unnamed_addr constant [251 x i8] c"void boost::container::test::test_propagate_allocator_allocator_arg() [Container = boost::container::test::alloc_propagate_wrapper<char, boost::container::test::propagation_test_allocator<char, false, false, false, false, true>, boost_container_map>]\00", align 1
@_ZN5boost9container4test26propagation_test_allocatorISt4pairIKccELb0ELb0ELb0ELb0ELb1EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@_ZN5boost9container4test26propagation_test_allocatorINS0_9base_nodeISt4pairIKccENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEELb0ELb0ELb0ELb0ELb0EE10unique_id_E = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@__PRETTY_FUNCTION__._ZN5boost9container4test24test_propagate_allocatorI24boost_container_multimapEEbv = private unnamed_addr constant [94 x i8] c"bool boost::container::test::test_propagate_allocator() [Selector = boost_container_multimap]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE24boost_container_multimapEEEEvv = private unnamed_addr constant [252 x i8] c"void boost::container::test::test_propagate_allocator_allocator_arg() [Container = boost::container::test::alloc_propagate_wrapper<char, boost::container::test::propagation_test_allocator<char, true, true, true, true, true>, boost_container_multimap>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE24boost_container_multimapEEEEvv = private unnamed_addr constant [256 x i8] c"void boost::container::test::test_propagate_allocator_allocator_arg() [Container = boost::container::test::alloc_propagate_wrapper<char, boost::container::test::propagation_test_allocator<char, false, false, false, false, true>, boost_container_multimap>]\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"b != e\00", align 1
@.str.73 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/boost/boost/libs/container/test/../../intrusive/test/iterator_test.hpp\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_9container3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEvT_SO_ = private unnamed_addr constant [455 x i8] c"void boost::intrusive::test::test_iterator_operations(I, I) [I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>]\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"!(b == e)\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_9container3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEvT_SO_ = private unnamed_addr constant [454 x i8] c"void boost::intrusive::test::test_iterator_operations(I, I) [I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_7movelib16reverse_iteratorINS_9container3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS5_9base_nodeISt4pairIKiiENS6_19intrusive_tree_hookIPvLNS5_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISF_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEEEvT_SR_ = private unnamed_addr constant [489 x i8] c"void boost::intrusive::test::test_iterator_operations(I, I) [I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_7movelib16reverse_iteratorINS_9container3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS5_9base_nodeISt4pairIKiiENS6_19intrusive_tree_hookIPvLNS5_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISF_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEEEvT_SR_ = private unnamed_addr constant [488 x i8] c"void boost::intrusive::test::test_iterator_operations(I, I) [I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>>]\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"it == it2++\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container3mapIiiSt4lessIiEvvEENS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS8_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISH_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEvRKT_T0_SV_ = private unnamed_addr constant [522 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::map<int, int>, I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>]\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"&(++ittmp) == iaddr\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"ittmp == it2\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"i == c.size()\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"it == e\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container3mapIiiSt4lessIiEvvEENS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS8_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISH_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEvRKT_T0_SV_ = private unnamed_addr constant [521 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::map<int, int>, I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container3mapIiiSt4lessIiEvvEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENSA_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISJ_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEEEvRKT_T0_SY_ = private unnamed_addr constant [556 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::map<int, int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container3mapIiiSt4lessIiEvvEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENSA_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISJ_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEEEvRKT_T0_SY_ = private unnamed_addr constant [555 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::map<int, int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>>]\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"it == it2--\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container3mapIiiSt4lessIiEvvEENS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS8_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISH_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEvRKT_T0_SV_ = private unnamed_addr constant [528 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::map<int, int>, I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>]\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"&(--ittmp) == iaddr\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"(++ittmp) == it\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"it == b\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container3mapIiiSt4lessIiEvvEENS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS8_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISH_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEvRKT_T0_SV_ = private unnamed_addr constant [527 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::map<int, int>, I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container3mapIiiSt4lessIiEvvEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENSA_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISJ_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEEEvRKT_T0_SY_ = private unnamed_addr constant [562 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::map<int, int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container3mapIiiSt4lessIiEvvEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENSA_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISJ_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEEEvRKT_T0_SY_ = private unnamed_addr constant [561 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::map<int, int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container8multimapIiiSt4lessIiEvvEENS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS8_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISH_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEvRKT_T0_SV_ = private unnamed_addr constant [527 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::multimap<int, int>, I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container8multimapIiiSt4lessIiEvvEENS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS8_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISH_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEvRKT_T0_SV_ = private unnamed_addr constant [526 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::multimap<int, int>, I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container8multimapIiiSt4lessIiEvvEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENSA_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISJ_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEEEvRKT_T0_SY_ = private unnamed_addr constant [561 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::multimap<int, int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container8multimapIiiSt4lessIiEvvEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENSA_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISJ_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEEEvRKT_T0_SY_ = private unnamed_addr constant [560 x i8] c"void boost::intrusive::test::test_iterator_forward_functions(const C &, const I, const I) [C = boost::container::multimap<int, int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container8multimapIiiSt4lessIiEvvEENS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS8_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISH_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEvRKT_T0_SV_ = private unnamed_addr constant [533 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::multimap<int, int>, I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container8multimapIiiSt4lessIiEvvEENS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENS8_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISH_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEvRKT_T0_SV_ = private unnamed_addr constant [532 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::multimap<int, int>, I = boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container8multimapIiiSt4lessIiEvvEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENSA_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISJ_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb0EEEEEEEvRKT_T0_SY_ = private unnamed_addr constant [567 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::multimap<int, int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, false>>]\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container8multimapIiiSt4lessIiEvvEENS_7movelib16reverse_iteratorINS3_3dtl23iterator_from_iiteratorINS0_13tree_iteratorINS0_8bhtraitsINS3_9base_nodeISt4pairIKiiENSA_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISJ_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEELb1EEEEEEEvRKT_T0_SY_ = private unnamed_addr constant [566 x i8] c"void boost::intrusive::test::test_iterator_bidirectional_functions(const C &, const I, const I) [C = boost::container::multimap<int, int>, I = boost::movelib::reverse_iterator<boost::container::dtl::iterator_from_iiterator<boost::intrusive::tree_iterator<boost::intrusive::bhtraits<boost::container::base_node<std::pair<const int, int>, boost::container::dtl::intrusive_tree_hook<void *, boost::container::red_black_tree, true>, true>, boost::intrusive::rbtree_node_traits<void *, true>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 3>, false>, true>>]\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"map::at key not found\00", align 1
@_ZTIN5boost9container12out_of_rangeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9container12out_of_rangeE, ptr @_ZTIN5boost9container9exceptionE }, comdat, align 8
@_ZTSN5boost9container12out_of_rangeE = linkonce_odr dso_local constant [33 x i8] c"N5boost9container12out_of_rangeE\00", comdat, align 1
@_ZTVN5boost9container12out_of_rangeE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost9container12out_of_rangeE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5boost9container12out_of_rangeD0Ev, ptr @_ZNK5boost9container9exception4whatEv] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.6, ptr @_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm32ELm256ELm2ELm1ELm8EEEE13create_objectE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN5boost9container3dtl17singleton_defaultINS1_25shared_adaptive_node_poolILm32ELm256ELm2ELm1ELm8EEEE13create_objectE], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z14node_type_testv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::intrusive::tree_iterator.241", align 8 ; 4 uses
  %1 = alloca %"class.boost::intrusive::tree_iterator.24", align 8 ; 3 uses
  %2 = alloca %"class.boost::intrusive::tree_iterator.241", align 8 ; 4 uses
  %3 = alloca %"class.boost::intrusive::tree_iterator.24", align 8 ; 3 uses
  %4 = alloca %"class.boost::intrusive::tree_iterator.241", align 8 ; 4 uses
  %5 = alloca %"class.boost::intrusive::tree_iterator.24", align 8 ; 3 uses
  %6 = alloca %"class.boost::intrusive::tree_iterator.241", align 8 ; 4 uses
  %7 = alloca %"class.boost::intrusive::tree_iterator.24", align 8 ; 3 uses
  %8 = alloca %"class.boost::intrusive::tree_iterator.225", align 8 ; 4 uses
  %9 = alloca %"class.boost::intrusive::tree_iterator", align 8 ; 3 uses
  %10 = alloca %"struct.boost::intrusive::insert_commit_data_t", align 8 ; 6 uses
  %11 = alloca %"struct.boost::intrusive::detail::key_nodeptr_comp.227", align 8 ; 4 uses
  %12 = alloca %"class.boost::intrusive::tree_iterator.225", align 8 ; 4 uses
  %13 = alloca %"class.boost::intrusive::tree_iterator", align 8 ; 3 uses
  %14 = alloca %"class.boost::container::dtl::iterator_from_iiterator.1", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::dtl::iterator_from_iiterator.1", align 8 ; 4 uses
  %16 = alloca %"class.boost::container::node_handle.223", align 8 ; 7 uses
  %17 = alloca %"struct.boost::container::insert_return_type_base.226", align 8 ; 7 uses
  %18 = alloca %"class.boost::intrusive::tree_iterator.225", align 8 ; 4 uses
  %19 = alloca %"class.boost::intrusive::tree_iterator", align 8 ; 3 uses
  %20 = alloca %"class.boost::container::dtl::iterator_from_iiterator.1", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::node_handle.223", align 8 ; 7 uses
  %22 = alloca %"struct.boost::container::insert_return_type_base.226", align 8 ; 7 uses
  %23 = alloca %"class.boost::intrusive::tree_iterator.225", align 8 ; 4 uses
  %24 = alloca %"class.boost::intrusive::tree_iterator", align 8 ; 3 uses
  %25 = alloca %"class.boost::container::map", align 8 ; 19 uses
  %26 = alloca %"class.boost::container::map", align 8 ; 15 uses
  %27 = alloca %"class.boost::container::test::movable_int", align 4 ; 6 uses
  %28 = alloca %"class.boost::container::test::movable_int", align 4 ; 7 uses
  %29 = alloca %"struct.boost::container::insert_return_type_base", align 8 ; 15 uses
  %30 = alloca %"struct.boost::container::insert_return_type_base", align 8 ; 6 uses
  %31 = alloca %"class.boost::container::dtl::iterator_from_iiterator.1", align 8 ; 2 uses
  %32 = alloca %"class.boost::container::node_handle", align 8 ; 7 uses
  %33 = alloca %"struct.boost::container::insert_return_type_base", align 8 ; 6 uses
  %34 = alloca %"class.boost::container::node_handle", align 8 ; 7 uses
  %35 = alloca %"class.boost::container::multimap", align 8 ; 19 uses
  %36 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %37 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %38 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %39 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %40 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %41 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %42 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %43 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %44 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 4 uses
  %45 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 4 uses
  %46 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 4 uses
  %47 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 4 uses
  %48 = alloca %"class.boost::container::multimap", align 8 ; 17 uses
  %49 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %50 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %51 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 4 uses
  %52 = alloca %"class.boost::container::test::movable_int", align 4 ; 6 uses
  %53 = alloca %"class.boost::container::test::movable_int", align 4 ; 7 uses
  %54 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %55 = alloca %"class.boost::container::node_handle", align 8 ; 16 uses
  %56 = alloca %"class.boost::container::node_handle", align 8 ; 5 uses
  %57 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 5 uses
  %58 = alloca %"class.boost::container::node_handle", align 8 ; 6 uses
  %59 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 5 uses
  %60 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 5 uses
  %61 = alloca %"class.boost::container::node_handle", align 8 ; 7 uses
  %62 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 5 uses
  %63 = alloca %"class.boost::container::dtl::iterator_from_iiterator", align 8 ; 5 uses
  %64 = alloca %"class.boost::container::node_handle", align 8 ; 7 uses
  %65 = alloca %"class.boost::container::map.4", align 8 ; 12 uses
  %66 = alloca %"class.boost::container::multimap.20", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %67 = alloca %"class.boost::container::dtl::iterator_from_iiterator.23", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %68 = alloca %"class.boost::container::dtl::iterator_from_iiterator.23", align 8 ; 4 uses
  %69 = alloca %"class.boost::container::node_handle.27", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.f = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 28 uses
  %i.g = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 8 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 8 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 16, i1 false)
  %i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.j = add i32 %i.i, 6
  store i32 %i.j, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.k = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc unwind label %bb.p     ; 9 uses

.noexc:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 1, ptr %i.l, align 4, !tbaa !184, !noalias !1006
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1006
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 11, ptr %i.n, align 4, !tbaa !184, !noalias !1006
  %i.o = add i32 %i.m, 2
  store i32 %i.o, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1006
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !185, !noalias !1007
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %i.t = or disjoint i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.f, align 8, !tbaa !185, !noalias !1007
  store ptr %i.k, ptr %i.h, align 8, !tbaa !181, !noalias !1007
  store ptr %i.k, ptr %i.g, align 8, !tbaa !180, !noalias !1007
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !185, !noalias !1007
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 1
  %i.z = or disjoint i64 %i.y, %i.v
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !185, !noalias !1007
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !noalias !1007
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #26, !noalias !1007
  %i.ac = load i64, ptr %25, align 8, !tbaa !188, !noalias !1007
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %25, align 8, !tbaa !188, !noalias !1007
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !189, !noalias !1008
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, -2                       ; 3 uses
  %.not29.i.i.i.i95 = icmp eq i64 %i.ag, 0
  br i1 %.not29.i.i.i.i95, label %bb.d, label %.lr.ph.i.i.i.i96

.lr.ph.i.i.i.i96:                                 ; preds = %.noexc
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i96
  %.02631.i.i.i.i97 = phi ptr [ null, %.lr.ph.i.i.i.i96 ], [ %.127.i.i.i.i99, %bb.b ]
  %.02830.i.i.i.i98 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i96 ], [ %i.al, %bb.b ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i98, i64 24
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !184, !noalias !1008
  %i.ak = icmp sgt i32 %i.aj, 2                   ; 4 uses
  %.127.i.i.i.i99 = select i1 %i.ak, ptr %.02631.i.i.i.i97, ptr %.02830.i.i.i.i98 ; 3 uses
  %.in.v.i.i.i.i100 = select i1 %i.ak, i64 8, i64 16
  %.in.i.i.i.i101 = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i98, i64 %.in.v.i.i.i.i100
  %i.al = load ptr, ptr %.in.i.i.i.i101, align 8, !tbaa !185, !noalias !1008 ; 2 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i102, label %._crit_edge.i.i.i.i103, label %bb.b, !llvm.loop !0

._crit_edge.i.i.i.i103:                           ; preds = %bb.b
  %.not18.i.i.i.i104 = icmp eq ptr %.127.i.i.i.i99, null
  br i1 %.not18.i.i.i.i104, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i103
  %i.am = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i99, i64 24
  %i.an = load i32, ptr %i.am, align 4, !tbaa !184, !noalias !1008
  %i.ao = icmp slt i32 %i.an, 2
  br i1 %i.ao, label %bb.d, label %.lr.ph.i.i.i.i116

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i103, %.noexc
  %.0.lcssa.i12.shrunk.i.i.i107 = phi i1 [ %i.ak, %._crit_edge.i.i.i.i103 ], [ %i.ak, %bb.c ], [ true, %.noexc ]
  %.013.lcssa.i11.i.i.i108 = phi ptr [ %.02830.i.i.i.i98, %._crit_edge.i.i.i.i103 ], [ %.02830.i.i.i.i98, %bb.c ], [ %i.f, %.noexc ] ; 6 uses
  %i.ap = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc113 unwind label %bb.q  ; 13 uses

.noexc113:                                        ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 2, ptr %i.aq, align 4, !tbaa !184, !noalias !1009
  %i.ar = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1009
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 12, ptr %i.as, align 4, !tbaa !184, !noalias !1009
  %i.at = add i32 %i.ar, 2
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1009
  %i.au = icmp eq ptr %.013.lcssa.i11.i.i.i108, %i.f ; 2 uses
  br i1 %.0.lcssa.i12.shrunk.i.i.i107, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i111, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i109

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i109: ; preds = %.noexc113
  br i1 %i.au, label %bb.e, label %bb.g

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i111: ; preds = %.noexc113
  br i1 %i.au, label %bb.e, label %.thread.i.i.i112

bb.e:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i111, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i109
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !185, !noalias !1010
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 1
  %i.az = or disjoint i64 %i.ay, %i.av
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !185, !noalias !1010
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !181, !noalias !1010
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !180, !noalias !1010
  br label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114

.thread.i.i.i112:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i111
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i108, i64 8
  store ptr %i.ap, ptr %i.bb, align 8, !tbaa !180, !noalias !1010
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !180, !noalias !1010
  %i.bd = icmp eq ptr %.013.lcssa.i11.i.i.i108, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114

bb.f:                                             ; preds = %.thread.i.i.i112
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !180, !noalias !1010
  br label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114

bb.g:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i109
  %i.be = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i108, i64 16
  store ptr %i.ap, ptr %i.be, align 8, !tbaa !181, !noalias !1010
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !181, !noalias !1010
  %i.bg = icmp eq ptr %.013.lcssa.i11.i.i.i108, %i.bf
  br i1 %i.bg, label %bb.h, label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114

bb.h:                                             ; preds = %bb.g
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !181, !noalias !1010
  br label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114

_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114: ; preds = %bb.e, %.thread.i.i.i112, %bb.f, %bb.g, %bb.h
  %i.bh = ptrtoint ptr %.013.lcssa.i11.i.i.i108 to i64
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !185, !noalias !1010
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %i.bl = or i64 %i.bk, %i.bh
  %i.bm = inttoptr i64 %i.bl to ptr
  store ptr %i.bm, ptr %i.ap, align 8, !tbaa !185, !noalias !1010
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false), !noalias !1010
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ap) #26, !noalias !1010
  %i.bo = load i64, ptr %25, align 8, !tbaa !188, !noalias !1010
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  store i64 %i.bp, ptr %25, align 8, !tbaa !188, !noalias !1010
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !189, !noalias !1011
  %.pre589 = ptrtoint ptr %.pre to i64
  %.pre590 = and i64 %.pre589, -2                 ; 2 uses
  %.not29.i.i.i.i115 = icmp eq i64 %.pre590, 0
  br i1 %.not29.i.i.i.i115, label %bb.k, label %.lr.ph.i.i.i.i116

.lr.ph.i.i.i.i116:                                ; preds = %bb.c, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114
  %i.bq = phi i64 [ %i.bp, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114 ], [ %i.ad, %bb.c ]
  %.pre-phi591664 = phi i64 [ %.pre590, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114 ], [ %i.ag, %bb.c ]
  %i.br = inttoptr i64 %.pre-phi591664 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i116
  %.02631.i.i.i.i117 = phi ptr [ null, %.lr.ph.i.i.i.i116 ], [ %.127.i.i.i.i119, %bb.i ]
  %.02830.i.i.i.i118 = phi ptr [ %i.br, %.lr.ph.i.i.i.i116 ], [ %i.bv, %bb.i ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i118, i64 24
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !184, !noalias !1011
  %i.bu = icmp sgt i32 %i.bt, 3                   ; 4 uses
  %.127.i.i.i.i119 = select i1 %i.bu, ptr %.02631.i.i.i.i117, ptr %.02830.i.i.i.i118 ; 3 uses
  %.in.v.i.i.i.i120 = select i1 %i.bu, i64 8, i64 16
  %.in.i.i.i.i121 = getelementptr inbounds nuw i8, ptr %.02830.i.i.i.i118, i64 %.in.v.i.i.i.i120
  %i.bv = load ptr, ptr %.in.i.i.i.i121, align 8, !tbaa !185, !noalias !1011 ; 2 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i122, label %._crit_edge.i.i.i.i123, label %bb.i, !llvm.loop !0

._crit_edge.i.i.i.i123:                           ; preds = %bb.i
  %.not18.i.i.i.i124 = icmp eq ptr %.127.i.i.i.i119, null
  br i1 %.not18.i.i.i.i124, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i.i123
  %i.bw = getelementptr inbounds nuw i8, ptr %.127.i.i.i.i119, i64 24
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !184, !noalias !1011
  %i.by = icmp slt i32 %i.bx, 3
  br i1 %i.by, label %bb.k, label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit134

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i123, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114
  %.0.lcssa.i12.shrunk.i.i.i127 = phi i1 [ %i.bu, %._crit_edge.i.i.i.i123 ], [ %i.bu, %bb.j ], [ true, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114 ]
  %.013.lcssa.i11.i.i.i128 = phi ptr [ %.02830.i.i.i.i118, %._crit_edge.i.i.i.i123 ], [ %.02830.i.i.i.i118, %bb.j ], [ %i.f, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit114 ] ; 6 uses
  %i.bz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc133 unwind label %bb.r  ; 13 uses

.noexc133:                                        ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 3, ptr %i.ca, align 4, !tbaa !184, !noalias !1012
  %i.cb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1012
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  store i32 13, ptr %i.cc, align 4, !tbaa !184, !noalias !1012
  %i.cd = add i32 %i.cb, 2
  store i32 %i.cd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1012
  %i.ce = icmp eq ptr %.013.lcssa.i11.i.i.i128, %i.f ; 2 uses
  br i1 %.0.lcssa.i12.shrunk.i.i.i127, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i131, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i129

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i129: ; preds = %.noexc133
  br i1 %i.ce, label %bb.l, label %bb.n

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i131: ; preds = %.noexc133
  br i1 %i.ce, label %bb.l, label %.thread.i.i.i132

bb.l:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i131, %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i129
  %i.cf = ptrtoint ptr %i.bz to i64
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !185, !noalias !1013
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, 1
  %i.cj = or disjoint i64 %i.ci, %i.cf
  %i.ck = inttoptr i64 %i.cj to ptr
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !185, !noalias !1013
  store ptr %i.bz, ptr %i.h, align 8, !tbaa !181, !noalias !1013
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !180, !noalias !1013
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i130

.thread.i.i.i132:                                 ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i.i131
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i128, i64 8
  store ptr %i.bz, ptr %i.cl, align 8, !tbaa !180, !noalias !1013
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !180, !noalias !1013
  %i.cn = icmp eq ptr %.013.lcssa.i11.i.i.i128, %i.cm
  br i1 %i.cn, label %bb.m, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i130

bb.m:                                             ; preds = %.thread.i.i.i132
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !180, !noalias !1013
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i130

bb.n:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.i.i.i129
  %i.co = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i.i128, i64 16
  store ptr %i.bz, ptr %i.co, align 8, !tbaa !181, !noalias !1013
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !181, !noalias !1013
  %i.cq = icmp eq ptr %.013.lcssa.i11.i.i.i128, %i.cp
  br i1 %i.cq, label %bb.o, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i130

bb.o:                                             ; preds = %bb.n
  store ptr %i.bz, ptr %i.h, align 8, !tbaa !181, !noalias !1013
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i130

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i130: ; preds = %bb.o, %bb.n, %bb.m, %.thread.i.i.i132, %bb.l
  %i.cr = ptrtoint ptr %.013.lcssa.i11.i.i.i128 to i64
  %i.cs = load ptr, ptr %i.bz, align 8, !tbaa !185, !noalias !1013
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1
  %i.cv = or i64 %i.cu, %i.cr
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.bz, align 8, !tbaa !185, !noalias !1013
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false), !noalias !1013
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.bz) #26, !noalias !1013
  %i.cy = load i64, ptr %25, align 8, !tbaa !188, !noalias !1013
  %i.cz = add i64 %i.cy, 1                        ; 2 uses
  store i64 %i.cz, ptr %25, align 8, !tbaa !188, !noalias !1013
  br label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit134

_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit134: ; preds = %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i130, %bb.j
  %i.da = phi i64 [ %i.cz, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE20insert_unique_commitERSF_RKNS0_20insert_commit_data_tIPNS0_19compact_rbtree_nodeISC_EEEE.exit.i.i130 ], [ %i.bq, %bb.j ]
  %i.db = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182 ; 2 uses
  %i.dc = add i32 %i.db, -6
  store i32 %i.dc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %.not = icmp eq i64 %i.da, 3
  br i1 %.not, label %bb.t, label %bb.bx

bb.p:                                             ; preds = %bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.d
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.df, %bb.r ], [ %i.de, %bb.q ], [ %i.dd, %bb.p ]
  %i.dg = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.dh = add i32 %i.dg, -6
  store i32 %i.dh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  br label %bb.ch

bb.t:                                             ; preds = %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit134
  %i.di = add i32 %i.db, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.dj = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 28 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !180
  %i.dl = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 16, i1 false)
  store i32 %i.di, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.dm = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc153 unwind label %bb.u  ; 9 uses

.noexc153:                                        ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i32 3, ptr %i.dn, align 4, !tbaa !184, !noalias !1014
  %i.do = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1014
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  store i32 33, ptr %i.dp, align 4, !tbaa !184, !noalias !1014
  %i.dq = add i32 %i.do, 2
  store i32 %i.dq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1014
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !185, !noalias !1015
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = and i64 %i.dt, 1
  %i.dv = or disjoint i64 %i.du, %i.dr
  %i.dw = inttoptr i64 %i.dv to ptr
  store ptr %i.dw, ptr %i.dj, align 8, !tbaa !185, !noalias !1015
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !181, !noalias !1015
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !180, !noalias !1015
  %i.dx = ptrtoint ptr %i.dj to i64
  %i.dy = load ptr, ptr %i.dm, align 8, !tbaa !185, !noalias !1015
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = and i64 %i.dz, 1
  %i.eb = or disjoint i64 %i.ea, %i.dx
  %i.ec = inttoptr i64 %i.eb to ptr
  store ptr %i.ec, ptr %i.dm, align 8, !tbaa !185, !noalias !1015
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false), !noalias !1015
  call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.dm) #26, !noalias !1015
  %i.ee = load i64, ptr %26, align 8, !tbaa !188, !noalias !1015 ; 2 uses
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %26, align 8, !tbaa !188, !noalias !1015
  %i.eg = icmp eq i64 %i.ee, 0
  %i.eh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182 ; 2 uses
  %i.ei = add i32 %i.eh, -2
  store i32 %i.ei, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  br i1 %i.eg, label %bb.v, label %bb.bs

bb.u:                                             ; preds = %bb.t
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.el = add i32 %i.ek, -2
  br label %bb.cg

bb.v:                                             ; preds = %.noexc153
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store i32 2, ptr %27, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  store i32 3, ptr %28, align 4, !tbaa !184
  %i.em = add i32 %i.eh, 3
  store i32 %i.em, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  store i8 0, ptr %29, align 8, !tbaa !198
  %i.en = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  %i.eo = load ptr, ptr %i.f, align 8, !tbaa !189, !noalias !1016
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = and i64 %i.ep, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEEvEC2INS0_24pair_key_mapped_of_valueIS6_S6_EEEEONS1_ISF_T_EEPNS_11move_detail11enable_if_cIXeqplcvjL_ZNSN_7is_sameIvvE5valueEEcvjsr3dtl7is_sameISK_vEE5valueLj1EENSN_13enable_if_natEE4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.v
  %i.er = inttoptr i64 %i.eq to ptr
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %storemerge27.i.i.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i.i, %bb.w ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i.i.i, i64 24
  %i.et = load i32, ptr %i.es, align 4, !tbaa !184, !noalias !1016
  %i.eu = icmp slt i32 %i.et, 33                  ; 3 uses
  %storemerge.in.v.i.i.i.i.i.i.i.i = select i1 %i.eu, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = select i1 %i.eu, ptr %.08.i.i.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i.i.i ; 4 uses
  %storemerge.i.i.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i.i.i, align 8, !tbaa !185, !noalias !1016 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i, label %bb.w, !llvm.loop !1

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i: ; preds = %bb.w
  %i.ev = icmp eq ptr %.1.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.ev, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEEvEC2INS0_24pair_key_mapped_of_valueIS6_S6_EEEEONS1_ISF_T_EEPNS_11move_detail11enable_if_cIXeqplcvjL_ZNSN_7is_sameIvvE5valueEEcvjsr3dtl7is_sameISK_vEE5valueLj1EENSN_13enable_if_natEE4typeE.exit.i, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.eu, ptr %.08.i.i.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %i.ew = load i32, ptr %.1.i.i.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !184, !noalias !1016
  %i.ex = icmp sgt i32 %i.ew, 33
  br i1 %i.ex, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEEvEC2INS0_24pair_key_mapped_of_valueIS6_S6_EEEEONS1_ISF_T_EEPNS_11move_detail11enable_if_cIXeqplcvjL_ZNSN_7is_sameIvvE5valueEEcvjsr3dtl7is_sameISK_vEE5valueLj1EENSN_13enable_if_natEE4typeE.exit.i, label %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE7extractERKS3_.exit

_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE7extractERKS3_.exit: ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23), !noalias !1017
  store ptr %.1.i.i.i.i.i.i.i.i, ptr %23, align 8, !tbaa !199, !noalias !1018
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26, !noalias !1018
  call void @_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE5eraseENS0_13tree_iteratorISK_Lb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive::tree_iterator") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dead_on_return %23) #26, !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26, !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %23), !noalias !1017
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEEvEC2INS0_24pair_key_mapped_of_valueIS6_S6_EEEEONS1_ISF_T_EEPNS_11move_detail11enable_if_cIXeqplcvjL_ZNSN_7is_sameIvvE5valueEEcvjsr3dtl7is_sameISK_vEE5valueLj1EENSN_13enable_if_natEE4typeE.exit.i

_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEEvEC2INS0_24pair_key_mapped_of_valueIS6_S6_EEEEONS1_ISF_T_EEPNS_11move_detail11enable_if_cIXeqplcvjL_ZNSN_7is_sameIvvE5valueEEcvjsr3dtl7is_sameISK_vEE5valueLj1EENSN_13enable_if_natEE4typeE.exit.i: ; preds = %bb.v, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE7extractERKS3_.exit
  %storemerge545 = phi ptr [ %.1.i.i.i.i.i.i.i.i, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE7extractERKS3_.exit ], [ null, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i ], [ null, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i ], [ null, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26, !noalias !200
  store ptr %storemerge545, ptr %21, align 8, !tbaa !202, !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26, !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !1019
  store ptr %i.dj, ptr %20, align 8, !tbaa !199, !noalias !1020
  invoke void @_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE18insert_unique_nodeENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSC_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSC_18rbtree_node_traitsISH_Lb1EEELNSC_14link_mode_typeE0ENSC_7dft_tagELj3EEELb0EEELb1EEEONS0_11node_handleINS0_13new_allocatorISK_EEvEE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::container::insert_return_type_base.226") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dereferenceable(9) %21)
          to label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EEvEEED2Ev.exit.i unwind label %bb.y, !noalias !1019

_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EEvEEED2Ev.exit.i: ; preds = %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEEvEC2INS0_24pair_key_mapped_of_valueIS6_S6_EEEEONS1_ISF_T_EEPNS_11move_detail11enable_if_cIXeqplcvjL_ZNSN_7is_sameIvvE5valueEEcvjsr3dtl7is_sameISK_vEE5valueLj1EENSN_13enable_if_natEE4typeE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !1019
  %i.ey = load i8, ptr %22, align 8, !tbaa !204, !range !205, !noalias !1019, !noundef !200
  %i.ez = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !206, !noalias !1019
  %i.fb = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !202, !noalias !1019 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !1019
  %i.fd = load ptr, ptr %21, align 8, !tbaa !202, !noalias !1019 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i4.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EEvEEED2Ev.exit.i
  %i.fe = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1019
  %i.ff = add i32 %i.fe, -2
  store i32 %i.ff, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1019
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 32) #26, !noalias !1019
  br label %bb.aa

bb.y:                                             ; preds = %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEEvEC2INS0_24pair_key_mapped_of_valueIS6_S6_EEEEONS1_ISF_T_EEPNS_11move_detail11enable_if_cIXeqplcvjL_ZNSN_7is_sameIvvE5valueEEcvjsr3dtl7is_sameISK_vEE5valueLj1EENSN_13enable_if_natEE4typeE.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !1019
  %i.fh = load ptr, ptr %21, align 8, !tbaa !202, !noalias !1019 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i5.i, label %.body.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1019
  %i.fj = add i32 %i.fi, -2
  store i32 %i.fj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1019
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 32) #26, !noalias !1019
  br label %.body.thread

.body.thread:                                     ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !1019
  br label %bb.ce

bb.aa:                                            ; preds = %bb.x, %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EEvEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !1019
  store i8 %i.ey, ptr %29, align 8, !tbaa !198
  store ptr %i.fa, ptr %i.en, align 8, !tbaa !206
  %i.fk = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.fl, null        ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i9.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not.i.i.i155, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  br i1 %.not.i.i.i155, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.ph = phi ptr [ %i.fc, %bb.ab ], [ null, %bb.ac ]
  %i.fm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.fn = add i32 %i.fm, -2
  store i32 %i.fn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 32) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.sink = phi ptr [ %i.fc, %bb.ab ], [ %.sink.ph, %bb.ad ]
  store ptr %.sink, ptr %i.fk, align 8, !tbaa !207
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit

_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit: ; preds = %bb.ae, %bb.ac
  %i.fo = load ptr, ptr %i.en, align 8, !tbaa !206
  %i.fp = icmp eq ptr %i.fo, %i.dj
  %i.fq = load i8, ptr %29, align 8, !range !205
  %i.fr = icmp eq i8 %i.fq, 0
  %or.cond = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond, label %bb.af, label %.critedge

bb.af:                                            ; preds = %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit
  %.not.i.not = icmp eq ptr %i.fc, null
  br i1 %.not.i.not, label %bb.ag, label %.critedge.thread

bb.ag:                                            ; preds = %bb.af
  %i.fs = load ptr, ptr %i.f, align 8, !tbaa !189, !noalias !1021
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = and i64 %i.ft, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not6.i.i.i.i.i.i, label %select.unfold, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ag
  %i.fv = inttoptr i64 %i.fu to ptr
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.ah ] ; 2 uses
  %storemerge27.i.i.i.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %bb.ah ] ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 24
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !184, !noalias !1021
  %i.fy = icmp slt i32 %i.fx, 1                   ; 3 uses
  %storemerge.in.v.i.i.i.i.i.i = select i1 %i.fy, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i, i64 %storemerge.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.fy, ptr %.08.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i ; 3 uses
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !185, !noalias !1021 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i, label %bb.ah, !llvm.loop !1

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i: ; preds = %bb.ah
  %i.fz = icmp eq ptr %.1.i.i.i.i.i.i, %i.f
  br i1 %i.fz, label %select.unfold, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i
  %.1.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fy, ptr %.08.i.i.i.i.i.i, ptr %storemerge27.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %i.ga = load i32, ptr %.1.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !184, !noalias !1021
  %i.gb = icmp sgt i32 %i.ga, 1
  %spec.select = select i1 %i.gb, ptr %i.f, ptr %.1.i.i.i.i.i.i
  br label %select.unfold

select.unfold:                                    ; preds = %bb.ai, %bb.ag, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i
  %i.gc = phi ptr [ %i.f, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i ], [ %spec.select, %bb.ai ], [ %i.f, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !1022
  store ptr %i.gc, ptr %18, align 8, !tbaa !199, !noalias !1023
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !1023
  call void @_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE5eraseENS0_13tree_iteratorISK_Lb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive::tree_iterator") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dead_on_return %18) #26, !noalias !1023
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !1023
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !1024
  store ptr %i.gc, ptr %16, align 8, !tbaa !202, !noalias !1024
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !1024
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !1024
  store ptr %i.dj, ptr %15, align 8, !tbaa !199, !noalias !1025
  invoke void @_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE18insert_unique_nodeENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSC_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSC_18rbtree_node_traitsISH_Lb1EEELNSC_14link_mode_typeE0ENSC_7dft_tagELj3EEELb0EEELb1EEEONS0_11node_handleINS0_13new_allocatorISK_EEvEE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::container::insert_return_type_base.226") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(9) %16)
          to label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EEvEEED2Ev.exit.i163 unwind label %bb.ak, !noalias !1024

_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EEvEEED2Ev.exit.i163: ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !1024
  %i.gd = load i8, ptr %17, align 8, !tbaa !204, !range !205, !noalias !1024, !noundef !200
  %i.ge = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !206, !noalias !1024
  %i.gg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !202, !noalias !1024 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !1024
  %i.gi = load ptr, ptr %16, align 8, !tbaa !202, !noalias !1024 ; 2 uses
  %.not.i.i4.i164 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i4.i164, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EEvEEED2Ev.exit.i163
  %i.gj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1024
  %i.gk = add i32 %i.gj, -2
  store i32 %i.gk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1024
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 32) #26, !noalias !1024
  br label %bb.am

bb.ak:                                            ; preds = %select.unfold
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !1024
  %i.gm = load ptr, ptr %16, align 8, !tbaa !202, !noalias !1024 ; 2 uses
  %.not.i.i5.i161 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i5.i161, label %.body165.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1024
  %i.go = add i32 %i.gn, -2
  store i32 %i.go, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182, !noalias !1024
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 32) #26, !noalias !1024
  br label %.body165.thread

.body165.thread:                                  ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !1024
  br label %bb.ce

bb.am:                                            ; preds = %bb.aj, %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EEvEEED2Ev.exit.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !1024
  store i8 %i.gd, ptr %29, align 8, !tbaa !198
  store ptr %i.gf, ptr %i.en, align 8, !tbaa !206
  %i.gp = load ptr, ptr %i.fk, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.gp, null        ; 2 uses
  %.not.i9.i.i169 = icmp eq ptr %i.gh, null
  br i1 %.not.i9.i.i169, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not.i.i.i168, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  br i1 %.not.i.i.i168, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit177, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink688.ph = phi ptr [ %i.gh, %bb.an ], [ null, %bb.ao ]
  %i.gq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.gr = add i32 %i.gq, -2
  store i32 %i.gr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef 32) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %.sink688 = phi ptr [ %i.gh, %bb.an ], [ %.sink688.ph, %bb.ap ]
  store ptr %.sink688, ptr %i.fk, align 8, !tbaa !207
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit177

_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit177: ; preds = %bb.aq, %bb.ao
  %i.gs = load ptr, ptr %i.dj, align 8, !tbaa !189, !noalias !1026
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = and i64 %i.gt, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i178 = icmp eq i64 %i.gu, 0
  br i1 %.not6.i.i.i.i.i.i178, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit189, label %.lr.ph.i.i.i.i.i.i179

.lr.ph.i.i.i.i.i.i179:                            ; preds = %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit177
  %i.gv = inttoptr i64 %i.gu to ptr
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i179
  %.08.i.i.i.i.i.i180 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i179 ], [ %.1.i.i.i.i.i.i184, %bb.ar ] ; 2 uses
  %storemerge27.i.i.i.i.i.i181 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i179 ], [ %storemerge.i.i.i.i.i.i185, %bb.ar ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i181, i64 24
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !184, !noalias !1026
  %i.gy = icmp slt i32 %i.gx, 1                   ; 3 uses
  %storemerge.in.v.i.i.i.i.i.i182 = select i1 %i.gy, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i183 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i181, i64 %storemerge.in.v.i.i.i.i.i.i182
  %.1.i.i.i.i.i.i184 = select i1 %i.gy, ptr %.08.i.i.i.i.i.i180, ptr %storemerge27.i.i.i.i.i.i181 ; 3 uses
  %storemerge.i.i.i.i.i.i185 = load ptr, ptr %storemerge.in.i.i.i.i.i.i183, align 8, !tbaa !185, !noalias !1026 ; 2 uses
  %.not.i.i.i.i.i.i186 = icmp eq ptr %storemerge.i.i.i.i.i.i185, null
  br i1 %.not.i.i.i.i.i.i186, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i187, label %bb.ar, !llvm.loop !1

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i187: ; preds = %bb.ar
  %i.gz = icmp eq ptr %.1.i.i.i.i.i.i184, %i.dj
  br i1 %i.gz, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit189, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i187
  %.1.i.i.i.i.i.i184.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gy, ptr %.08.i.i.i.i.i.i180, ptr %storemerge27.i.i.i.i.i.i181
  %.1.i.i.i.i.i.i184.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i184.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %i.ha = load i32, ptr %.1.i.i.i.i.i.i184.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !184, !noalias !1026
  %i.hb = icmp sgt i32 %i.ha, 1
  %spec.select.i.i.i.i188 = select i1 %i.hb, ptr %i.dj, ptr %.1.i.i.i.i.i.i184
  br label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit189

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit189: ; preds = %bb.as, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i187, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit177
  %i.hc = phi ptr [ %i.dj, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i187 ], [ %spec.select.i.i.i.i188, %bb.as ], [ %i.dj, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit177 ]
  %i.hd = load ptr, ptr %i.en, align 8, !tbaa !206
  %i.he = icmp eq ptr %i.hd, %i.hc
  %i.hf = load i8, ptr %29, align 8, !range !205
  %i.hg = trunc nuw i8 %i.hf to i1
  %or.cond80 = select i1 %i.he, i1 %i.hg, i1 false
  br i1 %or.cond80, label %bb.at, label %.critedge

bb.at:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit189
  %.not.i190.not = icmp eq ptr %i.gh, null
  br i1 %.not.i190.not, label %bb.au, label %.critedge.thread

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.hh = load ptr, ptr %i.dk, align 8, !tbaa !180, !noalias !1027
  store ptr %i.hh, ptr %31, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  invoke void @_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE7extractERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::node_handle") align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 4 dereferenceable(4) %27)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS9_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS7_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS9_18rbtree_node_traitsISH_Lb1EEELNS9_14link_mode_typeE0ENS9_7dft_tagELj3EEELb0EEELb1EEEONS0_11node_handleINS0_13new_allocatorISK_EENS0_24pair_key_mapped_of_valueIS3_S3_EEEE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::container::insert_return_type_base") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dead_on_return %31, ptr noundef nonnull align 8 dereferenceable(9) %32)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.hi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEEaSEOSV_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %30) ; 0 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i193, label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit194, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.hm = add i32 %i.hl, -2
  store i32 %i.hm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 32) #26
  br label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit194

_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit194: ; preds = %bb.aw, %bb.ax
  %i.hn = load ptr, ptr %32, align 8, !tbaa !207  ; 2 uses
  %.not.i.i195 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i195, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit196, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit194
  %i.ho = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.hp = add i32 %i.ho, -2
  store i32 %i.hp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef 32) #26
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit196

_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit196: ; preds = %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit194, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.hq = load ptr, ptr %i.dj, align 8, !tbaa !189, !noalias !1028
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = and i64 %i.hr, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i197 = icmp eq i64 %i.hs, 0
  br i1 %.not6.i.i.i.i.i.i197, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit208, label %.lr.ph.i.i.i.i.i.i198

.lr.ph.i.i.i.i.i.i198:                            ; preds = %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit196
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load i32, ptr %27, align 4, !tbaa !184, !noalias !1028 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph.i.i.i.i.i.i198
  %.08.i.i.i.i.i.i199 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i198 ], [ %.1.i.i.i.i.i.i203, %bb.az ] ; 2 uses
  %storemerge27.i.i.i.i.i.i200 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i.i198 ], [ %storemerge.i.i.i.i.i.i204, %bb.az ] ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i200, i64 24
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !184, !noalias !1028
  %i.hx = icmp slt i32 %i.hw, %i.hu               ; 3 uses
  %storemerge.in.v.i.i.i.i.i.i201 = select i1 %i.hx, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i202 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i200, i64 %storemerge.in.v.i.i.i.i.i.i201
  %.1.i.i.i.i.i.i203 = select i1 %i.hx, ptr %.08.i.i.i.i.i.i199, ptr %storemerge27.i.i.i.i.i.i200 ; 3 uses
  %storemerge.i.i.i.i.i.i204 = load ptr, ptr %storemerge.in.i.i.i.i.i.i202, align 8, !tbaa !185, !noalias !1028 ; 2 uses
  %.not.i.i.i.i.i.i205 = icmp eq ptr %storemerge.i.i.i.i.i.i204, null
  br i1 %.not.i.i.i.i.i.i205, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i206, label %bb.az, !llvm.loop !1

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i206: ; preds = %bb.az
  %i.hy = icmp eq ptr %.1.i.i.i.i.i.i203, %i.dj
  br i1 %i.hy, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit208, label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i206
  %.1.i.i.i.i.i.i203.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hx, ptr %.08.i.i.i.i.i.i199, ptr %storemerge27.i.i.i.i.i.i200
  %.1.i.i.i.i.i.i203.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i203.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %i.hz = load i32, ptr %.1.i.i.i.i.i.i203.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !184, !noalias !1028
  %i.ia = icmp slt i32 %i.hu, %i.hz
  %spec.select.i.i.i.i207 = select i1 %i.ia, ptr %i.dj, ptr %.1.i.i.i.i.i.i203
  br label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit208

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit208: ; preds = %bb.ba, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i206, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit196
  %i.ib = phi ptr [ %i.dj, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i206 ], [ %spec.select.i.i.i.i207, %bb.ba ], [ %i.dj, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit196 ]
  %i.ic = load ptr, ptr %i.en, align 8, !tbaa !206
  %i.id = icmp eq ptr %i.ic, %i.ib
  %i.ie = load i8, ptr %29, align 8, !range !205
  %i.if = trunc nuw i8 %i.ie to i1
  %or.cond84 = select i1 %i.id, i1 %i.if, i1 false
  br i1 %or.cond84, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit208
  %i.ig = load ptr, ptr %i.fk, align 8, !tbaa !207 ; 2 uses
  %.not.i209.not = icmp eq ptr %i.ig, null
  br i1 %.not.i209.not, label %bb.bf, label %.critedge.thread

bb.bc:                                            ; preds = %bb.au
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit211

bb.bd:                                            ; preds = %bb.av
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = load ptr, ptr %32, align 8, !tbaa !207  ; 2 uses
  %.not.i.i210 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i210, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit211, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ik = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.il = add i32 %i.ik, -2
  store i32 %i.il, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef 32) #26
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit211

_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit211: ; preds = %bb.be, %bb.bd, %bb.bc
  %.pn46 = phi { ptr, i32 } [ %i.ih, %bb.bc ], [ %i.ii, %bb.bd ], [ %i.ii, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.ce

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  invoke void @_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE7extractERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::node_handle") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 4 dereferenceable(4) %28)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE6insertEONS0_11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKS3_S3_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS3_S3_EEEE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::container::insert_return_type_base") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(9) %34)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.im = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEEaSEOSV_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %33) ; 0 uses
  %i.in = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i212 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i212, label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit213, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ip = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.iq = add i32 %i.ip, -2
  store i32 %i.iq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 32) #26
  br label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit213

_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit213: ; preds = %bb.bh, %bb.bi
  %i.ir = load ptr, ptr %34, align 8, !tbaa !207  ; 2 uses
  %.not.i.i214 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i214, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit215, label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit213
  %i.is = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.it = add i32 %i.is, -2
  store i32 %i.it, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef 32) #26
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit215

_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit215: ; preds = %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit213, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  %i.iu = load i64, ptr %25, align 8, !tbaa !188
  %.not.i216 = icmp eq i64 %i.iu, 0
  %i.iv = load i64, ptr %26, align 8
  %.not50 = icmp eq i64 %i.iv, 3
  %or.cond543 = select i1 %.not.i216, i1 %.not50, i1 false
  br i1 %or.cond543, label %bb.bn, label %.critedge

bb.bk:                                            ; preds = %bb.bf
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit218

bb.bl:                                            ; preds = %bb.bg
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %34, align 8, !tbaa !207  ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i217, label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit218, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iz = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.ja = add i32 %i.iz, -2
  store i32 %i.ja, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef 32) #26
  br label %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit218

_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit218: ; preds = %bb.bm, %bb.bl, %bb.bk
  %.pn48 = phi { ptr, i32 } [ %i.iw, %bb.bk ], [ %i.ix, %bb.bl ], [ %i.ix, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.ce

bb.bn:                                            ; preds = %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit215
  %i.jb = load ptr, ptr %i.dj, align 8, !tbaa !189, !noalias !1029
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = and i64 %i.jc, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i219 = icmp eq i64 %i.jd, 0
  br i1 %.not6.i.i.i.i.i.i219, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit230, label %.lr.ph.i.i.i.i.i.i220

.lr.ph.i.i.i.i.i.i220:                            ; preds = %bb.bn
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = load i32, ptr %28, align 4, !tbaa !184, !noalias !1029 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i.i.i.i.i.i220
  %.08.i.i.i.i.i.i221 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i220 ], [ %.1.i.i.i.i.i.i225, %bb.bo ] ; 2 uses
  %storemerge27.i.i.i.i.i.i222 = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i220 ], [ %storemerge.i.i.i.i.i.i226, %bb.bo ] ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i222, i64 24
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !184, !noalias !1029
  %i.ji = icmp slt i32 %i.jh, %i.jf               ; 3 uses
  %storemerge.in.v.i.i.i.i.i.i223 = select i1 %i.ji, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i224 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i222, i64 %storemerge.in.v.i.i.i.i.i.i223
  %.1.i.i.i.i.i.i225 = select i1 %i.ji, ptr %.08.i.i.i.i.i.i221, ptr %storemerge27.i.i.i.i.i.i222 ; 3 uses
  %storemerge.i.i.i.i.i.i226 = load ptr, ptr %storemerge.in.i.i.i.i.i.i224, align 8, !tbaa !185, !noalias !1029 ; 2 uses
  %.not.i.i.i.i.i.i227 = icmp eq ptr %storemerge.i.i.i.i.i.i226, null
  br i1 %.not.i.i.i.i.i.i227, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i228, label %bb.bo, !llvm.loop !1

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i228: ; preds = %bb.bo
  %i.jj = icmp eq ptr %.1.i.i.i.i.i.i225, %i.dj
  br i1 %i.jj, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit230, label %bb.bp

bb.bp:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i228
  %.1.i.i.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ji, ptr %.08.i.i.i.i.i.i221, ptr %storemerge27.i.i.i.i.i.i222
  %.1.i.i.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %i.jk = load i32, ptr %.1.i.i.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !184, !noalias !1029
  %i.jl = icmp slt i32 %i.jf, %i.jk
  %spec.select.i.i.i.i229 = select i1 %i.jl, ptr %i.dj, ptr %.1.i.i.i.i.i.i225
  br label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit230

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit230: ; preds = %bb.bp, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i228, %bb.bn
  %i.jm = phi ptr [ %i.dj, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i228 ], [ %spec.select.i.i.i.i229, %bb.bp ], [ %i.dj, %bb.bn ]
  %i.jn = load ptr, ptr %i.en, align 8, !tbaa !206
  %i.jo = icmp eq ptr %i.jn, %i.jm
  %i.jp = load i8, ptr %29, align 8, !range !205
  %i.jq = icmp eq i8 %i.jp, 0
  %or.cond88 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond88, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit230
  %i.jr = load ptr, ptr %i.fk, align 8, !tbaa !207 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !184
  %i.ju = load i32, ptr %28, align 4, !tbaa !184
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %bb.br, label %.thread

bb.br:                                            ; preds = %bb.bq
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 28
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !184
  %.fr = freeze i32 %i.jx
  %.not546 = icmp eq i32 %.fr, 13
  br i1 %.not546, label %.critedge, label %.thread

.thread:                                          ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit230, %bb.bq, %bb.br
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.br, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit208, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit189, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit215
  %.0.ph = phi i32 [ 0, %bb.br ], [ 1, %.thread ], [ 1, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit ], [ 1, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit189 ], [ 1, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit215 ], [ 1, %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit208 ] ; 2 uses
  %.pr512 = load ptr, ptr %i.fk, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i231 = icmp eq ptr %.pr512, null
  br i1 %.not.i.i.i231, label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit232, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.af, %bb.at, %bb.bb, %.critedge
  %.0515 = phi i32 [ %.0.ph, %.critedge ], [ 1, %bb.bb ], [ 1, %bb.at ], [ 1, %bb.af ]
  %i.jy = phi ptr [ %.pr512, %.critedge ], [ %i.ig, %bb.bb ], [ %i.gh, %bb.at ], [ %i.fc, %bb.af ]
  %i.jz = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.ka = add i32 %i.jz, -2
  store i32 %i.ka, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef 32) #26
  br label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit232

_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit232: ; preds = %.critedge, %.critedge.thread
  %.0516 = phi i32 [ %.0.ph, %.critedge ], [ %.0515, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.kb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  %i.kc = add i32 %i.kb, -5
  store i32 %i.kc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.kd = icmp eq i32 %.0516, 0
  br label %bb.bs

bb.bs:                                            ; preds = %.noexc153, %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit232
  %.1 = phi i1 [ %i.kd, %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit232 ], [ false, %.noexc153 ]
  %i.ke = load ptr, ptr %i.dj, align 8, !tbaa !189
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = and i64 %i.kf, -2                       ; 2 uses
  %.not.i.i.i.i233 = icmp eq i64 %i.kg, 0
  br i1 %.not.i.i.i.i233, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kh = inttoptr i64 %i.kg to ptr
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bw, %bb.bt
  %.01115.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %bb.bw ], [ %i.kh, %bb.bt ] ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 8 ; 3 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !180 ; 3 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.kj, null
  br i1 %.not13.i.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !181
  store ptr %i.kl, ptr %i.ki, align 8, !tbaa !180
  store ptr %.01115.i.i.i.i.i, ptr %i.kk, align 8, !tbaa !181
  br label %bb.bw

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !181
  %i.ko = load ptr, ptr %.01115.i.i.i.i.i, align 8, !tbaa !185
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = and i64 %i.kp, 1
  %i.kr = inttoptr i64 %i.kq to ptr
  store ptr %i.kr, ptr %.01115.i.i.i.i.i, align 8, !tbaa !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i8 0, i64 16, i1 false)
  %i.ks = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.kt = add i32 %i.ks, -2
  store i32 %i.kt, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %.01115.i.i.i.i.i, i64 noundef 32) #26
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i = phi ptr [ %i.kj, %bb.bu ], [ %i.kn, %bb.bv ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit: ; preds = %bb.bw, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit134, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit
  %.2 = phi i1 [ %.1, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit ], [ false, %_ZN5boost9container3mapINS0_4test11movable_intES3_St4lessIS3_EvvE11try_emplaceIJS3_EEESt4pairINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSB_8bhtraitsINS0_9base_nodeIS8_IKS3_S3_ENS9_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSB_18rbtree_node_traitsISI_Lb1EEELNSB_14link_mode_typeE0ENSB_7dft_tagELj3EEELb0EEELb0EEEbEOS3_DpOT_.exit134 ]
  %i.ku = load ptr, ptr %i.f, align 8, !tbaa !189
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = and i64 %i.kv, -2                       ; 2 uses
  %.not.i.i.i.i234 = icmp eq i64 %i.kw, 0
  br i1 %.not.i.i.i.i234, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit240, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kx = inttoptr i64 %i.kw to ptr
  br label %.lr.ph.i.i.i.i.i235

.lr.ph.i.i.i.i.i235:                              ; preds = %bb.cb, %bb.by
  %.01115.i.i.i.i.i236 = phi ptr [ %.0.i.i.i.i.i238, %bb.cb ], [ %i.kx, %bb.by ] ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i236, i64 8 ; 3 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !180 ; 3 uses
  %.not13.i.i.i.i.i237 = icmp eq ptr %i.kz, null
  br i1 %.not13.i.i.i.i.i237, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i.i235
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !181
  store ptr %i.lb, ptr %i.ky, align 8, !tbaa !180
  store ptr %.01115.i.i.i.i.i236, ptr %i.la, align 8, !tbaa !181
  br label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i.i235
  %i.lc = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i236, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !181
  %i.le = load ptr, ptr %.01115.i.i.i.i.i236, align 8, !tbaa !185
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = and i64 %i.lf, 1
  %i.lh = inttoptr i64 %i.lg to ptr
  store ptr %i.lh, ptr %.01115.i.i.i.i.i236, align 8, !tbaa !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, i8 0, i64 16, i1 false)
  %i.li = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.lj = add i32 %i.li, -2
  store i32 %i.lj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %.01115.i.i.i.i.i236, i64 noundef 32) #26
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i238 = phi ptr [ %i.kz, %bb.bz ], [ %i.ld, %bb.ca ] ; 2 uses
  %.not.i.i.i.i.i239 = icmp eq ptr %.0.i.i.i.i.i238, null
  br i1 %.not.i.i.i.i.i239, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit240, label %.lr.ph.i.i.i.i.i235, !llvm.loop !2

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit240: ; preds = %bb.cb, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br i1 %.2, label %bb.cc, label %bb.fx

bb.cc:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev.exit240
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  %i.lk = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 12 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !180
  %i.lm = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %i.lk, ptr %i.lm, align 8, !tbaa !181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %35, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  store i32 1, ptr %36, align 4, !tbaa !184
  %i.ln = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  store i32 2, ptr %37, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  store i32 3, ptr %38, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  store i32 3, ptr %39, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  store i32 11, ptr %40, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  store i32 12, ptr %41, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  store i32 13, ptr %42, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  store i32 23, ptr %43, align 4, !tbaa !184
  %i.lo = add i32 %i.ln, 8
  store i32 %i.lo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  invoke void @_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE13emplace_equalIJS5_S5_EEENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSD_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSD_18rbtree_node_traitsISI_Lb1EEELNSD_14link_mode_typeE0ENSD_7dft_tagELj3EEELb0EEELb0EEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %44, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 4 dereferenceable(4) %36, ptr noundef nonnull align 4 dereferenceable(4) %40)
          to label %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit unwind label %bb.ci

_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  invoke void @_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE13emplace_equalIJS5_S5_EEENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSD_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSD_18rbtree_node_traitsISI_Lb1EEELNSD_14link_mode_typeE0ENSD_7dft_tagELj3EEELb0EEELb0EEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 4 dereferenceable(4) %37, ptr noundef nonnull align 4 dereferenceable(4) %41)
          to label %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit243 unwind label %bb.cj

_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit243: ; preds = %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  invoke void @_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE13emplace_equalIJS5_S5_EEENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSD_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSD_18rbtree_node_traitsISI_Lb1EEELNSD_14link_mode_typeE0ENSD_7dft_tagELj3EEELb0EEELb0EEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %46, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 4 dereferenceable(4) %38, ptr noundef nonnull align 4 dereferenceable(4) %42)
          to label %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit245 unwind label %bb.ck

_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit245: ; preds = %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit243
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  %i.lp = load ptr, ptr %i.ll, align 8, !tbaa !180, !noalias !1030
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.lp, ptr %14, align 8, !tbaa !199, !noalias !1031
  invoke void @_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE18emplace_hint_equalIJS5_S5_EEENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSD_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSD_18rbtree_node_traitsISI_Lb1EEELNSD_14link_mode_typeE0ENSD_7dft_tagELj3EEELb0EEELb0EEENSC_ISR_Lb1EEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %47, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 4 dereferenceable(4) %39, ptr noundef nonnull align 4 dereferenceable(4) %43)
          to label %bb.cd unwind label %bb.cl

bb.cd:                                            ; preds = %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit245
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  %i.lq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.lr = add i32 %i.lq, -8
  store i32 %i.lr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.ls = load i64, ptr %35, align 8, !tbaa !188
  %.not58 = icmp eq i64 %i.ls, 4
  br i1 %.not58, label %bb.cn, label %bb.er

bb.ce:                                            ; preds = %.body165.thread, %.body.thread, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit218, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit211
  %.pn51 = phi { ptr, i32 } [ %i.fg, %.body.thread ], [ %.pn48, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit218 ], [ %i.gl, %.body165.thread ], [ %.pn46, %_ZN5boost9container11node_handleINS0_13new_allocatorINS0_9base_nodeISt4pairIKNS0_4test11movable_intES6_ENS0_3dtl19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEEEENS0_24pair_key_mapped_of_valueIS6_S6_EEED2Ev.exit211 ]
  %i.lt = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i247, label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit248, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lv = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  %i.lw = add i32 %i.lv, -2
  store i32 %i.lw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef 32) #26
  br label %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit248

_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit248: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.lx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  %i.ly = add i32 %i.lx, -4
  store i32 %i.ly, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  %i.lz = add i32 %i.lx, -5
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit248, %bb.u
  %storemerge = phi i32 [ %i.el, %bb.u ], [ %i.lz, %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit248 ]
  %.pn51.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.u ], [ %.pn51, %_ZN5boost9container23insert_return_type_baseINS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS4_8bhtraitsINS0_9base_nodeISt4pairIKNS0_4test11movable_intESA_ENS2_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS4_18rbtree_node_traitsISE_Lb1EEELNS4_14link_mode_typeE0ENS4_7dft_tagELj3EEELb0EEELb0EEENS0_11node_handleINS0_13new_allocatorISH_EENS0_24pair_key_mapped_of_valueISA_SA_EEEEED2Ev.exit248 ]
  store i32 %storemerge, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.s
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %bb.cg ], [ %.pn, %bb.s ]
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorISt4pairIKNS0_4test11movable_intES6_EEENS_9intrusive11rbtree_implINSA_8bhtraitsINS0_9base_nodeIS8_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISF_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEENS1_11key_of_nodeISI_NS1_9select1stIS7_EEEESt4lessIS6_EmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.fy

bb.ci:                                            ; preds = %bb.cc
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  br label %bb.cm

bb.cj:                                            ; preds = %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %bb.cm

bb.ck:                                            ; preds = %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit243
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  br label %bb.cm

bb.cl:                                            ; preds = %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit245
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %.pn56 = phi { ptr, i32 } [ %i.md, %bb.cl ], [ %i.mc, %bb.ck ], [ %i.mb, %bb.cj ], [ %i.ma, %bb.ci ]
  %i.me = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.mf = add i32 %i.me, -8
  store i32 %i.mf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.fb

bb.cn:                                            ; preds = %bb.cd
  %i.mg = add i32 %i.lq, -6
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  %i.mh = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 21 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 5 uses
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !180
  %i.mj = getelementptr inbounds nuw i8, ptr %48, i64 24 ; 4 uses
  store ptr %i.mh, ptr %i.mj, align 8, !tbaa !181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %48, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  store i32 3, ptr %49, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  store i32 33, ptr %50, align 4, !tbaa !184
  store i32 %i.mg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  invoke void @_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE13emplace_equalIJS5_S5_EEENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSD_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSD_18rbtree_node_traitsISI_Lb1EEELNSD_14link_mode_typeE0ENSD_7dft_tagELj3EEELb0EEELb0EEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %51, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 4 dereferenceable(4) %49, ptr noundef nonnull align 4 dereferenceable(4) %50)
          to label %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit250 unwind label %bb.co

_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit250: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  %i.mk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  %i.ml = add i32 %i.mk, -2
  store i32 %i.ml, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  %i.mm = load i64, ptr %48, align 8, !tbaa !188
  %.not59 = icmp eq i64 %i.mm, 1
  br i1 %.not59, label %bb.cp, label %bb.em

bb.co:                                            ; preds = %bb.cn
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  %i.mo = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  %i.mp = add i32 %i.mo, -2
  store i32 %i.mp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  br label %bb.fa

bb.cp:                                            ; preds = %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE7emplaceIJS3_S3_EEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSA_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS8_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSA_18rbtree_node_traitsISI_Lb1EEELNSA_14link_mode_typeE0ENSA_7dft_tagELj3EEELb0EEELb0EEEDpOT_.exit250
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  store i32 2, ptr %52, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  store i32 3, ptr %53, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  store i32 4, ptr %54, align 4, !tbaa !184
  %i.mq = add i32 %i.mk, 5
  store i32 %i.mq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.mr = load ptr, ptr %i.lk, align 8, !tbaa !189, !noalias !1033
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = and i64 %i.ms, -2                       ; 2 uses
  %.not6.i.i.i.i.i.i.i.i251 = icmp eq i64 %i.mt, 0
  br i1 %.not6.i.i.i.i.i.i.i.i251, label %.thread518, label %.lr.ph.i.i.i.i.i.i.i.i252

.lr.ph.i.i.i.i.i.i.i.i252:                        ; preds = %bb.cp
  %i.mu = inttoptr i64 %i.mt to ptr
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.lr.ph.i.i.i.i.i.i.i.i252
  %.08.i.i.i.i.i.i.i.i253 = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i.i.i.i252 ], [ %.1.i.i.i.i.i.i.i.i257, %bb.cq ] ; 2 uses
  %storemerge27.i.i.i.i.i.i.i.i254 = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i252 ], [ %storemerge.i.i.i.i.i.i.i.i258, %bb.cq ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i.i.i254, i64 24
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !184, !noalias !1033
  %i.mx = icmp slt i32 %i.mw, 3                   ; 3 uses
  %storemerge.in.v.i.i.i.i.i.i.i.i255 = select i1 %i.mx, i64 16, i64 8
  %storemerge.in.i.i.i.i.i.i.i.i256 = getelementptr inbounds nuw i8, ptr %storemerge27.i.i.i.i.i.i.i.i254, i64 %storemerge.in.v.i.i.i.i.i.i.i.i255
  %.1.i.i.i.i.i.i.i.i257 = select i1 %i.mx, ptr %.08.i.i.i.i.i.i.i.i253, ptr %storemerge27.i.i.i.i.i.i.i.i254 ; 18 uses
  %storemerge.i.i.i.i.i.i.i.i258 = load ptr, ptr %storemerge.in.i.i.i.i.i.i.i.i256, align 8, !tbaa !185, !noalias !1033 ; 2 uses
  %.not.i.i.i.i.i.i.i.i259 = icmp eq ptr %storemerge.i.i.i.i.i.i.i.i258, null
  br i1 %.not.i.i.i.i.i.i.i.i259, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i260, label %bb.cq, !llvm.loop !1

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i260: ; preds = %bb.cq
  %i.my = icmp eq ptr %.1.i.i.i.i.i.i.i.i257, %i.lk
  br i1 %i.my, label %.thread518, label %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i261

_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i261: ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i260
  %.1.i.i.i.i.i.i.i.i257.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.mx, ptr %.08.i.i.i.i.i.i.i.i253, ptr %storemerge27.i.i.i.i.i.i.i.i254
  %.1.i.i.i.i.i.i.i.i257.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i257.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %i.mz = load i32, ptr %.1.i.i.i.i.i.i.i.i257.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !184, !noalias !1033
  %i.na = icmp sgt i32 %i.mz, 3
  br i1 %i.na, label %.thread518, label %bb.cr

.thread518:                                       ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i261, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE11lower_boundINS_9container4test11movable_intENS0_6detail16key_nodeptr_compISt4lessIS9_ENS0_8bhtraitsINS7_9base_nodeISt4pairIKS9_S9_ENS7_3dtl19intrusive_tree_hookIS3_LNS7_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEPNS0_19compact_rbtree_nodeIS3_EEPKSX_RKT_T0_.exit.i.i.i.i.i.i260, %bb.cp
  store ptr null, ptr %55, align 8, !tbaa !207, !alias.scope !1032
  br label %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS9_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS7_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS9_18rbtree_node_traitsISH_Lb1EEELNS9_14link_mode_typeE0ENS9_7dft_tagELj3EEELb0EEELb1EEEONS0_11node_handleINS0_13new_allocatorISK_EENS0_24pair_key_mapped_of_valueIS3_S3_EEEE.exit

bb.cr:                                            ; preds = %_ZN5boost9container3dtl4treeISt4pairIKNS0_4test11movable_intES5_EiSt4lessIS5_EvvE4findERS6_.exit.i.i261
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !1034
  store ptr %.1.i.i.i.i.i.i.i.i257, ptr %12, align 8, !tbaa !199, !noalias !1035
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !1035
  call void @_ZN5boost9intrusive11bstree_implINS0_8bhtraitsINS_9container9base_nodeISt4pairIKNS3_4test11movable_intES7_ENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISC_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSA_11key_of_nodeISF_NSA_9select1stIS8_EEEESt4lessIS7_EmLb1ELNS0_10algo_typesE5EvE5eraseENS0_13tree_iteratorISK_Lb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive::tree_iterator") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dead_on_return %12) #26, !noalias !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !1034
  store ptr %.1.i.i.i.i.i.i.i.i257, ptr %55, align 8, !tbaa !207, !alias.scope !1032
  %.not.i.i.i263 = icmp eq ptr %.1.i.i.i.i.i.i.i.i257, null
  br i1 %.not.i.i.i263, label %_ZN5boost9container8multimapINS0_4test11movable_intES3_St4lessIS3_EvvE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13tree_iteratorINS9_8bhtraitsINS0_9base_nodeISt4pairIKS3_S3_ENS7_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS9_18rbtree_node_traitsISH_Lb1EEELNS9_14link_mode_typeE0ENS9_7dft_tagELj3EEELb0EEELb1EEEONS0_11node_handleINS0_13new_allocatorISK_EENS0_24pair_key_mapped_of_valueIS3_S3_EEEE.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.cr
  %i.nb = load ptr, ptr %i.mi, align 8, !tbaa !180, !noalias !1036
  store ptr null, ptr %55, align 8, !tbaa !208, !noalias !1037
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !1038
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !1038
  store i8 0, ptr %10, align 8, !tbaa !210, !noalias !1038
  %i.nc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.nc, align 8, !tbaa !211, !noalias !1038
  store ptr %i.mh, ptr %11, align 8, !tbaa !214, !noalias !1038
  invoke void @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE18insert_equal_checkINS0_6detail16key_nodeptr_compISt4lessINS_9container4test11movable_intEENS0_8bhtraitsINSA_9base_nodeISt4pairIKSC_SC_ENSA_3dtl19intrusive_tree_hookIS3_LNSA_14tree_type_enumE0ELb1EEELb1EEES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENSJ_11key_of_nodeISN_NSJ_9select1stISH_EEEEEEEEvPNS0_19compact_rbtree_nodeIS3_EESY_SY_T_RNS0_20insert_commit_data_tISY_EEPm(ptr noundef nonnull %i.mh, ptr noundef %i.nb, ptr noundef nonnull align 8 dereferenceable(32) %.1.i.i.i.i.i.i.i.i257, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
          to label %.noexc264 unwind label %bb.dd

.noexc264:                                        ; preds = %.noexc.i
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !211, !noalias !1038 ; 6 uses
  %i.ne = icmp eq ptr %i.nd, %i.mh
  br i1 %i.ne, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.noexc264
  %i.nf = ptrtoint ptr %.1.i.i.i.i.i.i.i.i257 to i64
  %i.ng = load ptr, ptr %i.mh, align 8, !tbaa !185, !noalias !1038
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = and i64 %i.nh, 1
  %i.nj = or disjoint i64 %i.ni, %i.nf
  %i.nk = inttoptr i64 %i.nj to ptr
end_hunk_0
