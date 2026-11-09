Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/json_patch?download=true
inline.NumInlined: 1291
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::c_array" = type { [20 x i64] }
%"struct.folly::c_array.32" = type { [100 x i16] }
%"struct.folly::variadic_noop_fn" = type { i8 }
%"struct.folly::f14::detail::F14EmptyTagVector" = type { %"struct.std::array.85", i8 }
%"struct.std::array.85" = type { [15 x i8] }
%"struct.folly::detail::safe_assert_arg" = type { ptr, ptr, i32, ptr, ptr }
%"struct.folly::c_array.88" = type { [2 x i8] }
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
%"class.folly::Optional" = type { %"struct.folly::Optional<folly::json_pointer>::StorageNonTriviallyDestructible" }
%"struct.folly::Optional<folly::json_pointer>::StorageNonTriviallyDestructible" = type <{ %union.anon.14, i8, [7 x i8] }>
%union.anon.14 = type { %"class.folly::json_pointer" }
%"class.folly::Optional.15" = type { %"struct.folly::Optional<folly::dynamic>::StorageNonTriviallyDestructible" }
%"struct.folly::Optional<folly::dynamic>::StorageNonTriviallyDestructible" = type <{ %union.anon.16, i8, [7 x i8] }>
%union.anon.16 = type { %"struct.folly::dynamic" }
%"struct.folly::dynamic" = type { i32, %"union.folly::dynamic::Data" }
%"union.folly::dynamic::Data" = type { %"class.std::__cxx11::basic_string" }
%"class.folly::Expected.17" = type { %"struct.folly::expected_detail::ExpectedStorage.base.29", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.29" = type { %"struct.folly::expected_detail::ExpectedUnion.base.21" }
%"struct.folly::expected_detail::ExpectedUnion.base.21" = type <{ %union.anon.20, i8 }>
%union.anon.20 = type { %"class.folly::json_pointer" }
%"struct.folly::TypeError" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.31 }
%union.anon.31 = type { ptr }
%"class.std::allocator.5" = type { i8 }
%"class.double_conversion::DoubleToStringConverter" = type { i32, ptr, ptr, i8, i32, i32, i32, i32, i32 }
%"class.double_conversion::StringBuilder" = type { %"class.double_conversion::Vector", i32, [4 x i8] }
%"class.double_conversion::Vector" = type <{ ptr, i32, [4 x i8] }>
%"class.folly::BadExpectedAccess" = type { %"class.std::exception" }
%"class.folly::OptionalEmptyException" = type { %"class.std::runtime_error" }
%"class.folly::Expected.50" = type { %"struct.folly::expected_detail::ExpectedStorage.base.53", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.53" = type <{ %union.anon.52, i8 }>
%union.anon.52 = type { %"struct.folly::json_patch::patch_application_error" }
%"struct.folly::json_patch::patch_application_error" = type { i8, i64 }
%"class.folly::Expected.63" = type { %"struct.folly::expected_detail::ExpectedStorage.base.68", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.68" = type <{ %union.anon.65, i8 }>
%union.anon.65 = type { %"struct.folly::dynamic::json_pointer_resolved_value.66" }
%"struct.folly::dynamic::json_pointer_resolved_value.66" = type { ptr, ptr, %"class.folly::Range", i64 }
%"class.folly::Range" = type { ptr, ptr }
%"class.folly::Expected.55" = type { %"struct.folly::expected_detail::ExpectedStorage.base.58", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.58" = type <{ %union.anon.57, i8 }>
%union.anon.57 = type { %"struct.folly::dynamic::json_pointer_resolved_value" }
%"struct.folly::dynamic::json_pointer_resolved_value" = type { ptr, ptr, %"class.folly::Range", i64 }
%class.anon.80 = type { ptr }
%"struct.std::pair.91" = type <{ %"class.folly::f14::detail::F14ItemIter", i8, [7 x i8] }>
%"class.folly::f14::detail::F14ItemIter" = type { ptr, i64 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.94" = type { i8 }
%"struct.folly::dynamic::json_pointer_resolution_error" = type { i8, i64, ptr }
%"class.folly::BadExpectedAccess.72" = type { %"class.folly::BadExpectedAccess", %"struct.folly::dynamic::json_pointer_resolution_error" }
%"struct.std::vector<folly::dynamic>::_Temporary_value" = type { ptr, %"union.std::vector<folly::dynamic>::_Temporary_value::_Storage" }
%"union.std::vector<folly::dynamic>::_Temporary_value::_Storage" = type { %"struct.folly::dynamic" }
%"class.folly::detail::ScopeGuardImpl" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.100 }
%"class.folly::detail::ScopeGuardImplBase" = type { i8 }
%class.anon.100 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.std::array.101" = type { [256 x i8] }
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

$_ZN5folly13to_ascii_sizeILm10EEEmm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_NS_8DtoaModeEjNS_9DtoaFlagsE = comdat any

$_ZN5folly11toAppendFitIJbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_ = comdat any

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

$_ZN5folly8OptionalINS_12json_pointerEE31StorageNonTriviallyDestructibleD2Ev = comdat any

$_ZN5folly10json_patch15patch_operationC2ERKS1_ = comdat any

$_ZN5folly8OptionalINS_12json_pointerEEC2ERKS2_ = comdat any

$_ZN5folly8OptionalINS_12json_pointerEED2Ev = comdat any

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
@_ZTIN5folly9TypeErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly9TypeErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8, !guid !14
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly9TypeErrorE = linkonce_odr constant [19 x i8] c"N5folly9TypeErrorE\00", comdat, align 1, !guid !15
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly9TypeErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly9TypeErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly9TypeErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8, !guid !16
@.str = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1, !guid !17
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1, !guid !18
@.str.2 = private unnamed_addr constant [3 x i8] c"op\00", align 1, !guid !19
@.str.3 = private unnamed_addr constant [23 x i8] c"int/double/bool/string\00", align 1, !guid !20
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !21
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.32", align 2
@.str.5 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1, !guid !22
@.str.6 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1, !guid !23
@_ZTIN5folly17BadExpectedAccessIvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessIvEE, ptr @_ZTISt9exception }, comdat, align 8, !guid !24
@_ZTSN5folly17BadExpectedAccessIvEE = linkonce_odr constant [31 x i8] c"N5folly17BadExpectedAccessIvEE\00", comdat, align 1, !guid !25
@_ZTISt9exception = external constant ptr
@_ZTVN5folly17BadExpectedAccessIvEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessIvEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessIvED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8, !guid !26
@.str.7 = private unnamed_addr constant [20 x i8] c"bad expected access\00", align 1, !guid !27
@.str.8 = private unnamed_addr constant [5 x i8] c"from\00", align 1, !guid !28
@.str.9 = private unnamed_addr constant [5 x i8] c"path\00", align 1, !guid !29
@.str.10 = private unnamed_addr constant [6 x i8] c"value\00", align 1, !guid !30
@_ZTIN5folly22OptionalEmptyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly22OptionalEmptyExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8, !guid !31
@_ZTSN5folly22OptionalEmptyExceptionE = linkonce_odr constant [33 x i8] c"N5folly22OptionalEmptyExceptionE\00", comdat, align 1, !guid !32
@_ZTVN5folly22OptionalEmptyExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly22OptionalEmptyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly22OptionalEmptyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8, !guid !33
@.str.16 = private unnamed_addr constant [35 x i8] c"Empty Optional cannot be unwrapped\00", align 1, !guid !34
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !35
@_ZTIN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE, ptr @_ZTIN5folly17BadExpectedAccessIvEE }, comdat, align 8, !guid !36
@_ZTSN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = linkonce_odr constant [78 x i8] c"N5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE\00", comdat, align 1, !guid !37
@_ZTVN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessINS_7dynamic29json_pointer_resolution_errorIS1_EEED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8, !guid !38
@_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE = external local_unnamed_addr constant ptr, align 8
@_ZN5folly13variadic_noopE = linkonce_odr constant %"struct.folly::variadic_noop_fn" zeroinitializer, comdat, align 1, !guid !39
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array.85" zeroinitializer, i8 -1 }, comdat, align 16, !guid !40
@.str.24 = private unnamed_addr constant [9 x i8] c"clearTag\00", align 1, !guid !41
@_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.25, ptr @.str.26, i32 724, ptr @.str.24, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8, !guid !42
@.str.25 = private unnamed_addr constant [27 x i8] c"(tags_[index] & 0x80) != 0\00", align 1, !guid !43
@.str.26 = private unnamed_addr constant [84 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/container/detail/F14Table.h\00", align 1, !guid !44
@_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = linkonce_odr constant %"struct.folly::c_array.88" { [2 x i8] c"\01\00" }, comdat, align 1, !guid !45
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !46
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1, !guid !47
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8, !guid !48
@.str.30 = private unnamed_addr constant [11 x i8] c"rehashImpl\00", align 1, !guid !49
@_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.31, ptr @.str.26, i32 2380, ptr @.str.30, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8, !guid !50
@.str.31 = private unnamed_addr constant [33 x i8] c"hp.second == srcChunk->tag(srcI)\00", align 1, !guid !51
@.str.32 = private unnamed_addr constant [7 x i8] c"setTag\00", align 1, !guid !52
@_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.33, ptr @.str.26, i32 719, ptr @.str.32, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8, !guid !53
@.str.33 = private unnamed_addr constant [18 x i8] c"tags_[index] == 0\00", align 1, !guid !54

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly10json_patch9try_parseERKNS_7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !150 {
bb.a:
  %2 = alloca %"class.folly::json_patch", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.folly::json_patch::patch_operation", align 8 ; 15 uses
  %5 = alloca %"class.folly::Expected.17", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.folly::Expected.17", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load i32, ptr %1, align 8, !tbaa !57
  %.not.i.i.i = icmp eq i32 %i.a, 1
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !152
  %.sroa.4306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4306.0..sroa_idx, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.b, align 8, !tbaa !154
  br label %.critedge63

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
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
  %i.ab = load i32, ptr %.sroa.0298.0345, align 8, !tbaa !57
  %.not.i.i.i68 = icmp eq i32 %i.ab, 5
  br i1 %.not.i.i.i68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %0, align 8, !tbaa !152
  store ptr %.sroa.0298.0345, ptr %.sroa.4270.0..sroa_idx, align 8, !tbaa !60
  store i8 2, ptr %i.n, align 8, !tbaa !154
  br label %.critedge63

bb.f:                                             ; preds = %bb.d
  %i.ac = invoke noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0298.0345, ptr nonnull @.str.2, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.2, i64 2))
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 2, ptr %0, align 8, !tbaa !152
  store ptr %.sroa.0298.0345, ptr %.sroa.4270.0..sroa_idx, align 8, !tbaa !60
  store i8 2, ptr %i.n, align 8, !tbaa !154
  br label %.critedge63

bb.i:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !57
  %.not.i.i.i79 = icmp eq i32 %i.ad, 6
  br i1 %.not.i.i.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 4, ptr %0, align 8, !tbaa !152
  store ptr %.sroa.0298.0345, ptr %.sroa.4270.0..sroa_idx, align 8, !tbaa !60
  store i8 2, ptr %i.n, align 8, !tbaa !154
  br label %.critedge63

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE:bb.a
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #22

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN5folly7dynamicESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !307 {
bb.a:
  %3 = alloca %"struct.std::vector<folly::dynamic>::_Temporary_value", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.k, ptr %i.e, align 8, !tbaa !118
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8, !tbaa !310
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i8 0, ptr %i.m, align 8, !tbaa !84
  call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !118  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -40
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o) #28
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !118  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.q, ptr %i.e, align 8, !tbaa !118
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
  %i.y = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.w) #28 ; 0 uses
  %i.z = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !llvm.loop !306

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %i.ab = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m) #28 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.loopexit, %bb.e
  %i.ad = load ptr, ptr %0, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.d
  ret ptr %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !312 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #31
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #28
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #28
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !311

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5folly7dynamicEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i29) #28
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i29) #28
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !311

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #29
  br label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !124
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
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #29
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #30
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !316 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !131   ; 3 uses
  br i1 %.not, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i80 = phi i64 [ %i.j, %bb.b ], [ %i.an, %bb.f ]
  %.025.i79 = phi i64 [ %2, %bb.b ], [ %i.ao, %bb.f ] ; 2 uses
  %i.l = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i79, i64 range(i64 0, 256) %i.i)
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.o, i32 0, i32 3, i32 1)
  %i.p = load <16 x i8>, ptr %i.m, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 16383                      ; 2 uses
  %.not6977 = icmp eq i16 %i.s, 0
  %i.t = extractelement <16 x i8> %i.p, i64 15
  br i1 %.not6977, label %.critedge.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.u = zext nneg i16 %i.s to i32
  %i.v = icmp ne ptr %i.m, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.v)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.042.078 = phi i32 [ %i.u, %.lr.ph ], [ %i.y, %.critedge.i.backedge ] ; 3 uses
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.078, i1 true)
  %i.x = add nuw nsw i32 %.sroa.042.078, 16383
  %i.y = and i32 %i.x, %.sroa.042.078             ; 2 uses
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !123 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !57
  %i.ad = icmp eq i32 %i.ac, 6
  br i1 %i.ad, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %.critedge.i.backedge, !prof !132

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.ae = load ptr, ptr %4, align 8, !tbaa !82
  %i.af = load i64, ptr %i.k, align 8, !tbaa !83  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !83
  %.not.i.i.i.i = icmp eq i64 %i.af, %i.aj
  br i1 %.not.i.i.i.i, label %bb.e, label %.critedge.i.backedge, !prof !133

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.ak = icmp samesign eq i64 %i.af, 0
  br i1 %i.ak, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, label %.split, !llvm.loop !313

.split:                                           ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ah, i64 %i.af)
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, label %.critedge.i.backedge, !prof !134

.critedge.i.backedge:                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %.split
  %.not69 = icmp eq i32 %i.y, 0
  br i1 %.not69, label %.critedge.i._crit_edge, label %bb.d, !llvm.loop !313

.critedge.i._crit_edge:                           ; preds = %.critedge.i.backedge, %bb.c
  %i.am = icmp eq i8 %i.t, 0
  br i1 %i.am, label %.thread67, label %bb.f, !prof !132

bb.f:                                             ; preds = %.critedge.i._crit_edge
  %i.an = add i64 %.023.i80, -1                   ; 2 uses
  %i.ao = add i64 %i.e, %.025.i79
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %.thread67, label %bb.c, !llvm.loop !314

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread: ; preds = %bb.e, %.split
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.z
  br label %bb.n

.thread67:                                        ; preds = %.critedge.i._crit_edge, %bb.f, %bb.a
  %.pre-phi90 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.f ], [ %i.i, %.critedge.i._crit_edge ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !84
  %i.as = and i8 %i.ar, 15
  %i.at = zext nneg i8 %i.as to i64               ; 2 uses
  %i.au = shl i64 %i.at, %.pre-phi90              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.au
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.av = shl nuw i64 1, %.pre-phi90
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.av, i64 noundef %i.at, i64 noundef %i.au)
  %.pre86 = load ptr, ptr %1, align 8, !tbaa !131
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !126
  %.pre88 = and i64 %.pre87, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi90, %.thread67 ], [ %.pre88, %bb.g ] ; 2 uses
  %i.aw = phi ptr [ %.pre, %.thread67 ], [ %.pre86, %bb.g ] ; 3 uses
  %i.ax = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = load <16 x i8>, ptr %i.ay, align 16, !tbaa !84
  %i.ba = icmp slt <16 x i8> %i.az, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = and i16 %i.bb, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bc, 16383
  br i1 %.not70, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bd = shl i64 %3, 1
  %i.be = or disjoint i64 %i.bd, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bf = phi i64 [ %i.ax, %bb.h ], [ %i.bl, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 15 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !140 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bi, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = add i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !140
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bk = add i64 %i.be, %.030                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bk, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bm = getelementptr inbounds nuw [128 x i8], ptr %i.aw, i64 %i.bl ; 3 uses
  %i.bn = load <16 x i8>, ptr %i.bm, align 16     ; 2 uses
  %i.bo = icmp slt <16 x i8> %i.bn, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16
  %i.bq = and i16 %i.bp, 16383                    ; 2 uses
  %.not71 = icmp eq i16 %i.bq, 16383
  br i1 %.not71, label %bb.i, label %bb.k, !llvm.loop !315

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.br = extractelement <16 x i8> %i.bn, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !139
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.bc, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ]
  %.1 = phi ptr [ %i.ay, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bm, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !84
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.27) #33
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !84
  %i.ca = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv ; 2 uses
  %i.cc = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cc)
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cb, i64 %i.bv, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink108 = phi ptr [ %i.ap, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.cb, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa106.sink = phi i64 [ %i.z, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.bv, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink108, ptr %0, align 8, !tbaa !121
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa106.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !102
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cd, align 8, !tbaa !319
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !321 {
  invoke void @_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvOT_PPSt4pairIKS3_S3_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #28 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %13, !inline_history !320

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
  tail call void @__clang_call_terminate(ptr %18) #30
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %8, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %19 = and i64 %2, 255                           ; 2 uses
  %20 = icmp samesign ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  %21 = lshr i64 %19, 1
  %22 = ptrtoint ptr %1 to i64
  %23 = or i64 %21, %22                           ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %25 = load i64, ptr %24, align 8, !tbaa !135
  %26 = icmp ult i64 %25, %23
  br i1 %26, label %27, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

27:                                               ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %23, ptr %24, align 8, !tbaa !102
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit, %27
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %29 = load i64, ptr %28, align 8, !tbaa !126    ; 2 uses
  %30 = and i64 %29, -256
  %31 = add i64 %30, 256
  %32 = and i64 %29, 255
  %33 = or disjoint i64 %31, %32
  store i64 %33, ptr %28, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 !guid !322 {
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !126
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !332 {
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
  %7 = alloca %"struct.std::array.101", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !102
  store i64 %2, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.k = load ptr, ptr %0, align 8, !tbaa !131    ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i71 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i71, ptr %i.g, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i71) #34 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !115
  store i8 0, ptr %i.i, align 1, !tbaa !105
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
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !323

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod190 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !324

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !139
  store ptr %i.v, ptr %0, align 8, !tbaa !131
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !126
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store i8 0, ptr %i.j, align 1, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i8 0, ptr %6, align 8, !tbaa !144, !alias.scope !334
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !335
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !336
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.5104.0..sroa_idx, align 8, !tbaa !337
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.6105.0..sroa_idx, align 8, !tbaa !336
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !338
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.8106.0..sroa_idx, align 8, !tbaa !336
  %.sroa.9107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9107.0..sroa_idx, align 8, !tbaa !339
  %.sroa.10108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10108.0..sroa_idx, align 8, !tbaa !336
  %.sroa.11109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11109.0..sroa_idx, align 8, !tbaa !335
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !336
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !336
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.054150 = phi i64 [ 0, %bb.c ], [ %.155, %bb.h ] ; 4 uses
  %.056149 = phi i64 [ 0, %bb.c ], [ %i.bl, %bb.h ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.056149
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !84  ; 2 uses
  %.not128 = icmp eq i8 %i.bd, 0
  br i1 %.not128, label %bb.h, label %bb.e, !prof !99

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.054150 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !84
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.27) #33
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !84
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.054150
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.056149 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !123
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !123
  store ptr null, ptr %i.bi, align 8, !tbaa !123
  %i.bk = add nuw i64 %.054150, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.155 = phi i64 [ %i.bk, %bb.g ], [ %.054150, %bb.d ] ; 3 uses
  %i.bl = add i64 %.056149, 1
  %i.bm = icmp ult i64 %.155, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !327

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %.155, -1                       ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bn, 255                      ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = lshr i64 %i.bq, 1
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = or i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !102
  br label %bb.ac

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit.thread

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit.thread: ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph148.preheader

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !99

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #32
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit80

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !142
  %.pre157 = load i64, ptr %i.b, align 8, !tbaa !102
  %.pre158 = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 %4, i1 false)
  %.not58144 = icmp eq i64 %.pre158, 0
  br i1 %.not58144, label %._crit_edge, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit.thread, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0124170 = phi ptr [ %7, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit.thread ], [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ] ; 5 uses
  %i.bz = phi ptr [ %i.k, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit.thread ], [ %.pre, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ]
  %i.ca = phi i64 [ %2, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit.thread ], [ %.pre157, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ]
  %i.cb = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit.thread ], [ %.pre158, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ]
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.bz, i64 %i.ca
  br label %.lr.ph148

.loopexit:                                        ; preds = %bb.x, %.lr.ph148
  %.1.lcssa = phi i64 [ %.042146, %.lr.ph148 ], [ %i.cq, %bb.x ] ; 2 uses
  %.not58 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph148, !llvm.loop !328

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %.loopexit
  %.042146 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cb, %.lr.ph148.preheader ] ; 2 uses
  %.pn60145 = phi ptr [ %.043147, %.loopexit ], [ %i.cc, %.lr.ph148.preheader ] ; 2 uses
  %.043147 = getelementptr inbounds i8, ptr %.pn60145, i64 -128 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.043147, align 16, !tbaa !84
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 16383                    ; 2 uses
  %.sroa.087.0.extract.trunc = zext nneg i16 %i.cg to i32 ; 2 uses
  %cond = icmp eq i16 %i.cg, 0
  br i1 %cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph148
  %i.ch = icmp ne ptr %.043147, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds i8, ptr %.pn60145, i64 -112 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.084.0137 = phi i32 [ %.sroa.087.0.extract.trunc, %.lr.ph ], [ %.sroa.084.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0136 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.cj = and i32 %.sroa.084.0137, 1
  %.not.i73 = icmp eq i32 %i.cj, 0
  br i1 %.not.i73, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !99

bb.p:                                             ; preds = %bb.o
  %i.ck = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.084.0137, i1 true) ; 2 uses
  %i.cl = add i32 %i.ck, %.sroa.8.0136
  %i.cm = add nuw nsw i32 %i.ck, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.o, %bb.p
  %.sroa.8.1.in = phi i32 [ %i.cl, %bb.p ], [ %.sroa.8.0136, %bb.o ] ; 2 uses
  %.pn127 = phi i32 [ %i.cm, %bb.p ], [ 1, %bb.o ]
  %.sroa.084.1 = lshr i32 %.sroa.084.0137, %.pn127 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.cn = zext i32 %.sroa.8.1.in to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !123
  call void @llvm.prefetch.p0(ptr %i.cp, i32 0, i32 3, i32 1)
  %.not125 = icmp eq i32 %.sroa.084.1, 0
  br i1 %.not125, label %.lr.ph142, label %bb.o

.lr.ph142:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.x
  %.1141 = phi i64 [ %i.cq, %bb.x ], [ %.042146, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.087.0140 = phi i32 [ %.sroa.087.1, %bb.x ], [ %.sroa.087.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.889.0139 = phi i32 [ %.sroa.889.1, %bb.x ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.cq = add i64 %.1141, -1                      ; 2 uses
  %i.cr = and i32 %.sroa.087.0140, 1
  %.not.i75 = icmp eq i32 %i.cr, 0
  br i1 %.not.i75, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit77, !prof !99

bb.q:                                             ; preds = %.lr.ph142
  %i.cs = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.087.0140, i1 true) ; 2 uses
  %i.ct = add i32 %i.cs, %.sroa.889.0139
  %i.cu = add nuw nsw i32 %i.cs, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit77

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit77: ; preds = %.lr.ph142, %bb.q
  %.sroa.889.1.in = phi i32 [ %i.ct, %bb.q ], [ %.sroa.889.0139, %.lr.ph142 ] ; 2 uses
  %.pn = phi i32 [ %i.cu, %bb.q ], [ 1, %.lr.ph142 ]
  %.sroa.087.1 = lshr i32 %.sroa.087.0140, %.pn   ; 2 uses
  %.sroa.889.1 = add i32 %.sroa.889.1.in, 1
  %i.cv = zext i32 %.sroa.889.1.in to i64         ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cv ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !123
  %i.cy = invoke noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cx)
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit77
  %i.cz = lshr i64 %i.cy, 56
  %i.da = or i64 %i.cz, 128                       ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.043147, i64 %i.cv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !84
  %i.dd = zext i8 %i.dc to i64
  %i.de = icmp eq i64 %i.da, %i.dd
  br i1 %i.de, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.27) #33
  unreachable

bb.t:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit77
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %bb.ab, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit80

bb.u:                                             ; preds = %bb.r
  %i.dg = shl nuw nsw i64 %i.da, 1
  %i.dh = or disjoint i64 %i.dg, 1
  %i.di = load i64, ptr %i.ar, align 8, !tbaa !126
  %i.dj = and i64 %i.di, 255                      ; 2 uses
  %i.dk = load ptr, ptr %0, align 8, !tbaa !131   ; 2 uses
  %i.dl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cy, i64 range(i64 0, 256) %i.dj) ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0124170, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !84  ; 2 uses
  %i.do = icmp ult i8 %i.dn, 14
  br i1 %i.do, label %._crit_edge.i, label %.lr.ph.i79, !prof !340

.lr.ph.i79:                                       ; preds = %bb.u, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i
  %i.dp = phi i64 [ %i.dv, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.dl, %bb.u ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [128 x i8], ptr %i.dk, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 15 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ds, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i79
  %i.dt = add i8 %i.ds, 1
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !140
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.v, %.lr.ph.i79
  %i.du = add i64 %i.dh, %i.dp
  %i.dv = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.du, i64 range(i64 0, 256) %i.dj) ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0124170, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !84  ; 2 uses
  %i.dy = icmp ult i8 %i.dx, 14
  br i1 %i.dy, label %._crit_edge.i, label %.lr.ph.i79, !prof !341, !llvm.loop !329

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, %bb.u
  %.lcssa22.i = phi i64 [ %i.dl, %bb.u ], [ %i.dv, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i8 [ 0, %bb.u ], [ 16, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.dn, %bb.u ], [ %i.dx, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw [128 x i8], ptr %i.dk, i64 %.lcssa22.i ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0124170, i64 %.lcssa22.i
  %i.ea = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !84
  %i.eb = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.eb ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !84
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.27) #33
  unreachable

bb.x:                                             ; preds = %._crit_edge.i
  %i.ef = trunc nuw i64 %i.da to i8
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !84
  %i.eg = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !139
  %i.ei = add i8 %i.eh, %.0.lcssa.i
  store i8 %i.ei, ptr %i.eg, align 2, !tbaa !139
  %i.ej = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 16
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eb
  %i.el = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.el)
  %i.em = load ptr, ptr %i.cw, align 8, !tbaa !123
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !123
  store ptr null, ptr %i.cw, align 8, !tbaa !123
  %.not126 = icmp eq i32 %.sroa.087.1, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph142, !llvm.loop !330

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0124171 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0124170, %.loopexit ] ; 2 uses
  %i.en = load i64, ptr %i.ar, align 8, !tbaa !126
  %i.eo = and i64 %i.en, 255
  %i.ep = shl nuw i64 1, %i.eo
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.y
  %.0.in = phi i64 [ %i.ep, %._crit_edge ], [ %.0, %bb.y ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0124171, i64 %.0
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !84  ; 3 uses
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.y, label %bb.z, !llvm.loop !331

bb.z:                                             ; preds = %bb.y
  %i.et = load ptr, ptr %0, align 8, !tbaa !131
  %i.eu = getelementptr inbounds nuw [128 x i8], ptr %i.et, i64 %.0 ; 2 uses
  %i.ev = zext nneg i8 %i.er to i64
  %i.ew = add nsw i64 %i.ev, -1                   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = icmp ne ptr %i.eu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp ult i8 %i.er, 17
  call void @llvm.assume(i1 %i.fa)
  %i.fb = lshr i64 %i.ew, 1
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = or i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !102
  br i1 %.not, label %bb.aa, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %.0124171, i64 noundef %4) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ac

bb.ab:                                            ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %.0124170, i64 noundef %4) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit80

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit80: ; preds = %bb.ab, %bb.t, %bb.n
  %.pn64.pn.pn = phi { ptr, i32 } [ %i.by, %bb.n ], [ %i.df, %bb.t ], [ %i.df, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  resume { ptr, i32 } %.pn64.pn.pn

bb.ac:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !105
  %i.ff = load i64, ptr %i.d, align 8, !tbaa !102
  %.not.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !142 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fh = load i64, ptr %i.e, align 8, !tbaa !102
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fh) #28
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 !guid !342 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !101
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat !guid !343 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !101
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !344 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !144, !range !90, !noundef !91
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !346, !nonnull !91
  %i.e = load i8, ptr %i.d, align 1, !tbaa !105, !range !90, !noundef !91
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !347, !nonnull !91, !align !348
  %i.i = load i64, ptr %i.h, align 8, !tbaa !102
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !349, !nonnull !91, !align !348
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !142
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !350, !nonnull !91, !align !348
  %i.o = load i64, ptr %i.n, align 8, !tbaa !102
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !351  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352, !nonnull !91, !align !348
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !353, !nonnull !91, !align !348
  %i.w = load i64, ptr %i.v, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !349, !nonnull !91, !align !348
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !142
  store ptr %i.z, ptr %i.q, align 8, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !354, !nonnull !91, !align !348
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !102 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !126
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !126
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #28
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

declare noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #24 comdat align 2 !guid !355 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4)
  tail call void @__cxa_rethrow() #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvOT_PPSt4pairIKS3_S3_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !356 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !123
  %i.b = load i64, ptr %4, align 8, !tbaa !103
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !98
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !83   ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #31
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !99

.noexc6.i.i.i.i:                                  ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc11 unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13

.noexc11:                                         ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #32
          to label %.noexc12 unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13 ; 2 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.l, ptr %6, align 8, !tbaa !82
  store i64 %i.g, ptr %i.d, align 8, !tbaa !84
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc12, %bb.a
  %i.m = phi ptr [ %i.l, %.noexc12 ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !84
  store i8 %i.n, ptr %i.m, align 1, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.o, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !84
  store i32 6, ptr %i.a, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !98
  %i.s = load ptr, ptr %6, align 8, !tbaa !82     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !83   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.w, i1 false)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  store ptr %i.s, ptr %i.q, align 8, !tbaa !82
  %i.x = load i64, ptr %i.d, align 8, !tbaa !84
  store i64 %i.x, ptr %i.r, align 8, !tbaa !84
  %.pre.i.i.i = load i64, ptr %i.o, align 8, !tbaa !83
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.y = phi i64 [ %i.u, %bb.f ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.aa, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #29
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { cold noreturn nounwind }
attributes #34 = { allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !87}
!1 = distinct !{!1, !87}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{i64 -1066503271885974041}
!15 = !{i64 -1891207241669467870}
!16 = !{i64 -7815974002416126138}
!17 = !{i64 2521246141947386945}
!18 = !{i64 -2251573760719892439}
!19 = !{i64 -8383778664215364256}
!20 = !{i64 8102157038892323820}
!21 = !{i64 7559938437323382237}
!22 = !{i64 -8673292098388992012}
!23 = !{i64 2865574939610322808}
!24 = !{i64 -4282187761098474905}
!25 = !{i64 -2917095830430830840}
!26 = !{i64 -5175336591800099031}
!27 = !{i64 -8658386521396700771}
!28 = !{i64 -2704948830293351633}
!29 = !{i64 -6652784144348745184}
!30 = !{i64 1492021855581180027}
!31 = !{i64 6332816927396276751}
end_hunk_1
begin_hunk_2_@llvm.cttz.i16
!116 = !{!113, !80, i64 32}
!117 = !{!"_ZTSNSt12_Vector_baseIN5folly7dynamicESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!118 = !{!117, !59, i64 8}
!119 = !{!"any p2 pointer", !58, i64 0}
!120 = !{!"p2 _ZTSSt4pairIKN5folly7dynamicES1_E", !119, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"p1 _ZTSSt4pairIKN5folly7dynamicES1_E", !58, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!117, !59, i64 16}
!125 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !80, i64 0}
!126 = !{!125, !80, i64 0}
!127 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EEE", !58, i64 0}
!128 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPSt4pairIKNS_7dynamicES4_EEE", !80, i64 0}
!129 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES6_EEEEELb1EEE", !125, i64 0, !128, i64 8}
!130 = !{!"_ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEEE", !127, i64 0, !129, i64 8}
!131 = !{!130, !127, i64 0}
!132 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!133 = !{!"branch_weights", i32 2146410443, i32 1073205}
!134 = !{!"branch_weights", !"expected", i32 2145767549, i32 1716099}
!135 = !{!128, !80, i64 0}
!136 = !{!"_ZTSSt5arrayIhLm14EE", !10, i64 0}
!137 = !{!"_ZTSSt5arrayINSt15aligned_storageILm8ELm8EE4typeELm14EE", !10, i64 0}
!138 = !{!"_ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EEE", !136, i64 0, !10, i64 14, !10, i64 15, !137, i64 16}
!139 = !{!138, !10, i64 14}
!140 = !{!138, !10, i64 15}
!141 = !{!117, !59, i64 0}
!142 = !{!127, !127, i64 0}
!143 = !{!"_ZTSN5folly6detail18ScopeGuardImplBaseE", !69, i64 0}
!144 = !{!143, !69, i64 0}
!145 = !{!"p1 bool", !58, i64 0}
!146 = !{!"p1 long", !58, i64 0}
!147 = !{!"p2 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EEE", !119, i64 0}
!148 = !{!"p2 omnipotent char", !119, i64 0}
!149 = !{!"p1 _ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEEE", !58, i64 0}
!150 = !{i64 -6032443783109102952}
!151 = !{!"_ZTSN5folly10json_patch16parse_error_codeE", !10, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionINS_10json_patchENS2_11parse_errorEEE", !10, i64 0, !61, i64 24}
!154 = !{!153, !61, i64 24}
!155 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionINS_12json_pointerENS2_11parse_errorEEE", !10, i64 0, !61, i64 24}
!156 = !{!155, !61, i64 24}
!157 = !{i64 1080103601501470593}
!158 = !{i64 -4119778860891829949}
!159 = !{i64 2987108378049329961}
!160 = !{i64 -6758095060663314739}
!161 = !{i64 -1249690785945693651}
!162 = !{i64 -1663981680544270485}
!163 = !{i64 7455565729869256633}
!164 = distinct !{!164, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_"}
!165 = distinct !{!165, !164, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_: argument 0"}
!166 = distinct !{!166, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr12IsSomeStringIT_EE5valuesr3std17is_floating_pointIT0_EE5valueES8_E4typeES9_"}
!167 = distinct !{!167, !166, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr12IsSomeStringIT_EE5valuesr3std17is_floating_pointIT0_EE5valueES8_E4typeES9_: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJbETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_"}
!169 = distinct !{!169, !168, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJbETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_: argument 0"}
!170 = distinct !{!170, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_"}
!171 = distinct !{!171, !170, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_: argument 0"}
!172 = distinct !{!172, i1 true, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_"}
!173 = distinct !{!173, !172, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_: argument 0"}
!174 = distinct !{!174, i1 true, !"_ZN5folly6detail11parseToWrapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueESF_E4typeESC_SE_"}
!175 = distinct !{!175, !174, !"_ZN5folly6detail11parseToWrapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueESF_E4typeESC_SE_: argument 0"}
!176 = distinct !{!176, i1 true, !"_ZN5folly7parseToENS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!177 = distinct !{!177, !176, !"_ZN5folly7parseToENS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!178 = distinct !{!178, i1 true, !"_ZN5folly6detail10parseToStrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEESC_RT_"}
!179 = distinct !{!179, !178, !"_ZN5folly6detail10parseToStrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEESC_RT_: argument 0"}
!180 = distinct !{!180, i1 true, !"_ZNO5folly8ExpectedINS_4UnitENS_14ConversionCodeEE11thenOrThrowIZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESH_E4typeESG_EUlS1_E_ZNS5_ISB_EESJ_SG_EUlS2_E0_EEDTclclsr3stdE7declvalISH_EEclL_ZSt7declvalIOS1_EDTcl9__declvalISH_ELi0EEEvEEEEOSH_OT0_"}
!181 = distinct !{!181, !180, !"_ZNO5folly8ExpectedINS_4UnitENS_14ConversionCodeEE11thenOrThrowIZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESH_E4typeESG_EUlS1_E_ZNS5_ISB_EESJ_SG_EUlS2_E0_EEDTclclsr3stdE7declvalISH_EEclL_ZSt7declvalIOS1_EDTcl9__declvalISH_ELi0EEEvEEEEOSH_OT0_: argument 0"}
!182 = distinct !{!182, i1 true, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper12thenOrThrow_INS0_15ExpectedStorageINS_4UnitENS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESL_E4typeESK_EUlS5_E_ZNS9_ISF_EESN_SK_EUlS6_E0_SF_vLb0ETnNSG_IXooT4_scbsr3std7is_voidIT3_EE5valueEiE4typeELi0EEET2_OSL_OT0_OT1_"}
!183 = distinct !{!183, !182, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper12thenOrThrow_INS0_15ExpectedStorageINS_4UnitENS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESL_E4typeESK_EUlS5_E_ZNS9_ISF_EESN_SK_EUlS6_E0_SF_vLb0ETnNSG_IXooT4_scbsr3std7is_voidIT3_EE5valueEiE4typeELi0EEET2_OSL_OT0_OT1_: argument 0"}
!184 = distinct !{!184, i1 true, !"_ZZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_ENKUlNS_4UnitEE_clB5cxx11ESF_"}
!185 = distinct !{!185, !184, !"_ZZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_ENKUlNS_4UnitEE_clB5cxx11ESF_: argument 0"}
!186 = !{i64 -4983414128229704642}
!187 = !{!165}
!188 = !{!"double", !10, i64 0}
!189 = !{!188, !188, i64 0}
!190 = !{!167}
!191 = !{!169}
!192 = !{!171}
!193 = !{!173}
!194 = !{!173, !171}
!195 = !{!179, !177, !175, !173, !171}
!196 = !{!185, !183, !181, !173, !171}
!197 = !{i64 -7938282558089970744}
!198 = !{i64 -416204639662039794}
!199 = !{i64 -5778079267081074285}
!200 = !{i64 -3904468634405276655}
!201 = distinct !{!201, !87}
!202 = !{i64 3914396316274682716}
!203 = !{!"short", !10, i64 0}
!204 = !{!203, !203, i64 0}
!205 = !{i64 -2178281952881612504}
!206 = !{!"_ZTSN17double_conversion23DoubleToStringConverterE", !11, i64 0, !78, i64 8, !78, i64 16, !10, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!207 = !{!206, !11, i64 0}
!208 = !{!206, !78, i64 8}
!209 = !{!206, !78, i64 16}
!210 = !{!206, !10, i64 24}
!211 = !{!11, !11, i64 0}
!212 = !{!206, !11, i64 44}
!213 = !{!"_ZTSN17double_conversion6VectorIcEE", !78, i64 0, !11, i64 8}
!214 = !{!213, !78, i64 0}
!215 = !{!213, !11, i64 8}
!216 = !{!"_ZTSN17double_conversion13StringBuilderE", !213, i64 0, !11, i64 16}
!217 = !{!216, !11, i64 16}
!218 = !{i64 8903501071888030956}
!219 = !{i64 -6442604480530551707}
!220 = !{i64 -6164288029599365900}
!221 = !{i64 5729080837980902204}
!222 = !{i64 4826048948769412649}
!223 = !{i64 3622299452594333955}
!224 = distinct !{!224, !87}
!225 = !{i64 2282340871283944712}
!226 = !{i64 7437254063685089497}
!227 = !{i64 468057222158764614}
!228 = distinct !{!228, !87}
!229 = distinct !{!229, !87}
!230 = distinct !{!230, !87}
!231 = !{i64 -2170072498588590635}
!232 = !{i64 9183524793096391889}
!233 = !{i64 3280872627081213428}
!234 = distinct !{!234, !87}
!235 = !{i64 -2273644720160109364}
!236 = !{i64 3715053601334325341}
!237 = !{i64 2882730291191037451}
!238 = !{i64 -6480278681542320677}
!239 = !{i64 -2988093741527471970}
!240 = distinct !{!240, !87}
!241 = !{i64 8162381853203161312}
!242 = !{i64 -5549452627114013751}
!243 = !{i64 3240797658583818553}
!244 = !{i64 714032053874917103}
!245 = !{i64 6241364324966787985}
!246 = !{i64 -5627063305840888873}
!247 = !{i64 -6277691486988366074}
!248 = distinct !{!248, !87}
!249 = !{i64 -3670035064663124777}
!250 = !{i64 -458648568862748213}
!251 = distinct !{!251, i1 true, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE"}
!252 = distinct !{!252, !251, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE: argument 0"}
!253 = distinct !{!253, i1 true, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE"}
!254 = distinct !{!254, !253, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE: argument 0"}
!255 = distinct !{!255, i1 true, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE"}
!256 = distinct !{!256, !255, !"_ZNR5folly7dynamic11try_get_ptrERKNS_12json_pointerE: argument 0"}
!257 = !{i64 8357168224076520556}
!258 = !{!252}
!259 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageINS_7dynamic27json_pointer_resolved_valueIKS2_EENS2_29json_pointer_resolution_errorIS4_EELNS0_11StorageTypeE1EEE", !10, i64 0, !61, i64 40}
!260 = !{!259, !61, i64 40}
!261 = !{!"_ZTSN5folly7dynamic27json_pointer_resolved_valueIKS0_EE", !59, i64 0, !59, i64 8, !108, i64 16, !80, i64 32}
!262 = !{!261, !80, i64 32}
!263 = !{!261, !59, i64 8}
!264 = !{!"_ZTSN5folly7dynamic29json_pointer_resolution_errorIKS0_EE", !111, i64 0, !80, i64 8, !59, i64 16}
!265 = !{!264, !111, i64 0}
!266 = !{!264, !80, i64 8}
!267 = !{!264, !59, i64 16}
!268 = !{!"_ZTSN5folly10json_patch28patch_application_error_codeE", !10, i64 0}
!269 = !{!268, !268, i64 0}
!270 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageINS_4UnitENS_10json_patch23patch_application_errorELNS0_11StorageTypeE1EEE", !10, i64 0, !61, i64 16}
!271 = !{!270, !61, i64 16}
!272 = !{!254}
!273 = !{!256}
!274 = distinct !{!274, !87}
!275 = !{i64 684854064555484333}
!276 = !{!"p1 _ZTSN5folly16variadic_noop_fnE", !58, i64 0}
!277 = !{!276, !276, i64 0}
!278 = distinct !{!278, i1 true, !"_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11try_emplaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXgssr5folly6detail30EligibleForHeterogeneousInsertIS4_S6_S7_T_EE5valueESt4pairINS1_21NodeContainerIteratorIPSL_IKS4_S4_EEEbEE4typeEOSK_DpOT0_"}
!279 = distinct !{!279, !278, !"_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE11try_emplaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXgssr5folly6detail30EligibleForHeterogeneousInsertIS4_S6_S7_T_EE5valueESt4pairINS1_21NodeContainerIteratorIPSL_IKS4_S4_EEEbEE4typeEOSK_DpOT0_: argument 0"}
!280 = distinct !{!280, i1 true, !"_ZSt16forward_as_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EESB_"}
!281 = distinct !{!281, !280, !"_ZSt16forward_as_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EESB_: argument 0"}
!282 = distinct !{!282, i1 true, !"_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15tryEmplaceValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbERKT_DpOT0_"}
!283 = distinct !{!283, !282, !"_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15tryEmplaceValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbERKT_DpOT0_: argument 0"}
!284 = !{i64 -3786653668088183771}
!285 = !{!113, !59, i64 8}
!286 = !{!"branch_weights", i32 778, i32 2145922625, i32 1560245}
!287 = !{!"_ZTSN5folly7dynamic29json_pointer_resolution_errorIS0_EE", !111, i64 0, !80, i64 8, !59, i64 16}
!288 = !{!287, !111, i64 0}
!289 = !{!287, !59, i64 16}
!290 = !{!279}
!291 = !{!281}
!292 = !{!283, !279}
!293 = !{i64 5825130138649123868}
!294 = !{i64 -1312936944866022579}
!295 = !{i64 0, i64 1, !112, i64 8, i64 8, !102, i64 16, i64 8, !60}
!296 = !{i64 8925116459525272282}
!297 = distinct !{!297, !87}
!298 = distinct !{!298, !87}
!299 = !{i64 -6240933125348328082}
!300 = !{!108, !78, i64 8}
!301 = !{!108, !78, i64 0}
!302 = distinct !{!302, !87}
!303 = distinct !{!303, !87}
!304 = !{i64 8643597597081610193}
!305 = !{i64 2625670220044419635}
!306 = distinct !{!306, !87}
!307 = !{i64 384172201254161334}
!308 = !{!"p1 _ZTSSt6vectorIN5folly7dynamicESaIS1_EE", !58, i64 0}
!309 = !{!"_ZTSNSt6vectorIN5folly7dynamicESaIS1_EE16_Temporary_valueE", !308, i64 0, !10, i64 8}
!310 = !{!309, !308, i64 0}
!311 = distinct !{!311, !87}
!312 = !{i64 9012789666989282545}
!313 = distinct !{!313, !87}
!314 = distinct !{!314, !87}
!315 = distinct !{!315, !87}
!316 = !{i64 4647296612542484827}
!317 = !{!"_ZTSN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEEE", !120, i64 0, !80, i64 8}
!318 = !{!"_ZTSSt4pairIN5folly3f146detail11F14ItemIterIPNS2_8F14ChunkIPS_IKNS0_7dynamicES5_EEEEEbE", !317, i64 0, !69, i64 16}
!319 = !{!318, !69, i64 16}
!320 = distinct !{null}
!321 = !{i64 -8010671484618004153}
!322 = !{i64 7919460177564634155}
!323 = distinct !{!323, !87}
!324 = distinct !{!324, !333}
!325 = distinct !{!325, i1 true, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSE_"}
!326 = distinct !{!326, !325, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSE_: argument 0"}
!327 = distinct !{!327, !87}
!328 = distinct !{!328, !87}
!329 = distinct !{!329, !87}
!330 = distinct !{!330, !87}
!331 = distinct !{!331, !87}
!332 = !{i64 2368535615233279028}
!333 = !{!"llvm.loop.unroll.disable"}
!334 = !{!326}
!335 = !{!145, !145, i64 0}
!336 = !{!146, !146, i64 0}
!337 = !{!147, !147, i64 0}
!338 = !{!148, !148, i64 0}
!339 = !{!149, !149, i64 0}
!340 = !{!"branch_weights", i32 1999, i32 1}
!341 = !{!"branch_weights", i32 1, i32 0}
!342 = !{i64 -700422733603197522}
!343 = !{i64 -8189862272789092952}
!344 = !{i64 4230584366393908811}
!345 = !{!"_ZTSZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_", !145, i64 0, !146, i64 8, !147, i64 16, !146, i64 24, !148, i64 32, !146, i64 40, !149, i64 48, !146, i64 56, !145, i64 64, !146, i64 72, !146, i64 80}
!346 = !{!345, !145, i64 0}
!347 = !{!345, !146, i64 8}
!348 = !{i64 8}
!349 = !{!345, !147, i64 16}
!350 = !{!345, !146, i64 24}
!351 = !{!345, !149, i64 48}
!352 = !{!345, !148, i64 32}
!353 = !{!345, !146, i64 40}
!354 = !{!345, !146, i64 56}
!355 = !{i64 2305144383934027810}
!356 = !{i64 -3086317383140094805}
end_hunk_2
