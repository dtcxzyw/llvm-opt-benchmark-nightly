Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_func?download=true
inline.NumInlined: 8130
inline.NumDeleted: 2430
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__shared_count" = type { ptr }
%"struct.entt::internal::meta_type_node" = type { ptr, i32, ptr, i32, i64, ptr, ptr, ptr, ptr, %"struct.entt::internal::meta_template_node", %"struct.entt::internal::meta_custom_node", %"class.std::unique_ptr.118" }
%"struct.entt::internal::meta_template_node" = type { i64, ptr, ptr }
%"struct.entt::internal::meta_custom_node" = type { i32, %"class.std::shared_ptr.115" }
%"class.std::shared_ptr.115" = type { %"class.std::__shared_ptr.116" }
%"class.std::__shared_ptr.116" = type { ptr, %"class.std::__shared_count" }
%"class.std::unique_ptr.118" = type { %"struct.std::__uniq_ptr_data.119" }
%"struct.std::__uniq_ptr_data.119" = type { %"class.std::__uniq_ptr_impl.120" }
%"class.std::__uniq_ptr_impl.120" = type { %"class.std::tuple.121" }
%"class.std::tuple.121" = type { %"struct.std::_Tuple_impl.122" }
%"struct.std::_Tuple_impl.122" = type { %"struct.std::_Head_base.125" }
%"struct.std::_Head_base.125" = type { ptr }
%"struct.entt::type_info" = type { i32, i32, %"class.std::basic_string_view" }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::VTable" = type { ptr, ptr, ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.std::array.362" = type { [3 x ptr] }
%"class.testing::internal::GTestLog" = type { i32 }
%"class.testing::AssertionResult" = type { i8, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.testing::Message" = type { %"class.std::unique_ptr.2" }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.testing::internal::AssertHelper" = type { ptr }
%"class.entt::meta_type" = type { ptr, ptr }
%"class.testing::Matcher" = type { %"class.testing::internal::MatcherBase" }
%"class.testing::internal::MatcherBase" = type { %"class.testing::MatcherDescriberInterface", ptr, %"union.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::Buffer" }
%"class.testing::MatcherDescriberInterface" = type { ptr }
%"union.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::Buffer" = type { ptr }
%"class.entt::meta_factory" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::internal::basic_meta_factory" = type { ptr, ptr, ptr, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.testing::PolymorphicMatcher" = type { %"class.testing::internal::MatchesRegexMatcher" }
%"class.testing::internal::MatchesRegexMatcher" = type <{ %"class.std::shared_ptr.176", i8, [7 x i8] }>
%"class.std::shared_ptr.176" = type { %"class.std::__shared_ptr.177" }
%"class.std::__shared_ptr.177" = type { ptr, %"class.std::__shared_count" }
%"struct.entt::internal::meta_func_node" = type { i32, ptr, i32, i64, ptr, ptr, ptr, %"class.std::unique_ptr.126", %"struct.entt::internal::meta_custom_node" }
%"class.std::unique_ptr.126" = type { %"struct.std::__uniq_ptr_data.127" }
%"struct.std::__uniq_ptr_data.127" = type { %"class.std::__uniq_ptr_impl.128" }
%"class.std::__uniq_ptr_impl.128" = type { %"class.std::tuple.129" }
%"class.std::tuple.129" = type { %"struct.std::_Tuple_impl.130" }
%"struct.std::_Tuple_impl.130" = type { %"struct.std::_Head_base.133" }
%"struct.std::_Head_base.133" = type { ptr }
%"class.entt::meta_handle" = type { %"class.entt::meta_any" }
%"class.entt::meta_any" = type { %"class.entt::basic_any", ptr, ptr, ptr }
%"class.entt::basic_any" = type <{ %"struct.entt::internal::basic_any_storage", ptr, ptr, i32, i8, [3 x i8] }>
%"struct.entt::internal::basic_any_storage" = type { %union.anon.24 }
%union.anon.24 = type { ptr, [8 x i8] }
%"struct.entt::meta_func" = type { %"struct.entt::meta_object" }
%"struct.entt::meta_object" = type { %"struct.entt::internal::basic_meta_object" }
%"struct.entt::internal::basic_meta_object" = type { ptr, ptr }
%"struct.MetaFunc::function" = type { i32 }
%"struct.std::array.401" = type { [2 x %"class.entt::meta_any"] }
%"struct.MetaFunc::derived" = type { %"struct.MetaFunc::base.base", [4 x i8] }
%"struct.MetaFunc::base.base" = type <{ ptr, i32 }>
%"struct.std::array.403" = type { [1 x %"class.entt::meta_any"] }
%"struct.MetaFunc::base" = type <{ ptr, i32, [4 x i8] }>
%"struct.std::array.412" = type { [3 x %"class.entt::meta_any"] }
%"class.std::allocator.84" = type { i8 }
%"class.entt::basic_registry" = type { %"class.entt::internal::registry_context", %"class.entt::dense_map.59", %"class.entt::dense_map.68", %"class.entt::basic_sigh_mixin" }
%"class.entt::internal::registry_context" = type { %"class.entt::dense_map" }
%"class.entt::dense_map" = type <{ %"class.entt::compressed_pair", %"class.entt::compressed_pair.51", float, [4 x i8] }>
%"class.entt::compressed_pair" = type { %"struct.entt::internal::compressed_pair_element" }
%"struct.entt::internal::compressed_pair_element" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.entt::compressed_pair.51" = type { %"struct.entt::internal::compressed_pair_element.52" }
%"struct.entt::internal::compressed_pair_element.52" = type { %"class.std::vector.53" }
%"class.std::vector.53" = type { %"struct.std::_Vector_base.54" }
%"struct.std::_Vector_base.54" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>, std::allocator<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>, std::allocator<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>, std::allocator<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>, std::allocator<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.entt::dense_map.59" = type <{ %"class.entt::compressed_pair", %"class.entt::compressed_pair.60", float, [4 x i8] }>
%"class.entt::compressed_pair.60" = type { %"struct.entt::internal::compressed_pair_element.61" }
%"struct.entt::internal::compressed_pair_element.61" = type { %"class.std::vector.62" }
%"class.std::vector.62" = type { %"struct.std::_Vector_base.63" }
%"struct.std::_Vector_base.63" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<>>>>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<>>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<>>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<>>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.entt::dense_map.68" = type <{ %"class.entt::compressed_pair", %"class.entt::compressed_pair.69", float, [4 x i8] }>
%"class.entt::compressed_pair.69" = type { %"struct.entt::internal::compressed_pair_element.70" }
%"struct.entt::internal::compressed_pair_element.70" = type { %"class.std::vector.71" }
%"class.std::vector.71" = type { %"struct.std::_Vector_base.72" }
%"struct.std::_Vector_base.72" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.entt::basic_sigh_mixin" = type { %"class.entt::basic_storage", ptr, %"class.entt::sigh", %"class.entt::sigh", %"class.entt::sigh" }
%"class.entt::basic_storage" = type { %"class.entt::basic_sparse_set", i64 }
%"class.entt::basic_sparse_set" = type { ptr, %"class.std::vector.77", %"class.std::vector.82", ptr, i8, i64 }
%"class.std::vector.77" = type { %"struct.std::_Vector_base.78" }
%"struct.std::_Vector_base.78" = type { %"struct.std::_Vector_base<entt::entity *, std::allocator<entt::entity *>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::entity *, std::allocator<entt::entity *>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::entity *, std::allocator<entt::entity *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::entity *, std::allocator<entt::entity *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.82" = type { %"struct.std::_Vector_base.83" }
%"struct.std::_Vector_base.83" = type { %"struct.std::_Vector_base<entt::entity, std::allocator<entt::entity>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::entity, std::allocator<entt::entity>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::entity, std::allocator<entt::entity>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::entity, std::allocator<entt::entity>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.entt::sigh" = type { %"class.std::vector.87" }
%"class.std::vector.87" = type { %"struct.std::_Vector_base.88" }
%"struct.std::_Vector_base.88" = type { %"struct.std::_Vector_base<entt::delegate<void (entt::basic_registry<> &, entt::entity)>, std::allocator<entt::delegate<void (entt::basic_registry<> &, entt::entity)>>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::delegate<void (entt::basic_registry<> &, entt::entity)>, std::allocator<entt::delegate<void (entt::basic_registry<> &, entt::entity)>>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::delegate<void (entt::basic_registry<> &, entt::entity)>, std::allocator<entt::delegate<void (entt::basic_registry<> &, entt::entity)>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::delegate<void (entt::basic_registry<> &, entt::entity)>, std::allocator<entt::delegate<void (entt::basic_registry<> &, entt::entity)>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr.385" = type { %"class.std::__shared_ptr.386" }
%"class.std::__shared_ptr.386" = type { ptr, %"class.std::__shared_count" }
%"struct.std::array.435" = type { [1 x %"class.entt::meta_handle"] }
%"struct.std::array.445" = type { [2 x %"class.entt::meta_handle"] }
%"class.entt::meta_factory.232" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.233" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.234" = type { %"class.entt::internal::basic_meta_factory" }
%"class.std::shared_ptr.364" = type { %"class.std::__shared_ptr.365" }
%"class.std::__shared_ptr.365" = type { ptr, %"class.std::__shared_count" }
%"class.std::unique_ptr.160" = type { %"struct.std::__uniq_ptr_data.161" }
%"struct.std::__uniq_ptr_data.161" = type { %"class.std::__uniq_ptr_impl.162" }
%"class.std::__uniq_ptr_impl.162" = type { %"class.std::tuple.163" }
%"class.std::tuple.163" = type { %"struct.std::_Tuple_impl.164" }
%"struct.std::_Tuple_impl.164" = type { %"struct.std::_Head_base.167" }
%"struct.std::_Head_base.167" = type { ptr }
%"class.std::tuple.248" = type { %"struct.std::_Tuple_impl.249" }
%"struct.std::_Tuple_impl.249" = type { %"struct.std::_Head_base.250" }
%"struct.std::_Head_base.250" = type { ptr }
%"class.std::tuple.251" = type { %"struct.std::_Tuple_impl.252" }
%"struct.std::_Tuple_impl.252" = type { %"struct.std::_Head_base.253" }
%"struct.std::_Head_base.253" = type { ptr }
%"class.std::shared_ptr.220" = type { %"class.std::__shared_ptr.221" }
%"class.std::__shared_ptr.221" = type { ptr, %"class.std::__shared_count" }
%"class.std::tuple.357" = type { %"struct.std::_Tuple_impl.358" }
%"struct.std::_Tuple_impl.358" = type { %"struct.std::_Head_base.359" }
%"struct.std::_Head_base.359" = type { ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZN7testing8internal16SuiteApiResolverI8MetaFuncE19GetSetUpCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal16SuiteApiResolverI8MetaFuncE22GetTearDownCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal8EqHelper7CompareIN4test11meta_traitsES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_ = comdat any

$_ZN4entt7resolveIN8MetaFunc8functionEEENS_9meta_typeEv = comdat any

$_ZNK4entt9meta_type4funcEjb = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc = comdat any

$_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZN4entt12meta_factoryIN8MetaFunc8functionEEC2Ev = comdat any

$_ZN4entt12meta_factoryIN8MetaFunc8functionEE4funcITnDaXadL_ZNS2_1gEiEENS_10as_value_tEEES3_jPKc = comdat any

$__clang_call_terminate = comdat any

$_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_ = comdat any

$_ZNK4entt9meta_func6invokeIRN8MetaFunc8functionEJiiEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_ = comdat any

$_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv = comdat any

$_ZNK4entt9meta_func6invokeIRN8MetaFunc8functionEJiEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRN8MetaFunc8functionEJNS2_7derivedEEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZN8MetaFunc4baseD2Ev = comdat any

$_ZNK4entt9meta_func6invokeINS_11meta_handleEJiNS_8meta_anyEEEES3_OT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeINS_11meta_handleEJN8MetaFunc7derivedENS_8meta_anyEEEES5_OT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRN8MetaFunc4baseEJiEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeINS_11meta_handleEJiEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRKN8MetaFunc4baseEJiEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeINS_11meta_handleEJEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRiJcEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRN8MetaFunc8functionEJNS2_7derivedEiS4_EEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRN8MetaFunc8functionEJbdEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeINS_11meta_handleEJNS_8meta_anyES3_EEES3_OT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRN8MetaFunc8functionEJNS_8meta_anyEEEES5_OT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRKN8MetaFunc8functionEJiEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeIRN8MetaFunc7derivedEJiEEENS_8meta_anyEOT_DpOT0_ = comdat any

$_ZNK4entt9meta_func6invokeINS_11meta_handleEJNS_8meta_anyERKNS_6entityEEEES3_OT_DpOT0_ = comdat any

$_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev = comdat any

$_ZN4entt12meta_factoryIN8MetaFunc8functionEE4funcITnDaXadL_ZNS2_1fEiiEENS_10as_value_tEEES3_jPKc = comdat any
end_hunk_0
begin_hunk_1
@_ZTVN7testing8internal15TestFactoryImplI24MetaFunc_UserTraits_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI24MetaFunc_UserTraits_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaFunc_UserTraits_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaFunc_UserTraits_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI24MetaFunc_UserTraits_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI24MetaFunc_UserTraits_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI24MetaFunc_UserTraits_TestEE = linkonce_odr hidden constant [65 x i8] c"N7testing8internal15TestFactoryImplI24MetaFunc_UserTraits_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr hidden constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIvE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIvE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal10type_index4nextEvE5value = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@.str.226 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = void]\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_UserTraits_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_UserTraits_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_UserTraits_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_UserTraits_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_UserTraits_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_UserTraits_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_UserTraits_TestEE = linkonce_odr hidden constant [83 x i8] c"N7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_UserTraits_TestEE\00", comdat, align 1
@_ZTVSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [75 x i8] c"St15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo, ptr @_ZNK7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo, ptr @_ZNK7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainESC_PNS_19MatchResultListenerE] }, comdat, align 8
@_ZTIN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE }, comdat, align 8
@_ZTSN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant [140 x i8] c"N7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant [85 x i8] c"N7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN7testing25MatcherDescriberInterfaceE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing25MatcherDescriberInterfaceE = linkonce_odr dso_local constant [38 x i8] c"N7testing25MatcherDescriberInterfaceE\00", comdat, align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"matches\00", align 1
@.str.230 = private unnamed_addr constant [9 x i8] c"contains\00", align 1
@.str.231 = private unnamed_addr constant [21 x i8] c" regular expression \00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"doesn't \00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"contain\00", align 1
@_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE }, comdat, align 8
@_ZTSN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant [75 x i8] c"N7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant [89 x i8] c"N7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11 = linkonce_odr hidden constant %"struct.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::VTable" { ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE19MatchAndExplainImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSA_S9_PNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12DescribeImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEvRKSA_PSob, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16GetDescriberImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSA_, ptr @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISD_EEE7DestroyEPNS0_17SharedPayloadBaseE }, comdat, align 8
@.str.235 = private unnamed_addr constant [36 x i8] c"/usr/include/gtest/gtest-matchers.h\00", align 1
@.str.236 = private unnamed_addr constant [38 x i8] c"Condition vtable_ != nullptr failed. \00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZTVN7testing8internal15TestFactoryImplI20MetaFunc_Custom_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20MetaFunc_Custom_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaFunc_Custom_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaFunc_Custom_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20MetaFunc_Custom_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20MetaFunc_Custom_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20MetaFunc_Custom_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20MetaFunc_Custom_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI38MetaFuncDeathTest_DISABLED_Custom_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI38MetaFuncDeathTest_DISABLED_Custom_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaFuncDeathTest_DISABLED_Custom_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaFuncDeathTest_DISABLED_Custom_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI38MetaFuncDeathTest_DISABLED_Custom_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI38MetaFuncDeathTest_DISABLED_Custom_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI38MetaFuncDeathTest_DISABLED_Custom_TestEE = linkonce_odr hidden constant [79 x i8] c"N7testing8internal15TestFactoryImplI38MetaFuncDeathTest_DISABLED_Custom_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI18MetaFunc_Name_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI18MetaFunc_Name_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaFunc_Name_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaFunc_Name_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI18MetaFunc_Name_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI18MetaFunc_Name_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI18MetaFunc_Name_TestEE = linkonce_odr hidden constant [59 x i8] c"N7testing8internal15TestFactoryImplI18MetaFunc_Name_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI24MetaFunc_Comparison_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI24MetaFunc_Comparison_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaFunc_Comparison_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaFunc_Comparison_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI24MetaFunc_Comparison_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI24MetaFunc_Comparison_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI24MetaFunc_Comparison_TestEE = linkonce_odr hidden constant [65 x i8] c"N7testing8internal15TestFactoryImplI24MetaFunc_Comparison_TestEE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [80 x i8] c"St23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.237 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVN7testing8internal15TestFactoryImplI22MetaFunc_NonConst_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI22MetaFunc_NonConst_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI22MetaFunc_NonConst_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI22MetaFunc_NonConst_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI22MetaFunc_NonConst_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI22MetaFunc_NonConst_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI22MetaFunc_NonConst_TestEE = linkonce_odr hidden constant [63 x i8] c"N7testing8internal15TestFactoryImplI22MetaFunc_NonConst_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI19MetaFunc_Const_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI19MetaFunc_Const_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI19MetaFunc_Const_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI19MetaFunc_Const_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI19MetaFunc_Const_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI19MetaFunc_Const_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI19MetaFunc_Const_TestEE = linkonce_odr hidden constant [60 x i8] c"N7testing8internal15TestFactoryImplI19MetaFunc_Const_TestEE\00", comdat, align 1
@_ZTVN8MetaFunc7derivedE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN8MetaFunc7derivedE, ptr @_ZN8MetaFunc4baseD2Ev, ptr @_ZN8MetaFunc7derivedD0Ev] }, comdat, align 8
@_ZTIN8MetaFunc7derivedE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8MetaFunc7derivedE, ptr @_ZTIN8MetaFunc4baseE }, comdat, align 8
@_ZTSN8MetaFunc7derivedE = linkonce_odr hidden constant [20 x i8] c"N8MetaFunc7derivedE\00", comdat, align 1
@_ZTIN8MetaFunc4baseE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8MetaFunc4baseE }, comdat, align 8
@_ZTSN8MetaFunc4baseE = linkonce_odr hidden constant [17 x i8] c"N8MetaFunc4baseE\00", comdat, align 1
@_ZTVN8MetaFunc4baseE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN8MetaFunc4baseE, ptr @_ZN8MetaFunc4baseD2Ev, ptr @_ZN8MetaFunc4baseD0Ev] }, comdat, align 8
@_ZTVN7testing8internal15TestFactoryImplI21MetaFunc_RetVoid_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI21MetaFunc_RetVoid_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI21MetaFunc_RetVoid_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI21MetaFunc_RetVoid_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI21MetaFunc_RetVoid_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI21MetaFunc_RetVoid_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI21MetaFunc_RetVoid_TestEE = linkonce_odr hidden constant [62 x i8] c"N7testing8internal15TestFactoryImplI21MetaFunc_RetVoid_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI20MetaFunc_Static_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20MetaFunc_Static_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaFunc_Static_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaFunc_Static_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20MetaFunc_Static_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20MetaFunc_Static_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20MetaFunc_Static_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20MetaFunc_Static_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI27MetaFunc_StaticRetVoid_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI27MetaFunc_StaticRetVoid_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaFunc_StaticRetVoid_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaFunc_StaticRetVoid_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI27MetaFunc_StaticRetVoid_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI27MetaFunc_StaticRetVoid_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI27MetaFunc_StaticRetVoid_TestEE = linkonce_odr hidden constant [68 x i8] c"N7testing8internal15TestFactoryImplI27MetaFunc_StaticRetVoid_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28MetaFunc_StaticAsMember_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_StaticAsMember_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_StaticAsMember_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_StaticAsMember_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_StaticAsMember_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_StaticAsMember_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_StaticAsMember_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28MetaFunc_StaticAsMember_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI33MetaFunc_StaticAsConstMember_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI33MetaFunc_StaticAsConstMember_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaFunc_StaticAsConstMember_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaFunc_StaticAsConstMember_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI33MetaFunc_StaticAsConstMember_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI33MetaFunc_StaticAsConstMember_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI33MetaFunc_StaticAsConstMember_TestEE = linkonce_odr hidden constant [74 x i8] c"N7testing8internal15TestFactoryImplI33MetaFunc_StaticAsConstMember_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI32MetaFunc_NonClassTypeMember_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI32MetaFunc_NonClassTypeMember_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI32MetaFunc_NonClassTypeMember_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI32MetaFunc_NonClassTypeMember_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI32MetaFunc_NonClassTypeMember_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI32MetaFunc_NonClassTypeMember_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI32MetaFunc_NonClassTypeMember_TestEE = linkonce_odr hidden constant [73 x i8] c"N7testing8internal15TestFactoryImplI32MetaFunc_NonClassTypeMember_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI25MetaFunc_MetaAnyArgs_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI25MetaFunc_MetaAnyArgs_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI25MetaFunc_MetaAnyArgs_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI25MetaFunc_MetaAnyArgs_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI25MetaFunc_MetaAnyArgs_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI25MetaFunc_MetaAnyArgs_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI25MetaFunc_MetaAnyArgs_TestEE = linkonce_odr hidden constant [66 x i8] c"N7testing8internal15TestFactoryImplI25MetaFunc_MetaAnyArgs_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI25MetaFunc_InvalidArgs_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI25MetaFunc_InvalidArgs_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI25MetaFunc_InvalidArgs_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI25MetaFunc_InvalidArgs_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI25MetaFunc_InvalidArgs_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI25MetaFunc_InvalidArgs_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI25MetaFunc_InvalidArgs_TestEE = linkonce_odr hidden constant [66 x i8] c"N7testing8internal15TestFactoryImplI25MetaFunc_InvalidArgs_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28MetaFunc_CastAndConvert_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_CastAndConvert_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_CastAndConvert_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_CastAndConvert_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_CastAndConvert_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_CastAndConvert_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_CastAndConvert_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28MetaFunc_CastAndConvert_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI34MetaFunc_ArithmeticConversion_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI34MetaFunc_ArithmeticConversion_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaFunc_ArithmeticConversion_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaFunc_ArithmeticConversion_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI34MetaFunc_ArithmeticConversion_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI34MetaFunc_ArithmeticConversion_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI34MetaFunc_ArithmeticConversion_TestEE = linkonce_odr hidden constant [75 x i8] c"N7testing8internal15TestFactoryImplI34MetaFunc_ArithmeticConversion_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI23MetaFunc_ArgsByRef_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23MetaFunc_ArgsByRef_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaFunc_ArgsByRef_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaFunc_ArgsByRef_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23MetaFunc_ArgsByRef_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23MetaFunc_ArgsByRef_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23MetaFunc_ArgsByRef_TestEE = linkonce_odr hidden constant [64 x i8] c"N7testing8internal15TestFactoryImplI23MetaFunc_ArgsByRef_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28MetaFunc_ArgsByConstRef_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_ArgsByConstRef_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_ArgsByConstRef_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_ArgsByConstRef_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_ArgsByConstRef_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_ArgsByConstRef_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_ArgsByConstRef_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28MetaFunc_ArgsByConstRef_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI27MetaFunc_ConstInstance_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI27MetaFunc_ConstInstance_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaFunc_ConstInstance_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaFunc_ConstInstance_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI27MetaFunc_ConstInstance_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI27MetaFunc_ConstInstance_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI27MetaFunc_ConstInstance_TestEE = linkonce_odr hidden constant [68 x i8] c"N7testing8internal15TestFactoryImplI27MetaFunc_ConstInstance_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI20MetaFunc_AsVoid_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20MetaFunc_AsVoid_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaFunc_AsVoid_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaFunc_AsVoid_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20MetaFunc_AsVoid_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20MetaFunc_AsVoid_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20MetaFunc_AsVoid_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20MetaFunc_AsVoid_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI18MetaFunc_AsIs_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI18MetaFunc_AsIs_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaFunc_AsIs_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaFunc_AsIs_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI18MetaFunc_AsIs_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI18MetaFunc_AsIs_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI18MetaFunc_AsIs_TestEE = linkonce_odr hidden constant [59 x i8] c"N7testing8internal15TestFactoryImplI18MetaFunc_AsIs_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI19MetaFunc_AsRef_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI19MetaFunc_AsRef_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI19MetaFunc_AsRef_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI19MetaFunc_AsRef_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI19MetaFunc_AsRef_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI19MetaFunc_AsRef_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI19MetaFunc_AsRef_TestEE = linkonce_odr hidden constant [60 x i8] c"N7testing8internal15TestFactoryImplI19MetaFunc_AsRef_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI24MetaFunc_AsConstRef_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI24MetaFunc_AsConstRef_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaFunc_AsConstRef_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaFunc_AsConstRef_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI24MetaFunc_AsConstRef_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI24MetaFunc_AsConstRef_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI24MetaFunc_AsConstRef_TestEE = linkonce_odr hidden constant [65 x i8] c"N7testing8internal15TestFactoryImplI24MetaFunc_AsConstRef_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_AsConstRef_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_AsConstRef_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_AsConstRef_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_AsConstRef_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_AsConstRef_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_AsConstRef_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_AsConstRef_TestEE = linkonce_odr hidden constant [83 x i8] c"N7testing8internal15TestFactoryImplI42MetaFuncDeathTest_DISABLED_AsConstRef_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI32MetaFunc_InvokeBaseFunction_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI32MetaFunc_InvokeBaseFunction_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI32MetaFunc_InvokeBaseFunction_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI32MetaFunc_InvokeBaseFunction_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI32MetaFunc_InvokeBaseFunction_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI32MetaFunc_InvokeBaseFunction_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI32MetaFunc_InvokeBaseFunction_TestEE = linkonce_odr hidden constant [73 x i8] c"N7testing8internal15TestFactoryImplI32MetaFunc_InvokeBaseFunction_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28MetaFunc_InvokeFromBase_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_InvokeFromBase_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_InvokeFromBase_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_InvokeFromBase_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_InvokeFromBase_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_InvokeFromBase_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_InvokeFromBase_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28MetaFunc_InvokeFromBase_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI36MetaFunc_ExternalMemberFunction_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI36MetaFunc_ExternalMemberFunction_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI36MetaFunc_ExternalMemberFunction_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI36MetaFunc_ExternalMemberFunction_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI36MetaFunc_ExternalMemberFunction_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI36MetaFunc_ExternalMemberFunction_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI36MetaFunc_ExternalMemberFunction_TestEE = linkonce_odr hidden constant [77 x i8] c"N7testing8internal15TestFactoryImplI36MetaFunc_ExternalMemberFunction_TestEE\00", comdat, align 1
@_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt16basic_sparse_setINS_6entityESaIS1_EEE, ptr @_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE6get_atEm, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE12swap_or_moveEmm, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEES8_, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7pop_allEv, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED0Ev, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7reserveEm, ptr @_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8capacityEv, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN4entt16basic_sparse_setINS_6entityESaIS1_EEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4entt16basic_sparse_setINS_6entityESaIS1_EEE }, comdat, align 8
@_ZTSN4entt16basic_sparse_setINS_6entityESaIS1_EEE = linkonce_odr hidden constant [46 x i8] c"N4entt16basic_sparse_setINS_6entityESaIS1_EEE\00", comdat, align 1
@.str.238 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.239 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.240 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.241 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI24MetaFunc_Overloaded_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI24MetaFunc_Overloaded_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaFunc_Overloaded_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaFunc_Overloaded_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI24MetaFunc_Overloaded_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI24MetaFunc_Overloaded_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI24MetaFunc_Overloaded_TestEE = linkonce_odr hidden constant [65 x i8] c"N7testing8internal15TestFactoryImplI24MetaFunc_Overloaded_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI34MetaFunc_OverloadedConstFirst_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI34MetaFunc_OverloadedConstFirst_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaFunc_OverloadedConstFirst_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaFunc_OverloadedConstFirst_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI34MetaFunc_OverloadedConstFirst_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI34MetaFunc_OverloadedConstFirst_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI34MetaFunc_OverloadedConstFirst_TestEE = linkonce_odr hidden constant [75 x i8] c"N7testing8internal15TestFactoryImplI34MetaFunc_OverloadedConstFirst_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI37MetaFunc_OverloadedNonConstFirst_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37MetaFunc_OverloadedNonConstFirst_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37MetaFunc_OverloadedNonConstFirst_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37MetaFunc_OverloadedNonConstFirst_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37MetaFunc_OverloadedNonConstFirst_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37MetaFunc_OverloadedNonConstFirst_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37MetaFunc_OverloadedNonConstFirst_TestEE = linkonce_odr hidden constant [78 x i8] c"N7testing8internal15TestFactoryImplI37MetaFunc_OverloadedNonConstFirst_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI29MetaFunc_OverloadedOrder_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI29MetaFunc_OverloadedOrder_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI29MetaFunc_OverloadedOrder_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI29MetaFunc_OverloadedOrder_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI29MetaFunc_OverloadedOrder_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI29MetaFunc_OverloadedOrder_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI29MetaFunc_OverloadedOrder_TestEE = linkonce_odr hidden constant [70 x i8] c"N7testing8internal15TestFactoryImplI29MetaFunc_OverloadedOrder_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28MetaFunc_ReRegistration_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_ReRegistration_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_ReRegistration_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaFunc_ReRegistration_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28MetaFunc_ReRegistration_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_ReRegistration_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28MetaFunc_ReRegistration_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28MetaFunc_ReRegistration_TestEE\00", comdat, align 1
@_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIdE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIdE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.245 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = double]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZZN4entt7type_idIN8MetaFunc4baseEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaFunc4baseEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaFunc4baseEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaFunc4baseEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.246 = private unnamed_addr constant [70 x i8] c"const char *entt::internal::pretty_function() [Type = MetaFunc::base]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIiE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIiE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.247 = private unnamed_addr constant [59 x i8] c"const char *entt::internal::pretty_function() [Type = int]\00", align 1
@_ZZN4entt7type_idIN8MetaFunc7derivedEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaFunc7derivedEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaFunc7derivedEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaFunc7derivedEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.248 = private unnamed_addr constant [73 x i8] c"const char *entt::internal::pretty_function() [Type = MetaFunc::derived]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc7derivedEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc7derivedEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaFunc8functionEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaFunc8functionEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.249 = private unnamed_addr constant [74 x i8] c"const char *entt::internal::pretty_function() [Type = MetaFunc::function]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryINS_6entityESaIS3_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryINS_6entityESaIS3_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.250 = private unnamed_addr constant [78 x i8] c"const char *entt::internal::pretty_function() [Type = entt::basic_registry<>]\00", align 1
@_ZTVN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEEE, ptr @_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE6get_atEm, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE12swap_or_moveEmm, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_S3_EEESC_, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE7pop_allEv, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEED2Ev, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEED0Ev, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7reserveEm, ptr @_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8capacityEv, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEEE, ptr @_ZTIN4entt13basic_storageINS_6entityES1_SaIS1_EEE }, comdat, align 8
@_ZTSN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEEE = linkonce_odr hidden constant [98 x i8] c"N4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageINS_6entityES1_SaIS1_EEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageINS_6entityES1_SaIS1_EEE, ptr @_ZTIN4entt16basic_sparse_setINS_6entityESaIS1_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageINS_6entityES1_SaIS1_EEE = linkonce_odr hidden constant [46 x i8] c"N4entt13basic_storageINS_6entityES1_SaIS1_EEE\00", comdat, align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_6entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_6entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_6entityEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_6entityEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_6entityEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_6entityEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.251 = private unnamed_addr constant [68 x i8] c"const char *entt::internal::pretty_function() [Type = entt::entity]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [183 x i8] c"St23_Sp_counted_ptr_inplaceIN4entt16basic_sigh_mixinINS0_13basic_storageIN8MetaFunc8functionENS0_6entityESaIS4_EEENS0_14basic_registryIS5_SaIS5_EEEEES9_LN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEEE, ptr @_ZNK4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE6get_atEm, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEE3popENS_8internal19sparse_set_iteratorISt6vectorIS4_S8_EEESF_, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEE7pop_allEv, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEE11try_emplaceES4_bPKv, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEED2Ev, ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEED0Ev, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE7reserveEm, ptr @_ZNK4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE8capacityEv, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEEE, ptr @_ZTIN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEEE = linkonce_odr hidden constant [119 x i8] c"N4entt16basic_sigh_mixinINS_13basic_storageIN8MetaFunc8functionENS_6entityESaIS3_EEENS_14basic_registryIS4_SaIS4_EEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EEE, ptr @_ZTIN4entt16basic_sparse_setINS_6entityESaIS1_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EEE = linkonce_odr hidden constant [63 x i8] c"N4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EEE, ptr @_ZNK4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE6get_atEm, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS3_SaIS3_EEEESB_, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE7pop_allEv, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE11try_emplaceES3_bPKv, ptr @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EED2Ev, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EED0Ev, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE7reserveEm, ptr @_ZNK4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE8capacityEv, ptr @_ZN4entt13basic_storageIN8MetaFunc8functionENS_6entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@__const._ZN4entt8internal13meta_arg_nodeIJRKN8MetaFunc4baseEiiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextENS_9type_listIJDpT_EEEm.list = private unnamed_addr constant %"struct.std::array.362" { [3 x ptr] [ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE] }, align 8
@_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIcE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIcE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.252 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = char]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [65 x i8] c"St23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [65 x i8] c"St23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZN7testing8internal12TypeIdHelperI8MetaFuncE6dummy_E = linkonce_odr hidden global i8 0, comdat, align 1
@.str.253 = private unnamed_addr constant [45 x i8] c"/usr/include/gtest/internal/gtest-internal.h\00", align 1
@.str.254 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.255 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.256 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.257 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.259 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"(nullptr)\00", align 1
@.str.263 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"Expected: (\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.266 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"), actual: \00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c" vs \00", align 1
@.str.269 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.270 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIbEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIbEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIbE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIbE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.271 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = bool]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEbEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEbEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.223, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_meta_func.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE], section "llvm.metadata"

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI8MetaFuncE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.253, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.254, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !49
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !60
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI8MetaFuncE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.253, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.254, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !49
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !60
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN24MetaFunc_UserTraits_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
end_hunk_1
begin_hunk_2_@_ZN4entt8internal11meta_invokeIN8MetaFunc7derivedENS_10as_value_tEPFvRNS2_4baseEiEJLm0EEEENS_8meta_anyERS9_OT1_PS9_St16integer_sequenceImJXspT2_EEE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8meta_any10allow_castIiEEbv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4entt8meta_any10allow_castIiEEbv.exit unwind label %bb.k, !inline_history !8

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

_ZN4entt8meta_any10allow_castIiEEbv.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not.i.not, label %_ZN4entt8meta_any8try_castIN8MetaFunc7derivedEEEPT_v.exit.thread, label %_ZN4entt8meta_any10allow_castIiEEbv.exit._ZN4entt8meta_any10allow_castIiEEbv.exit.thread_crit_edge

_ZN4entt8meta_any10allow_castIiEEbv.exit._ZN4entt8meta_any10allow_castIiEEbv.exit.thread_crit_edge: ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit
  %.pre = load i32, ptr %i.x, align 8, !tbaa !174
  %i.aj = icmp ne i32 %.pre, -1779859874
  br label %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread

_ZN4entt8meta_any10allow_castIiEEbv.exit.thread:  ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit._ZN4entt8meta_any10allow_castIiEEbv.exit.thread_crit_edge, %_ZN4entt8meta_any8try_castIN8MetaFunc7derivedEEEPT_v.exit.thread11
  %i.ak = phi i1 [ %i.aj, %_ZN4entt8meta_any10allow_castIiEEbv.exit._ZN4entt8meta_any10allow_castIiEEbv.exit.thread_crit_edge ], [ false, %_ZN4entt8meta_any8try_castIN8MetaFunc7derivedEEEPT_v.exit.thread11 ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !178
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4             ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 2
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = select i1 %i.ap, ptr %3, ptr %i.aq      ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.ar, null
  %.not.i.i.i = select i1 %i.ak, i1 true, i1 %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !178
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !179 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.m, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !180, !nonnull !93, !noundef !93
  call void %i.ay(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef null), !inline_history !23
  %.pre.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !179
  %.pre.i.i.i9 = load i8, ptr %i.an, align 4, !tbaa !176
  %.pre5.i.i.i = load ptr, ptr %3, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i:      ; preds = %bb.m, %bb.l
  %i.az = phi ptr [ %.pre5.i.i.i, %bb.m ], [ %i.aq, %bb.l ]
  %i.ba = phi i8 [ %.pre.i.i.i9, %bb.m ], [ %i.ao, %bb.l ]
  %i.bb = phi ptr [ %.pre.i.i.i.i, %bb.m ], [ %i.av, %bb.l ]
  %i.bc = icmp eq i8 %i.ba, 2
  %i.bd = select i1 %i.bc, ptr %3, ptr %i.az
  %i.be = call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %i.bb, i32 noundef -1779859874, ptr noundef %i.bd) #26
  br label %bb.n

bb.n:                                             ; preds = %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i, %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread
  %i.bf = phi ptr [ %i.be, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i ], [ %i.ar, %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread ]
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !127
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.bh = load ptr, ptr %2, align 8, !tbaa !126, !noalias !1125
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(12) %i.w, i32 noundef %i.bg), !noalias !1125, !inline_history !1124
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.bi, align 8, !tbaa !173, !alias.scope !1125
  store i32 1219850847, ptr %i.bk, align 8, !tbaa !174, !alias.scope !1125
  store ptr null, ptr %i.bj, align 8, !tbaa !175, !alias.scope !1125
  store i8 0, ptr %i.bl, align 4, !tbaa !176, !alias.scope !1125
  store ptr null, ptr %0, align 8, !tbaa !100, !alias.scope !1125
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.am, ptr %i.bm, align 8, !tbaa !178, !alias.scope !1125
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.bn, align 8, !tbaa !179, !alias.scope !1125
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEvEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.bo, align 8, !tbaa !180, !alias.scope !1125
  br label %bb.o

_ZN4entt8meta_any8try_castIN8MetaFunc7derivedEEEPT_v.exit.thread: ; preds = %bb.c, %bb.a, %_ZN4entt8meta_any10allow_castIiEEbv.exit, %_ZN4entt8meta_any8try_castIN8MetaFunc7derivedEEEPT_v.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !178
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.br, align 8, !tbaa !173
  store i32 1219850847, ptr %i.bt, align 8, !tbaa !174
  store ptr null, ptr %i.bs, align 8, !tbaa !175
  store i8 0, ptr %i.bu, align 4, !tbaa !176
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bq, ptr %i.bv, align 8, !tbaa !178
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4entt8meta_any8try_castIN8MetaFunc7derivedEEEPT_v.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8MetaFunc4base13static_setterERS0_i(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !222

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forIN8MetaFunc8functionEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !247
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !224  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !192
  %i.k = load ptr, ptr %0, align 8, !tbaa !193    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %i.p, %i.h
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.07.in.i.i = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.f ]
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !156 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !127
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !246  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !246
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !184
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4entt8meta_argINS_9type_listIJRNS_14basic_registryINS_6entityESaIS3_EEES3_EEEEENS_9meta_typeERKNS_8meta_ctxEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #5 comdat {
bb.a:
  %.sroa.idx.i = icmp eq i64 %1, 1
  %.sroa.speculated.i = select i1 %.sroa.idx.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_6entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryINS_6entityESaIS3_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #26, !inline_history !1126
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11meta_invokeIN8MetaFunc8functionETnDaXadL_ZNS_14basic_registryINS_6entityESaIS4_EE18emplace_or_replaceIS2_JEEEDcS4_DpOT0_EETkNS_11meta_policyENS_8as_ref_tEEENS_8meta_anyENS_11meta_handleEPSC_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(64) %1, ptr noundef %2) #2 comdat {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 ptrtoint (ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE18emplace_or_replaceIN8MetaFunc8functionEJEEEDcS1_DpOT0_ to i64), ptr %i.a, align 8, !tbaa !100
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !100
  call void @_ZN4entt8internal11meta_invokeIN8MetaFunc8functionENS_8as_ref_tEMNS_14basic_registryINS_6entityESaIS6_EEEFRS3_S6_EJLm0ELm1EEEENS_8meta_anyERSC_OT1_PSC_St16integer_sequenceImJXspT2_EEE(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forIN8MetaFunc8functionEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit, !prof !222

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IN8MetaFunc8functionEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !222

bb.d:                                             ; preds = %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IN8MetaFunc8functionEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !224
  store ptr @_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 128, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 4, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4entt8internal14setup_node_forIN8MetaFunc8functionEEEDavENUlRKNS_8meta_ctxEE_8__invokeES6_, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZZN4entt8internal14setup_node_forIN8MetaFunc8functionEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES6_S7_S9_, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.14.0..sroa_idx, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IN8MetaFunc8functionEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIN8MetaFunc8functionEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIN8MetaFunc8functionEE5valueEv.exit, !prof !222

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIN8MetaFunc8functionEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIN8MetaFunc8functionEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !127 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !127
  store i32 %i.d, ptr @_ZZN4entt10type_indexIN8MetaFunc8functionEE5valueEvE5value, align 4, !tbaa !127
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIN8MetaFunc8functionEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIN8MetaFunc8functionEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexIN8MetaFunc8functionEE5valueEv.exit

_ZN4entt10type_indexIN8MetaFunc8functionEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIN8MetaFunc8functionEE5valueEvE5value, align 4, !tbaa !127
  store i32 %i.g, ptr %0, align 8, !tbaa !248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -479689226, ptr %i.h, align 4, !tbaa !224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 18, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.249, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forIN8MetaFunc8functionEEEDavENUlRKNS_8meta_ctxEE_8__invokeES6_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #8 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !100, !alias.scope !1129
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.a, align 8, !tbaa !173, !alias.scope !1129
  store i32 -479689226, ptr %i.c, align 8, !tbaa !174, !alias.scope !1129
  store ptr null, ptr %i.b, align 8, !tbaa !175, !alias.scope !1129
  store i8 2, ptr %i.d, align 4, !tbaa !176, !alias.scope !1129
  store i32 0, ptr %0, align 8, !tbaa !155, !alias.scope !1129
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !178, !alias.scope !1129
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !179, !alias.scope !1129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.g, align 8, !tbaa !180, !alias.scope !1129
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEEvNS_8internal11meta_traitsERKS0_Pv(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEEPKvNS_8internal11any_requestERKS1_S6_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !176
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 5 uses
  switch i8 %0, label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit, !prof !222

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IN8MetaFunc8functionEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i32, ptr %2, align 4, !tbaa !127
  store i32 %i.j, ptr %i.e, align 4, !tbaa !127
  br label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.k = load i32, ptr %2, align 4, !tbaa !127
  store i32 %i.k, ptr %i.e, align 4, !tbaa !127
  br label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.e, align 4, !tbaa !155
  %i.m = load i32, ptr %2, align 4, !tbaa !155
  %i.n = icmp eq i32 %i.l, %i.m
  %i.o = select i1 %i.n, ptr %2, ptr null
  br label %_ZN4entt7type_idIN8MetaFunc8functionEEERKNS_9type_infoEv.exit
end_hunk_2
begin_hunk_3_@_ZN4entt8internal18basic_meta_factory6customENS0_16meta_custom_nodeE:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.lcssa, i64 80
  %i.cn = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !125 ; 8 uses
  store <2 x ptr> %i.cn, ptr %i.ck, align 8, !tbaa !126
  %.not.i.i.i.i.i9 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i9, label %_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cp, align 8, !tbaa !136
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !137
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #26, !inline_history !1242
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #26, !inline_history !1242
  br label %_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i10 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i.i10, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !127
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11

bb.u:                                             ; preds = %bb.s
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i12 = phi i32 [ %i.cs, %bb.t ], [ %i.dc, %bb.u ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i.i12, 1
  br i1 %i.dd, label %bb.v, label %_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit, !prof !138

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #26
  br label %_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit

_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit:  ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11, %bb.r, %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i3, %bb.k, %_ZN4entt8internal18basic_meta_factory21find_member_or_assertEv.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIcLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !137
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !15
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !127
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !138

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIcE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIcE5valueEv.exit, !prof !222

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIcE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIcE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !127 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !127
  store i32 %i.d, ptr @_ZZN4entt10type_indexIcE5valueEvE5value, align 4, !tbaa !127
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIcE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIcE5valueEvE5value) #26
  br label %_ZN4entt10type_indexIcE5valueEv.exit

_ZN4entt10type_indexIcE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIcE5valueEvE5value, align 4, !tbaa !127
  store i32 %i.g, ptr %0, align 8, !tbaa !248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1471413475, ptr %i.h, align 4, !tbaa !224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.252, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIcEEvRS0_PT_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !100
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4entt8meta_argINS_9type_listIJRiRKN8MetaFunc8functionEEEEEENS_9meta_typeERKNS_8meta_ctxEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #5 comdat {
bb.a:
  %.sroa.idx.i = icmp eq i64 %1, 1
  %.sroa.speculated.i = select i1 %.sroa.idx.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #26, !inline_history !1243
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11meta_invokeIN8MetaFunc8functionETnDaXadL_ZNS2_1hERiRKS2_EETkNS_11meta_policyENS_10as_value_tEEENS_8meta_anyENS_11meta_handleEPS7_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(64) %1, ptr noundef %2) #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZN8MetaFunc8function1hERiRKS0_, ptr %i.a, align 8, !tbaa !126
  call void @_ZN4entt8internal11meta_invokeIN8MetaFunc8functionENS_10as_value_tEPFiRiRKS3_EJLm0ELm1EEEENS_8meta_anyERSA_OT1_PSA_St16integer_sequenceImJXspT2_EEE(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt8internal11meta_invokeIN8MetaFunc8functionENS_10as_value_tEPFiRiRKS3_EJLm0ELm1EEEENS_8meta_anyERSA_OT1_PSA_St16integer_sequenceImJXspT2_EEE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.entt::meta_any", align 8    ; 8 uses
  %5 = alloca %"class.entt::meta_any", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !174
  %i.c = icmp eq i32 %i.b, -1779859874
  br i1 %i.c, label %_ZN4entt8meta_any10allow_castIRiEEbv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNK4entt8meta_any10allow_castIiEES0_v(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !180
  %.not.i.not.i = icmp eq ptr %i.e, null          ; 2 uses
  br i1 %.not.i.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !176
  %i.h = add i8 %i.g, -1
  %spec.select.i.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt4swapIN4entt8meta_anyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt8meta_any10allow_castIRKiEEbv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN4entt8meta_any10allow_castIRKiEEbv.exit.i unwind label %bb.g, !inline_history !8

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN4entt8meta_any10allow_castIRKiEEbv.exit.i:     ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.not.i.not.i, label %_ZN4entt8meta_any10allow_castIRiEEbv.exit.thread, label %_ZN4entt8meta_any10allow_castIRiEEbv.exit

_ZN4entt8meta_any10allow_castIRiEEbv.exit:        ; preds = %bb.a, %_ZN4entt8meta_any10allow_castIRKiEEbv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !176   ; 2 uses
  %.not = icmp eq i8 %i.n, 4
  br i1 %.not, label %_ZN4entt8meta_any10allow_castIRiEEbv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4entt8meta_any10allow_castIRiEEbv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !174
  %i.r = icmp eq i32 %i.q, -479689226
  br i1 %i.r, label %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNK4entt8meta_any10allow_castIN8MetaFunc8functionEEES0_v(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !180
  %.not.i.not = icmp eq ptr %i.t, null            ; 2 uses
  br i1 %.not.i.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.v = load i8, ptr %i.u, align 4, !tbaa !176
  %i.w = add i8 %i.v, -1
  %spec.select.i.i = icmp ult i8 %i.w, 2
  br i1 %spec.select.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZSt4swapIN4entt8meta_anyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %4) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit unwind label %bb.n, !inline_history !8

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not.i.not, label %_ZN4entt8meta_any10allow_castIRiEEbv.exit.thread, label %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit._ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread_crit_edge

_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit._ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread_crit_edge: ; preds = %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit
  %.pre = load i8, ptr %i.m, align 4, !tbaa !176
  br label %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread

_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread: ; preds = %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit._ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread_crit_edge, %bb.h
  %i.ab = phi i8 [ %.pre, %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit._ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread_crit_edge ], [ %i.n, %bb.h ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !178
  %i.ae = icmp ne i8 %i.ab, 4
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i32, ptr %i.a, align 8, !tbaa !174
  %i.ag = icmp ne i32 %i.af, -1779859874
  %i.ah = icmp eq i8 %i.ab, 2
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = select i1 %i.ah, ptr %3, ptr %i.ai      ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.aj, null
  %.not.i.i.i = select i1 %i.ag, i1 true, i1 %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.o, label %_ZN4entt8meta_any4castIRiEENSt12remove_constIT_E4typeEv.exit

bb.o:                                             ; preds = %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !178
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !179 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.p, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !180, !nonnull !93, !noundef !93
  call void %i.aq(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef null), !inline_history !37
  %.pre.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !179
  %.pre.i.i.i = load i8, ptr %i.m, align 4, !tbaa !176
  %.pre5.i.i.i = load ptr, ptr %3, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i:      ; preds = %bb.p, %bb.o
  %i.ar = phi ptr [ %.pre5.i.i.i, %bb.p ], [ %i.ai, %bb.o ]
  %i.as = phi i8 [ %.pre.i.i.i, %bb.p ], [ %i.ab, %bb.o ]
  %i.at = phi ptr [ %.pre.i.i.i.i, %bb.p ], [ %i.an, %bb.o ]
  %i.au = icmp eq i8 %i.as, 2
  %i.av = select i1 %i.au, ptr %3, ptr %i.ar
  %i.aw = call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %i.at, i32 noundef -1779859874, ptr noundef %i.av) #26
  br label %_ZN4entt8meta_any4castIRiEENSt12remove_constIT_E4typeEv.exit

_ZN4entt8meta_any4castIRiEENSt12remove_constIT_E4typeEv.exit: ; preds = %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i
  %i.ax = phi ptr [ %i.aj, %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.thread ], [ %i.aw, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.az = load i32, ptr %i.p, align 8, !tbaa !174
  %i.ba = icmp ne i32 %i.az, -479689226
  %i.bb = load i8, ptr %i.ay, align 4             ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 2
  %i.bd = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.be = select i1 %i.bc, ptr %i.o, ptr %i.bd    ; 2 uses
  %.not3.i.i.i7 = icmp eq ptr %i.be, null
  %.not.i.i.i8 = select i1 %i.ba, i1 true, i1 %.not3.i.i.i7
  br i1 %.not.i.i.i8, label %bb.q, label %_ZN4entt8meta_any4castIRKN8MetaFunc8functionEEENSt12remove_constIT_E4typeEv.exit

bb.q:                                             ; preds = %_ZN4entt8meta_any4castIRiEENSt12remove_constIT_E4typeEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !178
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !179 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.r, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i9

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !180, !nonnull !93, !noundef !93
  call void %i.bl(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef null), !inline_history !1244
  %.pre.i.i.i.i10 = load ptr, ptr %i.bh, align 8, !tbaa !179
  %.pre.i.i.i11 = load i8, ptr %i.ay, align 4, !tbaa !176
  %.pre5.i.i.i12 = load ptr, ptr %i.o, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i9

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i9:     ; preds = %bb.r, %bb.q
  %i.bm = phi ptr [ %.pre5.i.i.i12, %bb.r ], [ %i.bd, %bb.q ]
  %i.bn = phi i8 [ %.pre.i.i.i11, %bb.r ], [ %i.bb, %bb.q ]
  %i.bo = phi ptr [ %.pre.i.i.i.i10, %bb.r ], [ %i.bi, %bb.q ]
  %i.bp = icmp eq i8 %i.bn, 2
  %i.bq = select i1 %i.bp, ptr %i.o, ptr %i.bm
end_hunk_3
begin_hunk_4_@_ZNK4entt8meta_any10allow_castIN8MetaFunc8functionEEES0_v:bb.a
bb.e:                                             ; preds = %bb.d
  tail call void %i.v(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef null), !inline_history !9
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !179
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit

_ZNK4entt8meta_any10fetch_nodeEv.exit:            ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %.pre.i, %bb.e ], [ %i.x, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !120 ; 5 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.critedge29, label %bb.f

bb.f:                                             ; preds = %_ZNK4entt8meta_any10fetch_nodeEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !316 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !316 ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.sroa.010.015.i = phi ptr [ %i.ai, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.ah = load i32, ptr %.sroa.010.015.i, align 8, !tbaa !318
  %.not.i30 = icmp eq i32 %i.ah, -479689226
  br i1 %.not.i30, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.af
  br i1 %i.aj, label %.critedge, label %.lr.ph.i

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit: ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !319
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !178
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !176
  %i.aq = icmp eq i8 %i.ap, 2
  %i.ar = load ptr, ptr %1, align 8
  %i.as = select i1 %i.aq, ptr %1, ptr %i.ar
  tail call void %i.al(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef %i.as)
  br label %.critedge29.thread

.critedge:                                        ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !242 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !242 ; 2 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %.critedge29, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZN4entt8meta_anyD2Ev.exit36
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.037.044, i64 24 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.aw
  br i1 %i.be, label %.critedge29, label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.037.044 = phi ptr [ %i.au, %.lr.ph ], [ %i.bd, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.037.044, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !244
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !178
  %i.bi = call noundef nonnull align 8 dereferenceable(128) ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(56) %i.bh) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !320
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !178
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.037.044, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !314
  %i.bo = load i8, ptr %i.az, align 4, !tbaa !176
  %i.bp = icmp eq i8 %i.bo, 2
  %i.bq = load ptr, ptr %1, align 8
  %i.br = select i1 %i.bp, ptr %1, ptr %i.bq
  %i.bs = call noundef ptr %i.bn(ptr noundef %i.br) #26
  call void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef null, ptr noundef %i.bs)
  %i.bt = load i32, ptr %.sroa.037.044, align 8, !tbaa !310
  %i.bu = icmp eq i32 %i.bt, -479689226
  br i1 %i.bu, label %.critedge27, label %bb.l

.critedge27:                                      ; preds = %bb.i
  call void @_ZN4entt8meta_anyC2EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2) #26
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.critedge27
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.k, !inline_history !8

bb.k:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %.critedge27, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.critedge29.thread

bb.l:                                             ; preds = %bb.i
  invoke void @_ZNK4entt8meta_any10allow_castIN8MetaFunc8functionEEES0_v(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !180
  %.not42 = icmp eq ptr %i.by, null               ; 2 uses
  br i1 %.not42, label %bb.q, label %_ZN4entt8meta_anyD2Ev.exit34

bb.n:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i31, label %_ZN4entt8meta_anyD2Ev.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit32 unwind label %bb.p, !inline_history !8

bb.p:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit32:                     ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.bz

bb.q:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.bb, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i33, label %_ZN4entt8meta_anyD2Ev.exit34, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN4entt8meta_anyD2Ev.exit34 unwind label %bb.s, !inline_history !8

bb.s:                                             ; preds = %bb.r
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit34:                     ; preds = %bb.r, %bb.q, %bb.m
  %i.cg = load ptr, ptr %i.bc, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i35, label %_ZN4entt8meta_anyD2Ev.exit36, label %bb.t

bb.t:                                             ; preds = %_ZN4entt8meta_anyD2Ev.exit34
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit36 unwind label %bb.u, !inline_history !8

bb.u:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit36:                     ; preds = %_ZN4entt8meta_anyD2Ev.exit34, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.not42, label %bb.h, label %.critedge29.thread

.critedge29:                                      ; preds = %bb.h, %.critedge, %_ZNK4entt8meta_any10fetch_nodeEv.exit, %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !178
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.cl, align 8, !tbaa !173
  store i32 1219850847, ptr %i.cn, align 8, !tbaa !174
  store ptr null, ptr %i.cm, align 8, !tbaa !175
  store i8 0, ptr %i.co, align 4, !tbaa !176
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ck, ptr %i.cp, align 8, !tbaa !178
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  br label %.critedge29.thread

.critedge29.thread:                               ; preds = %_ZN4entt8meta_anyD2Ev.exit36, %_ZN4entt8meta_anyD2Ev.exit, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit, %.critedge29, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4entt8meta_argINS_9type_listIJiRN8MetaFunc8functionEEEEEENS_9meta_typeERKNS_8meta_ctxEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #5 comdat {
bb.a:
  %.sroa.idx.i = icmp eq i64 %1, 1
  %.sroa.speculated.i = select i1 %.sroa.idx.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaFunc8functionEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #26, !inline_history !1258
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11meta_invokeIN8MetaFunc8functionETnDaXadL_ZNS2_1kEiRS2_EETkNS_11meta_policyENS_10as_value_tEEENS_8meta_anyENS_11meta_handleEPS5_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(64) %1, ptr noundef %2) #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZN8MetaFunc8function1kEiRS0_, ptr %i.a, align 8, !tbaa !126
  call void @_ZN4entt8internal11meta_invokeIN8MetaFunc8functionENS_10as_value_tEPFviRS3_EJLm0ELm1EEEENS_8meta_anyERS8_OT1_PS8_St16integer_sequenceImJXspT2_EEE(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt8internal11meta_invokeIN8MetaFunc8functionENS_10as_value_tEPFviRS3_EJLm0ELm1EEEENS_8meta_anyERS8_OT1_PS8_St16integer_sequenceImJXspT2_EEE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.entt::meta_any", align 8    ; 8 uses
  %5 = alloca %"class.entt::meta_any", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !174
  %i.c = icmp eq i32 %i.b, -1779859874
  br i1 %i.c, label %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNK4entt8meta_any10allow_castIiEES0_v(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !180
  %.not.i.not = icmp eq ptr %i.e, null            ; 2 uses
  br i1 %.not.i.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !176
  %i.h = add i8 %i.g, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt4swapIN4entt8meta_anyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8meta_any10allow_castIiEEbv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN4entt8meta_any10allow_castIiEEbv.exit unwind label %bb.g, !inline_history !8

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN4entt8meta_any10allow_castIiEEbv.exit:         ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.not.i.not, label %_ZN4entt8meta_any10allow_castIRN8MetaFunc8functionEEEbv.exit.thread, label %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread

_ZN4entt8meta_any10allow_castIiEEbv.exit.thread:  ; preds = %bb.a, %_ZN4entt8meta_any10allow_castIiEEbv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !174
  %i.p = icmp eq i32 %i.o, -479689226
  br i1 %i.p, label %_ZN4entt8meta_any10allow_castIRN8MetaFunc8functionEEEbv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNK4entt8meta_any10allow_castIN8MetaFunc8functionEEES0_v(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180
  %.not.i.not.i = icmp eq ptr %i.r, null          ; 2 uses
  br i1 %.not.i.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !176
  %i.u = add i8 %i.t, -1
  %spec.select.i.i.i = icmp ult i8 %i.u, 2
  br i1 %spec.select.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt4swapIN4entt8meta_anyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %4) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.i unwind label %bb.m, !inline_history !8

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #27
  unreachable

_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not.i.not.i, label %_ZN4entt8meta_any10allow_castIRN8MetaFunc8functionEEEbv.exit.thread, label %_ZN4entt8meta_any10allow_castIRN8MetaFunc8functionEEEbv.exit

_ZN4entt8meta_any10allow_castIRN8MetaFunc8functionEEEbv.exit: ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread, %_ZN4entt8meta_any10allow_castIRKN8MetaFunc8functionEEEbv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !176  ; 2 uses
  %.not = icmp eq i8 %i.aa, 4
  br i1 %.not, label %_ZN4entt8meta_any10allow_castIRN8MetaFunc8functionEEEbv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN4entt8meta_any10allow_castIRN8MetaFunc8functionEEEbv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !178
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !174
  %i.af = icmp ne i32 %i.ae, -1779859874
  %i.ag = load i8, ptr %i.ad, align 4             ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 2
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = select i1 %i.ah, ptr %3, ptr %i.ai      ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.aj, null
  %.not.i.i.i = select i1 %i.af, i1 true, i1 %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.o, label %_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !178
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !179 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.p, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !180, !nonnull !93, !noundef !93
  call void %i.aq(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef null), !inline_history !23
  %.pre.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !179
  %.pre.i.i.i = load i8, ptr %i.ad, align 4, !tbaa !176
  %.pre5.i.i.i = load ptr, ptr %3, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i:      ; preds = %bb.p, %bb.o
  %i.ar = phi ptr [ %.pre5.i.i.i, %bb.p ], [ %i.ai, %bb.o ]
  %i.as = phi i8 [ %.pre.i.i.i, %bb.p ], [ %i.ag, %bb.o ]
  %i.at = phi ptr [ %.pre.i.i.i.i, %bb.p ], [ %i.an, %bb.o ]
  %i.au = icmp eq i8 %i.as, 2
  %i.av = select i1 %i.au, ptr %3, ptr %i.ar
  %i.aw = call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %i.at, i32 noundef -1779859874, ptr noundef %i.av) #26
  %.pre = load i8, ptr %i.z, align 4, !tbaa !176
  br label %_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit

_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit: ; preds = %bb.n, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i
  %i.ax = phi i8 [ %.pre, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i ], [ %i.aa, %bb.n ] ; 3 uses
  %i.ay = phi ptr [ %i.aw, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i ], [ %i.aj, %bb.n ]
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !127
  %i.ba = icmp ne i8 %i.ax, 4
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i32, ptr %i.n, align 8, !tbaa !174
  %i.bc = icmp ne i32 %i.bb, -479689226
  %i.bd = icmp eq i8 %i.ax, 2
  %i.be = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bf = select i1 %i.bd, ptr %i.m, ptr %i.be    ; 2 uses
  %.not3.i.i.i7 = icmp eq ptr %i.bf, null
  %.not.i.i.i8 = select i1 %i.bc, i1 true, i1 %.not3.i.i.i7
  br i1 %.not.i.i.i8, label %bb.q, label %_ZN4entt8meta_any4castIRN8MetaFunc8functionEEENSt12remove_constIT_E4typeEv.exit

bb.q:                                             ; preds = %_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !178
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !179 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.r, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i9

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !180, !nonnull !93, !noundef !93
  call void %i.bm(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef null), !inline_history !1259
  %.pre.i.i.i.i10 = load ptr, ptr %i.bi, align 8, !tbaa !179
  %.pre.i.i.i11 = load i8, ptr %i.z, align 4, !tbaa !176
  %.pre5.i.i.i12 = load ptr, ptr %i.m, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i9

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i9:     ; preds = %bb.r, %bb.q
  %i.bn = phi ptr [ %.pre5.i.i.i12, %bb.r ], [ %i.be, %bb.q ]
  %i.bo = phi i8 [ %.pre.i.i.i11, %bb.r ], [ %i.ax, %bb.q ]
  %i.bp = phi ptr [ %.pre.i.i.i.i10, %bb.r ], [ %i.bj, %bb.q ]
  %i.bq = icmp eq i8 %i.bo, 2
  %i.br = select i1 %i.bq, ptr %i.m, ptr %i.bn
  %i.bs = call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef -479689226, ptr noundef %i.br) #26
  br label %_ZN4entt8meta_any4castIRN8MetaFunc8functionEEENSt12remove_constIT_E4typeEv.exit
end_hunk_4
