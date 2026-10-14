Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/entity_copy?download=true
inline.NumInlined: 6424
inline.NumDeleted: 2838
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__shared_count" = type { ptr }
%"struct.entt::type_info" = type { i32, i32, %"class.std::basic_string_view" }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.entt::internal::meta_type_node" = type { ptr, i32, ptr, i32, i64, ptr, ptr, ptr, ptr, %"struct.entt::internal::meta_template_node", %"struct.entt::internal::meta_custom_node", %"class.std::unique_ptr.166" }
%"struct.entt::internal::meta_template_node" = type { i64, ptr, ptr }
%"struct.entt::internal::meta_custom_node" = type { i32, %"class.std::shared_ptr.163" }
%"class.std::shared_ptr.163" = type { %"class.std::__shared_ptr.164" }
%"class.std::__shared_ptr.164" = type { ptr, %"class.std::__shared_count" }
%"class.std::unique_ptr.166" = type { %"struct.std::__uniq_ptr_data.167" }
%"struct.std::__uniq_ptr_data.167" = type { %"class.std::__uniq_ptr_impl.168" }
%"class.std::__uniq_ptr_impl.168" = type { %"class.std::tuple.169" }
%"class.std::tuple.169" = type { %"struct.std::_Tuple_impl.170" }
%"struct.std::_Tuple_impl.170" = type { %"struct.std::_Head_base.173" }
%"struct.std::_Head_base.173" = type { ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.testing::internal::GTestLog" = type { i32 }
%"class.std::allocator.37" = type { i8 }
%"class.entt::basic_registry" = type { %"class.entt::internal::registry_context", %"class.entt::dense_map.12", %"class.entt::dense_map.21", %"struct.EntityCopy::meta_mixin" }
%"class.entt::internal::registry_context" = type { %"class.entt::dense_map" }
%"class.entt::dense_map" = type <{ %"class.entt::compressed_pair", %"class.entt::compressed_pair.4", float, [4 x i8] }>
%"class.entt::compressed_pair" = type { %"struct.entt::internal::compressed_pair_element" }
%"struct.entt::internal::compressed_pair_element" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.entt::compressed_pair.4" = type { %"struct.entt::internal::compressed_pair_element.5" }
%"struct.entt::internal::compressed_pair_element.5" = type { %"class.std::vector.6" }
%"class.std::vector.6" = type { %"struct.std::_Vector_base.7" }
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>, std::allocator<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>, std::allocator<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>, std::allocator<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>, std::allocator<entt::internal::dense_map_node<unsigned int, entt::basic_any<0>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.entt::dense_map.12" = type <{ %"class.entt::compressed_pair", %"class.entt::compressed_pair.13", float, [4 x i8] }>
%"class.entt::compressed_pair.13" = type { %"struct.entt::internal::compressed_pair_element.14" }
%"struct.entt::internal::compressed_pair_element.14" = type { %"class.std::vector.15" }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::my_entity>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::my_entity>>>>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::my_entity>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::my_entity>>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::my_entity>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::my_entity>>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::my_entity>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::my_entity>>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.entt::dense_map.21" = type <{ %"class.entt::compressed_pair", %"class.entt::compressed_pair.22", float, [4 x i8] }>
%"class.entt::compressed_pair.22" = type { %"struct.entt::internal::compressed_pair_element.23" }
%"struct.entt::internal::compressed_pair_element.23" = type { %"class.std::vector.24" }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::internal::group_descriptor>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.EntityCopy::meta_mixin" = type { %"class.entt::basic_storage" }
%"class.entt::basic_storage" = type { %"class.entt::basic_sparse_set", i64 }
%"class.entt::basic_sparse_set" = type { ptr, %"class.std::vector.30", %"class.std::vector.35", ptr, i8, i64 }
%"class.std::vector.30" = type { %"struct.std::_Vector_base.31" }
%"struct.std::_Vector_base.31" = type { %"struct.std::_Vector_base<EntityCopy::my_entity *, std::allocator<EntityCopy::my_entity *>>::_Vector_impl" }
%"struct.std::_Vector_base<EntityCopy::my_entity *, std::allocator<EntityCopy::my_entity *>>::_Vector_impl" = type { %"struct.std::_Vector_base<EntityCopy::my_entity *, std::allocator<EntityCopy::my_entity *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<EntityCopy::my_entity *, std::allocator<EntityCopy::my_entity *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.35" = type { %"struct.std::_Vector_base.36" }
%"struct.std::_Vector_base.36" = type { %"struct.std::_Vector_base<EntityCopy::my_entity, std::allocator<EntityCopy::my_entity>>::_Vector_impl" }
%"struct.std::_Vector_base<EntityCopy::my_entity, std::allocator<EntityCopy::my_entity>>::_Vector_impl" = type { %"struct.std::_Vector_base<EntityCopy::my_entity, std::allocator<EntityCopy::my_entity>>::_Vector_impl_data" }
%"struct.std::_Vector_base<EntityCopy::my_entity, std::allocator<EntityCopy::my_entity>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.testing::AssertionResult" = type { i8, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.48" }
%"struct.std::_Head_base.48" = type { ptr }
%"class.testing::Message" = type { %"class.std::unique_ptr.49" }
%"class.std::unique_ptr.49" = type { %"struct.std::__uniq_ptr_data.50" }
%"struct.std::__uniq_ptr_data.50" = type { %"class.std::__uniq_ptr_impl.51" }
%"class.std::__uniq_ptr_impl.51" = type { %"class.std::tuple.52" }
%"class.std::tuple.52" = type { %"struct.std::_Tuple_impl.53" }
%"struct.std::_Tuple_impl.53" = type { %"struct.std::_Head_base.56" }
%"struct.std::_Head_base.56" = type { ptr }
%"class.testing::internal::AssertHelper" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.79" = type { i8 }
%"class.entt::basic_registry.58" = type { %"class.entt::internal::registry_context.59", %"class.entt::dense_map.60", %"class.entt::dense_map.21", %"struct.EntityCopy::meta_mixin.69" }
%"class.entt::internal::registry_context.59" = type { %"class.entt::dense_map" }
%"class.entt::dense_map.60" = type <{ %"class.entt::compressed_pair", %"class.entt::compressed_pair.61", float, [4 x i8] }>
%"class.entt::compressed_pair.61" = type { %"struct.entt::internal::compressed_pair_element.62" }
%"struct.entt::internal::compressed_pair_element.62" = type { %"class.std::vector.63" }
%"class.std::vector.63" = type { %"struct.std::_Vector_base.64" }
%"struct.std::_Vector_base.64" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::other_entity>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::other_entity>>>>>::_Vector_impl" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::other_entity>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::other_entity>>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::other_entity>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::other_entity>>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::other_entity>>>, std::allocator<entt::internal::dense_map_node<unsigned int, std::shared_ptr<entt::basic_sparse_set<EntityCopy::other_entity>>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.EntityCopy::meta_mixin.69" = type { %"class.entt::basic_storage.70" }
%"class.entt::basic_storage.70" = type { %"class.entt::basic_sparse_set.71", i64 }
%"class.entt::basic_sparse_set.71" = type { ptr, %"class.std::vector.72", %"class.std::vector.77", ptr, i8, i64 }
%"class.std::vector.72" = type { %"struct.std::_Vector_base.73" }
%"struct.std::_Vector_base.73" = type { %"struct.std::_Vector_base<EntityCopy::other_entity *, std::allocator<EntityCopy::other_entity *>>::_Vector_impl" }
%"struct.std::_Vector_base<EntityCopy::other_entity *, std::allocator<EntityCopy::other_entity *>>::_Vector_impl" = type { %"struct.std::_Vector_base<EntityCopy::other_entity *, std::allocator<EntityCopy::other_entity *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<EntityCopy::other_entity *, std::allocator<EntityCopy::other_entity *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.77" = type { %"struct.std::_Vector_base.78" }
%"struct.std::_Vector_base.78" = type { %"struct.std::_Vector_base<EntityCopy::other_entity, std::allocator<EntityCopy::other_entity>>::_Vector_impl" }
%"struct.std::_Vector_base<EntityCopy::other_entity, std::allocator<EntityCopy::other_entity>>::_Vector_impl" = type { %"struct.std::_Vector_base<EntityCopy::other_entity, std::allocator<EntityCopy::other_entity>>::_Vector_impl_data" }
%"struct.std::_Vector_base<EntityCopy::other_entity, std::allocator<EntityCopy::other_entity>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair" = type { i32, ptr }
%"class.entt::meta_any" = type { %"class.entt::basic_any", ptr, ptr, ptr }
%"class.entt::basic_any" = type <{ %"struct.entt::internal::basic_any_storage", ptr, ptr, i32, i8, [3 x i8] }>
%"struct.entt::internal::basic_any_storage" = type { %union.anon.82 }
%union.anon.82 = type { ptr, [8 x i8] }
%"class.entt::meta_type" = type { ptr, ptr }
%"class.entt::meta_handle" = type { %"class.entt::meta_any" }
%"struct.std::array.558" = type { [2 x %"class.entt::meta_handle"] }
%"struct.std::array.559" = type { [2 x %"class.entt::meta_any"] }
%"class.std::allocator.116" = type { i8 }
%"class.std::shared_ptr.103" = type { %"class.std::__shared_ptr.104" }
%"class.std::__shared_ptr.104" = type { ptr, %"class.std::__shared_count" }
%"class.entt::meta_factory" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::internal::basic_meta_factory" = type { ptr, ptr, ptr, i32, i32 }
%"struct.entt::internal::meta_func_node" = type { i32, ptr, i32, i64, ptr, ptr, ptr, %"class.std::unique_ptr.201", %"struct.entt::internal::meta_custom_node" }
%"class.std::unique_ptr.201" = type { %"struct.std::__uniq_ptr_data.202" }
%"struct.std::__uniq_ptr_data.202" = type { %"class.std::__uniq_ptr_impl.203" }
%"class.std::__uniq_ptr_impl.203" = type { %"class.std::tuple.204" }
%"class.std::tuple.204" = type { %"struct.std::_Tuple_impl.205" }
%"struct.std::_Tuple_impl.205" = type { %"struct.std::_Head_base.208" }
%"struct.std::_Head_base.208" = type { ptr }
%"class.std::unique_ptr.155" = type { %"struct.std::__uniq_ptr_data.156" }
%"struct.std::__uniq_ptr_data.156" = type { %"class.std::__uniq_ptr_impl.157" }
%"class.std::__uniq_ptr_impl.157" = type { %"class.std::tuple.158" }
%"class.std::tuple.158" = type { %"struct.std::_Tuple_impl.159" }
%"struct.std::_Tuple_impl.159" = type { %"struct.std::_Head_base.162" }
%"struct.std::_Head_base.162" = type { ptr }
%"class.std::tuple.229" = type { %"struct.std::_Tuple_impl.230" }
%"struct.std::_Tuple_impl.230" = type { %"struct.std::_Head_base.231" }
%"struct.std::_Head_base.231" = type { ptr }
%"class.std::tuple.232" = type { %"struct.std::_Tuple_impl.233" }
%"struct.std::_Tuple_impl.233" = type { %"struct.std::_Head_base.234" }
%"struct.std::_Head_base.234" = type { ptr }
%"class.std::shared_ptr.288" = type { %"class.std::__shared_ptr.289" }
%"class.std::__shared_ptr.289" = type { ptr, %"class.std::__shared_count" }
%"class.std::tuple.331" = type { %"struct.std::_Tuple_impl.332" }
%"struct.std::_Tuple_impl.332" = type { %"struct.std::_Head_base.333" }
%"struct.std::_Head_base.333" = type { ptr }
%"class.std::tuple.335" = type { %"struct.std::_Tuple_impl.336" }
%"struct.std::_Tuple_impl.336" = type { %"struct.std::_Head_base.337" }
%"struct.std::_Head_base.337" = type { ptr }
%"class.std::allocator" = type { i8 }
%"class.entt::meta_factory.359" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.417" = type { %"class.entt::internal::basic_meta_factory" }
%"class.std::allocator.462" = type { i8 }
%"class.entt::meta_factory.465" = type { %"class.entt::internal::basic_meta_factory" }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.entt::meta_factory.518" = type { %"class.entt::internal::basic_meta_factory" }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZN7testing8internal16SuiteApiResolverI10EntityCopyE19GetSetUpCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal16SuiteApiResolverI10EntityCopyE22GetTearDownCaseOrSuiteEPKci = comdat any

$_ZN4entt14basic_registryIN10EntityCopy9my_entityESaIS2_EE7storageIdEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj = comdat any

$_ZN4entt14basic_registryIN10EntityCopy9my_entityESaIS2_EE7storageIS2_EERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$_ZNK4entt14basic_registryIN10EntityCopy9my_entityESaIS2_EE6all_ofIJicEEEbS2_ = comdat any

$_ZNK4entt14basic_registryIN10EntityCopy9my_entityESaIS2_EE6any_ofIJicEEEbS2_ = comdat any

$_ZN4entt14basic_registryIN10EntityCopy9my_entityESaIS2_EED2Ev = comdat any

$_ZN4entt14basic_registryIN10EntityCopy12other_entityESaIS2_EE7storageIS2_EERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj = comdat any

$_ZNK4entt14basic_registryIN10EntityCopy12other_entityESaIS2_EE6all_ofIJicEEEbS2_ = comdat any

$_ZNK4entt9meta_type6invokeINS_11meta_handleEJNS_8meta_anyERjEEES3_jOT_DpOT0_ = comdat any

$_ZN4entt14basic_registryIN10EntityCopy12other_entityESaIS2_EED2Ev = comdat any

$_ZN28EntityCopy_SameRegistry_TestD0Ev = comdat any

$_ZN10EntityCopy8TearDownEv = comdat any

$_ZN7testing4Test5SetupEv = comdat any

$_ZN29EntityCopy_CrossRegistry_TestD0Ev = comdat any

$_ZN4entt7locatorINS_8meta_ctxEE7serviceE = comdat any

$_ZNSt12__shared_ptrIN4entt8meta_ctxELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestE10CreateTestEv = comdat any

$_ZN4entt14basic_registryIN10EntityCopy9my_entityESaIS2_EE6assureITkNS_17cvref_unqualifiedEiEERDaj = comdat any

$_ZNSt12__shared_ptrIN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS3_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_9my_entityESaIiEEEEC2ERKS4_ = comdat any

$_ZN4entt12meta_factoryIiE4funcITnDaXadL_ZNS_14basic_registryIN10EntityCopy9my_entityESaIS5_EE7storageIiEERNS_11storage_forIT_S5_SaINSt12remove_constISA_E4typeEEE4typeEjEENS_8as_ref_tEEES1_jPKc = comdat any
end_hunk_0
begin_hunk_1
$_ZGVZN4entt10type_indexIdE5valueEvE5value = comdat any

$_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIdNS2_9my_entityESaIdEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIdNS2_9my_entityESaIdEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_9my_entityESaIdEEEEEEERKNS_9type_infoEvE8instance = comdat any

$_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_9my_entityESaIdEEEEEEERKNS_9type_infoEvE8instance = comdat any

$_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_9my_entityESaIdEEEEEE5valueEvE5value = comdat any

$_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_9my_entityESaIdEEEEEE5valueEvE5value = comdat any

$_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIdNS2_12other_entityESaIdEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIdNS2_12other_entityESaIdEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_12other_entityESaIdEEEEEEERKNS_9type_infoEvE8instance = comdat any

$_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_12other_entityESaIdEEEEEEERKNS_9type_infoEvE8instance = comdat any

$_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_12other_entityESaIdEEEEEE5valueEvE5value = comdat any

$_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_12other_entityESaIdEEEEEE5valueEvE5value = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE = comdat any

$_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE = comdat any

$_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE = comdat any

$_ZTIN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE = comdat any

$_ZTSN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE = comdat any

$_ZTVN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE = comdat any

$_ZZN4entt7type_idIN10EntityCopy12other_entityEEERKNS_9type_infoEvE8instance = comdat any

$_ZGVZN4entt7type_idIN10EntityCopy12other_entityEEERKNS_9type_infoEvE8instance = comdat any

$_ZZN4entt10type_indexIN10EntityCopy12other_entityEE5valueEvE5value = comdat any

$_ZGVZN4entt10type_indexIN10EntityCopy12other_entityEE5valueEvE5value = comdat any

$_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy12other_entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy12other_entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_12other_entityENS2_9my_entityESaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_12other_entityENS2_9my_entityESaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityENS1_9my_entityESaIS4_EEEEEEERKNS_9type_infoEvE8instance = comdat any

$_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityENS1_9my_entityESaIS4_EEEEEEERKNS_9type_infoEvE8instance = comdat any

$_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityENS1_9my_entityESaIS4_EEEEEE5valueEvE5value = comdat any

$_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityENS1_9my_entityESaIS4_EEEEEE5valueEvE5value = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE = comdat any

$_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE = comdat any

$_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE = comdat any

$_ZTIN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE = comdat any

$_ZTSN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE = comdat any

$_ZTVN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE = comdat any

$_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_12other_entityES5_SaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_12other_entityES5_SaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityES4_SaIS4_EEEEEEERKNS_9type_infoEvE8instance = comdat any

$_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityES4_SaIS4_EEEEEEERKNS_9type_infoEvE8instance = comdat any

$_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityES4_SaIS4_EEEEEE5valueEvE5value = comdat any

$_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityES4_SaIS4_EEEEEE5valueEvE5value = comdat any

$_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

$_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = comdat any

@_ZN28EntityCopy_SameRegistry_Test10test_info_E = hidden global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"EntityCopy\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SameRegistry\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/entt/entt/test/example/entity_copy.cpp\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"registry.storage<my_entity>().size()\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"2u\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"custom.contains(src)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"custom.contains(dst)\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"(registry.all_of<int, char>(src))\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"(registry.any_of<int, char>(dst))\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"(registry.all_of<int, char>(dst))\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"registry.get<int>(dst)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"registry.get<char>(dst)\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"'c'\00", align 1
@_ZN29EntityCopy_CrossRegistry_Test10test_info_E = hidden global ptr null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"CrossRegistry\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"src.storage<my_entity>().size()\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"1u\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"dst.storage<other_entity>().size()\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"(src.all_of<int, char>(entity))\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"(dst.template all_of<int, char>(copy))\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"dst.template get<int>(copy)\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"dst.template get<char>(copy)\00", align 1
@_ZTV28EntityCopy_SameRegistry_Test = hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI28EntityCopy_SameRegistry_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN28EntityCopy_SameRegistry_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN10EntityCopy8TearDownEv, ptr @_ZN28EntityCopy_SameRegistry_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI28EntityCopy_SameRegistry_Test = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS28EntityCopy_SameRegistry_Test, ptr @_ZTI10EntityCopy }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS28EntityCopy_SameRegistry_Test = hidden constant [31 x i8] c"28EntityCopy_SameRegistry_Test\00", align 1
@_ZTI10EntityCopy = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10EntityCopy, ptr @_ZTIN7testing4TestE }, comdat, align 8
@_ZTS10EntityCopy = linkonce_odr hidden constant [13 x i8] c"10EntityCopy\00", comdat, align 1
@_ZTIN7testing4TestE = external constant ptr
@_ZTV29EntityCopy_CrossRegistry_Test = hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI29EntityCopy_CrossRegistry_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN29EntityCopy_CrossRegistry_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN10EntityCopy8TearDownEv, ptr @_ZN29EntityCopy_CrossRegistry_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI29EntityCopy_CrossRegistry_Test = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS29EntityCopy_CrossRegistry_Test, ptr @_ZTI10EntityCopy }, align 8
@_ZTS29EntityCopy_CrossRegistry_Test = hidden constant [32 x i8] c"29EntityCopy_CrossRegistry_Test\00", align 1
@_ZN4entt7locatorINS_8meta_ctxEE7serviceE = linkonce_odr hidden global { ptr, %"class.std::__shared_count" } zeroinitializer, comdat, align 8
@_ZGVN4entt7locatorINS_8meta_ctxEE7serviceE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN4entt7locatorINS_8meta_ctxEE7serviceE), align 8
@__dso_handle = external hidden global i8
@.str.29 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28EntityCopy_SameRegistry_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr hidden constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [139 x i8] c"St23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_9my_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_9my_entityESaIiEEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_9my_entityESaIiEEEEE, ptr @_ZNK4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE6get_atEm, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE7pop_allEv, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_9my_entityESaIiEEEED0Ev, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE7reserveEm, ptr @_ZNK4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE8capacityEv, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_9my_entityESaIiEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_9my_entityESaIiEEEEE, ptr @_ZTIN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_9my_entityESaIiEEEEE = linkonce_odr hidden constant [73 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_9my_entityESaIiEEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEEE = linkonce_odr hidden constant [55 x i8] c"N4entt13basic_storageIiN10EntityCopy9my_entityESaIiEEE\00", comdat, align 1
@_ZTIN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE = linkonce_odr hidden constant [59 x i8] c"N4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEEE, ptr @_ZNK4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE6get_atEm, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE7pop_allEv, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEED2Ev, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEED0Ev, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE7reserveEm, ptr @_ZNK4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE8capacityEv, ptr @_ZN4entt13basic_storageIiN10EntityCopy9my_entityESaIiEE13shrink_to_fitEv] }, comdat, align 8
@_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIiE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIiE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal10type_index4nextEvE5value = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@.str.30 = private unnamed_addr constant [59 x i8] c"const char *entt::internal::pretty_function() [Type = int]\00", align 1
@_ZTVN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE, ptr @_ZNK4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE6get_atEm, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_S3_EEES9_, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE7pop_allEv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EED2Ev, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EED0Ev, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE7reserveEm, ptr @_ZNK4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8capacityEv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@.str.31 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [80 x i8] c"St23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIvE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIvE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.36 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = void]\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.37 = private unnamed_addr constant [127 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<int, EntityCopy::my_entity>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryIN10EntityCopy9my_entityESaIS4_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryIN10EntityCopy9my_entityESaIS4_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_14basic_registryIN10EntityCopy9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_14basic_registryIN10EntityCopy9my_entityESaIS3_EEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_14basic_registryIN10EntityCopy9my_entityESaIS3_EEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_14basic_registryIN10EntityCopy9my_entityESaIS3_EEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.38 = private unnamed_addr constant [99 x i8] c"const char *entt::internal::pretty_function() [Type = entt::basic_registry<EntityCopy::my_entity>]\00", align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityES3_SaIS3_EEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityES3_SaIS3_EEEEE, ptr @_ZNK4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE6get_atEm, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_S3_EEES9_, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityES2_SaIS2_EE7pop_allEv, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityES2_SaIS2_EE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityES3_SaIS3_EEEED0Ev, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE7reserveEm, ptr @_ZNK4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8capacityEv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityES3_SaIS3_EEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityES3_SaIS3_EEEEE, ptr @_ZTIN4entt13basic_storageIN10EntityCopy9my_entityES2_SaIS2_EEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityES3_SaIS3_EEEEE = linkonce_odr hidden constant [77 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityES3_SaIS3_EEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIN10EntityCopy9my_entityES2_SaIS2_EEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIN10EntityCopy9my_entityES2_SaIS2_EEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIN10EntityCopy9my_entityES2_SaIS2_EEE = linkonce_odr hidden constant [59 x i8] c"N4entt13basic_storageIN10EntityCopy9my_entityES2_SaIS2_EEE\00", comdat, align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEjEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEjEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIjEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIjEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIjE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIjE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.39 = private unnamed_addr constant [68 x i8] c"const char *entt::internal::pretty_function() [Type = unsigned int]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.40 = private unnamed_addr constant [130 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<int, EntityCopy::other_entity>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryIN10EntityCopy12other_entityESaIS4_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryIN10EntityCopy12other_entityESaIS4_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_14basic_registryIN10EntityCopy12other_entityESaIS3_EEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_14basic_registryIN10EntityCopy12other_entityESaIS3_EEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_14basic_registryIN10EntityCopy12other_entityESaIS3_EEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_14basic_registryIN10EntityCopy12other_entityESaIS3_EEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.41 = private unnamed_addr constant [102 x i8] c"const char *entt::internal::pretty_function() [Type = entt::basic_registry<EntityCopy::other_entity>]\00", align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityES3_SaIS3_EEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityES3_SaIS3_EEEEE, ptr @_ZNK4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE6get_atEm, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_S3_EEES9_, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityES2_SaIS2_EE7pop_allEv, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityES2_SaIS2_EE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityES3_SaIS3_EEEED0Ev, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE7reserveEm, ptr @_ZNK4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8capacityEv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityES3_SaIS3_EEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityES3_SaIS3_EEEEE, ptr @_ZTIN4entt13basic_storageIN10EntityCopy12other_entityES2_SaIS2_EEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityES3_SaIS3_EEEEE = linkonce_odr hidden constant [81 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityES3_SaIS3_EEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIN10EntityCopy12other_entityES2_SaIS2_EEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIN10EntityCopy12other_entityES2_SaIS2_EEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIN10EntityCopy12other_entityES2_SaIS2_EEE = linkonce_odr hidden constant [63 x i8] c"N4entt13basic_storageIN10EntityCopy12other_entityES2_SaIS2_EEE\00", comdat, align 1
@_ZTIN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE = linkonce_odr hidden constant [63 x i8] c"N4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE\00", comdat, align 1
@_ZTVN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE, ptr @_ZNK4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE6get_atEm, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_S3_EEES9_, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE7pop_allEv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EED2Ev, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EED0Ev, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE7reserveEm, ptr @_ZNK4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8capacityEv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [143 x i8] c"St23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS0_12other_entityESaIiEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_12other_entityESaIiEEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_12other_entityESaIiEEEEE, ptr @_ZNK4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE6get_atEm, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE7pop_allEv, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_12other_entityESaIiEEEED0Ev, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE7reserveEm, ptr @_ZNK4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE8capacityEv, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_12other_entityESaIiEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_12other_entityESaIiEEEEE, ptr @_ZTIN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_12other_entityESaIiEEEEE = linkonce_odr hidden constant [77 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageIiNS_12other_entityESaIiEEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEEE = linkonce_odr hidden constant [59 x i8] c"N4entt13basic_storageIiN10EntityCopy12other_entityESaIiEEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEEE, ptr @_ZNK4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE6get_atEm, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE7pop_allEv, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEED2Ev, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEED0Ev, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE7reserveEm, ptr @_ZNK4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE8capacityEv, ptr @_ZN4entt13basic_storageIiN10EntityCopy12other_entityESaIiEE13shrink_to_fitEv] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [139 x i8] c"St23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_9my_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_9my_entityESaIcEEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_9my_entityESaIcEEEEE, ptr @_ZNK4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE6get_atEm, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE7pop_allEv, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_9my_entityESaIcEEEED0Ev, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE7reserveEm, ptr @_ZNK4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE8capacityEv, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_9my_entityESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_9my_entityESaIcEEEEE, ptr @_ZTIN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_9my_entityESaIcEEEEE = linkonce_odr hidden constant [73 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_9my_entityESaIcEEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEEE = linkonce_odr hidden constant [55 x i8] c"N4entt13basic_storageIcN10EntityCopy9my_entityESaIcEEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEEE, ptr @_ZNK4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE6get_atEm, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE7pop_allEv, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEED2Ev, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEED0Ev, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE7reserveEm, ptr @_ZNK4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE8capacityEv, ptr @_ZN4entt13basic_storageIcN10EntityCopy9my_entityESaIcEE13shrink_to_fitEv] }, comdat, align 8
@_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIcE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIcE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.42 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = char]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIcNS2_9my_entityESaIcEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIcNS2_9my_entityESaIcEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIcNS1_9my_entityESaIcEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIcNS1_9my_entityESaIcEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIcNS1_9my_entityESaIcEEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIcNS1_9my_entityESaIcEEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.43 = private unnamed_addr constant [128 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<char, EntityCopy::my_entity>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIcNS2_12other_entityESaIcEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIcNS2_12other_entityESaIcEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIcNS1_12other_entityESaIcEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIcNS1_12other_entityESaIcEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIcNS1_12other_entityESaIcEEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIcNS1_12other_entityESaIcEEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.44 = private unnamed_addr constant [131 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<char, EntityCopy::other_entity>>]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [143 x i8] c"St23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS0_12other_entityESaIcEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_12other_entityESaIcEEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_12other_entityESaIcEEEEE, ptr @_ZNK4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE6get_atEm, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE7pop_allEv, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_12other_entityESaIcEEEED0Ev, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE7reserveEm, ptr @_ZNK4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE8capacityEv, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_12other_entityESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_12other_entityESaIcEEEEE, ptr @_ZTIN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_12other_entityESaIcEEEEE = linkonce_odr hidden constant [77 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageIcNS_12other_entityESaIcEEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEEE = linkonce_odr hidden constant [59 x i8] c"N4entt13basic_storageIcN10EntityCopy12other_entityESaIcEEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEEE, ptr @_ZNK4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE6get_atEm, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE7pop_allEv, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEED2Ev, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEED0Ev, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE7reserveEm, ptr @_ZNK4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE8capacityEv, ptr @_ZN4entt13basic_storageIcN10EntityCopy12other_entityESaIcEE13shrink_to_fitEv] }, comdat, align 8
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN7testing8internal15TestFactoryImplI29EntityCopy_CrossRegistry_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI29EntityCopy_CrossRegistry_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI29EntityCopy_CrossRegistry_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI29EntityCopy_CrossRegistry_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI29EntityCopy_CrossRegistry_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI29EntityCopy_CrossRegistry_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI29EntityCopy_CrossRegistry_TestEE = linkonce_odr hidden constant [70 x i8] c"N7testing8internal15TestFactoryImplI29EntityCopy_CrossRegistry_TestEE\00", comdat, align 1
@_ZN7testing8internal12TypeIdHelperI10EntityCopyE6dummy_E = linkonce_odr hidden global i8 0, comdat, align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"/usr/include/gtest/internal/gtest-internal.h\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.48 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.50 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZZN4entt7type_idIN10EntityCopy9my_entityEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy9my_entityEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy9my_entityEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy9my_entityEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.51 = private unnamed_addr constant [77 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::my_entity]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy9my_entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy9my_entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_9my_entityES5_SaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_9my_entityES5_SaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_9my_entityES4_SaIS4_EEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_9my_entityES4_SaIS4_EEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_9my_entityES4_SaIS4_EEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_9my_entityES4_SaIS4_EEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.52 = private unnamed_addr constant [145 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<EntityCopy::my_entity, EntityCopy::my_entity>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_9my_entityENS2_12other_entityESaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_9my_entityENS2_12other_entityESaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_9my_entityENS1_12other_entityESaIS4_EEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_9my_entityENS1_12other_entityESaIS4_EEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_9my_entityENS1_12other_entityESaIS4_EEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_9my_entityENS1_12other_entityESaIS4_EEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.53 = private unnamed_addr constant [148 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<EntityCopy::my_entity, EntityCopy::other_entity>>]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [159 x i8] c"St23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_9my_entityENS0_12other_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityENS_12other_entityESaIS3_EEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityENS_12other_entityESaIS3_EEEEE, ptr @_ZNK4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE6get_atEm, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS3_SaIS3_EEEESB_, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE7pop_allEv, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE11try_emplaceES3_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityENS_12other_entityESaIS3_EEEED0Ev, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE7reserveEm, ptr @_ZNK4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE8capacityEv, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityENS_12other_entityESaIS3_EEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityENS_12other_entityESaIS3_EEEEE, ptr @_ZTIN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityENS_12other_entityESaIS3_EEEEE = linkonce_odr hidden constant [92 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageINS_9my_entityENS_12other_entityESaIS3_EEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EEE = linkonce_odr hidden constant [75 x i8] c"N4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EEE, ptr @_ZNK4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE6get_atEm, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS3_SaIS3_EEEESB_, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE7pop_allEv, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE11try_emplaceES3_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EED2Ev, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EED0Ev, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE7reserveEm, ptr @_ZNK4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE8capacityEv, ptr @_ZN4entt13basic_storageIN10EntityCopy9my_entityENS1_12other_entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [139 x i8] c"St23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_9my_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_9my_entityESaIdEEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_9my_entityESaIdEEEEE, ptr @_ZNK4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE6get_atEm, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE7pop_allEv, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_9my_entityESaIdEEEED0Ev, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE7reserveEm, ptr @_ZNK4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE8capacityEv, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_9my_entityESaIdEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_9my_entityESaIdEEEEE, ptr @_ZTIN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_9my_entityESaIdEEEEE = linkonce_odr hidden constant [73 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_9my_entityESaIdEEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEEE = linkonce_odr hidden constant [55 x i8] c"N4entt13basic_storageIdN10EntityCopy9my_entityESaIdEEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEEE, ptr @_ZNK4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE6get_atEm, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE7pop_allEv, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEED2Ev, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEED0Ev, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE7reserveEm, ptr @_ZNK4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE8capacityEv, ptr @_ZN4entt13basic_storageIdN10EntityCopy9my_entityESaIdEE13shrink_to_fitEv] }, comdat, align 8
@_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIdE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIdE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.54 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = double]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIdNS2_9my_entityESaIdEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIdNS2_9my_entityESaIdEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_9my_entityESaIdEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_9my_entityESaIdEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_9my_entityESaIdEEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_9my_entityESaIdEEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.55 = private unnamed_addr constant [130 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<double, EntityCopy::my_entity>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIdNS2_12other_entityESaIdEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIdNS2_12other_entityESaIdEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_12other_entityESaIdEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_12other_entityESaIdEEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_12other_entityESaIdEEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIdNS1_12other_entityESaIdEEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.56 = private unnamed_addr constant [133 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<double, EntityCopy::other_entity>>]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [143 x i8] c"St23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS0_12other_entityESaIdEEEEESaIS4_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE, ptr @_ZNK4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE6get_atEm, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE7pop_allEv, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEED0Ev, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE7reserveEm, ptr @_ZNK4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE8capacityEv, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE, ptr @_ZTIN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE = linkonce_odr hidden constant [77 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageIdNS_12other_entityESaIdEEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE = linkonce_odr hidden constant [59 x i8] c"N4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEEE, ptr @_ZNK4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE6get_atEm, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_SaIS2_EEEESA_, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE7pop_allEv, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE11try_emplaceES2_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy12other_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEED2Ev, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEED0Ev, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE7reserveEm, ptr @_ZNK4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE8capacityEv, ptr @_ZN4entt13basic_storageIdN10EntityCopy12other_entityESaIdEE13shrink_to_fitEv] }, comdat, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.58 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@_ZZN4entt7type_idIN10EntityCopy12other_entityEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy12other_entityEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy12other_entityEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy12other_entityEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.60 = private unnamed_addr constant [80 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::other_entity]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy12other_entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy12other_entityEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_12other_entityENS2_9my_entityESaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_12other_entityENS2_9my_entityESaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityENS1_9my_entityESaIS4_EEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityENS1_9my_entityESaIS4_EEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityENS1_9my_entityESaIS4_EEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityENS1_9my_entityESaIS4_EEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.61 = private unnamed_addr constant [148 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<EntityCopy::other_entity, EntityCopy::my_entity>>]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [159 x i8] c"St23_Sp_counted_ptr_inplaceIN10EntityCopy10meta_mixinIN4entt13basic_storageINS0_12other_entityENS0_9my_entityESaIS4_EEEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE, ptr @_ZNK4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE6get_atEm, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS3_SaIS3_EEEESB_, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE7pop_allEv, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE11try_emplaceES3_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EED2Ev, ptr @_ZN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEED0Ev, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE7reserveEm, ptr @_ZNK4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE8capacityEv, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@_ZTIN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE, ptr @_ZTIN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE }, comdat, align 8
@_ZTSN10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE = linkonce_odr hidden constant [92 x i8] c"N10EntityCopy10meta_mixinIN4entt13basic_storageINS_12other_entityENS_9my_entityESaIS3_EEEEE\00", comdat, align 1
@_ZTIN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE, ptr @_ZTIN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EEE }, comdat, align 8
@_ZTSN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE = linkonce_odr hidden constant [75 x i8] c"N4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE\00", comdat, align 1
@_ZTVN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE = linkonce_odr hidden constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EEE, ptr @_ZNK4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE6get_atEm, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE12swap_or_moveEmm, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS3_SaIS3_EEEESB_, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE7pop_allEv, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE11try_emplaceES3_bPKv, ptr @_ZN4entt16basic_sparse_setIN10EntityCopy9my_entityESaIS2_EE8bind_anyENS_9basic_anyILm16ELm8EEE, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EED2Ev, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EED0Ev, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE7reserveEm, ptr @_ZNK4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE8capacityEv, ptr @_ZN4entt13basic_storageIN10EntityCopy12other_entityENS1_9my_entityESaIS2_EE13shrink_to_fitEv] }, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_12other_entityES5_SaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageINS2_12other_entityES5_SaIS5_EEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityES4_SaIS4_EEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityES4_SaIS4_EEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityES4_SaIS4_EEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageINS1_12other_entityES4_SaIS4_EEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.62 = private unnamed_addr constant [151 x i8] c"const char *entt::internal::pretty_function() [Type = EntityCopy::meta_mixin<entt::basic_storage<EntityCopy::other_entity, EntityCopy::other_entity>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.27, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_entity_copy.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE], section "llvm.metadata"

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI10EntityCopyE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.47, i64 noundef 50)
end_hunk_1
begin_hunk_2_@_ZN4entt8internal18basic_meta_factory4funcENS0_14meta_func_nodeE:bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !216    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8, !tbaa !511
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !512
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !282
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !204  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !204  ; 9 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.010.015.i = phi ptr [ %i.q, %bb.b ], [ %i.l, %bb.a ] ; 4 uses
  %i.p = load i32, ptr %.sroa.010.015.i, align 8, !tbaa !216
  %.not.i = icmp eq i32 %i.p, %i.b
  br i1 %.not.i, label %.lr.ph.i9, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 88 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !277
  %.not.i8 = icmp eq ptr %i.n, %i.t
  br i1 %.not.i8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 56, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !204
  store i64 %i.w, ptr %i.u, align 8, !tbaa !204
  store ptr null, ptr %i.v, align 8, !tbaa !204
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !241
  store i32 %i.z, ptr %i.x, align 8, !tbaa !241
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr null, ptr %i.ac, align 8, !tbaa !226
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !87
  store ptr null, ptr %i.ad, align 8, !tbaa !226
  store <2 x ptr> %i.ae, ptr %i.aa, align 8, !tbaa !87
  store ptr null, ptr %i.ab, align 8, !tbaa !281
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !276
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !276
  br label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.d:                                             ; preds = %.loopexit
  tail call void @_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

.lr.ph.i9:                                        ; preds = %.lr.ph.i, %bb.e
  %.07.i = phi ptr [ %i.ak, %bb.e ], [ %.sroa.010.015.i, %.lr.ph.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !217
  %.not5.i = icmp eq ptr %i.ai, %i.e
  br i1 %.not5.i, label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i9
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !204 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ak, null
  br i1 %.not.i10, label %_ZN4entt8internal13find_overloadEPNS0_14meta_func_nodeEPFNS_8meta_anyENS_11meta_handleEPS3_E.exit, label %.lr.ph.i9, !llvm.loop !506

_ZN4entt8internal13find_overloadEPNS0_14meta_func_nodeEPFNS_8meta_anyENS_11meta_handleEPS3_E.exit: ; preds = %bb.e, %_ZN4entt8internal13find_overloadEPNS0_14meta_func_nodeEPFNS_8meta_anyENS_11meta_handleEPS3_E.exit
  %.0 = phi ptr [ %i.am, %_ZN4entt8internal13find_overloadEPNS0_14meta_func_nodeEPFNS_8meta_anyENS_11meta_handleEPS3_E.exit ], [ %.sroa.010.015.i, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !204 ; 2 uses
  %.not.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i11, label %bb.f, label %_ZN4entt8internal13find_overloadEPNS0_14meta_func_nodeEPFNS_8meta_anyENS_11meta_handleEPS3_E.exit, !llvm.loop !507

bb.f:                                             ; preds = %_ZN4entt8internal13find_overloadEPNS0_14meta_func_nodeEPFNS_8meta_anyENS_11meta_handleEPS3_E.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 3 uses
  %i.ao = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26, !noalias !513 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 56, i1 false), !noalias !513
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !204, !noalias !513
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !204, !noalias !513
  store ptr null, ptr %i.aq, align 8, !tbaa !204, !noalias !513
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !241, !noalias !513
  store i32 %i.au, ptr %i.as, align 8, !tbaa !241, !noalias !513
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !87, !noalias !513
  store ptr null, ptr %i.ax, align 8, !tbaa !226, !noalias !513
  store <2 x ptr> %i.ay, ptr %i.av, align 8, !tbaa !87, !noalias !513
  store ptr null, ptr %i.aw, align 8, !tbaa !281, !noalias !513
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !204 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !204
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, label %_ZNSt10unique_ptrIN4entt8internal14meta_func_nodeESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4entt8internal14meta_func_nodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.f
  tail call void @_ZNKSt14default_deleteIN4entt8internal14meta_func_nodeEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.az)
  br label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %.lr.ph.i9, %bb.f, %_ZNSt10unique_ptrIN4entt8internal14meta_func_nodeESt14default_deleteIS2_EEaSEOS5_.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #23
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !291
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !182  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.k = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !93
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !8

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !185  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !185
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4entt8meta_argINS_9type_listIJRNS_14basic_registryIN10EntityCopy9my_entityESaIS4_EEEjEEEEENS_9meta_typeERKNS_8meta_ctxEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #7 comdat {
bb.a:
  %.sroa.idx.i = icmp eq i64 %1, 1
  %.sroa.speculated.i = select i1 %.sroa.idx.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEjEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryIN10EntityCopy9my_entityESaIS4_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #23, !inline_history !514
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11meta_invokeIiTnDaXadL_ZNS_14basic_registryIN10EntityCopy9my_entityESaIS3_EE7storageIiEERNS_11storage_forIT_S3_SaINSt12remove_constIS8_E4typeEEE4typeEjEETkNS_11meta_policyENS_8as_ref_tEEENS_8meta_anyENS_11meta_handleEPSH_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(64) %1, ptr noundef %2) #2 comdat {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4entt14basic_registryIN10EntityCopy9my_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj to i64), ptr %i.a, align 8, !tbaa !94
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !94
  call void @_ZN4entt8internal11meta_invokeIiNS_8as_ref_tEMNS_14basic_registryIN10EntityCopy9my_entityESaIS5_EEEFRNS4_10meta_mixinINS_13basic_storageIiS5_SaIiEEEEEjEJLm0ELm1EEEENS_8meta_anyERSG_OT1_PSG_St16integer_sequenceImJXspT2_EEE(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !275    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
  unreachable

_ZNKSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 88                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 104811045873349725)
  %i.l = select i1 %i.j, i64 104811045873349725, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 88
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 56, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !204
  store i64 %i.t, ptr %i.r, align 8, !tbaa !204
  store ptr null, ptr %i.s, align 8, !tbaa !204
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !241
  store i32 %i.w, ptr %i.u, align 8, !tbaa !241
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !87
  store ptr null, ptr %i.z, align 8, !tbaa !226
  store <2 x ptr> %i.aa, ptr %i.x, align 8, !tbaa !87
  store ptr null, ptr %i.y, align 8, !tbaa !281
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i, i64 56, i1 false), !alias.scope !524
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !204, !alias.scope !523, !noalias !522
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !204, !alias.scope !522, !noalias !523
  store ptr null, ptr %i.ac, align 8, !tbaa !204, !alias.scope !523, !noalias !522
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !241, !alias.scope !523, !noalias !522
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !241, !alias.scope !522, !noalias !523
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !87, !alias.scope !523, !noalias !522
  store ptr null, ptr %i.aj, align 8, !tbaa !226, !alias.scope !523, !noalias !522
  store <2 x ptr> %i.ak, ptr %i.ah, align 8, !tbaa !87, !alias.scope !522, !noalias !523
  store ptr null, ptr %i.ai, align 8, !tbaa !281, !alias.scope !523, !noalias !522
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !518

_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.am, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %i.an, %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i19, i64 56, i1 false), !alias.scope !527
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !204, !alias.scope !526, !noalias !525
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !204, !alias.scope !525, !noalias !526
  store ptr null, ptr %i.ap, align 8, !tbaa !204, !alias.scope !526, !noalias !525
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !241, !alias.scope !526, !noalias !525
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !241, !alias.scope !525, !noalias !526
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 80
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !87, !alias.scope !526, !noalias !525
  store ptr null, ptr %i.aw, align 8, !tbaa !226, !alias.scope !526, !noalias !525
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !87, !alias.scope !525, !noalias !526
  store ptr null, ptr %i.av, align 8, !tbaa !281, !alias.scope !526, !noalias !525
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 88 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 88 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !518

_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.an, %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN4entt8internal14meta_func_nodeESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !277
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #24
  br label %_ZNSt12_Vector_baseIN4entt8internal14meta_func_nodeESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4entt8internal14meta_func_nodeESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !275
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !276
  %i.be = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !277
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEv.exit, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  br label %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !233

bb.d:                                             ; preds = %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !182
  store ptr @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_9my_entityESaIiEEEEEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 128, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 104, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr @_ZZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_9my_entityESaIiEEEEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeESB_SC_SE_, ptr %.sroa.11.0..sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_ZNK4entt8meta_any10allow_castIjEES0_v:bb.a

bb.p:                                             ; preds = %bb.o
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit38 unwind label %bb.q, !inline_history !9

bb.q:                                             ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #25
  unreachable

_ZN4entt8meta_anyD2Ev.exit38:                     ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.cr

bb.r:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %i.bt, align 8, !tbaa !194 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i39, label %_ZN4entt8meta_anyD2Ev.exit40, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN4entt8meta_anyD2Ev.exit40 unwind label %bb.t, !inline_history !9

bb.t:                                             ; preds = %bb.s
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #25
  unreachable

_ZN4entt8meta_anyD2Ev.exit40:                     ; preds = %bb.s, %bb.r, %bb.n
  %i.cy = load ptr, ptr %i.bu, align 8, !tbaa !194 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i41, label %_ZN4entt8meta_anyD2Ev.exit42, label %bb.u

bb.u:                                             ; preds = %_ZN4entt8meta_anyD2Ev.exit40
  invoke void %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit42 unwind label %bb.v, !inline_history !9

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #25
  unreachable

_ZN4entt8meta_anyD2Ev.exit42:                     ; preds = %_ZN4entt8meta_anyD2Ev.exit40, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.not, label %bb.i, label %.critedge33.thread

.critedge33:                                      ; preds = %bb.i, %.critedge, %_ZNK4entt8meta_any10fetch_nodeEv.exit35, %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !193
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.dd, align 8, !tbaa !190
  store i32 1219850847, ptr %i.df, align 8, !tbaa !191
  store ptr null, ptr %i.de, align 8, !tbaa !194
  store i8 0, ptr %i.dg, align 4, !tbaa !195
  store ptr null, ptr %0, align 8, !tbaa !94
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dc, ptr %i.dh, align 8, !tbaa !193
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  br label %.critedge33.thread

.critedge33.thread:                               ; preds = %_ZN4entt8meta_anyD2Ev.exit42, %_ZN4entt8meta_anyD2Ev.exit, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit, %bb.f, %.critedge33, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 3 uses
  %.not36 = icmp eq ptr %i.b, null
  br i1 %.not36, label %.thread33, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !219  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !219  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.thread33, label %.lr.ph

bb.c:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 24 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %.thread33, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.028.037 = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !332
  %i.l = tail call noundef ptr %i.k(ptr noundef %3) #23 ; 2 uses
  %i.m = load i32, ptr %.sroa.028.037, align 8, !tbaa !333
  %i.n = icmp eq i32 %i.m, %2
  br i1 %i.n, label %.thread33, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !221
  %i.q = tail call noundef nonnull align 8 dereferenceable(128) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  %i.r = tail call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i32 noundef %2, ptr noundef %i.l) #23 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.c, label %.thread33

.thread33:                                        ; preds = %bb.c, %bb.d, %.lr.ph, %bb.b, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.r, %bb.d ], [ null, %bb.c ], [ %i.l, %.lr.ph ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #23
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !291
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !182  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.k = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !93
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !8

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !185  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !185
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4entt8meta_argINS_9type_listIJRNS_14basic_registryIN10EntityCopy12other_entityESaIS4_EEEjEEEEENS_9meta_typeERKNS_8meta_ctxEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #7 comdat {
bb.a:
  %.sroa.idx.i = icmp eq i64 %1, 1
  %.sroa.speculated.i = select i1 %.sroa.idx.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEjEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_14basic_registryIN10EntityCopy12other_entityESaIS4_EEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #23, !inline_history !583
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11meta_invokeIiTnDaXadL_ZNS_14basic_registryIN10EntityCopy12other_entityESaIS3_EE7storageIiEERNS_11storage_forIT_S3_SaINSt12remove_constIS8_E4typeEEE4typeEjEETkNS_11meta_policyENS_8as_ref_tEEENS_8meta_anyENS_11meta_handleEPSH_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(64) %1, ptr noundef %2) #2 comdat {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4entt14basic_registryIN10EntityCopy12other_entityESaIS2_EE7storageIiEERNS_11storage_forIT_S2_SaINSt12remove_constIS7_E4typeEEE4typeEj to i64), ptr %i.a, align 8, !tbaa !94
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !94
  call void @_ZN4entt8internal11meta_invokeIiNS_8as_ref_tEMNS_14basic_registryIN10EntityCopy12other_entityESaIS5_EEEFRNS4_10meta_mixinINS_13basic_storageIiS5_SaIiEEEEEjEJLm0ELm1EEEENS_8meta_anyERSG_OT1_PSG_St16integer_sequenceImJXspT2_EEE(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEv.exit, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  br label %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !233

bb.d:                                             ; preds = %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance) #23
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !182
  store ptr @_ZZN4entt7type_idIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 128, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 104, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr @_ZZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeESB_SC_SE_, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.13.0..sroa_idx, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEv.exit, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEvE5value) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !93 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !93
  store i32 %i.d, ptr @_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEvE5value, align 4, !tbaa !93
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEvE5value) #23
  br label %_ZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEv.exit

_ZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIN10EntityCopy10meta_mixinINS_13basic_storageIiNS1_12other_entityESaIiEEEEEE5valueEvE5value, align 4, !tbaa !93
  store i32 %i.g, ptr %0, align 8, !tbaa !244
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1913966918, ptr %i.h, align 4, !tbaa !182
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 74, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.40, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeESB_SC_SE_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) #17 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN4entt8meta_anyC2IN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, label %bb.b

_ZN4entt8meta_anyC2IN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS3_12other_entityESaIiEEEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.f, align 8, !tbaa !190, !alias.scope !586
  store i32 -1913966918, ptr %i.d, align 8, !tbaa !191, !alias.scope !586
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS3_12other_entityESaIiEEEEEEEvRKS1_, ptr %i.e, align 8, !tbaa !194, !alias.scope !586
  store i8 1, ptr %i.c, align 4, !tbaa !195, !alias.scope !586
  store ptr %2, ptr %0, align 8, !tbaa !94, !alias.scope !586
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !193, !alias.scope !586
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !196, !alias.scope !586
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.i, align 8, !tbaa !197, !alias.scope !586
  br label %_ZZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESB_SC_SE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS3_12other_entityESaIiEEEEEEEPKvNS_8internal11any_requestERKS1_SB_, ptr %i.j, align 8, !tbaa !190, !alias.scope !586
  store i32 -1913966918, ptr %i.l, align 8, !tbaa !191, !alias.scope !586
  store ptr null, ptr %i.k, align 8, !tbaa !194, !alias.scope !586
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 3, ptr %i.m, align 4, !tbaa !195, !alias.scope !586
  store ptr %2, ptr %0, align 8, !tbaa !94, !alias.scope !586
  store ptr %1, ptr %i.n, align 8, !tbaa !193, !alias.scope !586
  store ptr null, ptr %i.o, align 8, !tbaa !196, !alias.scope !586
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !197, !alias.scope !586
  br label %_ZZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESB_SC_SE_.exit

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !195, !alias.scope !586
  store ptr %3, ptr %0, align 8, !tbaa !94, !alias.scope !586
  store ptr %1, ptr %i.n, align 8, !tbaa !193, !alias.scope !586
  store ptr null, ptr %i.o, align 8, !tbaa !196, !alias.scope !586
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !197, !alias.scope !586
  br label %_ZZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESB_SC_SE_.exit

_ZZN4entt8internal14setup_node_forIN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clESB_SC_SE_.exit: ; preds = %_ZN4entt8meta_anyC2IN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEEvNS_8internal11meta_traitsERKS0_Pv(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) #7 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS2_12other_entityESaIiEEEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedEN10EntityCopy10meta_mixinINS_13basic_storageIiNS3_12other_entityESaIiEEEEEEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(37) %0) #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !195
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %0, align 8
  %i.e = select i1 %i.c, ptr %0, ptr %i.d         ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
end_hunk_3
