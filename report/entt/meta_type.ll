Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_type?download=true
inline.NumInlined: 12374
inline.NumDeleted: 3213
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__shared_count" = type { ptr }
%"struct.entt::internal::meta_type_node" = type { ptr, i32, ptr, i32, i64, ptr, ptr, ptr, ptr, %"struct.entt::internal::meta_template_node", %"struct.entt::internal::meta_custom_node", %"class.std::unique_ptr.127" }
%"struct.entt::internal::meta_template_node" = type { i64, ptr, ptr }
%"struct.entt::internal::meta_custom_node" = type { i32, %"class.std::shared_ptr.124" }
%"class.std::shared_ptr.124" = type { %"class.std::__shared_ptr.125" }
%"class.std::__shared_ptr.125" = type { ptr, %"class.std::__shared_count" }
%"class.std::unique_ptr.127" = type { %"struct.std::__uniq_ptr_data.128" }
%"struct.std::__uniq_ptr_data.128" = type { %"class.std::__uniq_ptr_impl.129" }
%"class.std::__uniq_ptr_impl.129" = type { %"class.std::tuple.130" }
%"class.std::tuple.130" = type { %"struct.std::_Tuple_impl.131" }
%"struct.std::_Tuple_impl.131" = type { %"struct.std::_Head_base.134" }
%"struct.std::_Head_base.134" = type { ptr }
%"struct.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::VTable" = type { ptr, ptr, ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.entt::type_info" = type { i32, i32, %"class.std::basic_string_view" }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.std::array.307" = type { [3 x ptr] }
%"struct.std::array.568" = type { [4 x ptr] }
%"class.testing::internal::GTestLog" = type { i32 }
%"class.testing::AssertionResult" = type { i8, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.entt::meta_type" = type { ptr, ptr }
%"class.testing::Message" = type { %"class.std::unique_ptr.2" }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.testing::internal::AssertHelper" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.entt::internal::meta_range_iterator" = type { %"class.entt::internal::dense_map_iterator", ptr }
%"class.entt::internal::dense_map_iterator" = type { ptr }
%"struct.entt::input_iterator_pointer" = type { %"struct.std::pair" }
%"struct.std::pair" = type { i32, %"class.entt::meta_type" }
%"struct.entt::iterable_adaptor" = type { %"struct.entt::internal::meta_range_iterator", %"struct.entt::internal::meta_range_iterator" }
%"struct.entt::internal::meta_range_iterator.11" = type { %"class.__gnu_cxx::__normal_iterator", ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.entt::iterable_adaptor.12" = type { %"struct.entt::internal::meta_range_iterator.11", %"struct.entt::internal::meta_range_iterator.11" }
%"struct.entt::internal::meta_range_iterator.13" = type { %"class.__gnu_cxx::__normal_iterator.14", ptr }
%"class.__gnu_cxx::__normal_iterator.14" = type { ptr }
%"struct.entt::iterable_adaptor.15" = type { %"struct.entt::internal::meta_range_iterator.13", %"struct.entt::internal::meta_range_iterator.13" }
%"struct.entt::meta_data" = type { %"struct.entt::meta_object" }
%"struct.entt::meta_object" = type { %"struct.entt::internal::basic_meta_object" }
%"struct.entt::internal::basic_meta_object" = type { ptr, ptr }
%"struct.entt::internal::meta_range_iterator.16" = type { %"class.__gnu_cxx::__normal_iterator.17", ptr }
%"class.__gnu_cxx::__normal_iterator.17" = type { ptr }
%"struct.entt::iterable_adaptor.18" = type { %"struct.entt::internal::meta_range_iterator.16", %"struct.entt::internal::meta_range_iterator.16" }
%"struct.entt::meta_func" = type { %"struct.entt::meta_object.19" }
%"struct.entt::meta_object.19" = type { %"struct.entt::internal::basic_meta_object.20" }
%"struct.entt::internal::basic_meta_object.20" = type { ptr, ptr }
%"class.entt::meta_any" = type { %"class.entt::basic_any", ptr, ptr, ptr }
%"class.entt::basic_any" = type <{ %"struct.entt::internal::basic_any_storage", ptr, ptr, i32, i8, [3 x i8] }>
%"struct.entt::internal::basic_any_storage" = type { %union.anon.21 }
%union.anon.21 = type { ptr, [8 x i8] }
%"class.entt::meta_handle" = type { %"class.entt::meta_any" }
%"struct.std::array.370" = type { [2 x %"class.entt::meta_handle"] }
%"struct.std::array.371" = type { [2 x %"class.entt::meta_any"] }
%"struct.std::array.387" = type { [1 x %"class.entt::meta_handle"] }
%"struct.std::array.388" = type { [1 x %"class.entt::meta_any"] }
%"class.testing::Matcher" = type { %"class.testing::internal::MatcherBase" }
%"class.testing::internal::MatcherBase" = type { %"class.testing::MatcherDescriberInterface", ptr, %"union.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::Buffer" }
%"class.testing::MatcherDescriberInterface" = type { ptr }
%"union.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::Buffer" = type { ptr }
%"class.entt::meta_factory" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::internal::basic_meta_factory" = type { ptr, ptr, ptr, i32, i32 }
%"class.testing::PolymorphicMatcher" = type { %"class.testing::internal::MatchesRegexMatcher" }
%"class.testing::internal::MatchesRegexMatcher" = type <{ %"class.std::shared_ptr.180", i8, [7 x i8] }>
%"class.std::shared_ptr.180" = type { %"class.std::__shared_ptr.181" }
%"class.std::__shared_ptr.181" = type { ptr, %"class.std::__shared_count" }
%"class.entt::basic_hashed_string" = type { %"struct.entt::internal::basic_hashed_string" }
%"struct.entt::internal::basic_hashed_string" = type { ptr, i32, i64 }
%"struct.std::pair.43" = type { i32, %"struct.entt::meta_base" }
%"struct.entt::meta_base" = type { %"struct.entt::meta_object.45" }
%"struct.entt::meta_object.45" = type { %"struct.entt::internal::basic_meta_object.46" }
%"struct.entt::internal::basic_meta_object.46" = type { ptr, ptr }
%"struct.MetaType::derived" = type { %"struct.MetaType::base" }
%"struct.MetaType::base" = type { i8 }
%"struct.MetaType::clazz" = type { i32 }
%"struct.MetaType::concrete" = type { %"struct.MetaType::abstract", %"struct.MetaType::base", i32 }
%"struct.MetaType::abstract" = type { ptr }
%"struct.MetaType::overloaded_func" = type { i32 }
%"struct.std::array.633" = type { [3 x %"class.entt::meta_handle"] }
%"struct.std::array.634" = type { [3 x %"class.entt::meta_any"] }
%"class.entt::meta_factory.99" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.100" = type { %"class.entt::internal::basic_meta_factory" }
%"class.std::shared_ptr.454" = type { %"class.std::__shared_ptr.455" }
%"class.std::__shared_ptr.455" = type { ptr, %"class.std::__shared_count" }
%"class.std::allocator" = type { i8 }
%"struct.testing::internal::TrueWithString" = type { %"class.std::__cxx11::basic_string" }
%"class.entt::meta_factory.205" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.206" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.207" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.208" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.209" = type { %"class.entt::internal::basic_meta_factory" }
%"class.entt::meta_factory.210" = type { %"class.entt::internal::basic_meta_factory" }
%"struct.entt::internal::meta_data_node" = type { i32, ptr, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, %"struct.entt::internal::meta_custom_node" }
%"struct.entt::internal::meta_func_node" = type { i32, ptr, i32, i64, ptr, ptr, ptr, %"class.std::unique_ptr.166", %"struct.entt::internal::meta_custom_node" }
%"class.std::unique_ptr.166" = type { %"struct.std::__uniq_ptr_data.167" }
%"struct.std::__uniq_ptr_data.167" = type { %"class.std::__uniq_ptr_impl.168" }
%"class.std::__uniq_ptr_impl.168" = type { %"class.std::tuple.169" }
%"class.std::tuple.169" = type { %"struct.std::_Tuple_impl.170" }
%"struct.std::_Tuple_impl.170" = type { %"struct.std::_Head_base.173" }
%"struct.std::_Head_base.173" = type { ptr }
%"class.std::shared_ptr.332" = type { %"class.std::__shared_ptr.333" }
%"class.std::__shared_ptr.333" = type { ptr, %"class.std::__shared_count" }
%"class.std::unique_ptr.116" = type { %"struct.std::__uniq_ptr_data.117" }
%"struct.std::__uniq_ptr_data.117" = type { %"class.std::__uniq_ptr_impl.118" }
%"class.std::__uniq_ptr_impl.118" = type { %"class.std::tuple.119" }
%"class.std::tuple.119" = type { %"struct.std::_Tuple_impl.120" }
%"struct.std::_Tuple_impl.120" = type { %"struct.std::_Head_base.123" }
%"struct.std::_Head_base.123" = type { ptr }
%"class.std::tuple.237" = type { %"struct.std::_Tuple_impl.238" }
%"struct.std::_Tuple_impl.238" = type { %"struct.std::_Head_base.239" }
%"struct.std::_Head_base.239" = type { ptr }
%"class.std::tuple.240" = type { %"struct.std::_Tuple_impl.241" }
%"struct.std::_Tuple_impl.241" = type { %"struct.std::_Head_base.242" }
%"struct.std::_Head_base.242" = type { ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.entt::meta_sequence_container::meta_iterator" = type { ptr, ptr, %"class.entt::basic_any" }
%"struct.std::_Rb_tree<int, std::pair<const int, char>, std::_Select1st<std::pair<const int, char>>, std::less<int>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree<int, std::pair<const int, char>, std::_Select1st<std::pair<const int, char>>, std::less<int>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"class.entt::meta_associative_container::meta_iterator" = type { ptr, ptr, %"class.entt::basic_any" }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZN7testing8internal16SuiteApiResolverI8MetaTypeE19GetSetUpCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal16SuiteApiResolverI8MetaTypeE22GetTearDownCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal8EqHelper7CompareIN4entt9meta_typeES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_ = comdat any

$_ZN4entt7resolveIdEENS_9meta_typeEv = comdat any

$_ZN4entt7resolveEj = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$_ZN4entt7resolveEv = comdat any

$_ZN4entt7resolveIN8MetaType5clazzEEENS_9meta_typeEv = comdat any

$_ZN4entt9meta_typeC2Ev = comdat any

$_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_ = comdat any

$_ZNK4entt9meta_type13template_typeEv = comdat any

$_ZNK4entt9meta_type12template_argEm = comdat any

$_ZNK4entt9meta_type8can_castERKS0_ = comdat any

$_ZN4entt7resolveIvEENS_9meta_typeEv = comdat any

$_ZNK4entt9meta_type11can_convertERKS0_ = comdat any

$_ZN7testing8internal8EqHelper7CompareIN4entt8internal19meta_range_iteratorINS3_9meta_baseEN9__gnu_cxx17__normal_iteratorIPKNS4_14meta_base_nodeESt6vectorIS9_SaIS9_EEEEEESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_ = comdat any

$_ZNK4entt9meta_type4baseEv = comdat any

$_ZN7testing8internal8EqHelper7CompareIN4entt8internal19meta_range_iteratorINS3_9meta_dataEN9__gnu_cxx17__normal_iteratorIPKNS4_14meta_data_nodeESt6vectorIS9_SaIS9_EEEEEESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_ = comdat any

$_ZNK4entt9meta_type4dataEv = comdat any

$_ZN7testing8internal8EqHelper7CompareIN4entt9meta_dataES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_ = comdat any

$_ZNK4entt9meta_type4dataEjb = comdat any

$_ZN4entt9meta_dataC2Ev = comdat any

$_ZN7testing8internal8EqHelper7CompareIN4entt8internal19meta_range_iteratorINS3_9meta_funcEN9__gnu_cxx17__normal_iteratorIPKNS4_14meta_func_nodeESt6vectorIS9_SaIS9_EEEEEESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_ = comdat any

$_ZNK4entt9meta_type4funcEv = comdat any

$_ZN7testing8internal8EqHelper7CompareIN4entt9meta_funcES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_ = comdat any

$_ZNK4entt9meta_type4funcEjb = comdat any

$_ZN4entt9meta_funcC2Ev = comdat any

$_ZNK4entt9meta_type9constructIJRPNS_8meta_anyEjEEES2_DpOT_ = comdat any

$_ZNK4entt9meta_type9constructIJEEENS_8meta_anyEDpOT_ = comdat any

$_ZNK4entt9meta_type9constructIJdEEENS_8meta_anyEDpOT_ = comdat any

$_ZNK4entt9meta_type9from_voidEPvb = comdat any

$_ZNK4entt9meta_type9from_voidEPKv = comdat any

$_ZNK4entt9meta_type6invokeINS_11meta_handleEJRPNS_8meta_anyEjEEES3_jOT_DpOT0_ = comdat any

$_ZN4entt11meta_handleC2Ev = comdat any

$_ZNK4entt9meta_type6invokeINS_11meta_handleEJEEENS_8meta_anyEjOT_DpOT0_ = comdat any

$_ZNK4entt9meta_type6invokeINS_11meta_handleEJcEEENS_8meta_anyEjOT_DpOT0_ = comdat any

$_ZNK4entt9meta_type3setINS_11meta_handleEJiEEEbjOT_DpOT0_ = comdat any

$_ZNK4entt9meta_type3getINS_11meta_handleEJEEENS_8meta_anyEjOT_DpOT0_ = comdat any

$_ZN7testing8internal8EqHelper7CompareIN4test11meta_traitsES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_ = comdat any

$_ZN7testing8internal8EqHelper7CompareIPKcDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultES4_S4_RKS6_RKS7_ = comdat any

end_hunk_0
begin_hunk_1
@_ZTVN7testing8internal15TestFactoryImplI20MetaType_Custom_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20MetaType_Custom_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaType_Custom_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaType_Custom_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20MetaType_Custom_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20MetaType_Custom_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20MetaType_Custom_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20MetaType_Custom_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI38MetaTypeDeathTest_DISABLED_Custom_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI38MetaTypeDeathTest_DISABLED_Custom_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaTypeDeathTest_DISABLED_Custom_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaTypeDeathTest_DISABLED_Custom_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI38MetaTypeDeathTest_DISABLED_Custom_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI38MetaTypeDeathTest_DISABLED_Custom_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI38MetaTypeDeathTest_DISABLED_Custom_TestEE = linkonce_odr hidden constant [79 x i8] c"N7testing8internal15TestFactoryImplI38MetaTypeDeathTest_DISABLED_Custom_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI23MetaType_IdAndInfo_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23MetaType_IdAndInfo_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaType_IdAndInfo_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaType_IdAndInfo_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23MetaType_IdAndInfo_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23MetaType_IdAndInfo_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23MetaType_IdAndInfo_TestEE = linkonce_odr hidden constant [64 x i8] c"N7testing8internal15TestFactoryImplI23MetaType_IdAndInfo_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI18MetaType_Name_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI18MetaType_Name_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Name_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Name_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI18MetaType_Name_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI18MetaType_Name_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI18MetaType_Name_TestEE = linkonce_odr hidden constant [59 x i8] c"N7testing8internal15TestFactoryImplI18MetaType_Name_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI20MetaType_SizeOf_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20MetaType_SizeOf_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaType_SizeOf_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaType_SizeOf_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20MetaType_SizeOf_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20MetaType_SizeOf_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20MetaType_SizeOf_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20MetaType_SizeOf_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI20MetaType_Traits_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20MetaType_Traits_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaType_Traits_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaType_Traits_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20MetaType_Traits_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20MetaType_Traits_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20MetaType_Traits_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20MetaType_Traits_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI27MetaType_RemovePointer_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI27MetaType_RemovePointer_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_RemovePointer_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_RemovePointer_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI27MetaType_RemovePointer_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI27MetaType_RemovePointer_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI27MetaType_RemovePointer_TestEE = linkonce_odr hidden constant [68 x i8] c"N7testing8internal15TestFactoryImplI27MetaType_RemovePointer_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI26MetaType_TemplateInfo_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI26MetaType_TemplateInfo_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI26MetaType_TemplateInfo_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI26MetaType_TemplateInfo_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI26MetaType_TemplateInfo_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI26MetaType_TemplateInfo_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI26MetaType_TemplateInfo_TestEE = linkonce_odr hidden constant [67 x i8] c"N7testing8internal15TestFactoryImplI26MetaType_TemplateInfo_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI21MetaType_CanCast_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI21MetaType_CanCast_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI21MetaType_CanCast_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI21MetaType_CanCast_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI21MetaType_CanCast_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI21MetaType_CanCast_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI21MetaType_CanCast_TestEE = linkonce_odr hidden constant [62 x i8] c"N7testing8internal15TestFactoryImplI21MetaType_CanCast_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI24MetaType_CanConvert_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI24MetaType_CanConvert_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaType_CanConvert_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI24MetaType_CanConvert_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI24MetaType_CanConvert_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI24MetaType_CanConvert_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI24MetaType_CanConvert_TestEE = linkonce_odr hidden constant [65 x i8] c"N7testing8internal15TestFactoryImplI24MetaType_CanConvert_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI18MetaType_Base_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI18MetaType_Base_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Base_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Base_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI18MetaType_Base_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI18MetaType_Base_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI18MetaType_Base_TestEE = linkonce_odr hidden constant [59 x i8] c"N7testing8internal15TestFactoryImplI18MetaType_Base_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI18MetaType_Ctor_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI18MetaType_Ctor_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Ctor_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Ctor_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI18MetaType_Ctor_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI18MetaType_Ctor_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI18MetaType_Ctor_TestEE = linkonce_odr hidden constant [59 x i8] c"N7testing8internal15TestFactoryImplI18MetaType_Ctor_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI18MetaType_Data_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI18MetaType_Data_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Data_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Data_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI18MetaType_Data_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI18MetaType_Data_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI18MetaType_Data_TestEE = linkonce_odr hidden constant [59 x i8] c"N7testing8internal15TestFactoryImplI18MetaType_Data_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI27MetaType_DataRecursive_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI27MetaType_DataRecursive_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_DataRecursive_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_DataRecursive_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI27MetaType_DataRecursive_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI27MetaType_DataRecursive_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI27MetaType_DataRecursive_TestEE = linkonce_odr hidden constant [68 x i8] c"N7testing8internal15TestFactoryImplI27MetaType_DataRecursive_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI18MetaType_Func_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI18MetaType_Func_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Func_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI18MetaType_Func_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI18MetaType_Func_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI18MetaType_Func_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI18MetaType_Func_TestEE = linkonce_odr hidden constant [59 x i8] c"N7testing8internal15TestFactoryImplI18MetaType_Func_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI27MetaType_FuncRecursive_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI27MetaType_FuncRecursive_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_FuncRecursive_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_FuncRecursive_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI27MetaType_FuncRecursive_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI27MetaType_FuncRecursive_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI27MetaType_FuncRecursive_TestEE = linkonce_odr hidden constant [68 x i8] c"N7testing8internal15TestFactoryImplI27MetaType_FuncRecursive_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI20MetaType_Invoke_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20MetaType_Invoke_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaType_Invoke_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20MetaType_Invoke_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20MetaType_Invoke_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20MetaType_Invoke_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20MetaType_Invoke_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20MetaType_Invoke_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28MetaType_InvokeFromBase_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28MetaType_InvokeFromBase_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaType_InvokeFromBase_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaType_InvokeFromBase_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28MetaType_InvokeFromBase_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28MetaType_InvokeFromBase_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28MetaType_InvokeFromBase_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28MetaType_InvokeFromBase_TestEE\00", comdat, align 1
@_ZTVN8MetaType8concreteE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8MetaType8concreteE, ptr @_ZN8MetaType8abstractD2Ev, ptr @_ZN8MetaType8concreteD0Ev, ptr @_ZN8MetaType8concrete4funcEi] }, comdat, align 8
@_ZTIN8MetaType8concreteE = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN8MetaType8concreteE, i32 0, i32 2, ptr @_ZTIN8MetaType4baseE, i64 2050, ptr @_ZTIN8MetaType8abstractE, i64 2 }, comdat, align 8
@_ZTSN8MetaType8concreteE = linkonce_odr hidden constant [21 x i8] c"N8MetaType8concreteE\00", comdat, align 1
@_ZTIN8MetaType4baseE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8MetaType4baseE }, comdat, align 8
@_ZTSN8MetaType4baseE = linkonce_odr hidden constant [17 x i8] c"N8MetaType4baseE\00", comdat, align 1
@_ZTIN8MetaType8abstractE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8MetaType8abstractE }, comdat, align 8
@_ZTSN8MetaType8abstractE = linkonce_odr hidden constant [21 x i8] c"N8MetaType8abstractE\00", comdat, align 1
@_ZTVN8MetaType8abstractE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8MetaType8abstractE, ptr @_ZN8MetaType8abstractD2Ev, ptr @_ZN8MetaType8abstractD0Ev, ptr @_ZN8MetaType8abstract4funcEi] }, comdat, align 8
@_ZTVN7testing8internal15TestFactoryImplI28MetaType_OverloadedFunc_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28MetaType_OverloadedFunc_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaType_OverloadedFunc_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaType_OverloadedFunc_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28MetaType_OverloadedFunc_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28MetaType_OverloadedFunc_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28MetaType_OverloadedFunc_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28MetaType_OverloadedFunc_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI38MetaType_OverloadedFuncConstFirst_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI38MetaType_OverloadedFuncConstFirst_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaType_OverloadedFuncConstFirst_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaType_OverloadedFuncConstFirst_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI38MetaType_OverloadedFuncConstFirst_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI38MetaType_OverloadedFuncConstFirst_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI38MetaType_OverloadedFuncConstFirst_TestEE = linkonce_odr hidden constant [79 x i8] c"N7testing8internal15TestFactoryImplI38MetaType_OverloadedFuncConstFirst_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI41MetaType_OverloadedFuncNonConstFirst_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI41MetaType_OverloadedFuncNonConstFirst_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI41MetaType_OverloadedFuncNonConstFirst_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI41MetaType_OverloadedFuncNonConstFirst_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI41MetaType_OverloadedFuncNonConstFirst_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI41MetaType_OverloadedFuncNonConstFirst_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI41MetaType_OverloadedFuncNonConstFirst_TestEE = linkonce_odr hidden constant [82 x i8] c"N7testing8internal15TestFactoryImplI41MetaType_OverloadedFuncNonConstFirst_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI33MetaType_OverloadedFuncOrder_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI33MetaType_OverloadedFuncOrder_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaType_OverloadedFuncOrder_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaType_OverloadedFuncOrder_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI33MetaType_OverloadedFuncOrder_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI33MetaType_OverloadedFuncOrder_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI33MetaType_OverloadedFuncOrder_TestEE = linkonce_odr hidden constant [74 x i8] c"N7testing8internal15TestFactoryImplI33MetaType_OverloadedFuncOrder_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI23MetaType_Construct_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23MetaType_Construct_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaType_Construct_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaType_Construct_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23MetaType_Construct_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23MetaType_Construct_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23MetaType_Construct_TestEE = linkonce_odr hidden constant [64 x i8] c"N7testing8internal15TestFactoryImplI23MetaType_Construct_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI29MetaType_ConstructNoArgs_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI29MetaType_ConstructNoArgs_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI29MetaType_ConstructNoArgs_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI29MetaType_ConstructNoArgs_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI29MetaType_ConstructNoArgs_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI29MetaType_ConstructNoArgs_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI29MetaType_ConstructNoArgs_TestEE = linkonce_odr hidden constant [70 x i8] c"N7testing8internal15TestFactoryImplI29MetaType_ConstructNoArgs_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI34MetaType_ConstructMetaAnyArgs_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI34MetaType_ConstructMetaAnyArgs_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaType_ConstructMetaAnyArgs_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaType_ConstructMetaAnyArgs_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI34MetaType_ConstructMetaAnyArgs_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI34MetaType_ConstructMetaAnyArgs_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI34MetaType_ConstructMetaAnyArgs_TestEE = linkonce_odr hidden constant [75 x i8] c"N7testing8internal15TestFactoryImplI34MetaType_ConstructMetaAnyArgs_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI34MetaType_ConstructInvalidArgs_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI34MetaType_ConstructInvalidArgs_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaType_ConstructInvalidArgs_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaType_ConstructInvalidArgs_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI34MetaType_ConstructInvalidArgs_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI34MetaType_ConstructInvalidArgs_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI34MetaType_ConstructInvalidArgs_TestEE = linkonce_odr hidden constant [75 x i8] c"N7testing8internal15TestFactoryImplI34MetaType_ConstructInvalidArgs_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI22MetaType_LessArgs_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI22MetaType_LessArgs_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI22MetaType_LessArgs_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI22MetaType_LessArgs_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI22MetaType_LessArgs_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI22MetaType_LessArgs_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI22MetaType_LessArgs_TestEE = linkonce_odr hidden constant [63 x i8] c"N7testing8internal15TestFactoryImplI22MetaType_LessArgs_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI37MetaType_ConstructCastAndConvert_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37MetaType_ConstructCastAndConvert_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37MetaType_ConstructCastAndConvert_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37MetaType_ConstructCastAndConvert_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37MetaType_ConstructCastAndConvert_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37MetaType_ConstructCastAndConvert_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37MetaType_ConstructCastAndConvert_TestEE = linkonce_odr hidden constant [78 x i8] c"N7testing8internal15TestFactoryImplI37MetaType_ConstructCastAndConvert_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI43MetaType_ConstructArithmeticConversion_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI43MetaType_ConstructArithmeticConversion_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI43MetaType_ConstructArithmeticConversion_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI43MetaType_ConstructArithmeticConversion_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI43MetaType_ConstructArithmeticConversion_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI43MetaType_ConstructArithmeticConversion_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI43MetaType_ConstructArithmeticConversion_TestEE = linkonce_odr hidden constant [84 x i8] c"N7testing8internal15TestFactoryImplI43MetaType_ConstructArithmeticConversion_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI22MetaType_FromVoid_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI22MetaType_FromVoid_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI22MetaType_FromVoid_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI22MetaType_FromVoid_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI22MetaType_FromVoid_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI22MetaType_FromVoid_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI22MetaType_FromVoid_TestEE = linkonce_odr hidden constant [63 x i8] c"N7testing8internal15TestFactoryImplI22MetaType_FromVoid_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI31MetaType_FromVoidOwnership_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI31MetaType_FromVoidOwnership_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI31MetaType_FromVoidOwnership_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI31MetaType_FromVoidOwnership_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI31MetaType_FromVoidOwnership_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI31MetaType_FromVoidOwnership_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI31MetaType_FromVoidOwnership_TestEE = linkonce_odr hidden constant [72 x i8] c"N7testing8internal15TestFactoryImplI31MetaType_FromVoidOwnership_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI19MetaType_Reset_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI19MetaType_Reset_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI19MetaType_Reset_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI19MetaType_Reset_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI19MetaType_Reset_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI19MetaType_Reset_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI19MetaType_Reset_TestEE = linkonce_odr hidden constant [60 x i8] c"N7testing8internal15TestFactoryImplI19MetaType_Reset_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI23MetaType_ResetLast_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23MetaType_ResetLast_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaType_ResetLast_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaType_ResetLast_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23MetaType_ResetLast_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23MetaType_ResetLast_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23MetaType_ResetLast_TestEE = linkonce_odr hidden constant [64 x i8] c"N7testing8internal15TestFactoryImplI23MetaType_ResetLast_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI22MetaType_ResetAll_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI22MetaType_ResetAll_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI22MetaType_ResetAll_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI22MetaType_ResetAll_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI22MetaType_ResetAll_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI22MetaType_ResetAll_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI22MetaType_ResetAll_TestEE = linkonce_odr hidden constant [63 x i8] c"N7testing8internal15TestFactoryImplI22MetaType_ResetAll_TestEE\00", comdat, align 1
@.str.418 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI27MetaType_AbstractClass_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI27MetaType_AbstractClass_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_AbstractClass_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_AbstractClass_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI27MetaType_AbstractClass_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI27MetaType_AbstractClass_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI27MetaType_AbstractClass_TestEE = linkonce_odr hidden constant [68 x i8] c"N7testing8internal15TestFactoryImplI27MetaType_AbstractClass_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI35MetaType_EnumAndNamedConstants_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI35MetaType_EnumAndNamedConstants_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI35MetaType_EnumAndNamedConstants_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI35MetaType_EnumAndNamedConstants_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI35MetaType_EnumAndNamedConstants_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI35MetaType_EnumAndNamedConstants_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI35MetaType_EnumAndNamedConstants_TestEE = linkonce_odr hidden constant [76 x i8] c"N7testing8internal15TestFactoryImplI35MetaType_EnumAndNamedConstants_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI45MetaType_ArithmeticTypeAndNamedConstants_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI45MetaType_ArithmeticTypeAndNamedConstants_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI45MetaType_ArithmeticTypeAndNamedConstants_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI45MetaType_ArithmeticTypeAndNamedConstants_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI45MetaType_ArithmeticTypeAndNamedConstants_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI45MetaType_ArithmeticTypeAndNamedConstants_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI45MetaType_ArithmeticTypeAndNamedConstants_TestEE = linkonce_odr hidden constant [86 x i8] c"N7testing8internal15TestFactoryImplI45MetaType_ArithmeticTypeAndNamedConstants_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI23MetaType_Variables_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23MetaType_Variables_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaType_Variables_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23MetaType_Variables_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23MetaType_Variables_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23MetaType_Variables_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23MetaType_Variables_TestEE = linkonce_odr hidden constant [64 x i8] c"N7testing8internal15TestFactoryImplI23MetaType_Variables_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI46MetaType_ResetAndReRegistrationAfterReset_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI46MetaType_ResetAndReRegistrationAfterReset_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI46MetaType_ResetAndReRegistrationAfterReset_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI46MetaType_ResetAndReRegistrationAfterReset_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI46MetaType_ResetAndReRegistrationAfterReset_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI46MetaType_ResetAndReRegistrationAfterReset_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI46MetaType_ResetAndReRegistrationAfterReset_TestEE = linkonce_odr hidden constant [87 x i8] c"N7testing8internal15TestFactoryImplI46MetaType_ResetAndReRegistrationAfterReset_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28MetaType_ReRegistration_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28MetaType_ReRegistration_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaType_ReRegistration_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28MetaType_ReRegistration_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28MetaType_ReRegistration_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28MetaType_ReRegistration_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28MetaType_ReRegistration_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28MetaType_ReRegistration_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI27MetaType_NameCollision_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI27MetaType_NameCollision_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_NameCollision_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI27MetaType_NameCollision_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI27MetaType_NameCollision_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI27MetaType_NameCollision_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI27MetaType_NameCollision_TestEE = linkonce_odr hidden constant [68 x i8] c"N7testing8internal15TestFactoryImplI27MetaType_NameCollision_TestEE\00", comdat, align 1
@.str.419 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@_ZZN7testing8internal31CanonicalizeForStdLibVersioningENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6prefix = linkonce_odr hidden constant [8 x i8] c"std::__\00", comdat, align 1
@_ZZN7testing8internal31CanonicalizeForStdLibVersioningENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11replace_str = linkonce_odr hidden constant [2 x i8] c",\00", comdat, align 1
@.str.422 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.424 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.425 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI45MetaTypeDeathTest_DISABLED_NameCollision_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI45MetaTypeDeathTest_DISABLED_NameCollision_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI45MetaTypeDeathTest_DISABLED_NameCollision_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI45MetaTypeDeathTest_DISABLED_NameCollision_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI45MetaTypeDeathTest_DISABLED_NameCollision_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI45MetaTypeDeathTest_DISABLED_NameCollision_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI45MetaTypeDeathTest_DISABLED_NameCollision_TestEE = linkonce_odr hidden constant [86 x i8] c"N7testing8internal15TestFactoryImplI45MetaTypeDeathTest_DISABLED_NameCollision_TestEE\00", comdat, align 1
@.str.429 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEdEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIjEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIjEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIjE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIjE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal10type_index4nextEvE5value = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@.str.430 = private unnamed_addr constant [68 x i8] c"const char *entt::internal::pretty_function() [Type = unsigned int]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEjEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEjEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIcE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIcE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.431 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = char]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIiE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIiE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.432 = private unnamed_addr constant [59 x i8] c"const char *entt::internal::pretty_function() [Type = int]\00", align 1
@_ZZN4entt7type_idIN8MetaType7derivedEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaType7derivedEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaType7derivedEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaType7derivedEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.433 = private unnamed_addr constant [73 x i8] c"const char *entt::internal::pretty_function() [Type = MetaType::derived]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType7derivedEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType7derivedEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType8abstractEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType8abstractEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN8MetaType8concreteEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaType8concreteEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaType8concreteEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaType8concreteEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.434 = private unnamed_addr constant [74 x i8] c"const char *entt::internal::pretty_function() [Type = MetaType::concrete]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType8concreteEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType8concreteEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN8MetaType15overloaded_funcEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaType15overloaded_funcEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaType15overloaded_funcEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaType15overloaded_funcEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.435 = private unnamed_addr constant [81 x i8] c"const char *entt::internal::pretty_function() [Type = MetaType::overloaded_func]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType15overloaded_funcEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType15overloaded_funcEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@__const._ZN4entt8internal13meta_arg_nodeIJRKN8MetaType4baseEiiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextENS_9type_listIJDpT_EEEm.list = private unnamed_addr constant %"struct.std::array.307" { [3 x ptr] [ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE] }, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIfE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIfE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.436 = private unnamed_addr constant [61 x i8] c"const char *entt::internal::pretty_function() [Type = float]\00", align 1
@_ZZN4entt7type_idIN8MetaType13property_typeEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaType13property_typeEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaType13property_typeEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaType13property_typeEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.437 = private unnamed_addr constant [79 x i8] c"const char *entt::internal::pretty_function() [Type = MetaType::property_type]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType13property_typeEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType13property_typeEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [65 x i8] c"St23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@_ZZN4entt7type_idINS_9type_listIJRKN8MetaType4baseEiEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_9type_listIJRKN8MetaType4baseEiEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.438 = private unnamed_addr constant [100 x i8] c"const char *entt::internal::pretty_function() [Type = entt::type_list<const MetaType::base &, int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [80 x i8] c"St23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZN7testing8internal12TypeIdHelperI8MetaTypeE6dummy_E = linkonce_odr hidden global i8 0, comdat, align 1
@.str.439 = private unnamed_addr constant [45 x i8] c"/usr/include/gtest/internal/gtest-internal.h\00", align 1
@.str.440 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.441 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.442 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.443 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIdE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIdE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.444 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = double]\00", align 1
@_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIvE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIvE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.445 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = void]\00", align 1
@.str.446 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.447 = private unnamed_addr constant [12 x i8] c"Expected: (\00", align 1
@.str.448 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.449 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.450 = private unnamed_addr constant [12 x i8] c"), actual: \00", align 1
@.str.451 = private unnamed_addr constant [5 x i8] c" vs \00", align 1
@.str.452 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@_ZZN4entt7type_idIPNS_8meta_anyEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPNS_8meta_anyEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPNS_8meta_anyEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPNS_8meta_anyEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.453 = private unnamed_addr constant [72 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_any *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPNS_8meta_anyEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPNS_8meta_anyEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_8meta_anyEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_8meta_anyEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_8meta_anyEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_8meta_anyEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_8meta_anyEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_8meta_anyEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.454 = private unnamed_addr constant [70 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_any]\00", align 1
@.str.455 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.456 = private unnamed_addr constant [10 x i8] c"(nullptr)\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEbEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEbEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIbEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIbEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIbE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIbE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.457 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = bool]\00", align 1
@_ZZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaType5clazzEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaType5clazzEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.458 = private unnamed_addr constant [71 x i8] c"const char *entt::internal::pretty_function() [Type = MetaType::clazz]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIA_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIA_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIA_iE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIA_iE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.459 = private unnamed_addr constant [61 x i8] c"const char *entt::internal::pretty_function() [Type = int[]]\00", align 1
@_ZZN4entt7type_idIPiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPiE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPiE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.460 = private unnamed_addr constant [61 x i8] c"const char *entt::internal::pretty_function() [Type = int *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIA3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIA3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIA3_iE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIA3_iE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.461 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = int[3]]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedElEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedElEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIlEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIlEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIlE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIlE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.462 = private unnamed_addr constant [60 x i8] c"const char *entt::internal::pretty_function() [Type = long]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA5_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA5_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIA5_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIA5_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIA5_iE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIA5_iE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.463 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = int[5]]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA5_A3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA5_A3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIA5_A3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIA5_A3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIA5_A3_iE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIA5_A3_iE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.464 = private unnamed_addr constant [65 x i8] c"const char *entt::internal::pretty_function() [Type = int[5][3]]\00", align 1
@_ZZN4entt7type_idIPA3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPA3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPA3_iE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPA3_iE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.465 = private unnamed_addr constant [66 x i8] c"const char *entt::internal::pretty_function() [Type = int (*)[3]]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPA3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPA3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10shared_ptrIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10shared_ptrIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt10shared_ptrIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt10shared_ptrIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt10shared_ptrIiEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt10shared_ptrIiEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.466 = private unnamed_addr constant [76 x i8] c"const char *entt::internal::pretty_function() [Type = std::shared_ptr<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10shared_ptrEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10shared_ptrEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt10shared_ptrEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt10shared_ptrEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt10shared_ptrEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt10shared_ptrEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.467 = private unnamed_addr constant [102 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::shared_ptr>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt6vectorIiSaIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt6vectorIiSaIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt6vectorIiSaIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt6vectorIiSaIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt6vectorIiSaIiEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt6vectorIiSaIiEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.468 = private unnamed_addr constant [72 x i8] c"const char *entt::internal::pretty_function() [Type = std::vector<int>]\00", align 1
@.str.469 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.470 = private unnamed_addr constant [115 x i8] c"const char *entt::internal::pretty_function() [Type = __gnu_cxx::__normal_iterator<const int *, std::vector<int>>]\00", align 1
@_ZZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.471 = private unnamed_addr constant [109 x i8] c"const char *entt::internal::pretty_function() [Type = __gnu_cxx::__normal_iterator<int *, std::vector<int>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.472 = private unnamed_addr constant [98 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::vector>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISaIiEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISaIiEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.473 = private unnamed_addr constant [75 x i8] c"const char *entt::internal::pretty_function() [Type = std::allocator<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISaEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISaEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISaEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISaEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.474 = private unnamed_addr constant [101 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::allocator>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt3mapIicSt4lessIiESaISt4pairIKicEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt3mapIicSt4lessIiESaISt4pairIKicEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt3mapIicSt4lessIiESaISt4pairIKicEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt3mapIicSt4lessIiESaISt4pairIKicEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt3mapIicSt4lessIiESaISt4pairIKicEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt3mapIicSt4lessIiESaISt4pairIKicEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.475 = private unnamed_addr constant [75 x i8] c"const char *entt::internal::pretty_function() [Type = std::map<int, char>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt4pairIKicEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt4pairIKicEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt4pairIKicEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt4pairIKicEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt4pairIKicEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt4pairIKicEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.476 = private unnamed_addr constant [82 x i8] c"const char *entt::internal::pretty_function() [Type = std::pair<const int, char>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.477 = private unnamed_addr constant [96 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::pair>]\00", align 1
@_ZZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.478 = private unnamed_addr constant [112 x i8] c"const char *entt::internal::pretty_function() [Type = std::_Rb_tree_const_iterator<std::pair<const int, char>>]\00", align 1
@_ZZN4entt7type_idISt17_Rb_tree_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt17_Rb_tree_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt17_Rb_tree_iteratorISt4pairIKicEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt17_Rb_tree_iteratorISt4pairIKicEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.479 = private unnamed_addr constant [106 x i8] c"const char *entt::internal::pretty_function() [Type = std::_Rb_tree_iterator<std::pair<const int, char>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt3mapEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt3mapEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt3mapEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt3mapEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt3mapEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt3mapEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.480 = private unnamed_addr constant [95 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::map>]\00", align 1
@__const._ZN4entt8internal13meta_arg_nodeIJicSt4lessIiESaISt4pairIKicEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextENS_9type_listIJDpT_EEEm.list = private unnamed_addr constant %"struct.std::array.568" { [4 x ptr] [ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEcEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt4lessIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaISt4pairIKicEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE] }, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt4lessIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt4lessIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt4lessIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt4lessIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt4lessIiEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt4lessIiEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.481 = private unnamed_addr constant [70 x i8] c"const char *entt::internal::pretty_function() [Type = std::less<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4lessEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4lessEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt4lessEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt4lessEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt4lessEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt4lessEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.482 = private unnamed_addr constant [96 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::less>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaISt4pairIKicEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaISt4pairIKicEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISaISt4pairIKicEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISaISt4pairIKicEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISaISt4pairIKicEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISaISt4pairIKicEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.483 = private unnamed_addr constant [98 x i8] c"const char *entt::internal::pretty_function() [Type = std::allocator<std::pair<const int, char>>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIPvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPvE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPvE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.484 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = void *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPPcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPPcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIPPcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPPcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPPcE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPPcE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.485 = private unnamed_addr constant [63 x i8] c"const char *entt::internal::pretty_function() [Type = char **]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPcEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIPcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPcEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPcE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPcE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.486 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = char *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFicdEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFicdEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIPFicdEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPFicdEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPFicdEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPFicdEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.487 = private unnamed_addr constant [77 x i8] c"const char *entt::internal::pretty_function() [Type = int (*)(char, double)]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFicdEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFicdEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIFicdEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIFicdEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIFicdEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIFicdEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.488 = private unnamed_addr constant [74 x i8] c"const char *entt::internal::pretty_function() [Type = int (char, double)]\00", align 1
@_ZZN4entt7type_idIN8MetaType4baseEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaType4baseEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaType4baseEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaType4baseEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.489 = private unnamed_addr constant [70 x i8] c"const char *entt::internal::pretty_function() [Type = MetaType::base]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType18from_void_callbackEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType18from_void_callbackEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN8MetaType18from_void_callbackEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaType18from_void_callbackEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaType18from_void_callbackEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaType18from_void_callbackEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.490 = private unnamed_addr constant [84 x i8] c"const char *entt::internal::pretty_function() [Type = MetaType::from_void_callback]\00", align 1
@_ZZN4entt7type_idIN8MetaType8abstractEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN8MetaType8abstractEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN8MetaType8abstractEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN8MetaType8abstractEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.491 = private unnamed_addr constant [74 x i8] c"const char *entt::internal::pretty_function() [Type = MetaType::abstract]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [65 x i8] c"St23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.405, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_meta_type.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE], section "llvm.metadata"

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI8MetaTypeE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.439, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.440, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.441, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !56
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.442, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI8MetaTypeE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.439, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.440, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.443, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !56
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
end_hunk_1
begin_hunk_2_@_ZN4entt8internal11meta_invokeIN8MetaType15overloaded_funcENS_10as_value_tEMS3_KFiiEJLm0EEEENS_8meta_anyERS7_OT1_PS7_St16integer_sequenceImJXspT2_EEE:bb.a
  call void @__clang_call_terminate(ptr %i.ah) #30
  unreachable

_ZN4entt8meta_any10allow_castIiEEbv.exit:         ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.not.i.not, label %_ZN4entt8meta_any8try_castIKN8MetaType15overloaded_funcEEEPT_v.exit.thread, label %_ZN4entt8meta_any10allow_castIiEEbv.exit._ZN4entt8meta_any10allow_castIiEEbv.exit.thread_crit_edge

_ZN4entt8meta_any10allow_castIiEEbv.exit._ZN4entt8meta_any10allow_castIiEEbv.exit.thread_crit_edge: ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !180
  %i.ai = icmp ne i32 %.pre, -1779859874
  br label %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread

_ZN4entt8meta_any10allow_castIiEEbv.exit.thread:  ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit._ZN4entt8meta_any10allow_castIiEEbv.exit.thread_crit_edge, %_ZN4entt8meta_any8try_castIKN8MetaType15overloaded_funcEEEPT_v.exit.thread12
  %i.aj = phi i1 [ %i.ai, %_ZN4entt8meta_any10allow_castIiEEbv.exit._ZN4entt8meta_any10allow_castIiEEbv.exit.thread_crit_edge ], [ false, %_ZN4entt8meta_any8try_castIKN8MetaType15overloaded_funcEEEPT_v.exit.thread12 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.an = load i8, ptr %i.am, align 4             ; 2 uses
  %i.ao = icmp eq i8 %i.an, 2
  %i.ap = load ptr, ptr %3, align 8               ; 2 uses
  %i.aq = select i1 %i.ao, ptr %3, ptr %i.ap      ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.aq, null
  %.not.i.i.i = select i1 %i.aj, i1 true, i1 %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit

bb.k:                                             ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !182
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !183 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.l, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !145, !nonnull !115, !noundef !115
  call void %i.ax(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef null), !inline_history !10
  %.pre.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !183
  %.pre.i.i.i9 = load i8, ptr %i.am, align 4, !tbaa !181
  %.pre5.i.i.i = load ptr, ptr %3, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i:      ; preds = %bb.l, %bb.k
  %i.ay = phi ptr [ %.pre5.i.i.i, %bb.l ], [ %i.ap, %bb.k ]
  %i.az = phi i8 [ %.pre.i.i.i9, %bb.l ], [ %i.an, %bb.k ]
  %i.ba = phi ptr [ %.pre.i.i.i.i, %bb.l ], [ %i.au, %bb.k ]
  %i.bb = icmp eq i8 %i.az, 2
  %i.bc = select i1 %i.bb, ptr %3, ptr %i.ay
  %i.bd = call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(128) %i.ba, i32 noundef -1779859874, ptr noundef %i.bc) #29
  br label %_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit

_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit: ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i
  %i.be = phi ptr [ %i.bd, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i ], [ %i.aq, %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread ]
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !78
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %.unpack.i.i.i.i = load i64, ptr %2, align 8, !tbaa !122, !noalias !1251 ; 3 uses
  %.elt3.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.unpack4.i.i.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !tbaa !122, !noalias !1251
  %i.bg = getelementptr inbounds i8, ptr %i.v, i64 %.unpack4.i.i.i.i ; 2 uses
  %i.bh = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i10 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !56, !noalias !1251
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.unpack.i.i.i.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !1251, !nosanitize !115
  br label %bb.o

bb.n:                                             ; preds = %_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit
  %i.bm = inttoptr i64 %.unpack.i.i.i.i to ptr
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = phi ptr [ %i.bl, %bb.m ], [ %i.bm, %bb.n ]
  %i.bo = call noundef i32 %i.bn(ptr noundef nonnull align 4 dereferenceable(4) %i.bg, i32 noundef %i.bf), !noalias !1251, !inline_history !1248
  store ptr null, ptr %0, align 8, !tbaa !122, !alias.scope !1252
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.bp, align 8, !tbaa !179, !alias.scope !1252
  store i32 -1779859874, ptr %i.br, align 8, !tbaa !180, !alias.scope !1252
  store ptr null, ptr %i.bq, align 8, !tbaa !146, !alias.scope !1252
  store i8 2, ptr %i.bs, align 4, !tbaa !181, !alias.scope !1252
  store i32 %i.bo, ptr %0, align 8, !tbaa !78, !alias.scope !1252
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.al, ptr %i.bt, align 8, !tbaa !182, !alias.scope !1252
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.bu, align 8, !tbaa !183, !alias.scope !1252
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.bv, align 8, !tbaa !145, !alias.scope !1252
  br label %bb.p

_ZN4entt8meta_any8try_castIKN8MetaType15overloaded_funcEEEPT_v.exit.thread: ; preds = %bb.b, %_ZN4entt8meta_any10allow_castIiEEbv.exit, %_ZN4entt8meta_any8try_castIKN8MetaType15overloaded_funcEEEPT_v.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !182
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.by, align 8, !tbaa !179
  store i32 1219850847, ptr %i.ca, align 8, !tbaa !180
  store ptr null, ptr %i.bz, align 8, !tbaa !146
  store i8 0, ptr %i.cb, align 4, !tbaa !181
  store ptr null, ptr %0, align 8, !tbaa !122
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !182
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4entt8meta_any8try_castIKN8MetaType15overloaded_funcEEEPT_v.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forIfEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !0

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4entt8meta_argINS_9type_listIJifEEEEENS_9meta_typeERKNS_8meta_ctxEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #5 comdat {
bb.a:
  %.sroa.idx.not.i = icmp eq i64 %1, 0
  %2 = icmp ult i64 %1, 2
  tail call void @llvm.assume(i1 %2)
  %.sroa.speculated.i = select i1 %.sroa.idx.not.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #29, !inline_history !1253
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11meta_invokeIN8MetaType15overloaded_funcETnDaXadL_ZNS2_1fEifEETkNS_11meta_policyENS_10as_value_tEEENS_8meta_anyENS_11meta_handleEPS4_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(64) %1, ptr noundef %2) #2 comdat {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 ptrtoint (ptr @_ZN8MetaType15overloaded_func1fEif to i64), ptr %i.a, align 8, !tbaa !122
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !122
  call void @_ZN4entt8internal11meta_invokeIN8MetaType15overloaded_funcENS_10as_value_tEMS3_FfifEJLm0ELm1EEEENS_8meta_anyERS7_OT1_PS7_St16integer_sequenceImJXspT2_EEE(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forIfEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IfEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit

_ZN4entt7type_idIfEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !123

bb.d:                                             ; preds = %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IfEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !126
  store ptr @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 20, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 4, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4entt8internal14setup_node_forIfEEDavENUlRKNS_8meta_ctxEE_8__invokeES4_, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZZN4entt8internal14setup_node_forIfEEDavENUlPvPKvE_8__invokeES2_S4_, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZZN4entt8internal14setup_node_forIfEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES4_S5_S7_, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.15.0..sroa_idx, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IfEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIfE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIfE5valueEv.exit, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIfE5valueEvE5value) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIfE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78
  store i32 %i.d, ptr @_ZZN4entt10type_indexIfE5valueEvE5value, align 4, !tbaa !78
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIfE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIfE5valueEvE5value) #29
  br label %_ZN4entt10type_indexIfE5valueEv.exit

_ZN4entt10type_indexIfE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIfE5valueEvE5value, align 4, !tbaa !78
  store i32 %i.g, ptr %0, align 8, !tbaa !330
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1497080443, ptr %i.h, align 4, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.436, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forIfEEDavENUlRKNS_8meta_ctxEE_8__invokeES4_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #9 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !122, !alias.scope !1256
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEfEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.a, align 8, !tbaa !179, !alias.scope !1256
  store i32 -1497080443, ptr %i.c, align 8, !tbaa !180, !alias.scope !1256
  store ptr null, ptr %i.b, align 8, !tbaa !146, !alias.scope !1256
  store i8 2, ptr %i.d, align 4, !tbaa !181, !alias.scope !1256
  store float 0.000000e+00, ptr %0, align 8, !tbaa !248, !alias.scope !1256
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !182, !alias.scope !1256
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !183, !alias.scope !1256
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEfEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.g, align 8, !tbaa !145, !alias.scope !1256
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEfEEvNS_8internal11meta_traitsERKS0_Pv(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEfEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !183
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEfEEPKvNS_8internal11any_requestERKS1_S4_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !181
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 5 uses
  switch i8 %0, label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit, !prof !123

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IfEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIfEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIfEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load float, ptr %2, align 4, !tbaa !248
  store float %i.j, ptr %i.e, align 4, !tbaa !248
  br label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.k = load float, ptr %2, align 4, !tbaa !248
  store float %i.k, ptr %i.e, align 4, !tbaa !248
  br label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.l = load float, ptr %i.e, align 4, !tbaa !248
  %i.m = load float, ptr %2, align 4, !tbaa !248
  %i.n = fcmp oeq float %i.l, %i.m
  %i.o = select i1 %i.n, ptr %2, ptr null
  br label %_ZN4entt7type_idIfEERKNS_9type_infoEv.exit
end_hunk_2
begin_hunk_3_@_ZN4entt8internal18basic_meta_factory6customENS0_16meta_custom_nodeE:bb.a
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = load i32, ptr %i.bx, align 8, !tbaa !198
  %.not.i.i8 = icmp eq i32 %i.bz, %i.br
  br i1 %.not.i.i8, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i, label %.lr.ph.i.i6

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i: ; preds = %.lr.ph.i.i6, %bb.p
  %.sroa.010.015.i.i7.lcssa = phi ptr [ %i.bs, %bb.p ], [ %i.bx, %.lr.ph.i.i6 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !268 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i7.lcssa, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !199
  %.not5.i.i16 = icmp eq ptr %i.cd, %i.cb
  br i1 %.not5.i.i16, label %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i, %.lr.ph.i2.i
  %.07.i.i17 = phi ptr [ %i.cf, %.lr.ph.i2.i ], [ %.sroa.010.015.i.i7.lcssa, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.i.i17, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !175, !nonnull !115, !noundef !115 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !199
  %.not5.i.i = icmp eq ptr %i.ch, %i.cb
  br i1 %.not5.i.i, label %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit, label %.lr.ph.i2.i

_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit: ; preds = %.lr.ph.i2.i, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i
  %.07.i.i.lcssa = phi ptr [ %.sroa.010.015.i.i7.lcssa, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_func_nodeESaIS3_EEjEEPDaRT_T0_.exit.i ], [ %i.cf, %.lr.ph.i2.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.07.i.i.lcssa, i64 64
  %i.cj = load i32, ptr %1, align 8, !tbaa !151
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !151
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.lcssa, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.lcssa, i64 80
  %i.cn = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !218 ; 8 uses
  store <2 x ptr> %i.cn, ptr %i.ck, align 8, !tbaa !140
  %.not.i.i.i.i.i9 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i9, label %_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cp, align 8, !tbaa !227
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !228
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #29, !inline_history !1306
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #29, !inline_history !1306
  br label %_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !122
  %.not.i.i.i.i.i.i10 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i.i10, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11

bb.u:                                             ; preds = %bb.s
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i12 = phi i32 [ %i.cs, %bb.t ], [ %i.dc, %bb.u ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i.i12, 1
  br i1 %i.dd, label %bb.v, label %_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit, !prof !229

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #29
  br label %_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit

_ZN4entt8internal16meta_custom_nodeaSEOS1_.exit:  ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11, %bb.r, %_ZN4entt8internal18basic_meta_factory23find_overload_or_assertEv.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i3, %bb.k, %_ZN4entt8internal18basic_meta_factory21find_member_or_assertEv.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIcLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !228
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !19
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !122
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !229

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIcSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
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
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !122
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #29
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4entt8meta_argINS_9type_listIJRKN8MetaType4baseEiEEEEENS_9meta_typeERKNS_8meta_ctxEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #5 comdat {
bb.a:
  %.sroa.idx.not.i = icmp eq i64 %1, 0
  %2 = icmp ult i64 %1, 2
  tail call void @llvm.assume(i1 %2)
  %.sroa.speculated.i = select i1 %.sroa.idx.not.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #29, !inline_history !1307
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14meta_constructIN8MetaType5clazzEJRKNS1_4baseEiEEENS_8meta_anyERKNS_8meta_ctxEPS6_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2) #2 comdat {
bb.a:
  tail call void @_ZN4entt8internal14meta_constructIN8MetaType5clazzEJRKNS2_4baseEiEJLm0ELm1EEEENS_8meta_anyERKNS_8meta_ctxEPS7_St16integer_sequenceImJXspT1_EEE(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2INS_9type_listIJRKN8MetaType4baseEiEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEv.exit, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEvE5value) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEvE5value, align 4, !tbaa !78
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEvE5value) #29
  br label %_ZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEv.exit

_ZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_9type_listIJRKN8MetaType4baseEiEEEE5valueEvE5value, align 4, !tbaa !78
  store i32 %i.g, ptr %0, align 8, !tbaa !330
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1614207769, ptr %i.h, align 4, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 44, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.438, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt8internal14meta_constructIN8MetaType5clazzEJRKNS2_4baseEiEJLm0ELm1EEEENS_8meta_anyERKNS_8meta_ctxEPS7_St16integer_sequenceImJXspT1_EEE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.entt::meta_any", align 8    ; 8 uses
  %4 = alloca %"class.entt::meta_any", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !180
  %i.c = icmp eq i32 %i.b, -1513108935
  br i1 %i.c, label %_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZNK4entt8meta_any10allow_castIN8MetaType4baseEEES0_v(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %.not.i.not = icmp eq ptr %i.e, null            ; 2 uses
  br i1 %.not.i.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !181
  %i.h = add i8 %i.g, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt4swapIN4entt8meta_anyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit unwind label %bb.g, !inline_history !3

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #30
  unreachable

_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.not.i.not, label %bb.r, label %_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit.thread

_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit.thread: ; preds = %bb.a, %_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !180
  %i.p = icmp eq i32 %i.o, -1779859874
  br i1 %i.p, label %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNK4entt8meta_any10allow_castIiEES0_v(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !145
  %.not.i6.not = icmp eq ptr %i.r, null           ; 2 uses
  br i1 %.not.i6.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !181
  %i.u = add i8 %i.t, -1
  %spec.select.i.i10 = icmp ult i8 %i.u, 2
  br i1 %spec.select.i.i10, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt4swapIN4entt8meta_anyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %3) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !146  ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i7, label %_ZN4entt8meta_any10allow_castIiEEbv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZN4entt8meta_any10allow_castIiEEbv.exit unwind label %bb.m, !inline_history !3

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #30
  unreachable

_ZN4entt8meta_any10allow_castIiEEbv.exit:         ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.not.i6.not, label %bb.r, label %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread

_ZN4entt8meta_any10allow_castIiEEbv.exit.thread:  ; preds = %_ZN4entt8meta_any10allow_castIRKN8MetaType4baseEEEbv.exit.thread, %_ZN4entt8meta_any10allow_castIiEEbv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !180
  %i.ab = icmp ne i32 %i.aa, -1513108935
  %i.ac = load i8, ptr %i.z, align 4              ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 2
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %i.af = select i1 %i.ad, ptr %2, ptr %i.ae
  %.not3.i.i.i = icmp eq ptr %i.af, null
  %.not.i.i.i = select i1 %i.ab, i1 true, i1 %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.n, label %_ZN4entt8meta_any4castIRKN8MetaType4baseEEENSt12remove_constIT_E4typeEv.exit

bb.n:                                             ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !182
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !183 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.o, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !145, !nonnull !115, !noundef !115
  call void %i.am(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef null), !inline_history !33
  %.pre.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !183
  %.pre.i.i.i = load i8, ptr %i.z, align 4, !tbaa !181
  %.pre5.i.i.i = load ptr, ptr %2, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i:      ; preds = %bb.o, %bb.n
  %i.an = phi ptr [ %.pre5.i.i.i, %bb.o ], [ %i.ae, %bb.n ]
  %i.ao = phi i8 [ %.pre.i.i.i, %bb.o ], [ %i.ac, %bb.n ]
  %i.ap = phi ptr [ %.pre.i.i.i.i, %bb.o ], [ %i.aj, %bb.n ]
  %i.aq = icmp eq i8 %i.ao, 2
  %i.ar = select i1 %i.aq, ptr %2, ptr %i.an
  %i.as = call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i32 noundef -1513108935, ptr noundef %i.ar) #29 ; 0 uses
  br label %_ZN4entt8meta_any4castIRKN8MetaType4baseEEENSt12remove_constIT_E4typeEv.exit

_ZN4entt8meta_any4castIRKN8MetaType4baseEEENSt12remove_constIT_E4typeEv.exit: ; preds = %_ZN4entt8meta_any10allow_castIiEEbv.exit.thread, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.au = load i32, ptr %i.n, align 8, !tbaa !180
  %i.av = icmp ne i32 %i.au, -1779859874
  %i.aw = load i8, ptr %i.at, align 4             ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 2
  %i.ay = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.az = select i1 %i.ax, ptr %i.m, ptr %i.ay    ; 2 uses
  %.not3.i.i.i11 = icmp eq ptr %i.az, null
  %.not.i.i.i12 = select i1 %i.av, i1 true, i1 %.not3.i.i.i11
  br i1 %.not.i.i.i12, label %bb.p, label %_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv.exit

bb.p:                                             ; preds = %_ZN4entt8meta_any4castIRKN8MetaType4baseEEENSt12remove_constIT_E4typeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !182
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.q, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i13

end_hunk_3
begin_hunk_4_@_ZN4entt9type_infoC2INS_23meta_class_template_tagISt6vectorEEEESt15in_place_type_tIT_E:bb.a
  br i1 %.not.i, label %_ZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEvE5value, align 4, !tbaa !78
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEvE5value) #29
  br label %_ZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEv.exit

_ZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_23meta_class_template_tagISt6vectorEEE5valueEvE5value, align 4, !tbaa !78
  store i32 %i.g, ptr %0, align 8, !tbaa !330
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1500948356, ptr %i.h, align 4, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 42, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.472, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt6vectorEEEEDavENUlRKNS_8meta_ctxEE_8__invokeES7_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #9 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !122, !alias.scope !1646
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.a, align 8, !tbaa !179, !alias.scope !1646
  store i32 1500948356, ptr %i.c, align 8, !tbaa !180, !alias.scope !1646
  store ptr null, ptr %i.b, align 8, !tbaa !146, !alias.scope !1646
  store i8 2, ptr %i.d, align 4, !tbaa !181, !alias.scope !1646
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !182, !alias.scope !1646
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !183, !alias.scope !1646
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.g, align 8, !tbaa !145, !alias.scope !1646
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEvNS_8internal11meta_traitsERKS0_Pv(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !183
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEPKvNS_8internal11any_requestERKS1_S7_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  switch i8 %0, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit
    i8 2, label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit, !prof !123

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2INS_23meta_class_template_tagISt6vectorEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance) #29
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i8, ptr %i.e, align 4, !tbaa !181
  %i.g = icmp eq i8 %i.f, 2
  %i.h = load ptr, ptr %1, align 8
  %i.i = select i1 %i.g, ptr %1, ptr %i.h
  %i.j = icmp eq ptr %i.i, %2
  %i.k = select i1 %i.j, ptr %2, ptr null
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.l, align 8, !tbaa !179
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1500948356, ptr %i.m, align 8, !tbaa !180
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !146
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 2, ptr %i.o, align 4, !tbaa !181
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.e, %bb.a, %bb.a, %bb.a, %bb.f, %bb.g
  %i.p = phi ptr [ null, %bb.f ], [ null, %bb.g ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt6vectorEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.k, %bb.e ], [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ]
  ret ptr %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt6vectorEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES7_S8_SA_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) #9 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt6vectorEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, label %bb.b

_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt6vectorEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.f, align 8, !tbaa !179, !alias.scope !1649
  store i32 1500948356, ptr %i.d, align 8, !tbaa !180, !alias.scope !1649
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEvRKS1_, ptr %i.e, align 8, !tbaa !146, !alias.scope !1649
  store i8 1, ptr %i.c, align 4, !tbaa !181, !alias.scope !1649
  store ptr %2, ptr %0, align 8, !tbaa !122, !alias.scope !1649
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !182, !alias.scope !1649
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !183, !alias.scope !1649
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.i, align 8, !tbaa !145, !alias.scope !1649
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt6vectorEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.j, align 8, !tbaa !179, !alias.scope !1649
  store i32 1500948356, ptr %i.l, align 8, !tbaa !180, !alias.scope !1649
  store ptr null, ptr %i.k, align 8, !tbaa !146, !alias.scope !1649
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 3, ptr %i.m, align 4, !tbaa !181, !alias.scope !1649
  store ptr %2, ptr %0, align 8, !tbaa !122, !alias.scope !1649
  store ptr %1, ptr %i.n, align 8, !tbaa !182, !alias.scope !1649
  store ptr null, ptr %i.o, align 8, !tbaa !183, !alias.scope !1649
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !145, !alias.scope !1649
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt6vectorEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !181, !alias.scope !1649
  store ptr %3, ptr %0, align 8, !tbaa !122, !alias.scope !1649
  store ptr %1, ptr %i.n, align 8, !tbaa !182, !alias.scope !1649
  store ptr null, ptr %i.o, align 8, !tbaa !183, !alias.scope !1649
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !145, !alias.scope !1649
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt6vectorEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt6vectorEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit: ; preds = %_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt6vectorEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt6vectorEEEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(37) %0) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !181
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZZN4entt8internal14setup_node_forISt6vectorIiSaIiEEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES7_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #6 comdat align 2 {
bb.a:
  %.sroa.idx.not.i.i = icmp eq i64 %1, 0
  %2 = icmp ult i64 %1, 2
  tail call void @llvm.assume(i1 %2)
  %.sroa.speculated.i.i = select i1 %.sroa.idx.not.i.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #29, !inline_history !1650
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forISaIiEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !0

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forISaIiEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idISaIiEEERKNS_9type_infoEv.exit, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idISaIiEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2ISaIiEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance) #29
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idISaIiEEERKNS_9type_infoEv.exit

_ZN4entt7type_idISaIiEEERKNS_9type_infoEv.exit:   ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !123

bb.d:                                             ; preds = %_ZN4entt7type_idISaIiEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance) #29
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2ISaIiEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance) #29
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idISaIiEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !126
  store ptr @_ZZN4entt7type_idISaIiEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 128, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESaIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4entt8internal14setup_node_forISaIiEEEDavENUlRKNS_8meta_ctxEE_8__invokeES5_, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZZN4entt8internal14setup_node_forISaIiEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES5_S6_S8_, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZZN4entt8internal14setup_node_forISaIiEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES5_m, ptr %.sroa.18.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.j, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forINS_23meta_class_template_tagISaEEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISaEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !0

bb.g:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_ZN4entt9type_infoC2INS_23meta_class_template_tagISt4pairEEEESt15in_place_type_tIT_E:bb.a
  br i1 %.not.i, label %_ZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEvE5value, align 4, !tbaa !78
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEvE5value) #29
  br label %_ZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEv.exit

_ZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_23meta_class_template_tagISt4pairEEE5valueEvE5value, align 4, !tbaa !78
  store i32 %i.g, ptr %0, align 8, !tbaa !330
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1636808397, ptr %i.h, align 4, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 40, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.477, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt4pairEEEEDavENUlRKNS_8meta_ctxEE_8__invokeES7_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #9 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !122, !alias.scope !1684
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.a, align 8, !tbaa !179, !alias.scope !1684
  store i32 1636808397, ptr %i.c, align 8, !tbaa !180, !alias.scope !1684
  store ptr null, ptr %i.b, align 8, !tbaa !146, !alias.scope !1684
  store i8 2, ptr %i.d, align 4, !tbaa !181, !alias.scope !1684
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !182, !alias.scope !1684
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !183, !alias.scope !1684
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.g, align 8, !tbaa !145, !alias.scope !1684
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEvNS_8internal11meta_traitsERKS0_Pv(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !183
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEPKvNS_8internal11any_requestERKS1_S7_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  switch i8 %0, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit
    i8 2, label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit, !prof !123

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2INS_23meta_class_template_tagISt4pairEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance) #29
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i8, ptr %i.e, align 4, !tbaa !181
  %i.g = icmp eq i8 %i.f, 2
  %i.h = load ptr, ptr %1, align 8
  %i.i = select i1 %i.g, ptr %1, ptr %i.h
  %i.j = icmp eq ptr %i.i, %2
  %i.k = select i1 %i.j, ptr %2, ptr null
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.l, align 8, !tbaa !179
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1636808397, ptr %i.m, align 8, !tbaa !180
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !146
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 2, ptr %i.o, align 4, !tbaa !181
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.e, %bb.a, %bb.a, %bb.a, %bb.f, %bb.g
  %i.p = phi ptr [ null, %bb.f ], [ null, %bb.g ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt4pairEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.k, %bb.e ], [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ]
  ret ptr %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt4pairEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES7_S8_SA_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) #9 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt4pairEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, label %bb.b

_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt4pairEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.f, align 8, !tbaa !179, !alias.scope !1687
  store i32 1636808397, ptr %i.d, align 8, !tbaa !180, !alias.scope !1687
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEvRKS1_, ptr %i.e, align 8, !tbaa !146, !alias.scope !1687
  store i8 1, ptr %i.c, align 4, !tbaa !181, !alias.scope !1687
  store ptr %2, ptr %0, align 8, !tbaa !122, !alias.scope !1687
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !182, !alias.scope !1687
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !183, !alias.scope !1687
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.i, align 8, !tbaa !145, !alias.scope !1687
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt4pairEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.j, align 8, !tbaa !179, !alias.scope !1687
  store i32 1636808397, ptr %i.l, align 8, !tbaa !180, !alias.scope !1687
  store ptr null, ptr %i.k, align 8, !tbaa !146, !alias.scope !1687
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 3, ptr %i.m, align 4, !tbaa !181, !alias.scope !1687
  store ptr %2, ptr %0, align 8, !tbaa !122, !alias.scope !1687
  store ptr %1, ptr %i.n, align 8, !tbaa !182, !alias.scope !1687
  store ptr null, ptr %i.o, align 8, !tbaa !183, !alias.scope !1687
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !145, !alias.scope !1687
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt4pairEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !181, !alias.scope !1687
  store ptr %3, ptr %0, align 8, !tbaa !122, !alias.scope !1687
  store ptr %1, ptr %i.n, align 8, !tbaa !182, !alias.scope !1687
  store ptr null, ptr %i.o, align 8, !tbaa !183, !alias.scope !1687
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !145, !alias.scope !1687
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt4pairEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt4pairEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit: ; preds = %_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt4pairEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt4pairEEEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(37) %0) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !181
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZZN4entt8internal14setup_node_forISt4pairIKicEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES7_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #6 comdat align 2 {
bb.a:
  %.sroa.idx.not.i.i = icmp eq i64 %1, 0
  %2 = icmp ult i64 %1, 2
  tail call void @llvm.assume(i1 %2)
  %.sroa.speculated.i.i = select i1 %.sroa.idx.not.i.i, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEcEERKNS0_14meta_type_nodeERKNS0_12meta_contextE
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %.sroa.speculated.i.i(ptr noundef nonnull align 8 dereferenceable(56) %0) #29, !inline_history !1688
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ESt23_Rb_tree_const_iteratorISt4pairIKicEEEEvPKvPS4_INS_8meta_anyESA_E(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = load ptr, ptr %0, align 8, !tbaa !374    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !41
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.e, align 8, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1779859874, ptr %i.f, align 8, !tbaa !180
  store ptr null, ptr %i.c, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 4, ptr %i.g, align 4, !tbaa !181
  store ptr %i.b, ptr %1, align 8, !tbaa !122
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.h, align 8, !tbaa !140
  %i.j = icmp eq ptr %i.i, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.j, label %bb.d, label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

bb.d:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183
  br label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit: ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !183
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !374
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146  ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i7, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.o), !inline_history !1689
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i: ; preds = %bb.e, %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEcEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.t, align 8, !tbaa !179
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 -1471413475, ptr %i.u, align 8, !tbaa !180
  store ptr null, ptr %i.r, align 8, !tbaa !146
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 4, ptr %i.v, align 4, !tbaa !181
  store ptr %i.q, ptr %i.o, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !140
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEcEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.w, align 8, !tbaa !140
  %i.y = icmp eq ptr %i.x, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEcEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.y, label %bb.f, label %_ZN4entt8meta_any7emplaceIRKcJS3_EEEvDpOT0_.exit

bb.f:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !183
  br label %_ZN4entt8meta_any7emplaceIRKcJS3_EEEvDpOT0_.exit

_ZN4entt8meta_any7emplaceIRKcJS3_EEEvDpOT0_.exit: ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKcJS4_EEEvDpOT0_.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !183
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.a) #36
  store ptr %i.ad, ptr %0, align 8, !tbaa !374
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4entt8meta_any7emplaceIRKcJS3_EEEvDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt23_Rb_tree_const_iteratorISt4pairIKicEEEEPKvNS_8internal11any_requestERKS1_S9_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !181
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 5 uses
  switch i8 %0, label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit, !prof !123

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2ISt23_Rb_tree_const_iteratorISt4pairIKicEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance) #29
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i64, ptr %2, align 8, !tbaa !356
  store i64 %i.j, ptr %i.e, align 8, !tbaa !356
  br label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8, !tbaa !356
  store i64 %i.k, ptr %i.e, align 8, !tbaa !356
  br label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !374
  %i.m = load ptr, ptr %2, align 8, !tbaa !374
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = select i1 %i.n, ptr %2, ptr null
  br label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt23_Rb_tree_const_iteratorISt4pairIKicEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.p, align 8, !tbaa !179
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -37580024, ptr %i.q, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.r, align 8, !tbaa !146
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 2, ptr %i.s, align 4, !tbaa !181
  %i.t = load i64, ptr %i.e, align 8, !tbaa !356
  store i64 %i.t, ptr %2, align 8, !tbaa !356
  br label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit

bb.i:                                             ; preds = %bb.a
  %i.u = load i64, ptr %i.e, align 8, !tbaa !356
  store i64 %i.u, ptr %2, align 8, !tbaa !356
  br label %_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %bb.a
  %i.v = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ @_ZZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idISt23_Rb_tree_const_iteratorISt4pairIKicEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.o, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %bb.i ]
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt23_Rb_tree_const_iteratorISt4pairIKicEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEv.exit, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEvE5value) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !78
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEvE5value, align 4, !tbaa !78
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEvE5value) #29
  br label %_ZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEv.exit

_ZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt23_Rb_tree_const_iteratorISt4pairIKicEEE5valueEvE5value, align 4, !tbaa !78
  store i32 %i.g, ptr %0, align 8, !tbaa !330
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -37580024, ptr %i.h, align 4, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 56, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.478, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt26meta_associative_container13meta_iterator12basic_vtableILb0ESt17_Rb_tree_iteratorISt4pairIKicEEEEvPKvPS4_INS_8meta_anyESA_E(ptr noundef %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_5
