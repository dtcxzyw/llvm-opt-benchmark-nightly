Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json_patch?download=true
inline.NumInlined: 1321
inline.NumDeleted: 710
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::c_array" = type { [20 x i64] }
%"struct.folly::c_array.37" = type { [100 x i16] }
%"struct.folly::variadic_noop_fn" = type { i8 }
%"struct.folly::f14::detail::F14EmptyTagVector" = type { %"struct.std::array.88", i8 }
%"struct.std::array.88" = type { [15 x i8] }
%"struct.folly::detail::safe_assert_arg" = type { ptr, ptr, i32, ptr, ptr }
%"struct.folly::c_array.91" = type { [2 x i8] }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.folly::Expected" = type { %"struct.folly::expected_detail::ExpectedStorage.base", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base" = type { %"struct.folly::expected_detail::ExpectedUnion.base" }
%"struct.folly::expected_detail::ExpectedUnion.base" = type <{ %union.anon, i8 }>
%union.anon = type { %"class.folly::json_patch" }
%"class.folly::json_patch" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<folly::json_patch::patch_operation, std::allocator<folly::json_patch::patch_operation>>::_Vector_impl" }
%"struct.std::_Vector_base<folly::json_patch::patch_operation, std::allocator<folly::json_patch::patch_operation>>::_Vector_impl" = type { %"struct.std::_Vector_base<folly::json_patch::patch_operation, std::allocator<folly::json_patch::patch_operation>>::_Vector_impl_data" }
%"struct.std::_Vector_base<folly::json_patch::patch_operation, std::allocator<folly::json_patch::patch_operation>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.8 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.8 = type { i64, [8 x i8] }
%"struct.folly::json_patch::patch_operation" = type { i8, %"class.folly::json_pointer", %"class.folly::Optional", %"class.folly::Optional.15" }
%"class.folly::json_pointer" = type { %"class.std::vector.9" }
%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.folly::Optional" = type { %"struct.folly::detail::OptionalCopyAssignBase" }
%"struct.folly::detail::OptionalCopyAssignBase" = type { %"struct.folly::detail::OptionalCopyBase" }
%"struct.folly::detail::OptionalCopyBase" = type { %"struct.folly::detail::OptionalStorage" }
%"struct.folly::detail::OptionalStorage" = type { %"struct.folly::detail::OptionalStorageNonTriviallyDestructible" }
%"struct.folly::detail::OptionalStorageNonTriviallyDestructible" = type <{ %union.anon.14, i8, [7 x i8] }>
%union.anon.14 = type { %"class.folly::json_pointer" }
%"class.folly::Optional.15" = type { %"struct.folly::detail::OptionalCopyAssignBase.16" }
%"struct.folly::detail::OptionalCopyAssignBase.16" = type { %"struct.folly::detail::OptionalCopyBase.17" }
%"struct.folly::detail::OptionalCopyBase.17" = type { %"struct.folly::detail::OptionalStorage.18" }
%"struct.folly::detail::OptionalStorage.18" = type { %"struct.folly::detail::OptionalStorageNonTriviallyDestructible.19" }
%"struct.folly::detail::OptionalStorageNonTriviallyDestructible.19" = type <{ %union.anon.20, i8, [7 x i8] }>
%union.anon.20 = type { %"struct.folly::dynamic" }
%"struct.folly::dynamic" = type { i32, %"union.folly::dynamic::Data" }
%"union.folly::dynamic::Data" = type { %"class.std::__cxx11::basic_string" }
%"class.folly::Expected.22" = type { %"struct.folly::expected_detail::ExpectedStorage.base.34", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.34" = type { %"struct.folly::expected_detail::ExpectedUnion.base.26" }
%"struct.folly::expected_detail::ExpectedUnion.base.26" = type <{ %union.anon.25, i8 }>
%union.anon.25 = type { %"class.folly::json_pointer" }
%"struct.folly::TypeError" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.36 }
%union.anon.36 = type { ptr }
%"class.std::allocator.5" = type { i8 }
%"class.folly::BadExpectedAccess" = type { %"class.std::exception" }
%"class.folly::OptionalEmptyException" = type { %"class.std::runtime_error" }
%"class.folly::Expected.55" = type { %"struct.folly::expected_detail::ExpectedStorage.base.58", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.58" = type <{ %union.anon.57, i8 }>
%union.anon.57 = type { %"struct.folly::json_patch::patch_application_error" }
%"struct.folly::json_patch::patch_application_error" = type { i8, i64 }
%"class.folly::Expected.68" = type { %"struct.folly::expected_detail::ExpectedStorage.base.73", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.73" = type <{ %union.anon.70, i8 }>
%union.anon.70 = type { %"struct.folly::dynamic::json_pointer_resolved_value.71" }
%"struct.folly::dynamic::json_pointer_resolved_value.71" = type { ptr, ptr, %"class.folly::Range", i64 }
%"class.folly::Range" = type { ptr, ptr }
%"class.folly::Expected.60" = type { %"struct.folly::expected_detail::ExpectedStorage.base.63", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.63" = type <{ %union.anon.62, i8 }>
%union.anon.62 = type { %"struct.folly::dynamic::json_pointer_resolved_value" }
%"struct.folly::dynamic::json_pointer_resolved_value" = type { ptr, ptr, %"class.folly::Range", i64 }
%"class.google::LogMessage" = type { ptr, ptr, %"struct.google::LogMessageTime" }
%"struct.google::LogMessageTime" = type { %struct.tm, i64, i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%class.anon.85 = type { ptr }
%"struct.std::pair.94" = type <{ %"class.folly::f14::detail::F14ItemIter", i8, [7 x i8] }>
%"class.folly::f14::detail::F14ItemIter" = type { ptr, i64 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.97" = type { i8 }
%"struct.folly::dynamic::json_pointer_resolution_error" = type { i8, i64, ptr }
%"class.folly::BadExpectedAccess.77" = type { %"class.folly::BadExpectedAccess", %"struct.folly::dynamic::json_pointer_resolution_error" }
%"struct.std::vector<folly::dynamic>::_Temporary_value" = type { ptr, %"union.std::vector<folly::dynamic>::_Temporary_value::_Storage" }
%"union.std::vector<folly::dynamic>::_Temporary_value::_Storage" = type { %"struct.folly::dynamic" }
%"class.folly::detail::ScopeGuardImpl" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.103 }
%"class.folly::detail::ScopeGuardImplBase" = type { i8 }
%class.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.std::array.104" = type { [256 x i8] }
%"class.std::bad_alloc" = type { %"class.std::exception" }

$__clang_call_terminate = comdat any

$_ZN5folly10json_patch15patch_operationD2Ev = comdat any

$_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_9TypeErrorEEEvOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5folly9TypeErrorC2EOS0_ = comdat any

$_ZN5folly9TypeErrorD0Ev = comdat any

$_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_ = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_ = comdat any

$_ZN5folly17BadExpectedAccessIvED0Ev = comdat any

$_ZNK5folly17BadExpectedAccessIvE4whatEv = comdat any

$_ZN5folly8OptionalINS_12json_pointerEE6assignERKS1_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZN5folly12json_pointerD2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_ = comdat any

$_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_22OptionalEmptyExceptionEEEvOT_ = comdat any

$_ZN5folly22OptionalEmptyExceptionC2EOS0_ = comdat any

$_ZN5folly22OptionalEmptyExceptionD0Ev = comdat any

$_ZNSt6vectorIN5folly10json_patch15patch_operationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZN5folly10json_patch15patch_operationC2EOS1_ = comdat any

$_ZN5folly8OptionalINS_12json_pointerEEC2EOS2_ = comdat any

$_ZN5folly10json_patch15patch_operationC2ERKS1_ = comdat any

$_ZN5folly6detail15OptionalStorageINS_12json_pointerEED2Ev = comdat any

$_ZN5folly6detail16OptionalCopyBaseINS_12json_pointerELb0EEC2ERKS3_ = comdat any

$_ZNSt6vectorIN5folly10json_patch15patch_operationESaIS2_EEC2ERKS4_ = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS3_EEEEJS5_EEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS2_EEEEEEvOT_ = comdat any

$_ZN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEED0Ev = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE12eraseKeyIntoINS_5RangeIPKcEEZNS1_11F14BasicMapIS8_E17tableEraseKeyIntoISE_RKNS_16variadic_noop_fnEEEmRKT_OT0_EUlOSt4pairIKS4_S4_EE_EEmSN_SP_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE = comdat any

$_ZNSt6vectorIN5folly7dynamicESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_ = comdat any

$_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbESP_ImmERKT_DpOT0_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm = comdat any

$_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt9bad_allocEEvOT_ = comdat any

$_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE = comdat any

$_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvOT_PPSt4pairIKS3_S3_EDpOT0_ = comdat any

$_ZTIN5folly9TypeErrorE = comdat any

$_ZTSN5folly9TypeErrorE = comdat any

$_ZTVN5folly9TypeErrorE = comdat any

$_ZTIN5folly17BadExpectedAccessIvEE = comdat any

$_ZTSN5folly17BadExpectedAccessIvEE = comdat any

$_ZTVN5folly17BadExpectedAccessIvEE = comdat any

$_ZTIN5folly22OptionalEmptyExceptionE = comdat any

$_ZTSN5folly22OptionalEmptyExceptionE = comdat any

$_ZTVN5folly22OptionalEmptyExceptionE = comdat any

$_ZTIN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = comdat any

$_ZTSN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = comdat any

$_ZTVN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = comdat any

$_ZN5folly13variadic_noopE = comdat any

$_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = comdat any

$_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg = comdat any

$_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = comdat any

$_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0 = comdat any

@_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE = external local_unnamed_addr constant ptr, align 8
@_ZTIN5folly9TypeErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly9TypeErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly9TypeErrorE = linkonce_odr constant [19 x i8] c"N5folly9TypeErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly9TypeErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly9TypeErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly9TypeErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"int/double/bool/string\00", align 1
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.37", align 2
@.str.5 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@_ZTIN5folly17BadExpectedAccessIvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessIvEE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessIvEE = linkonce_odr constant [31 x i8] c"N5folly17BadExpectedAccessIvEE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN5folly17BadExpectedAccessIvEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessIvEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessIvED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"bad expected access\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@_ZTIN5folly22OptionalEmptyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly22OptionalEmptyExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5folly22OptionalEmptyExceptionE = linkonce_odr constant [33 x i8] c"N5folly22OptionalEmptyExceptionE\00", comdat, align 1
@_ZTVN5folly22OptionalEmptyExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly22OptionalEmptyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly22OptionalEmptyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.17 = private unnamed_addr constant [35 x i8] c"Empty Optional cannot be unwrapped\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/folly/folly/folly/json/json_patch.cpp\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"opcode is op_code::invalid\00", align 1
@_ZTIN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE, ptr @_ZTIN5folly17BadExpectedAccessIvEE }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = linkonce_odr constant [78 x i8] c"N5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE\00", comdat, align 1
@_ZTVN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE = external local_unnamed_addr constant ptr, align 8
@_ZN5folly13variadic_noopE = linkonce_odr constant %"struct.folly::variadic_noop_fn" zeroinitializer, comdat, align 1
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array.88" zeroinitializer, i8 -1 }, comdat, align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"clearTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.26, ptr @.str.27, i32 784, ptr @.str.25, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.26 = private unnamed_addr constant [18 x i8] c"tags_[index] != 0\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/folly/folly/folly/container/detail/F14Table.h\00", align 1
@_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = linkonce_odr constant %"struct.folly::c_array.91" { [2 x i8] c"\01\00" }, comdat, align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.31 = private unnamed_addr constant [11 x i8] c"rehashImpl\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.32, ptr @.str.27, i32 2479, ptr @.str.31, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.32 = private unnamed_addr constant [33 x i8] c"hp.second == srcChunk->tag(srcI)\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"setTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.34, ptr @.str.27, i32 779, ptr @.str.33, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.34 = private unnamed_addr constant [18 x i8] c"tags_[index] == 0\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly10json_patch9try_parseERKNS_7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::json_patch", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.folly::json_patch::patch_operation", align 8 ; 15 uses
  %5 = alloca %"class.folly::Expected.22", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.folly::Expected.22", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load i32, ptr %1, align 8, !tbaa !17
  %.not.i.i.i = icmp eq i32 %i.a, 1
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !117
  %.sroa.4306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4306.0..sroa_idx, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.b, align 8, !tbaa !119
  br label %.critedge63

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.critedge64, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.sroa.4270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %.sroa.0298.0345 = phi ptr [ %i.d, %.lr.ph ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ] ; 21 uses
  %i.ab = load i32, ptr %.sroa.0298.0345, align 8, !tbaa !17
  %.not.i.i.i68 = icmp eq i32 %i.ab, 5
  br i1 %.not.i.i.i68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %0, align 8, !tbaa !117
  store ptr %.sroa.0298.0345, ptr %.sroa.4270.0..sroa_idx, align 8, !tbaa !20
  store i8 2, ptr %i.n, align 8, !tbaa !119
  br label %.critedge63

bb.f:                                             ; preds = %bb.d
  %i.ac = invoke noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0298.0345, ptr nonnull @.str.2, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.2, i64 2))
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 2, ptr %0, align 8, !tbaa !117
  store ptr %.sroa.0298.0345, ptr %.sroa.4270.0..sroa_idx, align 8, !tbaa !20
  store i8 2, ptr %i.n, align 8, !tbaa !119
  br label %.critedge63

bb.i:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17
  %.not.i.i.i79 = icmp eq i32 %i.ad, 6
  br i1 %.not.i.i.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 4, ptr %0, align 8, !tbaa !117
  store ptr %.sroa.0298.0345, ptr %.sroa.4270.0..sroa_idx, align 8, !tbaa !20
  store i8 2, ptr %i.n, align 8, !tbaa !119
  br label %.critedge63

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5folly7dynamic8asStringB5cxx11Ev.exit:        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i8 0, ptr %4, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store i8 0, ptr %i.i, align 8, !tbaa !42
  store i8 0, ptr %i.j, align 8, !tbaa !43
  %i.ae = invoke noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0298.0345, ptr nonnull @.str.9, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 4))
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.l:                                             ; preds = %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit
  %.not56 = icmp eq ptr %i.ae, null
  br i1 %.not56, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !17
  %.not.i.i.i86 = icmp eq i32 %i.af, 6
  br i1 %.not.i.i.i86, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %0, align 8, !tbaa !117
  store ptr %.sroa.0298.0345, ptr %.sroa.4270.0..sroa_idx, align 8, !tbaa !20
  store i8 2, ptr %i.n, align 8, !tbaa !119
  br label %.critedge61

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5folly7dynamic8asStringB5cxx11Ev.exit93:      ; preds = %bb.o
  %i.ag = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  invoke void @_ZN5folly12json_pointer9try_parseENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.22") align 8 %5, ptr %i.ag, ptr %i.ai)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit93
  %i.aj = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.l
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.al = load i64, ptr %i.l, align 8, !tbaa !50
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.an = load i8, ptr %i.m, align 8, !tbaa !121
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %_ZNR5folly8ExpectedINS_12json_pointerENS1_11parse_errorEE5valueEv.exit, label %_ZN5folly15expected_detail15ExpectedStorageINS_12json_pointerENS2_11parse_errorELNS0_11StorageTypeE2EED2Ev.exit.thread399

_ZN5folly15expected_detail15ExpectedStorageINS_12json_pointerENS2_11parse_errorELNS0_11StorageTypeE2EED2Ev.exit.thread399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 8, ptr %0, align 8, !tbaa !117
  store ptr %.sroa.0298.0345, ptr %.sroa.4270.0..sroa_idx, align 8, !tbaa !20
  store i8 2, ptr %i.n, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.critedge61

_ZNR5folly8ExpectedINS_12json_pointerENS1_11parse_errorEE5valueEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN5folly8OptionalINS_12json_pointerEE6assignERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN5folly8OptionalINS_12json_pointerEEaSIRS1_EERS2_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5folly8OptionalINS_12json_pointerEEaSIRS1_EERS2_OT_.exit: ; preds = %_ZNR5folly8ExpectedINS_12json_pointerENS1_11parse_errorEE5valueEv.exit
  %.pre = load i8, ptr %i.m, align 8, !tbaa !121
  %i.ap = icmp eq i8 %.pre, 1
  br i1 %i.ap, label %bb.q, label %.critedge.sink.split

bb.q:                                             ; preds = %_ZN5folly8OptionalINS_12json_pointerEEaSIRS1_EERS2_OT_.exit
  %i.aq = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.aq, %bb.q ] ; 3 uses
  %i.as = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !50
  %i.aw = add i64 %i.av, 1
end_hunk_0
begin_hunk_1_@_ZN5folly12_GLOBAL__N_16do_addERNS_8ExpectedINS_7dynamic27json_pointer_resolved_valueIS2_EENS2_29json_pointer_resolution_errorIS2_EEEERKS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZN5folly7dynamic6insertIRKS0_EEN9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEENS5_IPS2_S9_EEOT_.exit: ; preds = %_ZN5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEEptEv.exit20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !83
  %i.q = getelementptr inbounds [40 x i8], ptr %i.n, i64 %i.p
  %i.r = tail call ptr @_ZNSt6vectorIN5folly7dynamicESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 0 uses
  br label %_ZN5folly7dynamic9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #9
  unreachable

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit: ; preds = %bb.a
  %i.s = load i8, ptr %0, align 8, !tbaa !190
  switch i8 %i.s, label %_ZN5folly7dynamic9push_backERKS0_.exit [
    i8 1, label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit26
    i8 3, label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit28
  ]

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit26: ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17   ; 2 uses
  %.not.i.not.i.i27 = icmp eq i32 %i.v, 5
  br i1 %.not.i.not.i.i27, label %_ZN5folly7dynamic6insertIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOSD_OT0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit26
  %i.w = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !82
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.w, i32 noundef %i.v) #9
  unreachable

_ZN5folly7dynamic6insertIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOSD_OT0_.exit: ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit26
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !192
  store ptr %2, ptr %4, align 8, !tbaa !72, !alias.scope !193, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !192
  %i.y = load ptr, ptr %2, align 8, !tbaa !48, !noalias !194
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49, !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  store i64 0, ptr %i.a, align 8, !tbaa !68, !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !194
  store i64 0, ptr %i.b, align 8, !tbaa !68, !noalias !194
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %i.y, i64 noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !noalias !194
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !68, !noalias !194 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  %i.ac = lshr i64 %i.ab, 56
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.94") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 %i.ab, i64 %.sroa.speculated.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !192
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %3, align 8, !tbaa !88, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !192
  %i.ad = load ptr, ptr %.sroa.03.0.copyload.i.i.i, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 0 uses
  br label %_ZN5folly7dynamic9push_backERKS0_.exit

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit28: ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !191 ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  %.not.i.not.i.i29 = icmp eq i32 %i.ai, 1
  br i1 %.not.i.not.i.i29, label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit28
  %i.aj = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !82
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.aj, i32 noundef %i.ai) #9
  unreachable

_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i: ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !91
  %.not.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  tail call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !85
  br label %_ZN5folly7dynamic9push_backERKS0_.exit

bb.i:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  tail call void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %i.al, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN5folly7dynamic9push_backERKS0_.exit

_ZN5folly7dynamic9push_backERKS0_.exit:           ; preds = %_ZN5folly7dynamic6insertIRKS0_EEN9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEENS5_IPS2_S9_EEOT_.exit, %_ZN5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEEptEv.exit20, %_ZN5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEEptEv.exit19, %_ZN5folly7dynamic6insertIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOSD_OT0_.exit, %bb.h, %bb.i, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit
  %.sroa.033.0 = phi i8 [ 2, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEE5errorEv.exit ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %_ZN5folly7dynamic6insertIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOSD_OT0_.exit ], [ 1, %_ZN5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEEptEv.exit19 ], [ 1, %_ZN5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIS1_EENS1_29json_pointer_resolution_errorIS1_EEEptEv.exit20 ], [ 1, %_ZN5folly7dynamic6insertIRKS0_EEN9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEENS5_IPS2_S9_EEOT_.exit ]
  %.sroa.033.0.insert.ext = zext nneg i8 %.sroa.033.0 to i24
  ret i24 %.sroa.033.0.insert.ext
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5folly12json_pointer6tokensB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #5

declare void @_ZNKR5folly7dynamic11try_get_ptrERKNS_12json_pointerE(ptr dead_on_unwind writable sret(%"class.folly::Expected.68") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS3_EEEEJS5_EEEvDpT0_(ptr noundef byval(%"struct.folly::dynamic::json_pointer_resolution_error") align 8 %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.77", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE, i64 16), ptr %1, align 8, !tbaa !67
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS2_EEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS2_EEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE, i64 16), ptr %i.a, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !195
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE12eraseKeyIntoINS_5RangeIPKcEEZNS1_11F14BasicMapIS8_E17tableEraseKeyIntoISE_RKNS_16variadic_noop_fnEEEmRKT_OT0_EUlOSt4pairIKS4_S4_EE_EEmSN_SP_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE8findImplINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESH_ImmERKT_NS9_8PrefetchE.exit.thread, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %1, align 8, !tbaa !82 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !82
  %i.f = ptrtoint ptr %.sroa.4.0.copyload.i.i.i to i64
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 0, ptr %i.b, align 8, !tbaa !68
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %.sroa.0.0.copyload.i.i.i, i64 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = lshr i64 %i.i, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.j, i64 1) ; 3 uses
  %i.k = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.l = or disjoint i64 %i.k, 1
  %i.m = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.p = load i64, ptr %i.c, align 8, !tbaa !93
  %i.q = and i64 %i.p, 255                        ; 2 uses
  %i.r = shl nuw i64 1, %i.q
  %notmask.i = shl nsw i64 -1, %i.q
  %i.s = xor i64 %notmask.i, -1
  %i.t = load ptr, ptr %0, align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.024.i43 = phi i64 [ %i.r, %bb.b ], [ %i.bc, %bb.f ]
  %.026.i42 = phi i64 [ %i.i, %bb.b ], [ %i.bd, %bb.f ] ; 2 uses
  %i.u = and i64 %.026.i42, %i.s
  %i.v = shl nuw nsw i64 %i.u, 7
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 80
  call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.z = icmp eq <16 x i8> %i.y, %i.o
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = and i32 %i.ab, 16383
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = extractelement <16 x i8> %i.y, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %3 = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %3)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.012.0 = phi i32 [ %i.ah, %.critedge.i ], [ %i.ab, %.preheader ] ; 4 uses
  %i.ae = icmp ne i32 %.sroa.012.0, 0
  call void @llvm.assume(i1 %i.ae)
  %i.af = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0, i1 true)
  %i.ag = add nuw nsw i32 %.sroa.012.0, 65535
  %i.ah = and i32 %i.ag, %.sroa.012.0             ; 2 uses
  %i.ai = zext nneg i32 %i.af to i64              ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr i8, ptr %i.w, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !17
  %i.ao = icmp eq i32 %i.an, 6
  br i1 %i.ao, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %.critedge.i, !prof !99

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !198 ; 2 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !199   ; 3 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %.not.i.i.i.i = icmp eq i64 %i.ax, %i.as
  br i1 %.not.i.i.i.i, label %bb.e, label %.critedge.i, !prof !100

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.ay = icmp eq ptr %i.at, %i.au
  br i1 %i.ay, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread16, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.au, ptr %i.aq, i64 %i.as)
  %i.az = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.az, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread16, label %.critedge.i, !prof !101

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.ba = and i32 %i.ah, 16382
  %.not37 = icmp eq i32 %i.ba, 0
  br i1 %.not37, label %.loopexit, label %bb.d, !llvm.loop !196

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.bb = icmp eq i8 %i.ad, 0
  br i1 %i.bb, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE8findImplINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESH_ImmERKT_NS9_8PrefetchE.exit.thread, label %bb.f, !prof !99

bb.f:                                             ; preds = %.loopexit
  %i.bc = add i64 %.024.i43, -1                   ; 2 uses
  %i.bd = add i64 %i.l, %.026.i42
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE8findImplINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESH_ImmERKT_NS9_8PrefetchE.exit.thread, label %bb.c, !llvm.loop !197

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread16: ; preds = %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.be = getelementptr i8, ptr %i.ak, i64 16
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.be, i64 %i.ai, i64 %i.i, i64 %.sroa.speculated.i.i.i)
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE8findImplINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESH_ImmERKT_NS9_8PrefetchE.exit.thread

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE8findImplINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESH_ImmERKT_NS9_8PrefetchE.exit.thread: ; preds = %.loopexit, %bb.f, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread16, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 1, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread16 ], [ 0, %bb.f ], [ 0, %.loopexit ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !90     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE11destroyItemERPSt4pairIKS3_S3_E.exit, label %_ZNSt16allocator_traitsISaISt4pairIKN5folly7dynamicES2_EEE10deallocateERS5_PS4_m.exit.i

_ZNSt16allocator_traitsISaISt4pairIKN5folly7dynamicES2_EEE10deallocateERS5_PS4_m.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #27
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #27
  %i.c = load ptr, ptr %1, align 8, !tbaa !90
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef 80) #28
  br label %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE11destroyItemERPSt4pairIKS3_S3_E.exit

_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE11destroyItemERPSt4pairIKS3_S3_E.exit: ; preds = %bb.a, %_ZNSt16allocator_traitsISaISt4pairIKN5folly7dynamicES2_EEE10deallocateERS5_PS4_m.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !93
  %i.f = add i64 %i.e, -256                       ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !93
  %i.g = and i64 %2, 255                          ; 2 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i64 %i.g, 1
  %i.j = ptrtoint ptr %1 to i64
  %i.k = or i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !102
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

bb.b:                                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE11destroyItemERPSt4pairIKS3_S3_E.exit
  %i.o = icmp ult i64 %i.f, 256
  br i1 %i.o, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.t, %bb.d ], [ %2, %bb.c ]
  %i.s = phi ptr [ %i.u, %bb.d ], [ %1, %bb.c ]
  %i.t = add i64 %i.r, -1                         ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !50
  %.not.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i, !prof !65, !llvm.loop !200

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.x, %.critedge.i.i.i ], [ %i.q, %.critedge.i.i.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 4 uses
  %i.y = load <16 x i8>, ptr %i.x, align 16, !tbaa !50
  %i.z = icmp eq <16 x i8> %i.y, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = and i16 %i.aa, 16383                    ; 2 uses
  %.not2.i.i = icmp eq i16 %i.ab, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !65, !llvm.loop !201

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.ac = xor i16 %i.ab, 16383
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = xor i32 %i.ae, 31
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %5 = icmp ne ptr %i.x, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %5)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.aj, %bb.e ], [ %i.u, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.e ], [ %i.t, %thread-pre-split.i.i ]
  %i.ak = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.al = icmp samesign ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = lshr i64 %i.ak, 1
  %i.an = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ao = or i64 %i.am, %i.an
  store i64 %i.ao, ptr %i.l, align 8, !tbaa !68
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE11destroyItemERPSt4pairIKS3_S3_E.exit, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i
  %i.ap = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.neg.i.i.i ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %2 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !50
  %.not.i.i7 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.28) #32
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit
  store i8 0, ptr %i.ar, align 1, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.au = load i8, ptr %i.at, align 2, !tbaa !105
  %.not.i8 = icmp ult i8 %i.au, 16
  br i1 %.not.i8, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit.i
  %i.av = shl i64 %4, 1
  %i.aw = or disjoint i64 %i.av, 1
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !93
  %i.ay = and i64 %i.ax, 255
  %notmask.i.i = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !98    ; 4 uses
  %i.bb = and i64 %3, %i.az
  %i.bc = shl nuw nsw i64 %i.bb, 7                ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  %i.be = icmp eq ptr %i.bd, %i.aq
  br i1 %i.be, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.bf = phi i64 [ %i.bc, %bb.g ], [ %i.br, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 14 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !105
  %i.bj = add i8 %i.bi, %.010.lcssa.i
  store i8 %i.bj, ptr %i.bh, align 2, !tbaa !105
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bk = phi i64 [ %i.br, %bb.i ], [ %i.bc, %bb.g ]
  %.01126.i = phi i64 [ %i.bp, %bb.i ], [ %3, %bb.g ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !106 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bn, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bo = add i8 %i.bn, -1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !106
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bp = add i64 %i.aw, %.01126.i                ; 2 uses
  %i.bq = and i64 %i.bp, %i.az
  %i.br = shl nuw nsw i64 %i.bq, 7                ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.br
  %i.bt = icmp eq ptr %i.bs, %i.aq
  br i1 %i.bt, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit.i, %.thread.i
  ret void
}

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !50
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.28) #32
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit: ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.f = load i8, ptr %i.e, align 2, !tbaa !105
  %.not = icmp ult i8 %i.f, 16
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit
  %i.g = shl i64 %4, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !93
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1                   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !98     ; 4 uses
  %i.n = and i64 %3, %i.l
  %i.o = shl nuw nsw i64 %i.n, 7                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.e, %bb.c
  %.010.lcssa = phi i8 [ 0, %bb.c ], [ -16, %bb.e ]
  %i.r = phi i64 [ %i.o, %bb.c ], [ %i.ad, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 14 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !105
  %i.v = add i8 %i.u, %.010.lcssa
  store i8 %i.v, ptr %i.t, align 2, !tbaa !105
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.w = phi i64 [ %i.ad, %bb.e ], [ %i.o, %bb.c ]
  %.01126 = phi i64 [ %i.ab, %bb.e ], [ %3, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 15 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !106   ; 2 uses
  %.not.i17 = icmp eq i8 %i.z, -2
  br i1 %.not.i17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aa = add i8 %i.z, -1
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ab = add i64 %i.h, %.01126                   ; 2 uses
  %i.ac = and i64 %i.ab, %i.l
  %i.ad = shl nuw nsw i64 %i.ac, 7                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %.thread, label %.lr.ph

bb.f:                                             ; preds = %.thread, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #21

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN5folly7dynamicESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::vector<folly::dynamic>::_Temporary_value", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.k, ptr %i.e, align 8, !tbaa !85
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %0, ptr %3, align 8, !tbaa !205
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i8 0, ptr %i.m, align 8, !tbaa !50
  call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -40
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o) #27
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !85   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.q, ptr %i.e, align 8, !tbaa !85
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -40 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.b                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.v = udiv exact i64 %i.t, 40
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40 ; 2 uses
  %i.y = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.w) #27 ; 0 uses
  %i.z = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !llvm.loop !202

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %i.ab = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m) #27 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.loopexit, %bb.e
  %i.ad = load ptr, ptr %0, align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.d
  ret ptr %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #27
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #27
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !206

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i29) #27
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i29) #27
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !206

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #28
  br label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !107
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !91
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #27 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.94") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !98    ; 3 uses
  br i1 %.not, label %.thread70, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.024.i83 = phi i64 [ %i.j, %bb.b ], [ %i.ar, %bb.f ]
  %.026.i82 = phi i64 [ %2, %bb.b ], [ %i.as, %bb.f ] ; 2 uses
  %i.m = and i64 %.026.i82, %i.k
  %i.n = shl nuw nsw i64 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not72 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not72, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %8 = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %8)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.z, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.w = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.044.0, 65535
  %i.z = and i32 %i.y, %.sroa.044.0               ; 2 uses
  %i.aa = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !17
  %i.ag = icmp eq i32 %i.af, 6
  br i1 %i.ag, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %.critedge.i, !prof !99

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.ah = load ptr, ptr %4, align 8, !tbaa !48
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !49  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !49
  %.not.i.i.i.i = icmp eq i64 %i.ai, %i.am
  br i1 %.not.i.i.i.i, label %bb.e, label %.critedge.i, !prof !100

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.an = icmp samesign eq i64 %i.ai, 0
  br i1 %i.an, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.ak, i64 %i.ai)
  %i.ao = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ao, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, label %.critedge.i, !prof !101

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.ap = and i32 %i.z, 16382
  %.not73 = icmp eq i32 %i.ap, 0
  br i1 %.not73, label %.loopexit, label %bb.d, !llvm.loop !207

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.aq = icmp eq i8 %i.v, 0
  br i1 %i.aq, label %.thread70, label %bb.f, !prof !99

bb.f:                                             ; preds = %.loopexit
  %i.ar = add i64 %.024.i83, -1                   ; 2 uses
  %i.as = add i64 %i.e, %.026.i82
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %.thread70, label %bb.c, !llvm.loop !208

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49: ; preds = %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.at = getelementptr i8, ptr %i.ac, i64 16
  br label %bb.n

.thread70:                                        ; preds = %bb.f, %.loopexit, %bb.a
  %.pre-phi94 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.f ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.av = load i8, ptr %i.au, align 1, !tbaa !50
  %i.aw = and i8 %i.av, 15
  %i.ax = zext nneg i8 %i.aw to i64               ; 2 uses
  %i.ay = shl i64 %i.ax, %.pre-phi94              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ay
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread70
  %i.az = shl nuw i64 1, %.pre-phi94
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.az, i64 noundef %i.ax, i64 noundef %i.ay)
  %.pre90 = load i64, ptr %i.a, align 8, !tbaa !93
  %.pre91 = load ptr, ptr %1, align 8, !tbaa !98
  %.pre92 = and i64 %.pre90, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread70, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi94, %.thread70 ], [ %.pre92, %bb.g ]
  %i.ba = phi ptr [ %.pre, %.thread70 ], [ %.pre91, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.bb = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bc = and i64 %2, %i.bb
  %i.bd = shl nuw nsw i64 %i.bc, 7                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd ; 2 uses
  %i.bf = load <16 x i8>, ptr %i.be, align 16, !tbaa !50
  %i.bg = icmp eq <16 x i8> %i.bf, zeroinitializer
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = and i16 %i.bh, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bi, 0
  br i1 %.not74, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bj = shl i64 %3, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bl = phi i64 [ %i.bd, %bb.h ], [ %i.bs, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bq, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 15 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !106 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bo, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !106
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bq = add i64 %i.bk, %.030                    ; 2 uses
  %i.br = and i64 %i.bq, %i.bb
  %i.bs = shl nuw nsw i64 %i.br, 7                ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bs
  %i.bu = load <16 x i8>, ptr %i.bt, align 16     ; 2 uses
  %i.bv = icmp eq <16 x i8> %i.bu, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = and i16 %i.bw, 16383                    ; 2 uses
  %.not75 = icmp eq i16 %i.bx, 0
  br i1 %.not75, label %bb.i, label %bb.k, !llvm.loop !209

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bs ; 2 uses
  %i.bz = extractelement <16 x i8> %i.bu, i64 14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 14
  %i.cb = add i8 %i.bz, 16
  store i8 %i.cb, ptr %i.ca, align 2, !tbaa !105
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bi, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bx, %bb.k ]
  %.1 = phi ptr [ %i.be, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.by, %bb.k ] ; 3 uses
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64              ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !50
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.28) #32
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.ch = trunc i64 %3 to i8
  store i8 %i.ch, ptr %i.ce, align 1, !tbaa !50
  %i.ci = shl nuw nsw i64 %i.cd, 3
  %i.cj = getelementptr i8, ptr %.1, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 16     ; 3 uses
  %9 = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %9)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.ck, i64 %i.cd, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.at, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ %i.ck, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.aa, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ %i.cd, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !88
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !68
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cl, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvOT_PPSt4pairIKS3_S3_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = tail call ptr @__cxa_begin_catch(ptr %i.b) #27 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !213

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %bb.a, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.g = and i64 %2, 255                          ; 2 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i64 %i.g, 1
  %i.j = ptrtoint ptr %1 to i64
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !102
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.k, ptr %i.l, align 8, !tbaa !68
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !93   ; 2 uses
  %i.q = and i64 %i.p, -256
  %i.r = add i64 %i.q, 256
  %i.s = and i64 %i.p, 255
  %i.t = or disjoint i64 %i.r, %i.s
  store i64 %i.t, ptr %i.o, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !93
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.104", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !68
  store i64 %2, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.k = load ptr, ptr %0, align 8, !tbaa !98     ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i72 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i72, ptr %i.g, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i72) #33 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !82
  store i8 0, ptr %i.i, align 1, !tbaa !69
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 7
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 7
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 7
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = shl i64 %.08.i, 7
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = shl i64 %.08.i, 7
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = shl i64 %.08.i, 7
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = shl i64 %.08.i, 7
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = shl i64 %.08.i, 7
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !214

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ax, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = shl nsw i64 %.08.i.epil, 7
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !215

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.az = trunc i64 %5 to i8
  store i8 %i.az, ptr %i.ay, align 2, !tbaa !105
  store ptr %i.v, ptr %0, align 8, !tbaa !98
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !93
  %i.bd = and i64 %i.bc, -256
  %i.be = select i1 %.not.i, i64 4294967295, i64 %i.bb
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  store i8 0, ptr %i.j, align 1, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i8 0, ptr %6, align 8, !tbaa !110, !alias.scope !224
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bg, align 8, !tbaa !225
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !226
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !227
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !226
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !228
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.8107.0..sroa_idx, align 8, !tbaa !226
  %.sroa.9108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9108.0..sroa_idx, align 8, !tbaa !229
  %.sroa.10109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10109.0..sroa_idx, align 8, !tbaa !226
  %.sroa.11110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11110.0..sroa_idx, align 8, !tbaa !225
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !226
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !226
  %i.bh = icmp eq i64 %1, 0
  br i1 %i.bh, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %8 = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.055152 = phi i64 [ 0, %bb.c ], [ %.156, %bb.h ] ; 4 uses
  %.057151 = phi i64 [ 0, %bb.c ], [ %i.bv, %bb.h ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 %.057151
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !50  ; 2 uses
  %.not130 = icmp eq i8 %i.bj, 0
  br i1 %.not130, label %bb.h, label %bb.e, !prof !65

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 %.055152 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !50
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.28) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !50
  %i.bn = shl i64 %.055152, 3
  %i.bo = getelementptr i8, ptr %i.v, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  call void @llvm.assume(i1 %8)
  %i.bq = shl i64 %.057151, 3
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 16     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !90
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !90
  store ptr null, ptr %i.bs, align 8, !tbaa !90
  %i.bu = add nuw i64 %.055152, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.156 = phi i64 [ %i.bu, %bb.g ], [ %.055152, %bb.d ] ; 3 uses
  %i.bv = add i64 %.057151, 1
  %i.bw = icmp ult i64 %.156, %1
  br i1 %i.bw, label %bb.d, label %bb.i, !llvm.loop !218

bb.i:                                             ; preds = %bb.h
  %i.bx = add i64 %.156, -1                       ; 2 uses
  %i.by = shl i64 %i.bx, 3
  %i.bz = getelementptr i8, ptr %i.v, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 16     ; 2 uses
  %9 = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %9)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  %i.cb = and i64 %i.bx, 255                      ; 2 uses
  %i.cc = icmp samesign ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !68
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph150.preheader

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp slt i64 %4, 0
  br i1 %i.ch, label %bb.l, label %bb.m, !prof !65

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #31
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit81

bb.o:                                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !108
  %.pre161 = load i64, ptr %i.b, align 8, !tbaa !68
  %.pre162 = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.pre163 = shl i64 %.pre161, 7
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 0, i64 %4, i1 false)
  %.not59147 = icmp eq i64 %.pre162, 0
  br i1 %.not59147, label %._crit_edge, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %.thread, %bb.o
  %.0125176 = phi ptr [ %7, %.thread ], [ %i.ci, %bb.o ] ; 5 uses
  %i.ck = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.o ]
  %i.cl = phi i64 [ %1, %.thread ], [ %.pre162, %bb.o ]
  %.pre-phi175 = phi i64 [ %i.p, %.thread ], [ %.pre163, %bb.o ]
  %i.cm = getelementptr i8, ptr %i.ck, i64 %.pre-phi175
  br label %.lr.ph150

.loopexit:                                        ; preds = %bb.y, %.lr.ph150
  %.1.lcssa = phi i64 [ %.042148, %.lr.ph150 ], [ %i.db, %bb.y ] ; 2 uses
  %.not59 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph150, !llvm.loop !219

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %.loopexit
  %.043149.pn = phi ptr [ %.043149, %.loopexit ], [ %i.cm, %.lr.ph150.preheader ]
  %.042148 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cl, %.lr.ph150.preheader ] ; 2 uses
  %.043149 = getelementptr i8, ptr %.043149.pn, i64 -128 ; 6 uses
  %i.cn = load <16 x i8>, ptr %.043149, align 16, !tbaa !50
  %i.co = icmp eq <16 x i8> %i.cn, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = and i16 %i.cp, 16383                    ; 2 uses
  %i.cr = xor i16 %i.cq, 16383
  %.sroa.088.0.extract.trunc = zext nneg i16 %i.cr to i32 ; 2 uses
  %cond = icmp eq i16 %i.cq, 16383
  br i1 %cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph150
  %10 = icmp ne ptr %.043149, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %10)
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.085.0140 = phi i32 [ %.sroa.088.0.extract.trunc, %.lr.ph ], [ %.sroa.085.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0139 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.cs = and i32 %.sroa.085.0140, 1
  %.not.i74 = icmp eq i32 %i.cs, 0
  br i1 %.not.i74, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !65

bb.q:                                             ; preds = %bb.p
  %i.ct = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.085.0140, i1 true) ; 2 uses
  %i.cu = add i32 %i.ct, %.sroa.8.0139
  %i.cv = add nuw nsw i32 %i.ct, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.p, %bb.q
  %.sroa.8.1.in = phi i32 [ %i.cu, %bb.q ], [ %.sroa.8.0139, %bb.p ] ; 2 uses
  %.pn129 = phi i32 [ %i.cv, %bb.q ], [ 1, %bb.p ]
  %.sroa.085.1 = lshr i32 %.sroa.085.0140, %.pn129 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.cw = zext i32 %.sroa.8.1.in to i64
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = getelementptr i8, ptr %.043149, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !90
  call void @llvm.prefetch.p0(ptr %i.da, i32 0, i32 3, i32 1)
  %.not126 = icmp eq i32 %.sroa.085.1, 0
  br i1 %.not126, label %.lr.ph145, label %bb.p

.lr.ph145:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.y
  %.1144 = phi i64 [ %i.db, %bb.y ], [ %.042148, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.088.0143 = phi i32 [ %.sroa.088.1, %bb.y ], [ %.sroa.088.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.890.0142 = phi i32 [ %.sroa.890.1, %bb.y ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.db = add i64 %.1144, -1                      ; 2 uses
  %i.dc = and i32 %.sroa.088.0143, 1
  %.not.i76 = icmp eq i32 %i.dc, 0
  br i1 %.not.i76, label %bb.r, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78, !prof !65

bb.r:                                             ; preds = %.lr.ph145
  %i.dd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.088.0143, i1 true) ; 2 uses
  %i.de = add i32 %i.dd, %.sroa.890.0142
  %i.df = add nuw nsw i32 %i.dd, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78: ; preds = %.lr.ph145, %bb.r
  %.sroa.890.1.in = phi i32 [ %i.de, %bb.r ], [ %.sroa.890.0142, %.lr.ph145 ] ; 2 uses
  %.pn128 = phi i32 [ %i.df, %bb.r ], [ 1, %.lr.ph145 ]
  %.sroa.088.1 = lshr i32 %.sroa.088.0143, %.pn128 ; 2 uses
  %.sroa.890.1 = add i32 %.sroa.890.1.in, 1
  %i.dg = zext i32 %.sroa.890.1.in to i64         ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = getelementptr i8, ptr %.043149, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 16     ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !90
  %i.dl = invoke noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dk)
          to label %bb.s unwind label %bb.u       ; 2 uses

bb.s:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78
  %i.dm = lshr i64 %i.dl, 56
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1) ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.043149, i64 %i.dg
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !50
  %i.dp = zext i8 %i.do to i64
  %i.dq = icmp eq i64 %.sroa.speculated.i.i, %i.dp
  br i1 %i.dq, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.28) #32
  unreachable

bb.u:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit78
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit81

bb.v:                                             ; preds = %bb.s
  %i.ds = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dt = or disjoint i64 %i.ds, 1
  %i.du = load i64, ptr %i.ba, align 8, !tbaa !93
  %i.dv = and i64 %i.du, 255
  %notmask.i.i = shl nsw i64 -1, %i.dv
  %i.dw = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !98    ; 2 uses
  %i.dy = and i64 %i.dl, %i.dw                    ; 4 uses
  %i.dz = shl nuw nsw i64 %i.dy, 7                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0125176, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !50  ; 2 uses
  %i.ec = icmp ult i8 %i.eb, 14
  br i1 %i.ec, label %._crit_edge.i, label %.lr.ph.i80, !prof !230

.lr.ph.i80:                                       ; preds = %bb.v, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i
  %i.ed = phi i64 [ %i.el, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.dz, %bb.v ]
  %i.ee = phi i64 [ %i.ek, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.dy, %bb.v ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 15 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !106 ; 2 uses
  %.not.i.i = icmp eq i8 %i.eh, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i80
  %i.ei = add i8 %i.eh, 1
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !106
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.w, %.lr.ph.i80
  %i.ej = add nuw i64 %i.dt, %i.ee
  %i.ek = and i64 %i.ej, %i.dw                    ; 4 uses
  %i.el = shl nuw nsw i64 %i.ek, 7                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0125176, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !tbaa !50  ; 2 uses
  %i.eo = icmp ult i8 %i.en, 14
  br i1 %i.eo, label %._crit_edge.i, label %.lr.ph.i80, !prof !231, !llvm.loop !220

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, %bb.v
  %.lcssa22.i = phi i64 [ %i.dy, %bb.v ], [ %i.ek, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.v ], [ 16, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.dz, %bb.v ], [ %i.el, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.eb, %bb.v ], [ %i.en, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.pn.i ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0125176, i64 %.lcssa22.i
  %i.eq = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !50
  %i.er = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.er ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !50
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.28) #32
  unreachable

bb.y:                                             ; preds = %._crit_edge.i
  %i.ev = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ev, ptr %i.es, align 1, !tbaa !50
  %i.ew = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 2, !tbaa !105
  %i.ey = add i8 %i.ex, %.0.lcssa.i
  store i8 %i.ey, ptr %i.ew, align 2, !tbaa !105
  %i.ez = shl nuw nsw i64 %i.er, 3
  %i.fa = getelementptr i8, ptr %.lcssa21.i, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 16     ; 2 uses
  %11 = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %11)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %i.fc = load ptr, ptr %i.dj, align 8, !tbaa !90
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !90
  store ptr null, ptr %i.dj, align 8, !tbaa !90
  %.not127 = icmp eq i32 %.sroa.088.1, 0
  br i1 %.not127, label %.loopexit, label %.lr.ph145, !llvm.loop !221

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.0125177 = phi ptr [ %i.ci, %bb.o ], [ %.0125176, %.loopexit ] ; 2 uses
  %i.fd = load i64, ptr %i.ba, align 8, !tbaa !93
  %i.fe = and i64 %i.fd, 255
  %i.ff = shl nuw i64 1, %i.fe
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.z
  %.0.in = phi i64 [ %i.ff, %._crit_edge ], [ %.0, %bb.z ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0125177, i64 %.0
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !50  ; 3 uses
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.z, label %bb.aa, !llvm.loop !222

bb.aa:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %0, align 8, !tbaa !98
  %i.fk = shl nsw i64 %.0, 7
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 %i.fk ; 2 uses
  %i.fm = zext nneg i8 %i.fh to i64
  %i.fn = add nsw i64 %i.fm, -1                   ; 2 uses
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = getelementptr i8, ptr %i.fl, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 16     ; 2 uses
  %12 = icmp ne ptr %i.fl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %12)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %i.fr = icmp ult i8 %i.fh, 17
  call void @llvm.assume(i1 %i.fr)
  %i.fs = lshr i64 %i.fn, 1
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = or i64 %i.fs, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !68
  br i1 %.not, label %bb.ab, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0125177, i64 noundef %4) #28
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.0125176, i64 noundef %4) #28
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit81

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit81: ; preds = %bb.ac, %bb.u, %bb.n
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.n ], [ %i.dr, %bb.u ], [ %i.dr, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  resume { ptr, i32 } %.pn64.pn.pn.pn

bb.ad:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !69
  %i.fw = load i64, ptr %i.d, align 8, !tbaa !68
  %.not.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fy = load i64, ptr %i.e, align 8, !tbaa !68
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.fy) #27
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !67
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !67
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !110, !range !56, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233, !nonnull !57
  %i.e = load i8, ptr %i.d, align 1, !tbaa !69, !range !56, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !99

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !234, !nonnull !57, !align !235
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !236, !nonnull !57, !align !235
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !237, !nonnull !57, !align !235
  %i.o = load i64, ptr %i.n, align 8, !tbaa !68
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !238  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !239, !nonnull !57, !align !235
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !240, !nonnull !57, !align !235
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !236, !nonnull !57, !align !235
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !108
  store ptr %i.z, ptr %i.q, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !241, !nonnull !57, !align !235
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !93
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #27
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

declare noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #23 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4)
  tail call void @__cxa_rethrow() #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvOT_PPSt4pairIKS3_S3_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !90
  %i.b = load i64, ptr %4, align 8, !tbaa !72
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49   ; 8 uses
end_hunk_1
