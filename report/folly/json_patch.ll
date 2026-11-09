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
end_hunk_0
begin_hunk_1_@_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz
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
  %.024.i83 = phi i64 [ %i.j, %bb.b ], [ %i.as, %bb.f ]
  %.026.i82 = phi i64 [ %2, %bb.b ], [ %i.at, %bb.f ] ; 2 uses
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
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.aa, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = add nuw nsw i32 %.sroa.044.0, 65535
  %i.aa = and i32 %i.z, %.sroa.044.0              ; 2 uses
  %i.ab = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !90 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17
  %i.ah = icmp eq i32 %i.ag, 6
  br i1 %i.ah, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %.critedge.i, !prof !99

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.ai = load ptr, ptr %4, align 8, !tbaa !48
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !49  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !49
  %.not.i.i.i.i = icmp eq i64 %i.aj, %i.an
  br i1 %.not.i.i.i.i, label %bb.e, label %.critedge.i, !prof !100

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.ao = icmp samesign eq i64 %i.aj, 0
  br i1 %i.ao, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.al, i64 %i.aj)
  %i.ap = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ap, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, label %.critedge.i, !prof !101

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.aq = and i32 %i.aa, 16382
  %.not73 = icmp eq i32 %i.aq, 0
  br i1 %.not73, label %.loopexit, label %bb.d, !llvm.loop !207

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ar = icmp eq i8 %i.v, 0
  br i1 %i.ar, label %.thread70, label %bb.f, !prof !99

bb.f:                                             ; preds = %.loopexit
  %i.as = add i64 %.024.i83, -1                   ; 2 uses
  %i.at = add i64 %i.e, %.026.i82
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %.thread70, label %bb.c, !llvm.loop !208

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49: ; preds = %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.au = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread70:                                        ; preds = %bb.f, %.loopexit, %bb.a
  %.pre-phi94 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !50
  %i.ax = and i8 %i.aw, 15
  %i.ay = zext nneg i8 %i.ax to i64               ; 2 uses
  %i.az = shl i64 %i.ay, %.pre-phi94              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.az
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread70
  %i.ba = shl nuw i64 1, %.pre-phi94
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ba, i64 noundef %i.ay, i64 noundef %i.az)
  %.pre90 = load i64, ptr %i.a, align 8, !tbaa !93
  %.pre91 = load ptr, ptr %1, align 8, !tbaa !98
  %.pre92 = and i64 %.pre90, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread70, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi94, %.thread70 ], [ %.pre92, %bb.g ]
  %i.bb = phi ptr [ %.pre, %.thread70 ], [ %.pre91, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.bc = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bd = and i64 %2, %i.bc
  %i.be = shl nuw nsw i64 %i.bd, 7                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load <16 x i8>, ptr %i.bf, align 16, !tbaa !50
  %i.bh = icmp eq <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bj, 0
  br i1 %.not74, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bk = shl i64 %3, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bm = phi i64 [ %i.be, %bb.h ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 15 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !106 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bp, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !106
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.br = add i64 %i.bl, %.030                    ; 2 uses
  %i.bs = and i64 %i.br, %i.bc
  %i.bt = shl nuw nsw i64 %i.bs, 7                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt
  %i.bv = load <16 x i8>, ptr %i.bu, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %.not75 = icmp eq i16 %i.by, 0
  br i1 %.not75, label %bb.i, label %bb.k, !llvm.loop !209

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt ; 2 uses
  %i.ca = extractelement <16 x i8> %i.bv, i64 14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = add i8 %i.ca, 16
  store i8 %i.cc, ptr %i.cb, align 2, !tbaa !105
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bj, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.by, %bb.k ]
  %.1 = phi ptr [ %i.bf, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bz, %bb.k ] ; 3 uses
  %i.cd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !50
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.28) #32
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.ci = trunc i64 %3 to i8
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !50
  %i.cj = shl nuw nsw i64 %i.ce, 3
  %i.ck = getelementptr i8, ptr %.1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 16     ; 3 uses
  %i.cm = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cl, i64 %i.ce, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.au, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ %i.cl, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.ab, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ %i.ce, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !88
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !68
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
  invoke void @_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvOT_PPSt4pairIKS3_S3_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #27 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %13, !inline_history !213

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %9
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %15 unwind label %16

15:                                               ; preds = %13
  resume { ptr, i32 } %14

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #29
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %8, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %19 = and i64 %2, 255                           ; 2 uses
  %20 = icmp samesign ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  %21 = lshr i64 %19, 1
  %22 = ptrtoint ptr %1 to i64
  %23 = or i64 %21, %22                           ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %25 = load i64, ptr %24, align 8, !tbaa !102
  %26 = icmp ult i64 %25, %23
  br i1 %26, label %27, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

27:                                               ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %23, ptr %24, align 8, !tbaa !68
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit, %27
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %29 = load i64, ptr %28, align 8, !tbaa !93     ; 2 uses
  %30 = and i64 %29, -256
  %31 = add i64 %30, 256
  %32 = and i64 %29, 255
  %33 = or disjoint i64 %31, %32
  store i64 %33, ptr %28, align 8, !tbaa !93
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
end_hunk_1
begin_hunk_2_@llvm.cttz.i16
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"_ZTSN5folly7dynamic4TypeE", !11, i64 0}
!16 = !{!"_ZTSN5folly7dynamicE", !15, i64 0, !11, i64 8}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"p1 _ZTSN5folly7dynamicE", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSN5folly15expected_detail5WhichE", !11, i64 0}
!22 = !{!"_ZTSN5folly10json_patch20patch_operation_codeE", !11, i64 0}
!23 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !26, i64 0}
!28 = !{!"_ZTSN5folly12json_pointerE", !27, i64 0}
!29 = !{!"bool", !11, i64 0}
!30 = !{!"_ZTSN5folly6detail39OptionalStorageNonTriviallyDestructibleINS_12json_pointerEEE", !11, i64 0, !29, i64 24}
!31 = !{!"_ZTSN5folly6detail15OptionalStorageINS_12json_pointerEEE", !30, i64 0}
!32 = !{!"_ZTSN5folly6detail16OptionalCopyBaseINS_12json_pointerELb0EEE", !31, i64 0}
!33 = !{!"_ZTSN5folly6detail22OptionalCopyAssignBaseINS_12json_pointerELb0EEE", !32, i64 0}
!34 = !{!"_ZTSN5folly8OptionalINS_12json_pointerEEE", !33, i64 0}
!35 = !{!"_ZTSN5folly6detail39OptionalStorageNonTriviallyDestructibleINS_7dynamicEEE", !11, i64 0, !29, i64 40}
!36 = !{!"_ZTSN5folly6detail15OptionalStorageINS_7dynamicEEE", !35, i64 0}
!37 = !{!"_ZTSN5folly6detail16OptionalCopyBaseINS_7dynamicELb0EEE", !36, i64 0}
!38 = !{!"_ZTSN5folly6detail22OptionalCopyAssignBaseINS_7dynamicELb0EEE", !37, i64 0}
!39 = !{!"_ZTSN5folly8OptionalINS_7dynamicEEE", !38, i64 0}
!40 = !{!"_ZTSN5folly10json_patch15patch_operationE", !22, i64 0, !28, i64 8, !34, i64 32, !39, i64 64}
!41 = !{!40, !22, i64 0}
!42 = !{!30, !29, i64 24}
!43 = !{!35, !29, i64 40}
!44 = !{!"p1 omnipotent char", !18, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!46 = !{!"long", !11, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !46, i64 8, !11, i64 16}
!48 = !{!47, !44, i64 0}
!49 = !{!47, !46, i64 8}
!50 = !{!11, !11, i64 0}
!51 = !{!24, !23, i64 0}
!52 = !{!24, !23, i64 8}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!24, !23, i64 16}
!55 = !{!36, !29, i64 40}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!31, !29, i64 24}
!59 = !{!"p1 _ZTSN5folly10json_patch15patch_operationE", !18, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN5folly10json_patch15patch_operationESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!60, !59, i64 8}
!62 = !{!60, !59, i64 16}
!63 = !{!60, !59, i64 0}
!64 = !{!45, !44, i64 0}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = !{!"vtable pointer", !10, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!46, !46, i64 0}
!69 = !{!29, !29, i64 0}
!70 = !{!"short", !11, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!23, !23, i64 0}
!73 = !{!59, !59, i64 0}
!74 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!75 = !{!"_ZTSN5folly5RangeIPKcEE", !44, i64 0, !44, i64 8}
!76 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageINS_7dynamic27json_pointer_resolved_valueIS2_EENS2_29json_pointer_resolution_errorIS2_EELNS0_11StorageTypeE1EEE", !11, i64 0, !21, i64 40}
!77 = !{!76, !21, i64 40}
!78 = !{!"_ZTSN5folly7dynamic34json_pointer_resolution_error_codeE", !11, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"_ZTSN5folly7dynamic27json_pointer_resolved_valueIS0_EE", !19, i64 0, !19, i64 8, !75, i64 16, !46, i64 32}
!81 = !{!80, !19, i64 0}
!82 = !{!44, !44, i64 0}
!83 = !{!80, !46, i64 32}
!84 = !{!"_ZTSNSt12_Vector_baseIN5folly7dynamicESaIS1_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!85 = !{!84, !19, i64 8}
!86 = !{!"any p2 pointer", !18, i64 0}
!87 = !{!"p2 _ZTSSt4pairIKN5folly7dynamicES1_E", !86, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"p1 _ZTSSt4pairIKN5folly7dynamicES1_E", !18, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!84, !19, i64 16}
!92 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !46, i64 0}
!93 = !{!92, !46, i64 0}
!94 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EEE", !18, i64 0}
!95 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPSt4pairIKNS_7dynamicES4_EEE", !46, i64 0}
!96 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES6_EEEEELb1EEE", !92, i64 0, !95, i64 8}
!97 = !{!"_ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEEE", !94, i64 0, !96, i64 8}
!98 = !{!97, !94, i64 0}
!99 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!100 = !{!"branch_weights", i32 2146410443, i32 1073205}
!101 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!102 = !{!95, !46, i64 0}
!103 = !{!"_ZTSSt5arrayIhLm14EE", !11, i64 0}
!104 = !{!"_ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EEE", !103, i64 0, !11, i64 14, !11, i64 15}
!105 = !{!104, !11, i64 14}
!106 = !{!104, !11, i64 15}
!107 = !{!84, !19, i64 0}
!108 = !{!94, !94, i64 0}
!109 = !{!"_ZTSN5folly6detail18ScopeGuardImplBaseE", !29, i64 0}
!110 = !{!109, !29, i64 0}
!111 = !{!"p1 bool", !18, i64 0}
!112 = !{!"p1 long", !18, i64 0}
!113 = !{!"p2 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EEE", !86, i64 0}
!114 = !{!"p2 omnipotent char", !86, i64 0}
!115 = !{!"p1 _ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEEE", !18, i64 0}
!116 = !{!"_ZTSN5folly10json_patch16parse_error_codeE", !11, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionINS_10json_patchENS2_11parse_errorEEE", !11, i64 0, !21, i64 24}
!119 = !{!118, !21, i64 24}
!120 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionINS_12json_pointerENS2_11parse_errorEEE", !11, i64 0, !21, i64 24}
!121 = !{!120, !21, i64 24}
!122 = distinct !{!122, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_"}
!123 = distinct !{!123, !122, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr12IsSomeStringIT_EE5valuesr3std17is_floating_pointIT0_EE5valueES8_E4typeES9_"}
!125 = distinct !{!125, !124, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr12IsSomeStringIT_EE5valuesr3std17is_floating_pointIT0_EE5valueES8_E4typeES9_: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJbETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_"}
!127 = distinct !{!127, !126, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJbETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_: argument 0"}
!128 = distinct !{!128, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_"}
!129 = distinct !{!129, !128, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_: argument 0"}
!130 = distinct !{!130, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_"}
!131 = distinct !{!131, !130, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_: argument 0"}
!132 = distinct !{!132, i1 true, !"_ZN5folly6detail11parseToWrapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueESF_E4typeESC_SE_"}
!133 = distinct !{!133, !132, !"_ZN5folly6detail11parseToWrapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueESF_E4typeESC_SE_: argument 0"}
!134 = distinct !{!134, i1 true, !"_ZN5folly7parseToENS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!135 = distinct !{!135, !134, !"_ZN5folly7parseToENS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!136 = distinct !{!136, i1 true, !"_ZN5folly6detail10parseToStrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEESC_RT_"}
!137 = distinct !{!137, !136, !"_ZN5folly6detail10parseToStrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEESC_RT_: argument 0"}
!138 = !{!123}
!139 = !{!"double", !11, i64 0}
!140 = !{!139, !139, i64 0}
!141 = !{!125}
!142 = !{!127}
!143 = !{!129}
!144 = !{!131}
!145 = !{!131, !129}
!146 = !{!137, !135, !133, !131}
!147 = !{!137, !135, !133}
!148 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!149 = distinct !{!149, !53}
!150 = distinct !{!150, !53}
!151 = distinct !{!151, !53}
!152 = distinct !{!152, !53}
!153 = distinct !{!153, !53}
!154 = distinct !{!154, !53}
!155 = distinct !{!155, !53}
!156 = distinct !{!156, i1 true, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE"}
!157 = distinct !{!157, !156, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE: argument 0"}
!158 = distinct !{!158, i1 true, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE"}
!159 = distinct !{!159, !158, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE: argument 0"}
!160 = distinct !{!160, i1 true, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE"}
!161 = distinct !{!161, !160, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE: argument 0"}
!162 = !{!157}
!163 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageINS_7dynamic27json_pointer_resolved_valueIKS2_EENS2_29json_pointer_resolution_errorIS4_EELNS0_11StorageTypeE1EEE", !11, i64 0, !21, i64 40}
!164 = !{!163, !21, i64 40}
!165 = !{!"_ZTSN5folly7dynamic27json_pointer_resolved_valueIKS0_EE", !19, i64 0, !19, i64 8, !75, i64 16, !46, i64 32}
!166 = !{!165, !46, i64 32}
!167 = !{!165, !19, i64 8}
!168 = !{!"_ZTSN5folly7dynamic29json_pointer_resolution_errorIKS0_EE", !78, i64 0, !46, i64 8, !19, i64 16}
!169 = !{!168, !78, i64 0}
!170 = !{!168, !46, i64 8}
!171 = !{!168, !19, i64 16}
!172 = !{!"_ZTSN5folly10json_patch28patch_application_error_codeE", !11, i64 0}
!173 = !{!172, !172, i64 0}
!174 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageINS_4UnitENS_10json_patch23patch_application_errorELNS0_11StorageTypeE1EEE", !11, i64 0, !21, i64 16}
!175 = !{!174, !21, i64 16}
!176 = !{!159}
!177 = !{!161}
!178 = distinct !{!178, !53}
!179 = !{!"p1 _ZTSN5folly16variadic_noop_fnE", !18, i64 0}
!180 = !{!179, !179, i64 0}
!181 = distinct !{!181, i1 true, !"_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11try_emplaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXgssr5folly6detail30EligibleForHeterogeneousInsertIS4_S6_S7_T_EE5valueESt4pairINS1_21NodeContainerIteratorIPSL_IKS4_S4_EEEbEE4typeEOSK_DpOT0_"}
!182 = distinct !{!182, !181, !"_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11try_emplaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXgssr5folly6detail30EligibleForHeterogeneousInsertIS4_S6_S7_T_EE5valueESt4pairINS1_21NodeContainerIteratorIPSL_IKS4_S4_EEEbEE4typeEOSK_DpOT0_: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZSt16forward_as_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EESB_"}
!184 = distinct !{!184, !183, !"_ZSt16forward_as_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EESB_: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15tryEmplaceValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbERKT_DpOT0_"}
!186 = distinct !{!186, !185, !"_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15tryEmplaceValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbERKT_DpOT0_: argument 0"}
!187 = !{!80, !19, i64 8}
!188 = !{!"branch_weights", i32 778, i32 2145922625, i32 1560245}
!189 = !{!"_ZTSN5folly7dynamic29json_pointer_resolution_errorIS0_EE", !78, i64 0, !46, i64 8, !19, i64 16}
!190 = !{!189, !78, i64 0}
!191 = !{!189, !19, i64 16}
!192 = !{!182}
!193 = !{!184}
!194 = !{!186, !182}
!195 = !{i64 0, i64 1, !79, i64 8, i64 8, !68, i64 16, i64 8, !20}
!196 = distinct !{!196, !53}
!197 = distinct !{!197, !53}
!198 = !{!75, !44, i64 8}
!199 = !{!75, !44, i64 0}
!200 = distinct !{!200, !53}
!201 = distinct !{!201, !53}
!202 = distinct !{!202, !53}
!203 = !{!"p1 _ZTSSt6vectorIN5folly7dynamicESaIS1_EE", !18, i64 0}
!204 = !{!"_ZTSNSt6vectorIN5folly7dynamicESaIS1_EE16_Temporary_valueE", !203, i64 0, !11, i64 8}
!205 = !{!204, !203, i64 0}
!206 = distinct !{!206, !53}
!207 = distinct !{!207, !53}
!208 = distinct !{!208, !53}
!209 = distinct !{!209, !53}
!210 = !{!"_ZTSN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEEE", !87, i64 0, !46, i64 8}
!211 = !{!"_ZTSSt4pairIN5folly3f146detail11F14ItemIterIPNS2_8F14ChunkIPS_IKNS0_7dynamicES5_EEEEEbE", !210, i64 0, !29, i64 16}
!212 = !{!211, !29, i64 16}
!213 = distinct !{null}
!214 = distinct !{!214, !53}
!215 = distinct !{!215, !223}
!216 = distinct !{!216, i1 true, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSE_"}
!217 = distinct !{!217, !216, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSE_: argument 0"}
!218 = distinct !{!218, !53}
!219 = distinct !{!219, !53}
!220 = distinct !{!220, !53}
!221 = distinct !{!221, !53}
!222 = distinct !{!222, !53}
!223 = !{!"llvm.loop.unroll.disable"}
!224 = !{!217}
!225 = !{!111, !111, i64 0}
!226 = !{!112, !112, i64 0}
!227 = !{!113, !113, i64 0}
!228 = !{!114, !114, i64 0}
!229 = !{!115, !115, i64 0}
!230 = !{!"branch_weights", i32 1999, i32 1}
!231 = !{!"branch_weights", i32 1, i32 0}
!232 = !{!"_ZTSZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_", !111, i64 0, !112, i64 8, !113, i64 16, !112, i64 24, !114, i64 32, !112, i64 40, !115, i64 48, !112, i64 56, !111, i64 64, !112, i64 72, !112, i64 80}
!233 = !{!232, !111, i64 0}
!234 = !{!232, !112, i64 8}
!235 = !{i64 8}
!236 = !{!232, !113, i64 16}
!237 = !{!232, !112, i64 24}
!238 = !{!232, !115, i64 48}
!239 = !{!232, !114, i64 32}
!240 = !{!232, !112, i64 40}
!241 = !{!232, !112, i64 56}
end_hunk_2
