Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_dereference?download=true
inline.NumInlined: 5647
inline.NumDeleted: 1809
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__shared_count" = type { ptr }
%"struct.entt::internal::meta_type_node" = type { ptr, i32, ptr, i32, i64, ptr, ptr, ptr, ptr, %"struct.entt::internal::meta_template_node", %"struct.entt::internal::meta_custom_node", %"class.std::unique_ptr.99" }
%"struct.entt::internal::meta_template_node" = type { i64, ptr, ptr }
%"struct.entt::internal::meta_custom_node" = type { i32, %"class.std::shared_ptr.55" }
%"class.std::shared_ptr.55" = type { %"class.std::__shared_ptr.56" }
%"class.std::__shared_ptr.56" = type { ptr, %"class.std::__shared_count" }
%"class.std::unique_ptr.99" = type { %"struct.std::__uniq_ptr_data.100" }
%"struct.std::__uniq_ptr_data.100" = type { %"class.std::__uniq_ptr_impl.101" }
%"class.std::__uniq_ptr_impl.101" = type { %"class.std::tuple.102" }
%"class.std::tuple.102" = type { %"struct.std::_Tuple_impl.103" }
%"struct.std::_Tuple_impl.103" = type { %"struct.std::_Head_base.106" }
%"struct.std::_Head_base.106" = type { ptr }
%"struct.entt::type_info" = type { i32, i32, %"class.std::basic_string_view" }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::VTable" = type { ptr, ptr, ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.std::array.276" = type { [2 x ptr] }
%"class.testing::internal::GTestLog" = type { i32 }
%"class.entt::meta_any" = type { %"class.entt::basic_any", ptr, ptr, ptr }
%"class.entt::basic_any" = type <{ %"struct.entt::internal::basic_any_storage", ptr, ptr, i32, i8, [3 x i8] }>
%"struct.entt::internal::basic_any_storage" = type { %union.anon.0 }
%union.anon.0 = type { ptr, [8 x i8] }
%"class.testing::AssertionResult" = type { i8, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.2" }
%"struct.std::_Head_base.2" = type { ptr }
%"class.testing::Message" = type { %"class.std::unique_ptr.3" }
%"class.std::unique_ptr.3" = type { %"struct.std::__uniq_ptr_data.4" }
%"struct.std::__uniq_ptr_data.4" = type { %"class.std::__uniq_ptr_impl.5" }
%"class.std::__uniq_ptr_impl.5" = type { %"class.std::tuple.6" }
%"class.std::tuple.6" = type { %"struct.std::_Tuple_impl.7" }
%"struct.std::_Tuple_impl.7" = type { %"struct.std::_Head_base.10" }
%"struct.std::_Head_base.10" = type { ptr }
%"class.testing::internal::AssertHelper" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.entt::meta_type" = type { ptr, ptr }
%"class.testing::Matcher" = type { %"class.testing::internal::MatcherBase" }
%"class.testing::internal::MatcherBase" = type { %"class.testing::MatcherDescriberInterface", ptr, %"union.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::Buffer" }
%"class.testing::MatcherDescriberInterface" = type { ptr }
%"union.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::Buffer" = type { ptr }
%"class.testing::PolymorphicMatcher" = type { %"class.testing::internal::MatchesRegexMatcher" }
%"class.testing::internal::MatchesRegexMatcher" = type <{ %"class.std::shared_ptr.166", i8, [7 x i8] }>
%"class.std::shared_ptr.166" = type { %"class.std::__shared_ptr.167" }
%"class.std::__shared_ptr.167" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [3 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<int>::_Storage" = type { i32 }
%"class.std::unique_ptr.30" = type { %"struct.std::__uniq_ptr_data.31" }
%"struct.std::__uniq_ptr_data.31" = type { %"class.std::__uniq_ptr_impl.32" }
%"class.std::__uniq_ptr_impl.32" = type { %"class.std::tuple.33" }
%"class.std::tuple.33" = type { %"struct.std::_Tuple_impl.34" }
%"struct.std::_Tuple_impl.34" = type { %"struct.std::_Head_base.37" }
%"struct.std::_Head_base.37" = type { ptr }
%"struct.MetaDereference::adl_wrapped_shared_ptr" = type { %"struct.MetaDereference::wrapped_shared_ptr" }
%"struct.MetaDereference::wrapped_shared_ptr" = type { %"class.std::shared_ptr" }
%"struct.MetaDereference::spec_wrapped_shared_ptr" = type { %"struct.MetaDereference::wrapped_shared_ptr" }
%"struct.MetaDereference::adl_wrapped_shared_ptr.43" = type { %"struct.MetaDereference::wrapped_shared_ptr.44" }
%"struct.MetaDereference::wrapped_shared_ptr.44" = type { %"class.std::shared_ptr.45" }
%"class.std::shared_ptr.45" = type { %"class.std::__shared_ptr.46" }
%"class.std::__shared_ptr.46" = type { ptr, %"class.std::__shared_count" }
%"struct.MetaDereference::spec_wrapped_shared_ptr.49" = type { %"struct.MetaDereference::wrapped_shared_ptr.44" }
%"struct.MetaDereference::self_ptr" = type { i32 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZN7testing8internal16SuiteApiResolverI15MetaDereferenceE19GetSetUpCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal16SuiteApiResolverI15MetaDereferenceE22GetTearDownCaseOrSuiteEPKci = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc = comdat any

$_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZN4entt8meta_any4castIRiEENSt12remove_constIT_E4typeEv = comdat any

$__clang_call_terminate = comdat any

$_ZN15MetaDereference18wrapped_shared_ptrIiED2Ev = comdat any

$_ZN15MetaDereference18wrapped_shared_ptrIKiED2Ev = comdat any

$_ZN32MetaDereference_InvalidType_TestD0Ev = comdat any

$_ZN15MetaDereference8TearDownEv = comdat any

$_ZN7testing4Test5SetupEv = comdat any

$_ZN30MetaDereference_ConstType_TestD0Ev = comdat any

$_ZN48MetaDereferenceDeathTest_DISABLED_ConstType_TestD0Ev = comdat any

$_ZN41MetaDereference_ConstAnyNonConstType_TestD0Ev = comdat any

$_ZN38MetaDereference_ConstAnyConstType_TestD0Ev = comdat any

$_ZN56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestD0Ev = comdat any

$_ZN31MetaDereference_RawPointer_TestD0Ev = comdat any

$_ZN33MetaDereference_SmartPointer_TestD0Ev = comdat any

$_ZN29MetaDereference_Optional_TestD0Ev = comdat any

$_ZN45MetaDereference_OptionalConstCorrectness_TestD0Ev = comdat any

$_ZN34MetaDereference_EmptyOptional_TestD0Ev = comdat any

$_ZN47MetaDereference_PointerToConstMoveOnlyType_TestD0Ev = comdat any

$_ZN26MetaDereference_AsRef_TestD0Ev = comdat any

$_ZN31MetaDereference_AsConstRef_TestD0Ev = comdat any

$_ZN32MetaDereference_OverloadAdl_TestD0Ev = comdat any

$_ZN33MetaDereference_OverloadSpec_TestD0Ev = comdat any

$_ZN46MetaDereference_PointerToConstOverloadAdl_TestD0Ev = comdat any

$_ZN47MetaDereference_PointerToConstOverloadSpec_TestD0Ev = comdat any

$_ZN64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestD0Ev = comdat any

$_ZN65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestD0Ev = comdat any

$_ZN34MetaDereference_PointerToVoid_TestD0Ev = comdat any

$_ZN39MetaDereference_PointerToConstVoid_TestD0Ev = comdat any

$_ZN40MetaDereference_SharedPointerToVoid_TestD0Ev = comdat any

$_ZN40MetaDereference_UniquePointerToVoid_TestD0Ev = comdat any

$_ZN38MetaDereference_PointerToFunction_TestD0Ev = comdat any

$_ZN32MetaDereference_SelfPointer_TestD0Ev = comdat any

$_ZN33MetaDereference_ProxyPointer_TestD0Ev = comdat any

$_ZN26MetaDereference_Array_TestD0Ev = comdat any

$_ZN37MetaDereference_PlainNullPointer_TestD0Ev = comdat any

$_ZN38MetaDereference_SharedNullPointer_TestD0Ev = comdat any

$_ZN38MetaDereference_UniqueNullPointer_TestD0Ev = comdat any

$_ZN4entt7locatorINS_8meta_ctxEE7serviceE = comdat any

$_ZNSt12__shared_ptrIN4entt8meta_ctxELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI32MetaDereference_InvalidType_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI32MetaDereference_InvalidType_TestE10CreateTestEv = comdat any

$_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE6rehashEm = comdat any

$_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10unique_ptrINS0_14meta_type_nodeESt14default_deleteIS5_EEEESaIS9_EELm0EED2Ev = comdat any

$_ZNSt6vectorImSaImEE17_M_default_appendEm = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN4entt8internal14dense_map_nodeIjSt10unique_ptrINS3_14meta_type_nodeESt14default_deleteIS6_EEEEEEvT_SC_ = comdat any

$_ZN4entt8internal14meta_type_nodeD2Ev = comdat any

$_ZN4entt8internal20meta_type_descriptorD2Ev = comdat any

$_ZNSt6vectorIN4entt8internal14meta_func_nodeESaIS2_EED2Ev = comdat any

$_ZNKSt14default_deleteIN4entt8internal14meta_func_nodeEEclEPS2_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE = comdat any

$_ZN4entt8internal14setup_node_forIvEEDav = comdat any

$_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E = comdat any

$_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_ = comdat any

$_ZN7testing8internal15TestFactoryImplI30MetaDereference_ConstType_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI30MetaDereference_ConstType_TestE10CreateTestEv = comdat any

$_ZN7testing8internal15TestFactoryImplI48MetaDereferenceDeathTest_DISABLED_ConstType_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI48MetaDereferenceDeathTest_DISABLED_ConstType_TestE10CreateTestEv = comdat any

$_ZN7testing13ContainsRegexIPKcEENS_18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEEERKT_ = comdat any

end_hunk_0
begin_hunk_1
@_ZTIN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE }, comdat, align 8
@_ZTSN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant [140 x i8] c"N7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant [85 x i8] c"N7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN7testing25MatcherDescriberInterfaceE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing25MatcherDescriberInterfaceE = linkonce_odr dso_local constant [38 x i8] c"N7testing25MatcherDescriberInterfaceE\00", comdat, align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"matches\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"contains\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c" regular expression \00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"doesn't \00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"contain\00", align 1
@_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE }, comdat, align 8
@_ZTSN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant [75 x i8] c"N7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant [89 x i8] c"N7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11 = linkonce_odr hidden constant %"struct.testing::internal::MatcherBase<const std::__cxx11::basic_string<char> &>::VTable" { ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE19MatchAndExplainImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSA_S9_PNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12DescribeImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEvRKSA_PSob, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16GetDescriberImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSA_, ptr @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISD_EEE7DestroyEPNS0_17SharedPayloadBaseE }, comdat, align 8
@.str.134 = private unnamed_addr constant [36 x i8] c"/usr/include/gtest/gtest-matchers.h\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"Condition vtable_ != nullptr failed. \00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZTVN7testing8internal15TestFactoryImplI41MetaDereference_ConstAnyNonConstType_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI41MetaDereference_ConstAnyNonConstType_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI41MetaDereference_ConstAnyNonConstType_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI41MetaDereference_ConstAnyNonConstType_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI41MetaDereference_ConstAnyNonConstType_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI41MetaDereference_ConstAnyNonConstType_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI41MetaDereference_ConstAnyNonConstType_TestEE = linkonce_odr hidden constant [82 x i8] c"N7testing8internal15TestFactoryImplI41MetaDereference_ConstAnyNonConstType_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI38MetaDereference_ConstAnyConstType_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI38MetaDereference_ConstAnyConstType_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaDereference_ConstAnyConstType_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaDereference_ConstAnyConstType_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI38MetaDereference_ConstAnyConstType_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI38MetaDereference_ConstAnyConstType_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI38MetaDereference_ConstAnyConstType_TestEE = linkonce_odr hidden constant [79 x i8] c"N7testing8internal15TestFactoryImplI38MetaDereference_ConstAnyConstType_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestEE = linkonce_odr hidden constant [97 x i8] c"N7testing8internal15TestFactoryImplI56MetaDereferenceDeathTest_DISABLED_ConstAnyConstType_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI31MetaDereference_RawPointer_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI31MetaDereference_RawPointer_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI31MetaDereference_RawPointer_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI31MetaDereference_RawPointer_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI31MetaDereference_RawPointer_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI31MetaDereference_RawPointer_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI31MetaDereference_RawPointer_TestEE = linkonce_odr hidden constant [72 x i8] c"N7testing8internal15TestFactoryImplI31MetaDereference_RawPointer_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI33MetaDereference_SmartPointer_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI33MetaDereference_SmartPointer_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaDereference_SmartPointer_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaDereference_SmartPointer_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI33MetaDereference_SmartPointer_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI33MetaDereference_SmartPointer_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI33MetaDereference_SmartPointer_TestEE = linkonce_odr hidden constant [74 x i8] c"N7testing8internal15TestFactoryImplI33MetaDereference_SmartPointer_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI29MetaDereference_Optional_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI29MetaDereference_Optional_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI29MetaDereference_Optional_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI29MetaDereference_Optional_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI29MetaDereference_Optional_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI29MetaDereference_Optional_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI29MetaDereference_Optional_TestEE = linkonce_odr hidden constant [70 x i8] c"N7testing8internal15TestFactoryImplI29MetaDereference_Optional_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI45MetaDereference_OptionalConstCorrectness_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI45MetaDereference_OptionalConstCorrectness_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI45MetaDereference_OptionalConstCorrectness_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI45MetaDereference_OptionalConstCorrectness_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI45MetaDereference_OptionalConstCorrectness_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI45MetaDereference_OptionalConstCorrectness_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI45MetaDereference_OptionalConstCorrectness_TestEE = linkonce_odr hidden constant [86 x i8] c"N7testing8internal15TestFactoryImplI45MetaDereference_OptionalConstCorrectness_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI34MetaDereference_EmptyOptional_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI34MetaDereference_EmptyOptional_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaDereference_EmptyOptional_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaDereference_EmptyOptional_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI34MetaDereference_EmptyOptional_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI34MetaDereference_EmptyOptional_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI34MetaDereference_EmptyOptional_TestEE = linkonce_odr hidden constant [75 x i8] c"N7testing8internal15TestFactoryImplI34MetaDereference_EmptyOptional_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstMoveOnlyType_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstMoveOnlyType_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstMoveOnlyType_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstMoveOnlyType_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstMoveOnlyType_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstMoveOnlyType_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstMoveOnlyType_TestEE = linkonce_odr hidden constant [88 x i8] c"N7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstMoveOnlyType_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI26MetaDereference_AsRef_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI26MetaDereference_AsRef_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI26MetaDereference_AsRef_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI26MetaDereference_AsRef_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI26MetaDereference_AsRef_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI26MetaDereference_AsRef_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI26MetaDereference_AsRef_TestEE = linkonce_odr hidden constant [67 x i8] c"N7testing8internal15TestFactoryImplI26MetaDereference_AsRef_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI31MetaDereference_AsConstRef_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI31MetaDereference_AsConstRef_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI31MetaDereference_AsConstRef_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI31MetaDereference_AsConstRef_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI31MetaDereference_AsConstRef_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI31MetaDereference_AsConstRef_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI31MetaDereference_AsConstRef_TestEE = linkonce_odr hidden constant [72 x i8] c"N7testing8internal15TestFactoryImplI31MetaDereference_AsConstRef_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI32MetaDereference_OverloadAdl_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI32MetaDereference_OverloadAdl_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI32MetaDereference_OverloadAdl_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI32MetaDereference_OverloadAdl_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI32MetaDereference_OverloadAdl_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI32MetaDereference_OverloadAdl_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI32MetaDereference_OverloadAdl_TestEE = linkonce_odr hidden constant [73 x i8] c"N7testing8internal15TestFactoryImplI32MetaDereference_OverloadAdl_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI33MetaDereference_OverloadSpec_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI33MetaDereference_OverloadSpec_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaDereference_OverloadSpec_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaDereference_OverloadSpec_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI33MetaDereference_OverloadSpec_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI33MetaDereference_OverloadSpec_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI33MetaDereference_OverloadSpec_TestEE = linkonce_odr hidden constant [74 x i8] c"N7testing8internal15TestFactoryImplI33MetaDereference_OverloadSpec_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI46MetaDereference_PointerToConstOverloadAdl_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI46MetaDereference_PointerToConstOverloadAdl_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI46MetaDereference_PointerToConstOverloadAdl_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI46MetaDereference_PointerToConstOverloadAdl_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI46MetaDereference_PointerToConstOverloadAdl_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI46MetaDereference_PointerToConstOverloadAdl_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI46MetaDereference_PointerToConstOverloadAdl_TestEE = linkonce_odr hidden constant [87 x i8] c"N7testing8internal15TestFactoryImplI46MetaDereference_PointerToConstOverloadAdl_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstOverloadSpec_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstOverloadSpec_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstOverloadSpec_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstOverloadSpec_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstOverloadSpec_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstOverloadSpec_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstOverloadSpec_TestEE = linkonce_odr hidden constant [88 x i8] c"N7testing8internal15TestFactoryImplI47MetaDereference_PointerToConstOverloadSpec_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestEE = linkonce_odr hidden constant [105 x i8] c"N7testing8internal15TestFactoryImplI64MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadAdl_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestEE = linkonce_odr hidden constant [106 x i8] c"N7testing8internal15TestFactoryImplI65MetaDereferenceDeathTest_DISABLED_PointerToConstOverloadSpec_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI34MetaDereference_PointerToVoid_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI34MetaDereference_PointerToVoid_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaDereference_PointerToVoid_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI34MetaDereference_PointerToVoid_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI34MetaDereference_PointerToVoid_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI34MetaDereference_PointerToVoid_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI34MetaDereference_PointerToVoid_TestEE = linkonce_odr hidden constant [75 x i8] c"N7testing8internal15TestFactoryImplI34MetaDereference_PointerToVoid_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI39MetaDereference_PointerToConstVoid_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI39MetaDereference_PointerToConstVoid_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI39MetaDereference_PointerToConstVoid_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI39MetaDereference_PointerToConstVoid_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI39MetaDereference_PointerToConstVoid_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI39MetaDereference_PointerToConstVoid_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI39MetaDereference_PointerToConstVoid_TestEE = linkonce_odr hidden constant [80 x i8] c"N7testing8internal15TestFactoryImplI39MetaDereference_PointerToConstVoid_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI40MetaDereference_SharedPointerToVoid_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI40MetaDereference_SharedPointerToVoid_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI40MetaDereference_SharedPointerToVoid_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI40MetaDereference_SharedPointerToVoid_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI40MetaDereference_SharedPointerToVoid_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI40MetaDereference_SharedPointerToVoid_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI40MetaDereference_SharedPointerToVoid_TestEE = linkonce_odr hidden constant [81 x i8] c"N7testing8internal15TestFactoryImplI40MetaDereference_SharedPointerToVoid_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI40MetaDereference_UniquePointerToVoid_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI40MetaDereference_UniquePointerToVoid_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI40MetaDereference_UniquePointerToVoid_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI40MetaDereference_UniquePointerToVoid_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI40MetaDereference_UniquePointerToVoid_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI40MetaDereference_UniquePointerToVoid_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI40MetaDereference_UniquePointerToVoid_TestEE = linkonce_odr hidden constant [81 x i8] c"N7testing8internal15TestFactoryImplI40MetaDereference_UniquePointerToVoid_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI38MetaDereference_PointerToFunction_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI38MetaDereference_PointerToFunction_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaDereference_PointerToFunction_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaDereference_PointerToFunction_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI38MetaDereference_PointerToFunction_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI38MetaDereference_PointerToFunction_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI38MetaDereference_PointerToFunction_TestEE = linkonce_odr hidden constant [79 x i8] c"N7testing8internal15TestFactoryImplI38MetaDereference_PointerToFunction_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI32MetaDereference_SelfPointer_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI32MetaDereference_SelfPointer_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI32MetaDereference_SelfPointer_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI32MetaDereference_SelfPointer_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI32MetaDereference_SelfPointer_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI32MetaDereference_SelfPointer_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI32MetaDereference_SelfPointer_TestEE = linkonce_odr hidden constant [73 x i8] c"N7testing8internal15TestFactoryImplI32MetaDereference_SelfPointer_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI33MetaDereference_ProxyPointer_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI33MetaDereference_ProxyPointer_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaDereference_ProxyPointer_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI33MetaDereference_ProxyPointer_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI33MetaDereference_ProxyPointer_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI33MetaDereference_ProxyPointer_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI33MetaDereference_ProxyPointer_TestEE = linkonce_odr hidden constant [74 x i8] c"N7testing8internal15TestFactoryImplI33MetaDereference_ProxyPointer_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI26MetaDereference_Array_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI26MetaDereference_Array_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI26MetaDereference_Array_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI26MetaDereference_Array_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI26MetaDereference_Array_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI26MetaDereference_Array_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI26MetaDereference_Array_TestEE = linkonce_odr hidden constant [67 x i8] c"N7testing8internal15TestFactoryImplI26MetaDereference_Array_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI37MetaDereference_PlainNullPointer_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37MetaDereference_PlainNullPointer_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37MetaDereference_PlainNullPointer_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37MetaDereference_PlainNullPointer_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37MetaDereference_PlainNullPointer_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37MetaDereference_PlainNullPointer_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37MetaDereference_PlainNullPointer_TestEE = linkonce_odr hidden constant [78 x i8] c"N7testing8internal15TestFactoryImplI37MetaDereference_PlainNullPointer_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI38MetaDereference_SharedNullPointer_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI38MetaDereference_SharedNullPointer_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaDereference_SharedNullPointer_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaDereference_SharedNullPointer_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI38MetaDereference_SharedNullPointer_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI38MetaDereference_SharedNullPointer_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI38MetaDereference_SharedNullPointer_TestEE = linkonce_odr hidden constant [79 x i8] c"N7testing8internal15TestFactoryImplI38MetaDereference_SharedNullPointer_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI38MetaDereference_UniqueNullPointer_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI38MetaDereference_UniqueNullPointer_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaDereference_UniqueNullPointer_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI38MetaDereference_UniqueNullPointer_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI38MetaDereference_UniqueNullPointer_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI38MetaDereference_UniqueNullPointer_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI38MetaDereference_UniqueNullPointer_TestEE = linkonce_odr hidden constant [79 x i8] c"N7testing8internal15TestFactoryImplI38MetaDereference_UniqueNullPointer_TestEE\00", comdat, align 1
@_ZN7testing8internal12TypeIdHelperI15MetaDereferenceE6dummy_E = linkonce_odr hidden global i8 0, comdat, align 1
@.str.136 = private unnamed_addr constant [45 x i8] c"/usr/include/gtest/internal/gtest-internal.h\00", align 1
@.str.137 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.138 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.140 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIiE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIiE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.141 = private unnamed_addr constant [59 x i8] c"const char *entt::internal::pretty_function() [Type = int]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.143 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@_ZZN4entt7type_idIPKiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPKiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPKiE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPKiE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.145 = private unnamed_addr constant [67 x i8] c"const char *entt::internal::pretty_function() [Type = const int *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPKiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPKiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@.str.146 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"(nullptr)\00", align 1
@_ZZN4entt7type_idIPiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPiEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPiE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPiE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.148 = private unnamed_addr constant [61 x i8] c"const char *entt::internal::pretty_function() [Type = int *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPiEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@.str.149 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"Expected: (\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"), actual: \00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c" vs \00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [65 x i8] c"St23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZZN4entt7type_idISt10shared_ptrIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt10shared_ptrIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt10shared_ptrIiEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt10shared_ptrIiEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.157 = private unnamed_addr constant [76 x i8] c"const char *entt::internal::pretty_function() [Type = std::shared_ptr<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10shared_ptrIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10shared_ptrIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10shared_ptrEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10shared_ptrEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt10shared_ptrEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt10shared_ptrEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt10shared_ptrEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt10shared_ptrEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.158 = private unnamed_addr constant [102 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::shared_ptr>]\00", align 1
@_ZZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt8optionalIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt8optionalIiEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt8optionalIiEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.159 = private unnamed_addr constant [74 x i8] c"const char *entt::internal::pretty_function() [Type = std::optional<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt8optionalIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt8optionalEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt8optionalEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt8optionalEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt8optionalEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt8optionalEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt8optionalEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.160 = private unnamed_addr constant [100 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::optional>]\00", align 1
@_ZZN4entt7type_idIPKSt10unique_ptrIiSt14default_deleteIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPKSt10unique_ptrIiSt14default_deleteIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPKSt10unique_ptrIiSt14default_deleteIiEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPKSt10unique_ptrIiSt14default_deleteIiEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.161 = private unnamed_addr constant [84 x i8] c"const char *entt::internal::pretty_function() [Type = const std::unique_ptr<int> *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPKSt10unique_ptrIiSt14default_deleteIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPKSt10unique_ptrIiSt14default_deleteIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIiSt14default_deleteIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIiSt14default_deleteIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt10unique_ptrIiSt14default_deleteIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt10unique_ptrIiSt14default_deleteIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt10unique_ptrIiSt14default_deleteIiEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt10unique_ptrIiSt14default_deleteIiEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.162 = private unnamed_addr constant [76 x i8] c"const char *entt::internal::pretty_function() [Type = std::unique_ptr<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.163 = private unnamed_addr constant [102 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::unique_ptr>]\00", align 1
@__const._ZN4entt8internal13meta_arg_nodeIJiSt14default_deleteIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextENS_9type_listIJDpT_EEEm.list = private unnamed_addr constant %"struct.std::array.276" { [2 x ptr] [ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEiEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE] }, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt14default_deleteIiEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt14default_deleteIiEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.164 = private unnamed_addr constant [80 x i8] c"const char *entt::internal::pretty_function() [Type = std::default_delete<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagISt14default_deleteEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagISt14default_deleteEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagISt14default_deleteEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt14default_deleteEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.165 = private unnamed_addr constant [106 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<std::default_delete>]\00", align 1
@_ZTVSt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [53 x i8] c"St15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZZN4entt7type_idIN15MetaDereference22adl_wrapped_shared_ptrIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN15MetaDereference22adl_wrapped_shared_ptrIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN15MetaDereference22adl_wrapped_shared_ptrIiEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN15MetaDereference22adl_wrapped_shared_ptrIiEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.166 = private unnamed_addr constant [100 x i8] c"const char *entt::internal::pretty_function() [Type = MetaDereference::adl_wrapped_shared_ptr<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference22adl_wrapped_shared_ptrIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference22adl_wrapped_shared_ptrIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagIN15MetaDereference22adl_wrapped_shared_ptrEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagIN15MetaDereference22adl_wrapped_shared_ptrEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagIN15MetaDereference22adl_wrapped_shared_ptrEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagIN15MetaDereference22adl_wrapped_shared_ptrEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagIN15MetaDereference22adl_wrapped_shared_ptrEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagIN15MetaDereference22adl_wrapped_shared_ptrEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.167 = private unnamed_addr constant [126 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<MetaDereference::adl_wrapped_shared_ptr>]\00", align 1
@_ZZN4entt7type_idIN15MetaDereference23spec_wrapped_shared_ptrIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN15MetaDereference23spec_wrapped_shared_ptrIiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN15MetaDereference23spec_wrapped_shared_ptrIiEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN15MetaDereference23spec_wrapped_shared_ptrIiEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.168 = private unnamed_addr constant [101 x i8] c"const char *entt::internal::pretty_function() [Type = MetaDereference::spec_wrapped_shared_ptr<int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference23spec_wrapped_shared_ptrIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference23spec_wrapped_shared_ptrIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagIN15MetaDereference23spec_wrapped_shared_ptrEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagIN15MetaDereference23spec_wrapped_shared_ptrEEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idINS_23meta_class_template_tagIN15MetaDereference23spec_wrapped_shared_ptrEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idINS_23meta_class_template_tagIN15MetaDereference23spec_wrapped_shared_ptrEEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexINS_23meta_class_template_tagIN15MetaDereference23spec_wrapped_shared_ptrEEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexINS_23meta_class_template_tagIN15MetaDereference23spec_wrapped_shared_ptrEEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.169 = private unnamed_addr constant [127 x i8] c"const char *entt::internal::pretty_function() [Type = entt::meta_class_template_tag<MetaDereference::spec_wrapped_shared_ptr>]\00", align 1
@_ZTVSt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [54 x i8] c"St15_Sp_counted_ptrIPKiLN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZZN4entt7type_idIN15MetaDereference22adl_wrapped_shared_ptrIKiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN15MetaDereference22adl_wrapped_shared_ptrIKiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN15MetaDereference22adl_wrapped_shared_ptrIKiEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN15MetaDereference22adl_wrapped_shared_ptrIKiEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.170 = private unnamed_addr constant [106 x i8] c"const char *entt::internal::pretty_function() [Type = MetaDereference::adl_wrapped_shared_ptr<const int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference22adl_wrapped_shared_ptrIKiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference22adl_wrapped_shared_ptrIKiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN15MetaDereference23spec_wrapped_shared_ptrIKiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN15MetaDereference23spec_wrapped_shared_ptrIKiEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN15MetaDereference23spec_wrapped_shared_ptrIKiEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN15MetaDereference23spec_wrapped_shared_ptrIKiEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.171 = private unnamed_addr constant [107 x i8] c"const char *entt::internal::pretty_function() [Type = MetaDereference::spec_wrapped_shared_ptr<const int>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference23spec_wrapped_shared_ptrIKiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference23spec_wrapped_shared_ptrIKiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIPvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPvE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPvE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.172 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = void *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIPKvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPKvEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPKvE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPKvE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.173 = private unnamed_addr constant [68 x i8] c"const char *entt::internal::pretty_function() [Type = const void *]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPKvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPKvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt10shared_ptrIvEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt10shared_ptrIvEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt10shared_ptrIvEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt10shared_ptrIvEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.174 = private unnamed_addr constant [77 x i8] c"const char *entt::internal::pretty_function() [Type = std::shared_ptr<void>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10shared_ptrIvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10shared_ptrIvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexISt10unique_ptrIvPFvPvEEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexISt10unique_ptrIvPFvPvEEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.175 = private unnamed_addr constant [95 x i8] c"const char *entt::internal::pretty_function() [Type = std::unique_ptr<void, void (*)(void *)>]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@__const._ZN4entt8internal13meta_arg_nodeIJvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextENS_9type_listIJDpT_EEEm.list = private unnamed_addr constant %"struct.std::array.276" { [2 x ptr] [ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE] }, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPFvPvEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPFvPvEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.176 = private unnamed_addr constant [72 x i8] c"const char *entt::internal::pretty_function() [Type = void (*)(void *)]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIFvPvEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIFvPvEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIFvPvEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIFvPvEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.177 = private unnamed_addr constant [69 x i8] c"const char *entt::internal::pretty_function() [Type = void (void *)]\00", align 1
@_ZZN4entt7type_idIPFivEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPFivEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPFivEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPFivEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.178 = private unnamed_addr constant [65 x i8] c"const char *entt::internal::pretty_function() [Type = int (*)()]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFivEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFivEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFivEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFivEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIFivEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIFivEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIFivEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIFivEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.179 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = int ()]\00", align 1
@_ZZN4entt7type_idIN15MetaDereference8self_ptrEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN15MetaDereference8self_ptrEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN15MetaDereference8self_ptrEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN15MetaDereference8self_ptrEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.180 = private unnamed_addr constant [81 x i8] c"const char *entt::internal::pretty_function() [Type = MetaDereference::self_ptr]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference8self_ptrEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference8self_ptrEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIN15MetaDereference9proxy_ptrEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIN15MetaDereference9proxy_ptrEEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIN15MetaDereference9proxy_ptrEE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIN15MetaDereference9proxy_ptrEE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.181 = private unnamed_addr constant [82 x i8] c"const char *entt::internal::pretty_function() [Type = MetaDereference::proxy_ptr]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference9proxy_ptrEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN15MetaDereference9proxy_ptrEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIA3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIA3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIA3_iE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIA3_iE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.182 = private unnamed_addr constant [62 x i8] c"const char *entt::internal::pretty_function() [Type = int[3]]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIA3_A3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIA3_A3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIA3_A3_iE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIA3_A3_iE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.183 = private unnamed_addr constant [65 x i8] c"const char *entt::internal::pretty_function() [Type = int[3][3]]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA3_A3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEA3_A3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt7type_idIPA3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global %"struct.entt::type_info" zeroinitializer, comdat, align 8
@_ZGVZN4entt7type_idIPA3_iEERKNS_9type_infoEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4entt10type_indexIPA3_iE5valueEvE5value = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN4entt10type_indexIPA3_iE5valueEvE5value = linkonce_odr hidden global i64 0, comdat, align 8
@.str.184 = private unnamed_addr constant [66 x i8] c"const char *entt::internal::pretty_function() [Type = int (*)[3]]\00", align 1
@_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPA3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global %"struct.entt::internal::meta_type_node" zeroinitializer, comdat, align 8
@_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPA3_iEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node = linkonce_odr hidden global i64 0, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.121, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_meta_dereference.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_Z13test_functionv() #0 {
bb.a:
  ret i32 3
}

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI15MetaDereferenceE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.136, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.137, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.138, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !37
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.139, i64 noundef 1)
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
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI15MetaDereferenceE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.136, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.137, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.140, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !37
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.139, i64 noundef 1)
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
end_hunk_1
begin_hunk_2_@_ZN4entt9type_infoC2INS_23meta_class_template_tagISt10unique_ptrEEEESt15in_place_type_tIT_E:bb.a
  br i1 %.not.i, label %_ZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !62 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !62
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEvE5value, align 4, !tbaa !62
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEv.exit

_ZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_23meta_class_template_tagISt10unique_ptrEEE5valueEvE5value, align 4, !tbaa !62
  store i32 %i.g, ptr %0, align 8, !tbaa !190
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2052953787, ptr %i.h, align 4, !tbaa !189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 46, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.163, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10unique_ptrEEEEDavENUlRKNS_8meta_ctxEE_8__invokeES7_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #8 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !808
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.a, align 8, !tbaa !58, !alias.scope !808
  store i32 2052953787, ptr %i.c, align 8, !tbaa !59, !alias.scope !808
  store ptr null, ptr %i.b, align 8, !tbaa !60, !alias.scope !808
  store i8 2, ptr %i.d, align 4, !tbaa !61, !alias.scope !808
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !65, !alias.scope !808
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !67, !alias.scope !808
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.g, align 8, !tbaa !66, !alias.scope !808
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEvNS_8internal11meta_traitsERKS0_Pv(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) #9 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEPKvNS_8internal11any_requestERKS1_S7_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #3 comdat align 2 {
bb.a:
  switch i8 %0, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit
    i8 2, label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit, !prof !185

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2INS_23meta_class_template_tagISt10unique_ptrEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i8, ptr %i.e, align 4, !tbaa !61
  %i.g = icmp eq i8 %i.f, 2
  %i.h = load ptr, ptr %1, align 8
  %i.i = select i1 %i.g, ptr %1, ptr %i.h
  %i.j = icmp eq ptr %i.i, %2
  %i.k = select i1 %i.j, ptr %2, ptr null
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 2052953787, ptr %i.m, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 2, ptr %i.o, align 4, !tbaa !61
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.e, %bb.a, %bb.a, %bb.a, %bb.f, %bb.g
  %i.p = phi ptr [ null, %bb.f ], [ null, %bb.g ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_23meta_class_template_tagISt10unique_ptrEEEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.k, %bb.e ], [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ]
  ret ptr %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10unique_ptrEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES7_S8_SA_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) #8 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt10unique_ptrEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, label %bb.b

_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt10unique_ptrEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.f, align 8, !tbaa !58, !alias.scope !811
  store i32 2052953787, ptr %i.d, align 8, !tbaa !59, !alias.scope !811
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEvRKS1_, ptr %i.e, align 8, !tbaa !60, !alias.scope !811
  store i8 1, ptr %i.c, align 4, !tbaa !61, !alias.scope !811
  store ptr %2, ptr %0, align 8, !tbaa !54, !alias.scope !811
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !65, !alias.scope !811
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !67, !alias.scope !811
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.i, align 8, !tbaa !66, !alias.scope !811
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10unique_ptrEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEPKvNS_8internal11any_requestERKS1_S7_, ptr %i.j, align 8, !tbaa !58, !alias.scope !811
  store i32 2052953787, ptr %i.l, align 8, !tbaa !59, !alias.scope !811
  store ptr null, ptr %i.k, align 8, !tbaa !60, !alias.scope !811
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 3, ptr %i.m, align 4, !tbaa !61, !alias.scope !811
  store ptr %2, ptr %0, align 8, !tbaa !54, !alias.scope !811
  store ptr %1, ptr %i.n, align 8, !tbaa !65, !alias.scope !811
  store ptr null, ptr %i.o, align 8, !tbaa !67, !alias.scope !811
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !66, !alias.scope !811
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10unique_ptrEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !61, !alias.scope !811
  store ptr %3, ptr %0, align 8, !tbaa !54, !alias.scope !811
  store ptr %1, ptr %i.n, align 8, !tbaa !65, !alias.scope !811
  store ptr null, ptr %i.o, align 8, !tbaa !67, !alias.scope !811
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !66, !alias.scope !811
  br label %_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10unique_ptrEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit

_ZZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt10unique_ptrEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES7_S8_SA_.exit: ; preds = %_ZN4entt8meta_anyC2INS_23meta_class_template_tagISt10unique_ptrEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(37) %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !61
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZZN4entt8internal14setup_node_forISt10unique_ptrIiSt14default_deleteIiEEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES8_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #7 comdat align 2 {
bb.a:
  %2 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN4entt8internal13meta_arg_nodeIJiSt14default_deleteIiEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextENS_9type_listIJDpT_EEEm.list, i64 %1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %3(ptr noundef nonnull align 8 dereferenceable(56) %0) #26, !inline_history !812
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forISt14default_deleteIiEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !189  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.k = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !160  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !180
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forISt14default_deleteIiEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEv.exit, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2ISt14default_deleteIiEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEv.exit

_ZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !185

bb.d:                                             ; preds = %_ZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance) #26
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2ISt14default_deleteIiEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance) #26
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !189
  store ptr @_ZZN4entt7type_idISt14default_deleteIiEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 128, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt14default_deleteIiEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4entt8internal14setup_node_forISt14default_deleteIiEEEDavENUlRKNS_8meta_ctxEE_8__invokeES6_, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZZN4entt8internal14setup_node_forISt14default_deleteIiEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES6_S7_S9_, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZZN4entt8internal14setup_node_forISt14default_deleteIiEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES6_m, ptr %.sroa.18.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.j, align 8, !tbaa !202
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forINS_23meta_class_template_tagISt14default_deleteEEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt14default_deleteEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !189  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.k = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !189  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.k = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !160  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !180
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEv.exit, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2ISt10unique_ptrIvPFvPvEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !185

bb.d:                                             ; preds = %_ZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance) #26
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2ISt10unique_ptrIvPFvPvEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance) #26
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !189
  store ptr @_ZZN4entt7type_idISt10unique_ptrIvPFvPvEEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 640, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 16, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr @_ZZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDavENUlRKNS_8meta_ctxES3_PKvE_8__invokeES9_S3_SB_, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 2, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedENS_23meta_class_template_tagISt10unique_ptrEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES9_m, ptr %.sroa.17.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.j, align 8, !tbaa !202
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDavENUlRKNS_8meta_ctxES3_PKvE_8__invokeES9_S3_SB_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) #8 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN4entt8meta_anyC2ISt10unique_ptrIvPFvPvEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, label %bb.b

_ZN4entt8meta_anyC2ISt10unique_ptrIvPFvPvEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.f, align 8, !tbaa !58, !alias.scope !894
  store i32 -589559176, ptr %i.d, align 8, !tbaa !59, !alias.scope !894
  store ptr @_ZN4entt9basic_anyILm16ELm8EE13basic_deleterITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEEvRKS1_, ptr %i.e, align 8, !tbaa !60, !alias.scope !894
  store i8 1, ptr %i.c, align 4, !tbaa !61, !alias.scope !894
  store ptr %2, ptr %0, align 8, !tbaa !54, !alias.scope !894
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !65, !alias.scope !894
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !67, !alias.scope !894
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEEvNS_8internal11meta_traitsERKS0_S3_, ptr %i.i, align 8, !tbaa !66, !alias.scope !894
  br label %_ZZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDavENKUlRKNS_8meta_ctxES3_PKvE_clES9_S3_SB_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEEPKvNS_8internal11any_requestERKS1_S9_, ptr %i.j, align 8, !tbaa !58, !alias.scope !894
  store i32 -589559176, ptr %i.l, align 8, !tbaa !59, !alias.scope !894
  store ptr null, ptr %i.k, align 8, !tbaa !60, !alias.scope !894
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 3, ptr %i.m, align 4, !tbaa !61, !alias.scope !894
  store ptr %2, ptr %0, align 8, !tbaa !54, !alias.scope !894
  store ptr %1, ptr %i.n, align 8, !tbaa !65, !alias.scope !894
  store ptr null, ptr %i.o, align 8, !tbaa !67, !alias.scope !894
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEEvNS_8internal11meta_traitsERKS0_S3_, ptr %i.p, align 8, !tbaa !66, !alias.scope !894
  br label %_ZZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDavENKUlRKNS_8meta_ctxES3_PKvE_clES9_S3_SB_.exit

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !61, !alias.scope !894
  store ptr %3, ptr %0, align 8, !tbaa !54, !alias.scope !894
  store ptr %1, ptr %i.n, align 8, !tbaa !65, !alias.scope !894
  store ptr null, ptr %i.o, align 8, !tbaa !67, !alias.scope !894
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedESt10unique_ptrIvPFvPvEEEEvNS_8internal11meta_traitsERKS0_S3_, ptr %i.p, align 8, !tbaa !66, !alias.scope !894
  br label %_ZZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDavENKUlRKNS_8meta_ctxES3_PKvE_clES9_S3_SB_.exit

_ZZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDavENKUlRKNS_8meta_ctxES3_PKvE_clES9_S3_SB_.exit: ; preds = %_ZN4entt8meta_anyC2ISt10unique_ptrIvPFvPvEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZZN4entt8internal14setup_node_forISt10unique_ptrIvPFvPvEEEEDavENUlRKNS0_12meta_contextEmE_8__invokeES9_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) #7 comdat align 2 {
bb.a:
  %2 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN4entt8internal13meta_arg_nodeIJvPFvPvEEEERKNS0_14meta_type_nodeERKNS0_12meta_contextENS_9type_listIJDpT_EEEm.list, i64 %1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %i.a = tail call noundef nonnull align 8 dereferenceable(128) ptr %3(ptr noundef nonnull align 8 dereferenceable(56) %0) #26, !inline_history !895
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forIPFvPvEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !189  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.k = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !160  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, %bb.g
  %i.ae = phi ptr [ %i.z, %bb.g ], [ %.pre, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ]
  %.sroa.0.1.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.u, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.1.i.i, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !180
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEPFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit ]
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt8internal14setup_node_forIPFvPvEEEDav(ptr dead_on_unwind noalias writable sret(%"struct.entt::internal::meta_type_node") align 8 %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIPFvPvEEERKNS_9type_infoEv.exit, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIPFvPvEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IPFvPvEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIPFvPvEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIPFvPvEEERKNS_9type_infoEv.exit:  ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, !prof !185

bb.d:                                             ; preds = %_ZN4entt7type_idIPFvPvEEERKNS_9type_infoEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance) #26
  %.not.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i1, label %_ZN4entt8internal14meta_type_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IPFvPvEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance) #26
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt8internal14meta_type_nodeD2Ev.exit

_ZN4entt8internal14meta_type_nodeD2Ev.exit:       ; preds = %_ZN4entt7type_idIPFvPvEEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !189
  store ptr @_ZZN4entt7type_idIPFvPvEEERKNS_9type_infoEvE8instance, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 256, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 8, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4entt8internal14setup_node_forIPFvPvEEEDavENUlRKNS_8meta_ctxEE_8__invokeES7_, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZZN4entt8internal14setup_node_forIPFvPvEEEDavENUlRKNS_8meta_ctxES2_PKvE_8__invokeES7_S2_S9_, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.14.0..sroa_idx, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %0) #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt8internal14setup_node_forIFvPvEEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEFvPvEEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !189  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.k = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
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
  %.07.i.i = load i64, ptr %.07.in.i.i, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq i64 %.07.i.i, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.07.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit, label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !160  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160
end_hunk_3
