Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/profile_builder?download=true
inline.NumInlined: 1869
inline.NumDeleted: 882
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.absl::lts_20260526::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.std::pair.53" = type { %"class.std::tuple", %"class.std::tuple.55" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.55" = type { %"struct.std::_Tuple_impl.56" }
%"struct.std::_Tuple_impl.56" = type { %"struct.std::_Head_base.57" }
%"struct.std::_Head_base.57" = type { ptr }
%"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>, absl::lts_20260526::container_internal::StringHash, absl::lts_20260526::container_internal::StringEq, absl::lts_20260526::debugging_internal::ProfileBuilder::HashtablezBarrier<std::pair<const std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>>>::EmplaceDecomposable" = type { ptr }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.std::pair" = type <{ %"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>, absl::lts_20260526::container_internal::StringHash, absl::lts_20260526::container_internal::StringEq, absl::lts_20260526::debugging_internal::ProfileBuilder::HashtablezBarrier<std::pair<const std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>>>::iterator", i8, [7 x i8] }>
%"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>, absl::lts_20260526::container_internal::StringHash, absl::lts_20260526::container_internal::StringEq, absl::lts_20260526::debugging_internal::ProfileBuilder::HashtablezBarrier<std::pair<const std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>>>::iterator" = type { ptr, %union.anon }
%union.anon = type { ptr }
%"struct.absl::lts_20260526::container_internal::HashKey.96" = type { ptr, ptr }
%"struct.std::pair.32" = type <{ %"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<unsigned long, absl::lts_20260526::debugging_internal::LocationId>, absl::lts_20260526::hash_internal::Hash<unsigned long>, std::equal_to<unsigned long>, absl::lts_20260526::debugging_internal::ProfileBuilder::HashtablezBarrier<std::pair<const unsigned long, absl::lts_20260526::debugging_internal::LocationId>>>::iterator", i8, [7 x i8] }>
%"class.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<unsigned long, absl::lts_20260526::debugging_internal::LocationId>, absl::lts_20260526::hash_internal::Hash<unsigned long>, std::equal_to<unsigned long>, absl::lts_20260526::debugging_internal::ProfileBuilder::HashtablezBarrier<std::pair<const unsigned long, absl::lts_20260526::debugging_internal::LocationId>>>::iterator" = type { ptr, %union.anon.34 }
%union.anon.34 = type { ptr }
%"class.absl::lts_20260526::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20260526::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20260526::str_format_internal::FormatArgImpl::Data" = type { ptr }
%"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag" = type { i32, i32 }
%"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.31 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.31 = type { i64, [8 x i8] }
%"class.absl::lts_20260526::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField" = type { i32, %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint" }
%"class.absl::lts_20260526::strings_internal::StringifySink" = type { %"class.std::__cxx11::basic_string" }
%"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::LengthDelimited" = type { i32, %"class.std::basic_string_view" }
%"struct.std::pair.41" = type { %"class.absl::lts_20260526::container_internal::btree_iterator", i8, [7 x i8] }
%"class.absl::lts_20260526::container_internal::btree_iterator" = type <{ ptr, i32, [4 x i8] }>
%"struct.absl::lts_20260526::debugging_internal::ProfileBuilder::Mapping" = type { i64, i64, i64, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.absl::lts_20260526::container_internal::node_handle" = type { %"class.absl::lts_20260526::container_internal::node_handle_base" }
%"class.absl::lts_20260526::container_internal::node_handle_base" = type { %"class.std::optional", [6 x i8], [16 x i8] }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.126" }
%"struct.std::_Optional_payload.126" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { i8, i8 }
%"struct.absl::lts_20260526::container_internal::HashKey" = type { ptr, ptr }
%"class.absl::lts_20260526::FormatSink" = type { ptr }

$_ZN4absl12lts_2026052618container_internal19btree_set_containerINS1_5btreeINS1_15map_params_implImmJEEEEEE7emplaceIJRmS9_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERSA_IKmmEPSF_EEbEDpOT_ = comdat any

$_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingD2Ev = comdat any

$_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableclISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJRSP_EEST_IJOSB_EEEEESH_INSL_8iteratorEbERKT_DpOT0_ = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_ = comdat any

$_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmPKvPvm = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19transfer_n_slots_fnEPvSM_SM_m = comdat any

$_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvS7_m = comdat any

$_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEvPvmPNS1_6ctrl_tEmmb = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE = comdat any

$_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm = comdat any

$_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_largeImEESE_INSI_8iteratorEbERKT_ = comdat any

$_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashImEEmLb1EEEmPKvPvm = comdat any

$_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSO_PFvSO_hmmE = comdat any

$_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashImEEmLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_10FormatSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_ = comdat any

$_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSB_EE = comdat any

$_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE16clear_and_deleteEPS5_PSaISt4pairIKmmEE = comdat any

$_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE23rebalance_right_to_leftEhPS5_PSaISt4pairIKmmEE = comdat any

$_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE23rebalance_left_to_rightEhPS5_PSaISt4pairIKmmEE = comdat any

$_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE5splitEiPS5_PSaISt4pairIKmmEE = comdat any

$_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE = comdat any

$_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE18GetPolicyFunctionsEvE5value = comdat any

@.str = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/abseil-cpp/abseil-cpp/absl/profiling/internal/profile_builder.cc\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Unexpected nullptr\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"dt_strtab != nullptr\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dt_strsz != nullptr\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"dt_soname->d_un.d_val < dt_strsz->d_un.d_val\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Unexpected order\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZN4absl12lts_2026052618container_internal11kSooControlE = external constant [2 x i8], align 1
@_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE18GetPolicyFunctionsEvE5value = linkonce_odr dso_local constant %"struct.absl::lts_20260526::container_internal::PolicyFunctions" { i32 32, i32 40, i32 40, i16 8, i8 0, i8 0, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmPKvPvm, ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19transfer_n_slots_fnEPvSM_SM_m, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvS7_m, ptr @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE }, comdat, align 8
@_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE = linkonce_odr dso_local local_unnamed_addr constant [5 x i64] [i64 2611923443488327891, i64 1376283091369227076, i64 -6626703657320631856, i64 589684135938649225, i64 4983270260364809079], comdat, align 64
@_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE18GetPolicyFunctionsEvE5value = linkonce_odr dso_local constant %"struct.absl::lts_20260526::container_internal::PolicyFunctions" { i32 8, i32 16, i32 16, i16 8, i8 1, i8 0, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashImEEmLb1EEEmPKvPvm, ptr @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvS7_m, ptr @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSO_PFvSO_hmmE }, comdat, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"%v%v\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%v\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%v%v%v\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder12InternStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.53", align 8     ; 5 uses
  %4 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>, absl::lts_20260526::container_internal::StringHash, absl::lts_20260526::container_internal::StringEq, absl::lts_20260526::debugging_internal::ProfileBuilder::HashtablezBarrier<std::pair<const std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>>>::EmplaceDecomposable", align 8 ; 4 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %6 = alloca %"struct.std::pair", align 8        ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = load i64, ptr %0, align 8
  %i.e = lshr i64 %i.d, 17
  store i64 %i.e, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !11
  store ptr %0, ptr %4, align 8, !tbaa !14, !noalias !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !17
  store ptr %5, ptr %3, align 8, !tbaa !22, !alias.scope !24, !noalias !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !30, !alias.scope !24, !noalias !27
  call void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableclISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJRSP_EEST_IJOSB_EEEEESH_INSL_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !11
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder14InternLocationEPKv(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.96", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.32", align 8     ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !38
  %i.d = load i64, ptr %i.b, align 8              ; 4 uses
  %i.e = lshr i64 %i.d, 17
  %i.f = add nuw nsw i64 %i.e, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.g = and i64 %i.d, 254
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = or disjoint i64 %i.d, 131072
  store i64 %i.i, ptr %i.b, align 8, !noalias !66
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38, !noalias !66
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !66
  store ptr %i.b, ptr %2, align 8, !tbaa !67, !noalias !66
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.n, align 8, !tbaa !69, !noalias !66
  %i.o = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashImEEmLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !66
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !31, !noalias !66 ; 2 uses
  %4 = load i64, ptr %i.b, align 8, !noalias !66
  %5 = and i64 %4, 255
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %5 ; 2 uses
  %6 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -3
  %7 = sub i64 15, %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %8 = select i1 %6, i64 0, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %8
  %10 = icmp ule ptr %9, %i.b
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %12 = icmp ule ptr %11, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %13 = select i1 %10, i1 true, i1 %12
  call void @llvm.assume(i1 %13)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !31, !noalias !66
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.o
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink16.i.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !66
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_largeImEESE_INSI_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.32") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !71, !range !75, !alias.scope !76
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.f, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.r = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %bb.f ]
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7emplaceIJmS5_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSL_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !76 ; 2 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !38, !noalias !77
  store i64 %i.t, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store i64 %i.f, ptr %i.u, align 8, !tbaa !81
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7emplaceIJmS5_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSL_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7emplaceIJmS5_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSL_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i64 %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder9AddSampleElNS0_4SpanIKPKvEENS3_IKSt4pairINS1_8StringIdElEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1, ptr nofree readonly captures(address) %2, i64 %3, ptr nofree readonly captures(address) %4, i64 %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [3 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %7 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %8 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint", align 8 ; 4 uses
  %9 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %10 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %11 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %12 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %13 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %14 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %15 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.96", align 8 ; 5 uses
  %16 = alloca %"struct.std::pair.32", align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %17 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %18 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %22 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %23 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %24 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 6 uses
  %25 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %28 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %29 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %30 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %31 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %32 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %33 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %34 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::LengthDelimited", align 8 ; 6 uses
  %35 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.b = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 9 uses
  store ptr %i.b, ptr %19, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !85
  store i8 0, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store i32 2, ptr %21, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %1, ptr %i.d, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.e = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  store ptr %i.f, ptr %22, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store i32 2, ptr %18, align 4, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %18, ptr %17, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.i, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.k, align 8, !tbaa !93
  %i.l = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %22, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %17, i64 2)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.m = load ptr, ptr %22, align 8, !tbaa !95
  %i.n = load i64, ptr %i.g, align 8, !tbaa !85
  store i64 %i.n, ptr %20, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.m, ptr %i.o, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(48) %20)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %22, align 8, !tbaa !95    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.f
  br i1 %i.q, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.f, align 8, !tbaa !31
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %.idx = shl nuw nsw i64 %3, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not94 = icmp eq i64 %3, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %36 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %25, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit38, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit
  %.idx101 = shl nuw nsw i64 %5, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %.idx101
  %.not2396 = icmp eq i64 %5, 0
  br i1 %.not2396, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %35, i64 16
  br label %bb.u

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %22, align 8, !tbaa !95   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.f
  br i1 %i.bq, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.d
  %i.br = load i64, ptr %i.f, align 8, !tbaa !31
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit32

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit32: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.af

bb.e:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit38
  %.01795 = phi ptr [ %2, %.lr.ph ], [ %i.cv, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit38 ] ; 2 uses
  %i.bt = load ptr, ptr %.01795, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  store i32 1, ptr %24, align 8, !tbaa !86
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, -1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.bv, ptr %i.a, align 8, !tbaa !38
  %i.bw = load i64, ptr %i.u, align 8             ; 4 uses
  %i.bx = lshr i64 %i.bw, 17
  %i.by = add nuw nsw i64 %i.bx, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.bz = and i64 %i.bw, 254
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bw, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cb = or disjoint i64 %i.bw, 131072
  store i64 %i.cb, ptr %i.u, align 8, !noalias !123
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.cc = load i64, ptr %i.v, align 8, !tbaa !38, !noalias !123
  %i.cd = icmp eq i64 %i.cc, %i.bv
  br i1 %i.cd, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21, !noalias !123
  store ptr %i.u, ptr %15, align 8, !tbaa !67, !noalias !123
  store ptr %i.a, ptr %36, align 8, !tbaa !69, !noalias !123
  %i.ce = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %15, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashImEEmLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !123
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !31, !noalias !123, !nonnull !124, !noundef !124 ; 2 uses
  %37 = load i64, ptr %i.u, align 8, !noalias !123
  %38 = and i64 %37, 255
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %38 ; 2 uses
  %39 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -3
  %40 = sub i64 15, %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %41 = select i1 %39, i64 0, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %41
  %43 = icmp ule ptr %42, %i.u
  %44 = icmp ule ptr %i.w, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %45 = select i1 %43, i1 true, i1 %44
  call void @llvm.assume(i1 %45)
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !31, !noalias !123
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ce
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc, %bb.h, %bb.g
  %.sink16.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.noexc ], [ %i.v, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc ], [ 1, %bb.g ], [ 0, %bb.h ]
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !123
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_largeImEESE_INSI_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.32") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc33 unwind label %bb.o

.noexc33:                                         ; preds = %bb.j
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !71, !range !75, !alias.scope !125
  %.pre102.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc33, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  %.pre102 = phi ptr [ %.sink16.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i ], [ %.pre102.pre, %.noexc33 ] ; 3 uses
  %i.cg = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.noexc33 ]
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !38, !noalias !126
  store i64 %i.ci, ptr %.pre102, align 8, !tbaa !78
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre102, i64 8
  store i64 %i.by, ptr %i.cj, align 8, !tbaa !81
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.ck = phi ptr [ %.pre, %bb.k ], [ %.pre102, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  store i64 %i.cm, ptr %i.y, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store ptr %i.z, ptr %25, align 8, !tbaa !84
  store i64 0, ptr %i.aa, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.cn = load i32, ptr %24, align 8, !tbaa !86
  store i32 %i.cn, ptr %14, align 4, !tbaa !90
  store i32 0, ptr %i.ab, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr %14, ptr %13, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ac, align 8, !tbaa !93
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ae, align 8, !tbaa !93
  %i.co = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %25, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %13, i64 2)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.cp = load ptr, ptr %25, align 8, !tbaa !95
  %i.cq = load i64, ptr %i.aa, align 8, !tbaa !85
  store i64 %i.cq, ptr %23, align 8
  store ptr %i.cp, ptr %i.af, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %25, align 8, !tbaa !95   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.z
  br i1 %i.cs, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.n
  %i.ct = load i64, ptr %i.z, align 8, !tbaa !31
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit38

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit38: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.cv = getelementptr inbounds nuw i8, ptr %.01795, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.t
  br i1 %.not, label %._crit_edge, label %bb.e

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.m
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %25, align 8, !tbaa !95   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.z
  br i1 %i.cz, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %bb.p
  %i.da = load i64, ptr %i.z, align 8, !tbaa !31
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit41

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit41: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit41, %bb.o
  %.pn27 = phi { ptr, i32 } [ %i.cx, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit41 ], [ %i.cw, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.af

._crit_edge100:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !127 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !130
  %.not.i.i = icmp eq ptr %i.dd, %i.df
  br i1 %.not.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge100
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !84
  %i.dh = load ptr, ptr %19, align 8, !tbaa !95   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.b
  br i1 %i.di, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

bb.s:                                             ; preds = %bb.r
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !85  ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.dk)
  %i.dl = add nuw nsw i64 %i.dj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %bb.r
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !95
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.dm, ptr %i.dg, align 8, !tbaa !31
  %.pre103 = load i64, ptr %i.c, align 8, !tbaa !85
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42
  %i.dn = phi i64 [ %.pre103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ], [ %i.dj, %bb.s ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !85
  store i64 0, ptr %i.c, align 8, !tbaa !85
  %i.dp = load ptr, ptr %i.dc, align 8, !tbaa !127
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %i.dq, ptr %i.dc, align 8, !tbaa !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.t:                                             ; preds = %._crit_edge100
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ae

bb.u:                                             ; preds = %.lr.ph99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.097 = phi ptr [ %4, %.lr.ph99 ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store i32 1, ptr %28, align 8, !tbaa !86
  %i.ds = load i64, ptr %.097, align 8, !tbaa !131
  store i64 %i.ds, ptr %i.ai, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %29, align 8, !tbaa !84
  store i64 0, ptr %i.ak, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i32 1, ptr %12, align 4, !tbaa !90
  store i32 0, ptr %i.al, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %12, ptr %11, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.am, align 8, !tbaa !93
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ao, align 8, !tbaa !93
  %i.dt = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %29, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %11, i64 2)
          to label %bb.v unwind label %bb.aa      ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.du = load ptr, ptr %29, align 8, !tbaa !95
  %i.dv = load i64, ptr %i.ak, align 8, !tbaa !85
  store i64 %i.dv, ptr %27, align 8
  store ptr %i.du, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  store i32 3, ptr %31, align 8, !tbaa !86
  %i.dw = getelementptr inbounds nuw i8, ptr %.097, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !133
  store i64 %i.dx, ptr %i.aq, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store ptr %i.ar, ptr %32, align 8, !tbaa !84
  store i64 0, ptr %i.as, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i32 3, ptr %10, align 4, !tbaa !90
  store i32 0, ptr %i.at, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %10, ptr %9, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.au, align 8, !tbaa !93
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.aw, align 8, !tbaa !93
  %i.dy = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %32, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %9, i64 2)
          to label %bb.w unwind label %bb.ab      ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.dz = load ptr, ptr %32, align 8, !tbaa !95
  %i.ea = load i64, ptr %i.as, align 8, !tbaa !85
  store i64 %i.ea, ptr %30, align 8
  store ptr %i.dz, ptr %i.ax, align 8
  invoke void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull align 8 dereferenceable(48) %30)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.eb = load ptr, ptr %32, align 8, !tbaa !95   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ar
  br i1 %i.ec, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.x
  %i.ed = load i64, ptr %i.ar, align 8, !tbaa !31
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit50

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit50: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.ef = load ptr, ptr %29, align 8, !tbaa !95   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.aj
  br i1 %i.eg, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit50
  %i.eh = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit53

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit53: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  store i32 3, ptr %34, align 8, !tbaa !134
  %i.ej = load ptr, ptr %26, align 8, !tbaa !95
  %i.ek = load i64, ptr %i.az, align 8, !tbaa !85 ; 2 uses
  store i64 %i.ek, ptr %i.ay, align 8
  store ptr %i.ej, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  store ptr %i.bb, ptr %35, align 8, !tbaa !84
  store i64 0, ptr %i.bc, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 3, ptr %7, align 4, !tbaa !90
  store i32 2, ptr %i.bd, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i64 %i.ek, ptr %8, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %7, ptr %6, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.be, align 8, !tbaa !93
  store ptr %8, ptr %i.bf, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.bg, align 8, !tbaa !93
  store ptr %i.ay, ptr %i.bh, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.bi, align 8, !tbaa !93
  %i.el = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %35, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.15, i64 6, ptr nonnull %6, i64 3)
          to label %bb.y unwind label %bb.ad      ; 0 uses

bb.y:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.em = load ptr, ptr %35, align 8, !tbaa !95
  %i.en = load i64, ptr %i.bc, align 8, !tbaa !85
  store i64 %i.en, ptr %33, align 8
  store ptr %i.em, ptr %i.bj, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(48) %33)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.eo = load ptr, ptr %35, align 8, !tbaa !95   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.bb
  br i1 %i.ep, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %bb.z
  %i.eq = load i64, ptr %i.bb, align 8, !tbaa !31
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit57

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit57: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.es = load ptr, ptr %26, align 8, !tbaa !95   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bk
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit57
  %i.eu = load i64, ptr %i.bk, align 8, !tbaa !31
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  %i.ew = getelementptr inbounds nuw i8, ptr %.097, i64 16 ; 2 uses
  %.not23 = icmp eq ptr %i.ew, %i.ah
  br i1 %.not23, label %._crit_edge100, label %bb.u

bb.aa:                                            ; preds = %bb.u
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v, %bb.w
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %32, align 8, !tbaa !95   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ar
  br i1 %i.fa, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %bb.ab
  %i.fb = load i64, ptr %i.ar, align 8, !tbaa !31
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit60

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit60: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit60, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ey, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit60 ], [ %i.ex, %bb.aa ]
  %i.fd = load ptr, ptr %29, align 8, !tbaa !95   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.aj
  br i1 %i.fe, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.ac
  %i.ff = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit63

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit63: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit53, %bb.y
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %35, align 8, !tbaa !95   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.bb
  br i1 %i.fj, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.ad
  %i.fk = load i64, ptr %i.bb, align 8, !tbaa !31
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit66

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit66: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.fm = load ptr, ptr %26, align 8, !tbaa !95   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.bk
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit66
  %i.fo = load i64, ptr %i.bk, align 8, !tbaa !31
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit63
  %.pn25 = phi { ptr, i32 } [ %.pn, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit63 ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.fh, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %bb.af

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.t
  %.pre104 = load ptr, ptr %19, align 8, !tbaa !95 ; 2 uses
  %i.fq = icmp eq ptr %.pre104, %i.b
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.fr = load i64, ptr %i.b, align 8, !tbaa !31
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %.pre104, i64 noundef %i.fs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  ret void

bb.ae:                                            ; preds = %bb.t
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.q, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit32
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.q ], [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.ft, %bb.ae ], [ %i.bo, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit32 ]
  %i.fu = load ptr, ptr %19, align 8, !tbaa !95   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.b
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.af
  %i.fw = load i64, ptr %i.b, align 8, !tbaa !31
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  resume { ptr, i32 } %.pn27.pn
}

declare void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder13AddSampleTypeENS1_8StringIdES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %4 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %5 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %6 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %11 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %13 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store i32 1, ptr %9, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.c, ptr %10, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 1, ptr %6, align 4, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %6, ptr %5, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.h, align 8, !tbaa !93
  %i.i = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %10, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %5, i64 2)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.j = load ptr, ptr %10, align 8, !tbaa !95
  %i.k = load i64, ptr %i.d, align 8, !tbaa !85
  store i64 %i.k, ptr %8, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.j, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i32 2, ptr %12, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %2, ptr %i.m, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.o, ptr %13, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i32 2, ptr %4, align 4, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %4, ptr %3, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.r, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.m, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.t, align 8, !tbaa !93
  %i.u = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %13, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %3, i64 2)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.v = load ptr, ptr %13, align 8, !tbaa !95
  %i.w = load i64, ptr %i.p, align 8, !tbaa !85
  store i64 %i.w, ptr %11, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.v, ptr %i.x, align 8
  invoke void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %13, align 8, !tbaa !95    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.o
  br i1 %i.z, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !31
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ac = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !31
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit12

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit12: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !127 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !84
  %i.al = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !85 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.e
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !95
  %i.as = load i64, ptr %i.am, align 8, !tbaa !31
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.at = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %i.ap, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.at, ptr %i.av, align 8, !tbaa !85
  store i64 0, ptr %i.au, align 8, !tbaa !85
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !127
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  %.pre23 = load ptr, ptr %7, align 8, !tbaa !95  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %.pre23, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !31
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %.pre23, i64 noundef %i.bc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.h:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %13, align 8, !tbaa !95   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.i
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !31
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit16

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit16: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit16, %bb.h
  %.pn = phi { ptr, i32 } [ %i.be, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit16 ], [ %i.bd, %bb.h ]
  %i.bj = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.c
  br i1 %i.bk, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %bb.j
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !31
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit19

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.k:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.k
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit19
  %.pn7 = phi { ptr, i32 } [ %.pn, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit19 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder10AddMappingEmmmSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 %4, ptr nofree readonly captures(address_is_null) %5, ptr nofree noundef readonly byval(%"class.std::basic_string_view") align 8 captures(none) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"struct.std::pair.41", align 8     ; 7 uses
  %8 = alloca %"struct.absl::lts_20260526::debugging_internal::ProfileBuilder::Mapping", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !140
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 88
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN4absl12lts_2026052618container_internal19btree_set_containerINS1_5btreeINS1_15map_params_implImmJEEEEEE7emplaceIJRmS9_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERSA_IKmmEPSF_EEbEDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.41") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !141, !range !75, !noundef !124
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !142
  %i.t = load ptr, ptr %7, align 8, !tbaa !145
  %i.u = and i32 %i.s, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !146
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 11 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 7 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 11 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !84
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 7 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !85
  store i8 0, ptr %i.ad, align 8, !tbaa !31
  %i.af = load i64, ptr %i.c, align 8, !tbaa !38
  store i64 %i.af, ptr %8, align 8, !tbaa !148
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %i.ag, align 8, !tbaa !150
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %3, ptr %i.ah, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.ai, ptr %9, align 8, !tbaa !84
  %i.aj = icmp eq ptr %5, null
  %i.ak = icmp ne i64 %4, 0
  %or.cond.i.i.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %4, ptr %i.b, align 8, !tbaa !38
  %i.al = icmp ugt i64 %4, 15
  br i1 %i.al, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc10 unwind label %bb.ab  ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i.i
  store ptr %i.am, ptr %9, align 8, !tbaa !95
  %i.an = load i64, ptr %i.b, align 8, !tbaa !38
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10, %bb.e
  %i.ao = phi ptr [ %i.am, %.noexc10 ], [ %i.ai, %bb.e ] ; 2 uses
  switch i64 %4, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ap = load i8, ptr %5, align 1, !tbaa !31
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !31
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %5, i64 %4, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !85
  %i.as = load ptr, ptr %9, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !95  ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  %i.aw = load ptr, ptr %9, align 8, !tbaa !95    ; 5 uses
  %i.ax = icmp eq ptr %i.aw, %i.ai                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.ax, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !85 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !31
  store i8 %i.ba, ptr %i.au, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.aw, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  store i64 %i.bb, ptr %i.ab, align 8, !tbaa !85
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 0, ptr %i.bd, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aw, ptr %i.z, align 8, !tbaa !95
  %i.be = load <2 x i64>, ptr %i.ar, align 8, !tbaa !31
  store <2 x i64> %i.be, ptr %i.ab, align 8, !tbaa !31
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bf = load i64, ptr %i.aa, align 8, !tbaa !31
  store ptr %i.aw, ptr %i.z, align 8, !tbaa !95
  %i.bg = load <2 x i64>, ptr %i.ar, align 8, !tbaa !31
  store <2 x i64> %i.bg, ptr %i.ab, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %9, align 8, !tbaa !95
  store i64 %i.bf, ptr %i.ai, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ai, ptr %9, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bh = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.au, %bb.l ], [ %i.ai, %bb.m ]
  store i64 0, ptr %i.ar, align 8, !tbaa !85
  store i8 0, ptr %i.bh, align 1, !tbaa !31
  %i.bi = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ai
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bk = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %.sroa.0.0.copyload.i11 = load i64, ptr %6, align 8, !tbaa !38 ; 5 uses
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !152 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.bm, ptr %10, align 8, !tbaa !84
  %i.bn = icmp eq ptr %.sroa.2.0.copyload.i13, null
  %i.bo = icmp ne i64 %.sroa.0.0.copyload.i11, 0
  %or.cond.i.i.i14 = and i1 %i.bo, %i.bn
  br i1 %or.cond.i.i.i14, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc17 unwind label %bb.ac

.noexc17:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %.sroa.0.0.copyload.i11, ptr %i.a, align 8, !tbaa !38
  %i.bp = icmp ugt i64 %.sroa.0.0.copyload.i11, 15
  br i1 %i.bp, label %.noexc.i.i.i16, label %._crit_edge.i.i.i.i15

.noexc.i.i.i16:                                   ; preds = %bb.o
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %bb.ac  ; 2 uses

.noexc18:                                         ; preds = %.noexc.i.i.i16
  store ptr %i.bq, ptr %10, align 8, !tbaa !95
  %i.br = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i15

._crit_edge.i.i.i.i15:                            ; preds = %.noexc18, %bb.o
  %i.bs = phi ptr [ %i.bq, %.noexc18 ], [ %i.bm, %bb.o ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i11, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i15
  %i.bt = load i8, ptr %.sroa.2.0.copyload.i13, align 1, !tbaa !31
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !31
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %.sroa.2.0.copyload.i13, i64 %.sroa.0.0.copyload.i11, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i15
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !85
  %i.bw = load ptr, ptr %10, align 8, !tbaa !95
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.by = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 6 uses
  %i.bz = icmp eq ptr %i.by, %i.ad
  %i.ca = load ptr, ptr %10, align 8, !tbaa !95   ; 5 uses
  %i.cb = icmp eq ptr %i.ca, %i.bm                ; 2 uses
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25: ; preds = %bb.r
  br i1 %i.cb, label %bb.s, label %.thread.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20: ; preds = %bb.r
  br i1 %i.cb, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25
  %i.cc = load i64, ptr %i.bv, align 8, !tbaa !85 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  switch i64 %i.cc, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !31
  store i8 %i.ce, ptr %i.by, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.ca, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23: ; preds = %bb.u, %bb.t, %bb.s
  %i.cf = load i64, ptr %i.bv, align 8, !tbaa !85 ; 2 uses
  store i64 %i.cf, ptr %i.ae, align 8, !tbaa !85
  %i.cg = load ptr, ptr %i.ac, align 8, !tbaa !95
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !31
  %.pre.i24 = load ptr, ptr %10, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

.thread.i26:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i25
  store ptr %i.ca, ptr %i.ac, align 8, !tbaa !95
  %i.ci = load <2 x i64>, ptr %i.bv, align 8, !tbaa !31
  store <2 x i64> %i.ci, ptr %i.ae, align 8, !tbaa !31
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !31
  store ptr %i.ca, ptr %i.ac, align 8, !tbaa !95
  %i.ck = load <2 x i64>, ptr %i.bv, align 8, !tbaa !31
  store <2 x i64> %i.ck, ptr %i.ae, align 8, !tbaa !31
  %.not.i22 = icmp eq ptr %i.by, null
  br i1 %.not.i22, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21
  store ptr %i.by, ptr %10, align 8, !tbaa !95
  store i64 %i.cj, ptr %i.bm, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21, %.thread.i26
  store ptr %i.bm, ptr %10, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23, %bb.v, %bb.w
  %i.cl = phi ptr [ %.pre.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i23 ], [ %i.by, %bb.v ], [ %i.bm, %bb.w ]
  store i64 0, ptr %i.bv, align 8, !tbaa !85
  store i8 0, ptr %i.cl, align 1, !tbaa !31
  %i.cm = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27
  %i.co = load i64, ptr %i.bm, align 8, !tbaa !31
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !137 ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !153
  %.not.i.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noundef nonnull align 8 dereferenceable(88) %8, i64 24, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 3 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !84
  %i.cv = load ptr, ptr %i.z, align 8, !tbaa !95  ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.aa
  br i1 %i.cw, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cx = load i64, ptr %i.ab, align 8, !tbaa !85 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.cx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.x
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !95
  %i.da = load i64, ptr %i.aa, align 8, !tbaa !31
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !31
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.y
  %i.db = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cx, %bb.y ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !85
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !95
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.aa, align 8, !tbaa !31
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 3 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !84
  %i.df = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ad
  br i1 %i.dg, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !85 ; 3 uses
  %i.di = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.di)
  %i.dj = add nuw nsw i64 %i.dh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.de, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.dj, i1 false)
  br label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !95
  %i.dk = load i64, ptr %i.ad, align 8, !tbaa !31
  store i64 %i.dk, ptr %i.de, align 8, !tbaa !31
  %.pre34 = load i64, ptr %i.ae, align 8, !tbaa !85
  br label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i
  %i.dl = phi i64 [ %.pre34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i ], [ %i.dh, %bb.z ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !85
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !95
  store i64 0, ptr %i.ae, align 8, !tbaa !85
  store i8 0, ptr %i.ad, align 8, !tbaa !31
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  store ptr %i.do, ptr %i.f, align 8, !tbaa !137
  %i.dp = load i64, ptr %i.d, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  invoke void @_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(88) %8)
          to label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit unwind label %bb.ad

_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.aa
  %.pre35 = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !38  ; 2 uses
  %i.dr = icmp eq ptr %.pre35, %i.ad
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit
  %i.ds = load i64, ptr %i.ad, align 8, !tbaa !31
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %.pre35, i64 noundef %i.dt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit, %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.du = phi i64 [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dp, %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.dq, %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE9push_backEOS4_.exit ]
  %i.dv = load ptr, ptr %i.z, align 8, !tbaa !95  ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.aa
  br i1 %i.dw, label %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dx = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #22
  br label %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingD2Ev.exit

_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.af

bb.ab:                                            ; preds = %.noexc.i.i.i, %bb.d
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc.i.i.i16, %bb.n
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.ad ], [ %i.ea, %bb.ac ], [ %i.dz, %bb.ab ]
  call void @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  resume { ptr, i32 } %.pn

bb.af:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingD2Ev.exit, %bb.b
  %.08 = phi i64 [ %i.du, %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingD2Ev.exit ], [ %i.y, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  ret i64 %.08
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal19btree_set_containerINS1_5btreeINS1_15map_params_implImmJEEEEEE7emplaceIJRmS9_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERSA_IKmmEPSF_EEbEDpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.41") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::node_handle", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.b, align 1, !tbaa !157, !alias.scope !154
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !38, !noalias !154 ; 2 uses
  store i64 %i.c, ptr %scevgep.i.i.i, align 8, !tbaa !159, !alias.scope !154
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %3, align 8, !tbaa !38, !noalias !154
  store i64 %i.e, ptr %i.d, align 8, !tbaa !161, !alias.scope !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !162
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !167, !noalias !164
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.i = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 5 uses
  store ptr %i.i, ptr %i.i, align 8, !tbaa !172, !noalias !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.j, align 8, !tbaa !31, !noalias !164
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !172, !noalias !164
  store ptr %i.i, ptr %1, align 8, !tbaa !172, !noalias !164
  %.pre = load i64, ptr %scevgep.i.i.i, align 8, !noalias !164
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.l = phi i64 [ %.pre, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.0.0.in.i.i = phi ptr [ %1, %bb.b ], [ %i.y, %bb.e ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !172, !noalias !164 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.n = load i8, ptr %i.m, align 1, !tbaa !31, !noalias !164 ; 2 uses
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE11lower_boundImEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessImEmE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.07.i.i.i.i.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.07.i.i.i.i.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !38, !noalias !164
  %i.s = icmp ult i64 %i.r, %i.l
  br i1 %i.s, label %bb.d, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE11lower_boundImEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessImEmE15checked_compareE.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = add nuw nsw i64 %.07.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.t, %i.o
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE11lower_boundImEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessImEmE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !173

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE11lower_boundImEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessImEmE15checked_compareE.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.o, %bb.d ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !31, !noalias !164
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE15internal_locateImEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSD_EELb0EEERKT_.exit.i

bb.e:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE11lower_boundImEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessImEmE15checked_compareE.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 256
  %i.x = and i64 %.0.lcssa.i.i.i.i.i, 255
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  br label %bb.c

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE15internal_locateImEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSD_EELb0EEERKT_.exit.i: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE11lower_boundImEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessImEmE15checked_compareE.exit.i.i
  %i.z = trunc i64 %.0.lcssa.i.i.i.i.i to i32     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE15internal_locateImEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSD_EELb0EEERKT_.exit.i
  %.sroa.7.0.i.i = phi i32 [ %i.z, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE15internal_locateImEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSD_EELb0EEERKT_.exit.i ], [ %i.ag, %bb.g ] ; 3 uses
  %.sroa.0.0.i16.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE15internal_locateImEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSD_EELb0EEERKT_.exit.i ], [ %i.ah, %bb.g ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 10
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !31, !noalias !164
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp eq i32 %.sroa.7.0.i.i, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 8
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !31, !noalias !164
  %i.ag = zext i8 %i.af to i32
  %i.ah = load ptr, ptr %.sroa.0.0.i16.i, align 8, !tbaa !172, !noalias !164 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31, !noalias !164
  %.not.i19.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i19.i, label %bb.f, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSC_EEEET_SG_.exit.thread.i, !llvm.loop !175

bb.h:                                             ; preds = %bb.f
  %i.ak = sext i32 %.sroa.7.0.i.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 16
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak
  %i.an = load i64, ptr %i.am, align 8, !tbaa !38, !noalias !164
  %i.ao = icmp ult i64 %i.l, %i.an
  br i1 %i.ao, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSC_EEEET_SG_.exit.thread.i, label %bb.i

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSC_EEEET_SG_.exit.thread.i: ; preds = %bb.g, %bb.h
  %i.ap = call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.0.0.i.i, i32 %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ap, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSC_EEEET_SG_.exit.thread.i, %bb.h
  %.sroa.0.0.i16.lcssa.sink.i = phi ptr [ %.fca.0.extract.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSC_EEEET_SG_.exit.thread.i ], [ %.sroa.0.0.i16.i, %bb.h ]
  %.sroa.7.0.i.lcssa.sink.i = phi i32 [ %.fca.1.extract.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSC_EEEET_SG_.exit.thread.i ], [ %.sroa.7.0.i.i, %bb.h ]
  %.sink.i = phi i8 [ 1, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSC_EEEET_SG_.exit.thread.i ], [ 0, %bb.h ]
  store ptr %.sroa.0.0.i16.lcssa.sink.i, ptr %0, align 8, !alias.scope !164
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.lcssa.sink.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !164
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i, ptr %i.aq, align 8, !tbaa !176, !alias.scope !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNO4absl12lts_2026052618debugging_internal14ProfileBuilder4EmitB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %3 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %4 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %5 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %6 = alloca [3 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %7 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %8 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint", align 8 ; 4 uses
  %9 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %10 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %11 = alloca [3 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %12 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %13 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint", align 8 ; 4 uses
  %14 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %15 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %16 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %17 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %18 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %19 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %20 = alloca [3 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %21 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %22 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint", align 8 ; 4 uses
  %23 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %24 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %25 = alloca [6 x %"class.std::basic_string_view"], align 8 ; 16 uses
  %26 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 10 uses
  %27 = alloca %"struct.std::pair.53", align 8    ; 5 uses
  %28 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>, absl::lts_20260526::container_internal::StringHash, absl::lts_20260526::container_internal::StringEq, absl::lts_20260526::debugging_internal::ProfileBuilder::HashtablezBarrier<std::pair<const std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>>>::EmplaceDecomposable", align 8 ; 4 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %30 = alloca %"struct.std::pair", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %31 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %32 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %33 = alloca %"struct.std::pair.53", align 8    ; 5 uses
  %34 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>, absl::lts_20260526::container_internal::StringHash, absl::lts_20260526::container_internal::StringEq, absl::lts_20260526::debugging_internal::ProfileBuilder::HashtablezBarrier<std::pair<const std::__cxx11::basic_string<char>, absl::lts_20260526::debugging_internal::StringId>>>::EmplaceDecomposable", align 8 ; 4 uses
  %35 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %36 = alloca %"struct.std::pair", align 8       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %37 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %38 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %39 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %40 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %41 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %42 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %43 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %44 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %45 = alloca [3 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %46 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %47 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint", align 8 ; 4 uses
  %48 = alloca [3 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %49 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Tag", align 4 ; 5 uses
  %50 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint", align 8 ; 4 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %52 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %53 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::LengthDelimited", align 8 ; 6 uses
  %54 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %55 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %56 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::LengthDelimited", align 8 ; 6 uses
  %57 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %60 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %61 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %62 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %63 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %64 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %65 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %66 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %67 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 6 uses
  %68 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %69 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 6 uses
  %70 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %71 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::LengthDelimited", align 8 ; 6 uses
  %72 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %75 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %76 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %77 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %78 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %79 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %80 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %81 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %82 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %83 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %84 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::LengthDelimited", align 8 ; 6 uses
  %85 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %88 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::LengthDelimited", align 8 ; 5 uses
  %89 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %90 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %91 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %92 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %93 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %94 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %95 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %96 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %97 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::VarintField", align 8 ; 5 uses
  %98 = alloca %"class.absl::lts_20260526::strings_internal::StringifySink", align 8 ; 11 uses
  %99 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %100 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  %i.c = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 6 uses
  store ptr %i.c, ptr %51, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !85
  store i8 0, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178  ; 2 uses
  %.not333454 = icmp eq ptr %i.f, %i.h
  br i1 %.not333454, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %49, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %48, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %48, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %54, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !178  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !178  ; 2 uses
  %.not334456 = icmp eq ptr %i.v, %i.x
  br i1 %.not334456, label %._crit_edge460, label %.lr.ph459

.lr.ph459:                                        ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %46, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %45, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %57, i64 16
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit
  %.sroa.0330.0455 = phi ptr [ %i.f, %.lr.ph ], [ %i.au, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  store i32 1, ptr %53, align 8, !tbaa !134
  %i.ak = load ptr, ptr %.sroa.0330.0455, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0330.0455, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !85 ; 2 uses
  store i64 %i.am, ptr %i.i, align 8
  store ptr %i.ak, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %54, align 8, !tbaa !84
  store i64 0, ptr %i.l, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  store i32 1, ptr %49, align 4, !tbaa !90
  store i32 2, ptr %i.m, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  store i64 %i.am, ptr %50, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  store ptr %49, ptr %48, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.n, align 8, !tbaa !93
  store ptr %50, ptr %i.o, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.p, align 8, !tbaa !93
  store ptr %i.i, ptr %i.q, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.r, align 8, !tbaa !93
  %i.an = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %54, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.15, i64 6, ptr nonnull %48, i64 3)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.ao = load ptr, ptr %54, align 8, !tbaa !95
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !85
  store i64 %i.ap, ptr %52, align 8
  store ptr %i.ao, ptr %i.s, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %51, ptr noundef nonnull align 8 dereferenceable(48) %52)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %54, align 8, !tbaa !95   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.k
  br i1 %i.ar, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.as = load i64, ptr %i.k, align 8, !tbaa !31
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0330.0455, i64 32 ; 2 uses
  %.not333 = icmp eq ptr %i.au, %i.h
  br i1 %.not333, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %54, align 8, !tbaa !95   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.k
  br i1 %i.ax, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %bb.e
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !31
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit108

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit108: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br label %bb.ck

._crit_edge460:                                   ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit114, %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !137 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !140 ; 2 uses
  %.not480 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not480, label %._crit_edge464, label %.lr.ph463

.lr.ph463:                                        ; preds = %._crit_edge460
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 88
  %i.bi = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %42, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %32, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %25, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %25, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %25, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %25, i64 72
  %i.dh = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %25, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.ea = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %72, i64 16
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph459, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit114
  %.sroa.0326.0457 = phi ptr [ %i.v, %.lr.ph459 ], [ %i.es, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit114 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  store i32 2, ptr %56, align 8, !tbaa !134
  %i.ei = load ptr, ptr %.sroa.0326.0457, align 8, !tbaa !95
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0326.0457, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !85 ; 2 uses
  store i64 %i.ek, ptr %i.y, align 8
  store ptr %i.ei, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %57, align 8, !tbaa !84
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  store i32 2, ptr %46, align 4, !tbaa !90
  store i32 2, ptr %i.ac, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  store i64 %i.ek, ptr %47, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  store ptr %46, ptr %45, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ad, align 8, !tbaa !93
  store ptr %47, ptr %i.ae, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.af, align 8, !tbaa !93
  store ptr %i.y, ptr %i.ag, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ah, align 8, !tbaa !93
  %i.el = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %57, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.15, i64 6, ptr nonnull %45, i64 3)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.em = load ptr, ptr %57, align 8, !tbaa !95
  %i.en = load i64, ptr %i.ab, align 8, !tbaa !85
  store i64 %i.en, ptr %55, align 8
  store ptr %i.em, ptr %i.ai, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %51, ptr noundef nonnull align 8 dereferenceable(48) %55)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.eo = load ptr, ptr %57, align 8, !tbaa !95   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.aa
  br i1 %i.ep, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112: ; preds = %bb.h
  %i.eq = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit114

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit114: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0326.0457, i64 32 ; 2 uses
  %.not334 = icmp eq ptr %i.es, %i.x
  br i1 %.not334, label %._crit_edge460, label %bb.f

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %57, align 8, !tbaa !95   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.aa
  br i1 %i.ev, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115: ; preds = %bb.i
  %i.ew = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit117

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit117: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  br label %bb.ck

._crit_edge464:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge460
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8            ; 3 uses
  %.not.i.i = icmp ult i64 %i.ez, 131072
  br i1 %.not.i.i, label %._crit_edge470, label %bb.j, !prof !179

bb.j:                                             ; preds = %._crit_edge464
  %i.fa = and i64 %i.ez, 254
  %i.fb = icmp eq i64 %i.fa, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.fb, label %.lr.ph469, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.fc, align 8, !tbaa !31, !nonnull !124, !noundef !124 ; 5 uses
  %101 = and i64 %i.ez, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %101       ; 2 uses
  %102 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %103 = sub i64 15, %notmask.i.i.i.i.i
  %104 = select i1 %102, i64 0, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %104
  %106 = icmp ule ptr %105, %i.ey
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %108 = icmp ule ptr %107, %.sroa.0.0.copyload.i.i.i.i
  %109 = select i1 %106, i1 true, i1 %108
  call void @llvm.assume(i1 %109)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.fd, align 8, !tbaa !31 ; 2 uses
  %i.fe = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !180
  %i.ff = icmp slt i8 %i.fe, -1
  br i1 %i.ff, label %.lr.ph.i.i, label %.lr.ph469

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.fg = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.k ]
  %i.fh = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.k ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !180
  %i.fl = icmp slt i8 %i.fk, -1
  br i1 %i.fl, label %.lr.ph.i.i, label %.lr.ph469, !llvm.loop !182

bb.l:                                             ; preds = %.lr.ph463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.067461 = phi i64 [ 0, %.lr.ph463 ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.fm = load ptr, ptr %i.ba, align 8, !tbaa !140
  %i.fn = getelementptr inbounds nuw [88 x i8], ptr %i.fm, i64 %.067461 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #21
  store i32 1, ptr %59, align 8, !tbaa !86
  %i.fo = add nuw i64 %.067461, 1                 ; 3 uses
  store i64 %i.fo, ptr %i.bi, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  store ptr %i.bj, ptr %60, align 8, !tbaa !84
  store i64 0, ptr %i.bk, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  store i32 1, ptr %44, align 4, !tbaa !90
  store i32 0, ptr %i.bl, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  store ptr %44, ptr %43, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.bm, align 8, !tbaa !93
  store ptr %i.bi, ptr %i.bn, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.bo, align 8, !tbaa !93
  %i.fp = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %60, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %43, i64 2)
          to label %bb.m unwind label %bb.aa      ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  %i.fq = load ptr, ptr %60, align 8, !tbaa !95
  %i.fr = load i64, ptr %i.bk, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21
  store i32 2, ptr %61, align 8, !tbaa !86
  %i.fs = load i64, ptr %i.fn, align 8, !tbaa !148
  store i64 %i.fs, ptr %i.bp, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  store ptr %i.bq, ptr %62, align 8, !tbaa !84
  store i64 0, ptr %i.br, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  store i32 2, ptr %42, align 4, !tbaa !90
  store i32 0, ptr %i.bs, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  store ptr %42, ptr %41, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.bt, align 8, !tbaa !93
  store ptr %i.bp, ptr %i.bu, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.bv, align 8, !tbaa !93
  %i.ft = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %62, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %41, i64 2)
          to label %bb.n unwind label %bb.ab      ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.fu = load ptr, ptr %62, align 8, !tbaa !95
  %i.fv = load i64, ptr %i.br, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  store i32 3, ptr %63, align 8, !tbaa !86
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !150
  store i64 %i.fx, ptr %i.bw, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  store ptr %i.bx, ptr %64, align 8, !tbaa !84
  store i64 0, ptr %i.by, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  store i32 3, ptr %40, align 4, !tbaa !90
  store i32 0, ptr %i.bz, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  store ptr %40, ptr %39, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ca, align 8, !tbaa !93
  store ptr %i.bw, ptr %i.cb, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.cc, align 8, !tbaa !93
  %i.fy = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %64, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %39, i64 2)
          to label %bb.o unwind label %bb.ac      ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.fz = load ptr, ptr %64, align 8, !tbaa !95
  %i.ga = load i64, ptr %i.by, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  store i32 4, ptr %65, align 8, !tbaa !86
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !151
  store i64 %i.gc, ptr %i.cd, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  store ptr %i.ce, ptr %66, align 8, !tbaa !84
  store i64 0, ptr %i.cf, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  store i32 4, ptr %38, align 4, !tbaa !90
  store i32 0, ptr %i.cg, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  store ptr %38, ptr %37, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ch, align 8, !tbaa !93
  store ptr %i.cd, ptr %i.ci, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.cj, align 8, !tbaa !93
  %i.gd = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %66, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %37, i64 2)
          to label %bb.p unwind label %bb.ad      ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.ge = load ptr, ptr %66, align 8, !tbaa !95
  %i.gf = load i64, ptr %i.cf, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  store i32 5, ptr %67, align 8, !tbaa !86
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !95
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !85 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  store i64 %i.gj, ptr %35, align 8
  store ptr %i.gh, ptr %i.ck, align 8
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.gl = load i64, ptr %1, align 8
  %i.gm = lshr i64 %i.gl, 17
  store i64 %i.gm, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21, !noalias !183
  store ptr %1, ptr %34, align 8, !tbaa !14, !noalias !183
  call void @llvm.lifetime.start.p0(ptr nonnull %33), !noalias !186
  store ptr %35, ptr %33, align 8, !tbaa !22, !alias.scope !191, !noalias !194
  store ptr %i.b, ptr %i.cl, align 8, !tbaa !30, !alias.scope !191, !noalias !194
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableclISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJRSP_EEST_IJOSB_EEEEESH_INSL_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %36, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %33), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21, !noalias !183
  %i.gn = load ptr, ptr %i.cm, align 8, !tbaa !31
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %.pre = load i32, ptr %67, align 8, !tbaa !86
  br label %bb.r

bb.r:                                             ; preds = %.noexc, %bb.p
  %i.gq = phi i32 [ %.pre, %.noexc ], [ 5, %bb.p ]
  %.0.i = phi i64 [ %i.gp, %.noexc ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  store i64 %.0.i, ptr %i.cn, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  store ptr %i.co, ptr %68, align 8, !tbaa !84
  store i64 0, ptr %i.cp, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  store i32 %i.gq, ptr %32, align 4, !tbaa !90
  store i32 0, ptr %i.cq, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  store ptr %32, ptr %31, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.cr, align 8, !tbaa !93
  store ptr %i.cn, ptr %i.cs, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ct, align 8, !tbaa !93
  %i.gr = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %68, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %31, i64 2)
          to label %bb.s unwind label %bb.af      ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.gs = load ptr, ptr %68, align 8, !tbaa !95
  %i.gt = load i64, ptr %i.cp, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #21
  store i32 6, ptr %69, align 8, !tbaa !86
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !95
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !85 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  store i64 %i.gx, ptr %29, align 8
  store ptr %i.gv, ptr %i.cu, align 8
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.gz = load i64, ptr %1, align 8
  %i.ha = lshr i64 %i.gz, 17
  store i64 %i.ha, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21, !noalias !197
  store ptr %1, ptr %28, align 8, !tbaa !14, !noalias !197
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !200
  store ptr %29, ptr %27, align 8, !tbaa !22, !alias.scope !205, !noalias !208
  store ptr %i.a, ptr %i.cv, align 8, !tbaa !30, !alias.scope !205, !noalias !208
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableclISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJRSP_EEST_IJOSB_EEEEESH_INSL_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %.noexc130 unwind label %bb.ag

.noexc130:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21, !noalias !197
  %i.hb = load ptr, ptr %i.cw, align 8, !tbaa !31
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %.pre495 = load i32, ptr %69, align 8, !tbaa !86, !noalias !211
  br label %bb.u

bb.u:                                             ; preds = %.noexc130, %bb.s
  %i.he = phi i32 [ %.pre495, %.noexc130 ], [ 6, %bb.s ]
  %.0.i129 = phi i64 [ %i.hd, %.noexc130 ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  store i64 %.0.i129, ptr %i.cx, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21, !noalias !211
  store i64 %i.fr, ptr %25, align 8, !noalias !211
  store ptr %i.fq, ptr %i.cy, align 8, !noalias !211
  store i64 %i.fv, ptr %i.cz, align 8, !noalias !211
  store ptr %i.fu, ptr %i.da, align 8, !noalias !211
  store i64 %i.ga, ptr %i.db, align 8, !noalias !211
  store ptr %i.fz, ptr %i.dc, align 8, !noalias !211
  store i64 %i.gf, ptr %i.dd, align 8, !noalias !211
  store ptr %i.ge, ptr %i.de, align 8, !noalias !211
  store i64 %i.gt, ptr %i.df, align 8, !noalias !211
  store ptr %i.gs, ptr %i.dg, align 8, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21, !noalias !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false), !noalias !211
  store ptr %i.dh, ptr %26, align 8, !tbaa !84, !noalias !211
  store i64 0, ptr %i.di, align 8, !tbaa !85, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21, !noalias !211
  store i32 %i.he, ptr %24, align 4, !tbaa !90, !noalias !211
  store i32 0, ptr %i.dj, align 4, !tbaa !92, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21, !noalias !211
  store ptr %24, ptr %23, align 8, !tbaa !31, !noalias !211
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.dk, align 8, !tbaa !93, !noalias !211
  store ptr %i.cx, ptr %i.dl, align 8, !tbaa !31, !noalias !211
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.dm, align 8, !tbaa !93, !noalias !211
  %i.hf = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %26, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %23, i64 2)
          to label %bb.v unwind label %bb.x, !noalias !211 ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21, !noalias !211
  %i.hg = load ptr, ptr %26, align 8, !tbaa !95, !noalias !211
  %i.hh = load i64, ptr %i.di, align 8, !tbaa !85, !noalias !211
  store i64 %i.hh, ptr %i.dn, align 8, !noalias !211
  store ptr %i.hg, ptr %i.do, align 8, !noalias !211
  invoke void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr nonnull %25, i64 6)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hi = load ptr, ptr %26, align 8, !tbaa !95, !noalias !211 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.dh
  br i1 %i.hj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.hk = load i64, ptr %i.dh, align 8, !tbaa !31, !noalias !211
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %26, align 8, !tbaa !95, !noalias !211 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.dh
  br i1 %i.ho, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i: ; preds = %bb.x
  %i.hp = load i64, ptr %i.dh, align 8, !tbaa !31, !noalias !211
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit34.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit34.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21, !noalias !211
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  %i.hr = load ptr, ptr %68, align 8, !tbaa !95   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.co
  br i1 %i.hs, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ht = load i64, ptr %i.co, align 8, !tbaa !31
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  %i.hv = load ptr, ptr %66, align 8, !tbaa !95   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.ce
  br i1 %i.hw, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134
  %i.hx = load i64, ptr %i.ce, align 8, !tbaa !31
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit137

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit137: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  %i.hz = load ptr, ptr %64, align 8, !tbaa !95   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.bx
  br i1 %i.ia, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit137
  %i.ib = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  %i.id = load ptr, ptr %62, align 8, !tbaa !95   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.bq
  br i1 %i.ie, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140
  %i.if = load i64, ptr %i.bq, align 8, !tbaa !31
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit143

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit143: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  %i.ih = load ptr, ptr %60, align 8, !tbaa !95   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.bj
  br i1 %i.ii, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit143
  %i.ij = load i64, ptr %i.bj, align 8, !tbaa !31
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit146

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit146: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #21
  store i32 3, ptr %71, align 8, !tbaa !134
  %i.il = load ptr, ptr %58, align 8, !tbaa !95
  %i.im = load i64, ptr %i.dq, align 8, !tbaa !85 ; 2 uses
  store i64 %i.im, ptr %i.dp, align 8
  store ptr %i.il, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i8 0, i64 16, i1 false)
  store ptr %i.ds, ptr %72, align 8, !tbaa !84
  store i64 0, ptr %i.dt, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store i32 3, ptr %21, align 4, !tbaa !90
  store i32 2, ptr %i.du, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store i64 %i.im, ptr %22, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr %21, ptr %20, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.dv, align 8, !tbaa !93
  store ptr %22, ptr %i.dw, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.dx, align 8, !tbaa !93
  store ptr %i.dp, ptr %i.dy, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.dz, align 8, !tbaa !93
  %i.in = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %72, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.15, i64 6, ptr nonnull %20, i64 3)
          to label %bb.y unwind label %bb.an      ; 0 uses

bb.y:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.io = load ptr, ptr %72, align 8, !tbaa !95
  %i.ip = load i64, ptr %i.dt, align 8, !tbaa !85
  store i64 %i.ip, ptr %70, align 8
  store ptr %i.io, ptr %i.ea, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %51, ptr noundef nonnull align 8 dereferenceable(48) %70)
          to label %bb.z unwind label %bb.an

bb.z:                                             ; preds = %bb.y
  %i.iq = load ptr, ptr %72, align 8, !tbaa !95   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ds
  br i1 %i.ir, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151: ; preds = %bb.z
  %i.is = load i64, ptr %i.ds, align 8, !tbaa !31
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit153

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit153: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #21
  %i.iu = load ptr, ptr %58, align 8, !tbaa !95   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.eb
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit153
  %i.iw = load i64, ptr %i.eb, align 8, !tbaa !31
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  %exitcond.not = icmp eq i64 %i.fo, %i.bh
  br i1 %exitcond.not, label %._crit_edge464, label %bb.l, !llvm.loop !214

bb.aa:                                            ; preds = %bb.l
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ab:                                            ; preds = %bb.m
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ac:                                            ; preds = %bb.n
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ad:                                            ; preds = %bb.o
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ae:                                            ; preds = %bb.q
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.r
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.t
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit34.i, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.je, %bb.ag ], [ %i.hm, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit34.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  br label %bb.ah

bb.ah:                                            ; preds = %.body, %bb.af
  %.pn86 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.jd, %bb.af ]
  %i.jf = load ptr, ptr %68, align 8, !tbaa !95   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.co
  br i1 %i.jg, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154: ; preds = %bb.ah
  %i.jh = load i64, ptr %i.co, align 8, !tbaa !31
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit156

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit156: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit156, %bb.ae
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit156 ], [ %i.jc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.ai ], [ %i.jb, %bb.ad ]
  %i.jj = load ptr, ptr %66, align 8, !tbaa !95   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.ce
  br i1 %i.jk, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157: ; preds = %bb.aj
  %i.jl = load i64, ptr %i.ce, align 8, !tbaa !31
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit159

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit159: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit159, %bb.ac
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit159 ], [ %i.ja, %bb.ac ]
  %i.jn = load ptr, ptr %64, align 8, !tbaa !95   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.bx
  br i1 %i.jo, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160: ; preds = %bb.ak
  %i.jp = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit162

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit162: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  br label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit162, %bb.ab
  %.pn86.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit162 ], [ %i.iz, %bb.ab ]
  %i.jr = load ptr, ptr %62, align 8, !tbaa !95   ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.bq
  br i1 %i.js, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163: ; preds = %bb.al
  %i.jt = load i64, ptr %i.bq, align 8, !tbaa !31
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  br label %bb.am

bb.am:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165, %bb.aa
  %.pn86.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165 ], [ %i.iy, %bb.aa ]
  %i.jv = load ptr, ptr %60, align 8, !tbaa !95   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.bj
  br i1 %i.jw, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166: ; preds = %bb.am
  %i.jx = load i64, ptr %i.bj, align 8, !tbaa !31
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.an:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit146, %bb.y
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ka = load ptr, ptr %72, align 8, !tbaa !95   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.ds
  br i1 %i.kb, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169

end_hunk_0
begin_hunk_1_@_ZNO4absl12lts_2026052618debugging_internal14ProfileBuilder4EmitB5cxx11Ev:bb.a
  %i.nv = load ptr, ptr %i.ky, align 8, !tbaa !219
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !172
  %i.nx = icmp ne ptr %.pn6.i.i.i, %i.nw
  %i.ny = icmp ne i32 %.pn4.i.i.i, 0
  %.not3.i = select i1 %i.nx, i1 true, i1 %i.ny
  br i1 %.not3.i, label %bb.ay, label %.loopexit338

bb.ay:                                            ; preds = %.loopexit339
  %i.nz = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 11
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !31
  %.not.i.i185 = icmp eq i8 %i.oa, 0
  br i1 %.not.i.i185, label %.thread.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ob = add nsw i32 %.pn4.i.i.i, -1             ; 2 uses
  %.not.not.i.i = icmp sgt i32 %.pn4.i.i.i, 0
  br i1 %.not.not.i.i, label %.loopexit338, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.az, %bb.ba
  %.01621.i.i.i = phi ptr [ %i.oc, %bb.ba ], [ %.pn6.i.i.i, %bb.az ] ; 2 uses
  %i.oc = load ptr, ptr %.01621.i.i.i, align 8, !tbaa !172 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 11
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !31
  %.not18.i.i.i = icmp eq i8 %i.oe, 0
  br i1 %.not18.i.i.i, label %bb.ba, label %.loopexit338

bb.ba:                                            ; preds = %.lr.ph.i.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %.01621.i.i.i, i64 8
  %i.og = load i8, ptr %i.of, align 8, !tbaa !31  ; 2 uses
  %i.oh = icmp eq i8 %i.og, 0
  br i1 %i.oh, label %.lr.ph.i.i.i, label %.critedge.i.i.i, !llvm.loop !220

.thread.i.i:                                      ; preds = %bb.ay
  %i.oi = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 256
  %i.oj = and i32 %.pn4.i.i.i, 255
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ok
  %.11723.i.i.i = load ptr, ptr %i.ol, align 8, !tbaa !172 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.on = load i8, ptr %i.om, align 1, !tbaa !31
  %.not.i24.i.i.i = icmp eq i8 %i.on, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %._crit_edge.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !31
  %i.oq = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.or = zext i8 %i.op to i64
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %i.or
  %.117.i.i.i = load ptr, ptr %i.os, align 8, !tbaa !172 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !31
  %.not.i.i.i.i187 = icmp eq i8 %i.ou, 0
  br i1 %.not.i.i.i.i187, label %.lr.ph26.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !221

._crit_edge.i.i.i:                                ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !31
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.ba, %._crit_edge.i.i.i
  %.lcssa8.sink.i.i = phi i8 [ %i.ow, %._crit_edge.i.i.i ], [ %i.og, %bb.ba ]
  %.2.i.i.i = phi ptr [ %.117.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.oc, %bb.ba ]
  %i.ox = zext i8 %.lcssa8.sink.i.i to i32
  %i.oy = add nsw i32 %i.ox, -1
  br label %.loopexit338

bb.bb:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE8iteratorppEv.exit
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ao, %bb.ap
  %i.pa = landingpad { ptr, i32 }
          cleanup
  %i.pb = load ptr, ptr %79, align 8, !tbaa !95   ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.kr
  br i1 %i.pc, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i188: ; preds = %bb.bc
  %i.pd = load i64, ptr %i.kr, align 8, !tbaa !31
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit190

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit190: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #21
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit190, %bb.bb
  %.pn73 = phi { ptr, i32 } [ %i.pa, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit190 ], [ %i.oz, %bb.bb ]
  %i.pf = load ptr, ptr %76, align 8, !tbaa !95   ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.kj
  br i1 %i.pg, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191: ; preds = %bb.bd
  %i.ph = load i64, ptr %i.kj, align 8, !tbaa !31
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit193

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit193: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

.loopexit338:                                     ; preds = %.lr.ph.i.i.i, %.critedge.i.i.i, %bb.az, %.loopexit339
  %.sroa.9300.0 = phi i32 [ 0, %.loopexit339 ], [ %i.oy, %.critedge.i.i.i ], [ %i.ob, %bb.az ], [ %i.ob, %.lr.ph.i.i.i ]
  %.sroa.0296.0 = phi ptr [ %.pn6.i.i.i, %.loopexit339 ], [ %.2.i.i.i, %.critedge.i.i.i ], [ %.pn6.i.i.i, %bb.az ], [ %.pn6.i.i.i, %.lr.ph.i.i.i ]
  %i.pj = and i32 %.sroa.9300.0, 255
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0296.0, i64 16
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %i.pk ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !146 ; 2 uses
  %i.pp = load i64, ptr %i.pm, align 8, !tbaa !222
  %.not = icmp ugt i64 %i.pp, %i.mt
  br i1 %.not, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %.loopexit338
  %i.pq = getelementptr [88 x i8], ptr %i.mq, i64 %i.po
  %i.pr = getelementptr i8, ptr %i.pq, i64 -80
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !150
  %i.pt = icmp ult i64 %i.mt, %i.ps
  br i1 %i.pt, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #21
  store i32 2, ptr %81, align 8, !tbaa !86
  store i64 %i.po, ptr %i.la, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lx, i8 0, i64 16, i1 false)
  store ptr %i.lb, ptr %82, align 8, !tbaa !84
  store i64 0, ptr %i.lc, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store i32 2, ptr %15, align 4, !tbaa !90
  store i32 0, ptr %i.ld, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store ptr %15, ptr %14, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.le, align 8, !tbaa !93
  store ptr %i.la, ptr %i.lf, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.lg, align 8, !tbaa !93
  %i.pu = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %82, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %14, i64 2)
          to label %bb.bg unwind label %bb.bi     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.pv = load ptr, ptr %82, align 8, !tbaa !95
  %i.pw = load i64, ptr %i.lc, align 8, !tbaa !85
  store i64 %i.pw, ptr %80, align 8
  store ptr %i.pv, ptr %i.lh, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %73, ptr noundef nonnull align 8 dereferenceable(48) %80)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.px = load ptr, ptr %82, align 8, !tbaa !95   ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.lb
  br i1 %i.py, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196: ; preds = %bb.bh
  %i.pz = load i64, ptr %i.lb, align 8, !tbaa !31
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit198

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit198: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #21
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf, %bb.bg
  %i.qb = landingpad { ptr, i32 }
          cleanup
  %i.qc = load ptr, ptr %82, align 8, !tbaa !95   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.lb
  br i1 %i.qd, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199: ; preds = %bb.bi
  %i.qe = load i64, ptr %i.lb, align 8, !tbaa !31
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit201

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit201: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #21
  br label %bb.bn

bb.bj:                                            ; preds = %.loopexit338, %bb.be, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit198, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #21
  store i32 4, ptr %84, align 8, !tbaa !134
  %i.qg = load ptr, ptr %73, align 8, !tbaa !95
  %i.qh = load i64, ptr %i.lj, align 8, !tbaa !85 ; 2 uses
  store i64 %i.qh, ptr %i.li, align 8
  store ptr %i.qg, ptr %i.lk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i8 0, i64 16, i1 false)
  store ptr %i.ll, ptr %85, align 8, !tbaa !84
  store i64 0, ptr %i.lm, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i32 4, ptr %12, align 4, !tbaa !90
  store i32 2, ptr %i.ln, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store i64 %i.qh, ptr %13, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %12, ptr %11, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.lo, align 8, !tbaa !93
  store ptr %13, ptr %i.lp, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.lq, align 8, !tbaa !93
  store ptr %i.li, ptr %i.lr, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ls, align 8, !tbaa !93
  %i.qi = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %85, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.15, i64 6, ptr nonnull %11, i64 3)
          to label %bb.bk unwind label %bb.bm     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.qj = load ptr, ptr %85, align 8, !tbaa !95
  %i.qk = load i64, ptr %i.lm, align 8, !tbaa !85
  store i64 %i.qk, ptr %83, align 8
  store ptr %i.qj, ptr %i.lt, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %51, ptr noundef nonnull align 8 dereferenceable(48) %83)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ql = load ptr, ptr %85, align 8, !tbaa !95   ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.ll
  br i1 %i.qm, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206: ; preds = %bb.bl
  %i.qn = load i64, ptr %i.ll, align 8, !tbaa !31
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit208

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit208: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #21
  %i.qp = load ptr, ptr %73, align 8, !tbaa !95   ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.lu
  br i1 %i.qq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit208
  %i.qr = load i64, ptr %i.lu, align 8, !tbaa !31
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0306.0467, i64 1 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.9308.0466, i64 16 ; 2 uses
  %i.qv = load i8, ptr %i.qt, align 1, !tbaa !180 ; 2 uses
  %i.qw = icmp slt i8 %i.qv, -1
  br i1 %i.qw, label %.lr.ph.i.i212, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i212:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %.lr.ph.i.i212
  %i.qx = phi ptr [ %i.ra, %.lr.ph.i.i212 ], [ %i.qu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ]
  %i.qy = phi ptr [ %i.qz, %.lr.ph.i.i212 ], [ %i.qt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ]
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 1 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 16 ; 2 uses
  %i.rb = load i8, ptr %i.qz, align 1, !tbaa !180 ; 2 uses
  %i.rc = icmp slt i8 %i.rb, -1
  br i1 %i.rc, label %.lr.ph.i.i212, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !182

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %.sroa.9308.1 = phi ptr [ %i.qu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.ra, %.lr.ph.i.i212 ]
  %.sroa.0306.1 = phi ptr [ %i.qt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.qz, %.lr.ph.i.i212 ]
  %i.rd = phi i8 [ %i.qv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.rb, %.lr.ph.i.i212 ]
  %i.re = icmp eq i8 %i.rd, -1
  br i1 %i.re, label %._crit_edge470, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE8iteratorppEv.exit, !prof !179

bb.bm:                                            ; preds = %bb.bj, %bb.bk
  %i.rf = landingpad { ptr, i32 }
          cleanup
  %i.rg = load ptr, ptr %85, align 8, !tbaa !95   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.ll
  br i1 %i.rh, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213: ; preds = %bb.bm
  %i.ri = load i64, ptr %i.ll, align 8, !tbaa !31
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit215

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit215: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #21
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit201, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit215
  %.pn79 = phi { ptr, i32 } [ %i.rf, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit215 ], [ %i.qb, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit201 ] ; 2 uses
  %i.rk = load ptr, ptr %73, align 8, !tbaa !95   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.lu
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.bn
  %i.rm = load i64, ptr %i.lu, align 8, !tbaa !31
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.rn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit193
  %.pn79.pn = phi { ptr, i32 } [ %.pn73, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit193 ], [ %.pn79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %.pn79, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  br label %bb.ck

._crit_edge470:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE8iterator21skip_empty_or_deletedEv.exit.i, %._crit_edge464
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #21
  %i.ro = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 6 uses
  store ptr %i.ro, ptr %86, align 8, !tbaa !84
  %i.rp = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 2 uses
  store i64 0, ptr %i.rp, align 8, !tbaa !85
  store i8 0, ptr %i.ro, align 8, !tbaa !31
  %i.rq = load i64, ptr %1, align 8               ; 2 uses
  %i.rr = lshr i64 %i.rq, 17                      ; 3 uses
  %.not.i.i.i.i219 = icmp eq i64 %i.rr, 0
  br i1 %.not.i.i.i.i219, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2EmRKS4_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge470
  %i.rs = shl nuw nsw i64 %i.rr, 4                ; 3 uses
  %i.rt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #24
          to label %.noexc220 unwind label %bb.br ; 4 uses

.noexc220:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ru = getelementptr inbounds nuw [16 x i8], ptr %i.rt, i64 %i.rr
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rt, i8 0, i64 %i.rs, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.rt, i64 %i.rs
  %.pr = load i64, ptr %1, align 8
  %i.rv = ptrtoint ptr %i.ru to i64
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2EmRKS4_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2EmRKS4_.exit: ; preds = %.noexc220, %._crit_edge470
  %i.rw = phi i64 [ %.pr, %.noexc220 ], [ %i.rq, %._crit_edge470 ] ; 3 uses
  %.sroa.0289.0 = phi ptr [ %i.rt, %.noexc220 ], [ null, %._crit_edge470 ] ; 9 uses
  %.sink.i = phi i64 [ %i.rv, %.noexc220 ], [ 0, %._crit_edge470 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc220 ], [ null, %._crit_edge470 ] ; 2 uses
  %.not.i.i221 = icmp ult i64 %i.rw, 131072
  br i1 %.not.i.i221, label %.preheader, label %bb.bo, !prof !179

bb.bo:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2EmRKS4_.exit
  %i.rx = and i64 %i.rw, 254
  %i.ry = icmp eq i64 %i.rx, 0
  br i1 %i.ry, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.rz, align 8, !tbaa !31
  br label %.lr.ph475.preheader

bb.bq:                                            ; preds = %bb.bo
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i222 = load ptr, ptr %i.sa, align 8, !tbaa !31, !nonnull !124, !noundef !124 ; 5 uses
  %110 = and i64 %i.rw, 255
  %notmask.i.i.i.i.i223 = shl nsw i64 -1, %110    ; 2 uses
  %111 = icmp samesign ugt i64 %notmask.i.i.i.i.i223, -3
  %112 = sub i64 15, %notmask.i.i.i.i.i223
  %113 = select i1 %111, i64 0, i64 %112
  %114 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i222, i64 %113
  %115 = icmp ule ptr %114, %1
  %116 = icmp ule ptr %i.ey, %.sroa.0.0.copyload.i.i.i.i222
  %117 = or i1 %116, %115
  call void @llvm.assume(i1 %117)
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i224 = load ptr, ptr %i.sb, align 8, !tbaa !31 ; 2 uses
  %i.sc = load i8, ptr %.sroa.0.0.copyload.i.i.i.i222, align 1, !tbaa !180
  %i.sd = icmp slt i8 %i.sc, -1
  br i1 %i.sd, label %.lr.ph.i.i229, label %.lr.ph475.preheader

.lr.ph475.preheader:                              ; preds = %.lr.ph.i.i229, %bb.bp, %bb.bq
  %.sroa.0285.0473.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i.i222, %bb.bq ], [ %i.sg, %.lr.ph.i.i229 ]
  %.sroa.9.0472.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i224, %bb.bq ], [ %i.sh, %.lr.ph.i.i229 ]
  br label %.lr.ph475

.lr.ph.i.i229:                                    ; preds = %bb.bq, %.lr.ph.i.i229
  %i.se = phi ptr [ %i.sh, %.lr.ph.i.i229 ], [ %.sroa.0.0.copyload.i.i.i224, %bb.bq ]
  %i.sf = phi ptr [ %i.sg, %.lr.ph.i.i229 ], [ %.sroa.0.0.copyload.i.i.i.i222, %bb.bq ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 1 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 40 ; 2 uses
  %i.si = load i8, ptr %i.sg, align 1, !tbaa !180
  %i.sj = icmp slt i8 %i.si, -1
  br i1 %i.sj, label %.lr.ph.i.i229, label %.lr.ph475.preheader, !llvm.loop !223

.preheader:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8iterator21skip_empty_or_deletedEv.exit.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2EmRKS4_.exit
  %.not337476 = icmp eq ptr %.sroa.0289.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not337476, label %._crit_edge479, label %.lr.ph478

.lr.ph478:                                        ; preds = %.preheader
  %i.sk = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 5 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.so = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.sr = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ss = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.st = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.su = getelementptr inbounds nuw i8, ptr %89, i64 16
  br label %bb.bs

bb.br:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit274

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8iterator21skip_empty_or_deletedEv.exit.i
  %.sroa.0285.0473 = phi ptr [ %.sroa.0285.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.0285.0473.ph, %.lr.ph475.preheader ]
  %.sroa.9.0472 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.9.0472.ph, %.lr.ph475.preheader ] ; 4 uses
  %i.sw = load ptr, ptr %.sroa.9.0472, align 8, !tbaa !95
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.9.0472, i64 8
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !85
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.9.0472, i64 32
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !32
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0289.0, i64 %i.ta ; 2 uses
  store i64 %i.sy, ptr %i.tb, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store ptr %i.sw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0285.0473, i64 1 ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.9.0472, i64 40 ; 2 uses
  %i.te = load i8, ptr %i.tc, align 1, !tbaa !180 ; 2 uses
  %i.tf = icmp slt i8 %i.te, -1
  br i1 %i.tf, label %.lr.ph.i.i232, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i232:                                    ; preds = %.lr.ph475, %.lr.ph.i.i232
  %i.tg = phi ptr [ %i.tj, %.lr.ph.i.i232 ], [ %i.td, %.lr.ph475 ]
  %i.th = phi ptr [ %i.ti, %.lr.ph.i.i232 ], [ %i.tc, %.lr.ph475 ]
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 40 ; 2 uses
  %i.tk = load i8, ptr %i.ti, align 1, !tbaa !180 ; 2 uses
  %i.tl = icmp slt i8 %i.tk, -1
  br i1 %i.tl, label %.lr.ph.i.i232, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !223

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i232, %.lr.ph475
  %.sroa.9.1 = phi ptr [ %i.td, %.lr.ph475 ], [ %i.tj, %.lr.ph.i.i232 ]
  %.sroa.0285.1 = phi ptr [ %i.tc, %.lr.ph475 ], [ %i.ti, %.lr.ph.i.i232 ]
  %i.tm = phi i8 [ %i.te, %.lr.ph475 ], [ %i.tk, %.lr.ph.i.i232 ]
  %i.tn = icmp eq i8 %i.tm, -1
  br i1 %i.tn, label %.preheader, label %.lr.ph475, !prof !179

._crit_edge479:                                   ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit240, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #21
  store i32 7, ptr %91, align 8, !tbaa !86
  %i.to = getelementptr inbounds nuw i8, ptr %91, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !224
  store i64 %i.tq, ptr %i.to, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #21
  %i.tr = getelementptr inbounds nuw i8, ptr %92, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tr, i8 0, i64 16, i1 false)
  %i.ts = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 5 uses
  store ptr %i.ts, ptr %92, align 8, !tbaa !84
  %i.tt = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  store i64 0, ptr %i.tt, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i32 7, ptr %10, align 4, !tbaa !90
  %i.tu = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.tu, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %10, ptr %9, align 8, !tbaa !31
  %i.tv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.tv, align 8, !tbaa !93
  %i.tw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.to, ptr %i.tw, align 8, !tbaa !31
  %i.tx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.tx, align 8, !tbaa !93
  %i.ty = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %92, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %9, i64 2)
          to label %bb.bw unwind label %bb.ce     ; 0 uses

bb.bs:                                            ; preds = %.lr.ph478, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit240
  %.sroa.0281.0477 = phi ptr [ %.sroa.0289.0, %.lr.ph478 ], [ %i.uh, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit240 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #21
  store i32 6, ptr %88, align 8, !tbaa !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0281.0477, i64 16, i1 false), !tbaa.struct !250
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.su, i8 0, i64 16, i1 false)
  store ptr %i.sl, ptr %89, align 8, !tbaa !84
  store i64 0, ptr %i.sm, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 6, ptr %7, align 4, !tbaa !90
  store i32 2, ptr %i.sn, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.tz = load i64, ptr %i.sk, align 8, !tbaa !251
  store i64 %i.tz, ptr %8, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %7, ptr %6, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.so, align 8, !tbaa !93
  store ptr %8, ptr %i.sp, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.sq, align 8, !tbaa !93
  store ptr %i.sk, ptr %i.sr, align 8, !tbaa !31
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ss, align 8, !tbaa !93
  %i.ua = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %89, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.15, i64 6, ptr nonnull %6, i64 3)
          to label %bb.bt unwind label %bb.bv     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ub = load ptr, ptr %89, align 8, !tbaa !95
  %i.uc = load i64, ptr %i.sm, align 8, !tbaa !85
  store i64 %i.uc, ptr %87, align 8
  store ptr %i.ub, ptr %i.st, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %86, ptr noundef nonnull align 8 dereferenceable(48) %87)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ud = load ptr, ptr %89, align 8, !tbaa !95   ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.sl
  br i1 %i.ue, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238: ; preds = %bb.bu
  %i.uf = load i64, ptr %i.sl, align 8, !tbaa !31
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.ug) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit240

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit240: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #21
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0281.0477, i64 16 ; 2 uses
  %.not337 = icmp eq ptr %i.uh, %.0.lcssa.i.i.i.i.i
  br i1 %.not337, label %._crit_edge479, label %bb.bs

bb.bv:                                            ; preds = %bb.bs, %bb.bt
  %i.ui = landingpad { ptr, i32 }
          cleanup
  %i.uj = load ptr, ptr %89, align 8, !tbaa !95   ; 2 uses
  %i.uk = icmp eq ptr %i.uj, %i.sl
  br i1 %i.uk, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241: ; preds = %bb.bv
  %i.ul = load i64, ptr %i.sl, align 8, !tbaa !31
  %i.um = add i64 %i.ul, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.um) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit243

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit243: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #21
  br label %bb.ci

bb.bw:                                            ; preds = %._crit_edge479
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.un = load ptr, ptr %92, align 8, !tbaa !95
  %i.uo = load i64, ptr %i.tt, align 8, !tbaa !85
  store i64 %i.uo, ptr %90, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr %i.un, ptr %i.up, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %51, ptr noundef nonnull align 8 dereferenceable(48) %90)
          to label %bb.bx unwind label %bb.ce

bb.bx:                                            ; preds = %bb.bw
  %i.uq = load ptr, ptr %92, align 8, !tbaa !95   ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.ts
  br i1 %i.ur, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244: ; preds = %bb.bx
  %i.us = load i64, ptr %i.ts, align 8, !tbaa !31
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ut) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit246

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit246: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #21
  store i32 13, ptr %94, align 8, !tbaa !86
  %i.uu = getelementptr inbounds nuw i8, ptr %94, i64 8 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !252
  store i64 %i.uw, ptr %i.uu, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #21
  %i.ux = getelementptr inbounds nuw i8, ptr %95, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ux, i8 0, i64 16, i1 false)
  %i.uy = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 5 uses
  store ptr %i.uy, ptr %95, align 8, !tbaa !84
  %i.uz = getelementptr inbounds nuw i8, ptr %95, i64 8 ; 2 uses
  store i64 0, ptr %i.uz, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i32 13, ptr %5, align 4, !tbaa !90
  %i.va = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.va, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !31
  %i.vb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.vb, align 8, !tbaa !93
  %i.vc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.uu, ptr %i.vc, align 8, !tbaa !31
  %i.vd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.vd, align 8, !tbaa !93
  %i.ve = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %95, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %4, i64 2)
          to label %bb.by unwind label %bb.cf     ; 0 uses

bb.by:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit246
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.vf = load ptr, ptr %95, align 8, !tbaa !95
  %i.vg = load i64, ptr %i.uz, align 8, !tbaa !85
  store i64 %i.vg, ptr %93, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %i.vf, ptr %i.vh, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %51, ptr noundef nonnull align 8 dereferenceable(48) %93)
          to label %bb.bz unwind label %bb.cf

bb.bz:                                            ; preds = %bb.by
  %i.vi = load ptr, ptr %95, align 8, !tbaa !95   ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.uy
  br i1 %i.vj, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249: ; preds = %bb.bz
  %i.vk = load i64, ptr %i.uy, align 8, !tbaa !31
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vl) #22
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit251

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit251: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #21
  store i32 14, ptr %97, align 8, !tbaa !86
  %i.vm = getelementptr inbounds nuw i8, ptr %97, i64 8 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !253
  store i64 %i.vo, ptr %i.vm, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #21
  %i.vp = getelementptr inbounds nuw i8, ptr %98, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, i8 0, i64 16, i1 false)
  %i.vq = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 5 uses
  store ptr %i.vq, ptr %98, align 8, !tbaa !84
  %i.vr = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 2 uses
  store i64 0, ptr %i.vr, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 14, ptr %3, align 4, !tbaa !90
  %i.vs = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.vs, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %3, ptr %2, align 8, !tbaa !31
  %i.vt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.vt, align 8, !tbaa !93
  %i.vu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.vm, ptr %i.vu, align 8, !tbaa !31
  %i.vv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.vv, align 8, !tbaa !93
  %i.vw = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %98, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.13, i64 4, ptr nonnull %2, i64 2)
          to label %bb.ca unwind label %bb.cg     ; 0 uses

bb.ca:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit251
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.vx = load ptr, ptr %98, align 8, !tbaa !95
  %i.vy = load i64, ptr %i.vr, align 8, !tbaa !85
  store i64 %i.vy, ptr %96, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %96, i64 8
  store ptr %i.vx, ptr %i.vz, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %51, ptr noundef nonnull align 8 dereferenceable(48) %96)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.wa = load ptr, ptr %98, align 8, !tbaa !95   ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.vq
  br i1 %i.wb, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i254: ; preds = %bb.cb
  %i.wc = load i64, ptr %i.vq, align 8, !tbaa !31
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.wd) #22
end_hunk_1
begin_hunk_2_@"_ZZN4absl12lts_2026052618debugging_internal14ProfileBuilder18AddCurrentMappingsEvEN3$_08__invokeEP12dl_phdr_infomPv":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !269
  %i.dt = load ptr, ptr %3, align 8, !tbaa !95, !noalias !269 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.au
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i: ; preds = %bb.al
  %i.dv = load i64, ptr %i.au, align 8, !tbaa !31, !noalias !269
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #22, !noalias !269
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !269
  br label %common.resume.i

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ac, %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %.05088.i.i, i64 %i.cf ; 2 uses
  %i.dy = icmp ult ptr %i.dx, %i.bm
  br i1 %i.dy, label %bb.y, label %.thread.loopexit.i.i

.thread.loopexit.i.i:                             ; preds = %bb.am, %bb.aa, %bb.z, %bb.y
  %.pre.i.i = load i16, ptr %i.aw, align 8, !tbaa !258, !noalias !269
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.loopexit.i.i, %bb.x, %bb.w
  %i.dz = phi i16 [ %.pre.i.i, %.thread.loopexit.i.i ], [ %i.bb, %bb.x ], [ %i.bb, %bb.w ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ea = zext i16 %i.dz to i64
  %i.eb = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ea
  br i1 %i.eb, label %bb.w, label %._crit_edge.i.i, !llvm.loop !278

._crit_edge.i.i:                                  ; preds = %.thread.i.i
  %.pre97.i.i = load ptr, ptr %3, align 8, !tbaa !95, !noalias !269 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ec, ptr %5, align 8, !tbaa !84, !alias.scope !269
  %i.ed = icmp eq ptr %.pre97.i.i, %i.au
  %.pre.i = load i64, ptr %i.av, align 8, !tbaa !85, !noalias !269 ; 2 uses
  br i1 %i.ed, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i72.i.i

bb.an:                                            ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.ee = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %.pre.i, %._crit_edge.i.i ] ; 3 uses
  %i.ef = phi ptr [ %i.ay, %._crit_edge.thread.i.i ], [ %i.ec, %._crit_edge.i.i ]
  %i.eg = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.eg)
  %i.eh = add nuw nsw i64 %i.ee, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ef, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.eh, i1 false)
  br label %.thread121.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i72.i.i: ; preds = %._crit_edge.i.i
  store ptr %.pre97.i.i, ptr %5, align 8, !tbaa !95, !alias.scope !269
  %i.ei = load i64, ptr %i.au, align 8, !tbaa !31, !noalias !269
  store i64 %i.ei, ptr %i.ec, align 8, !tbaa !31, !alias.scope !269
  br label %.thread121.i.i

.thread121.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i72.i.i, %bb.an
  %i.ej = phi i64 [ %i.ee, %bb.an ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i72.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !85, !alias.scope !269
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110GetBuildIdB5cxx11EPK12dl_phdr_info.exit.i

bb.ao:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.el, ptr %5, align 8, !tbaa !84, !alias.scope !269
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.em, align 8, !tbaa !85, !alias.scope !269
  store i8 0, ptr %i.el, align 8, !tbaa !31, !alias.scope !269
  %.pre99.i.i = load ptr, ptr %3, align 8, !tbaa !95, !noalias !269 ; 2 uses
  %i.en = icmp eq ptr %.pre99.i.i, %i.au
  br i1 %i.en, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110GetBuildIdB5cxx11EPK12dl_phdr_info.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i: ; preds = %bb.ao
  %i.eo = load i64, ptr %i.au, align 8, !tbaa !31, !noalias !269
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %.pre99.i.i, i64 noundef %i.ep) #22
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110GetBuildIdB5cxx11EPK12dl_phdr_info.exit.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110GetBuildIdB5cxx11EPK12dl_phdr_info.exit.i: ; preds = %.thread121.i.i, %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !269
  %i.eq = load i16, ptr %i.aw, align 8, !tbaa !258 ; 2 uses
  %.not10.i = icmp eq i16 %i.eq, 0
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110GetBuildIdB5cxx11EPK12dl_phdr_info.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ap

._crit_edge.i:                                    ; preds = %bb.ar, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110GetBuildIdB5cxx11EPK12dl_phdr_info.exit.i
  %i.et = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %._crit_edge.i
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !31
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %"_ZZN4absl12lts_2026052618debugging_internal14ProfileBuilder18AddCurrentMappingsEvENK3$_0clEP12dl_phdr_infomPv.exit"

bb.ap:                                            ; preds = %bb.ar, %.lr.ph.i
  %i.ey = phi i16 [ %i.eq, %.lr.ph.i ], [ %i.fo, %bb.ar ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ar ] ; 2 uses
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.fa = getelementptr inbounds nuw [56 x i8], ptr %i.ez, i64 %indvars.iv.i ; 4 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !261
  %.not40.i = icmp eq i32 %i.fb, 1
  br i1 %.not40.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fc = load i64, ptr %0, align 8, !tbaa !263
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !264
  %i.ff = add i64 %i.fe, %i.fc                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !279
  %i.fi = add i64 %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !280
  %i.fl = load ptr, ptr %5, align 8, !tbaa !95
  %i.fm = load i64, ptr %i.er, align 8, !tbaa !85
  store i64 %i.fm, ptr %6, align 8
  store ptr %i.fl, ptr %i.es, align 8
  %i.fn = invoke noundef i64 @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder10AddMappingEmmmSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr noundef nonnull align 8 dereferenceable(168) %2, i64 noundef %i.ff, i64 noundef %i.fi, i64 noundef %i.fk, i64 %i.at, ptr nonnull %.1..i, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6)
          to label %._crit_edge15.i unwind label %bb.as ; 0 uses

._crit_edge15.i:                                  ; preds = %bb.aq
  %.pre16.i = load i16, ptr %i.aw, align 8, !tbaa !258
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge15.i, %bb.ap
  %i.fo = phi i16 [ %.pre16.i, %._crit_edge15.i ], [ %i.ey, %bb.ap ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fp = zext i16 %i.fo to i64
  %i.fq = icmp samesign ult i64 %indvars.iv.next.i, %i.fp
  br i1 %i.fq, label %bb.ap, label %._crit_edge.i, !llvm.loop !281

bb.as:                                            ; preds = %bb.aq
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %bb.as
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !31
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %common.resume.i

"_ZZN4absl12lts_2026052618debugging_internal14ProfileBuilder18AddCurrentMappingsEvENK3$_0clEP12dl_phdr_infomPv.exit": ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZN4absl12lts_2026052616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableclISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJRSP_EEST_IJOSB_EEEEESH_INSL_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !282, !nonnull !124, !align !284 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.c = load i64, ptr %i.b, align 8, !noalias !285 ; 2 uses
  %i.d = and i64 %i.c, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %.not.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !31, !noalias !291 ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !95, !noalias !291
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !85, !noalias !291 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !38, !noalias !291
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !152, !noalias !291
  %i.j = icmp eq i64 %i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.j, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, i64 %i.i), !noalias !291
  %i.l = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread5, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread5: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !291
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !291
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !292, !alias.scope !291
  br label %bb.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !291
  store ptr %i.b, ptr %6, align 8, !tbaa !295, !noalias !291
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.n, align 8, !tbaa !22, !noalias !291
  %i.o = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %6, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !291 ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = extractvalue { ptr, ptr } %i.o, 1
  store ptr %i.p, ptr %0, align 8, !alias.scope !291
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !291
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.r, align 8, !tbaa !292, !alias.scope !291
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !291
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !292, !range !75
  %i.s = trunc nuw i8 %.pre to i1
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !22
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load i64, ptr %5, align 8, !tbaa !30
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !38 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !152 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 16 ; 3 uses
  store ptr %i.w, ptr %.sroa.2.0.copyload, align 8, !tbaa !84
  %i.x = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, null
  %i.y = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.y, %i.x
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !38
  %i.z = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.z, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.f
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aa, ptr %.sroa.2.0.copyload, align 8, !tbaa !95
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ac = phi ptr [ %i.aa, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSt17basic_string_viewIcS7_EEESQ_IJOSB_EEEEEvNSL_8iteratorEDpOT_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !31
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !31
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSt17basic_string_viewIcS7_EEESQ_IJOSB_EEEEEvNSL_8iteratorEDpOT_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSt17basic_string_viewIcS7_EEESQ_IJOSB_EEEEEvNSL_8iteratorEDpOT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSt17basic_string_viewIcS7_EEESQ_IJOSB_EEEEEvNSL_8iteratorEDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g, %bb.h
  %i.ae = inttoptr i64 %i.v to ptr
  %i.af = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !85
  %i.ah = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !9
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !297
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit.thread5, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSt17basic_string_viewIcS7_EEESQ_IJOSB_EEEEEvNSL_8iteratorEDpOT_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !31 ; 3 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %3 = and i64 %i.b, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %3         ; 2 uses
  %4 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %5 = sub i64 15, %notmask.i.i.i.i.i
  %6 = select i1 %4, i64 0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %6
  %8 = icmp ule ptr %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %10 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i.i
  %11 = select i1 %8, i1 true, i1 %10
  tail call void @llvm.assume(i1 %11)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !152
  %i.e = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) ; 3 uses
  %i.f = load i64, ptr %1, align 8, !noalias !299
  %i.g = and i64 %i.f, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.g     ; 5 uses
  %i.h = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.i = lshr i64 %i.e, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !31 ; 5 uses
  %12 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -3
  %13 = sub i64 15, %notmask.i.i.i.i.i.i          ; 3 uses
  %14 = select i1 %12, i64 0, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %14
  %16 = icmp ule ptr %15, %1
  %17 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i
  %18 = select i1 %16, i1 true, i1 %17
  tail call void @llvm.assume(i1 %18)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.k, align 8, !tbaa !31 ; 4 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.e, %bb.a ], [ %i.an, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.am, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.h               ; 5 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.n, i32 0, i32 3, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !31 ; 2 uses
  %i.q = icmp eq <16 x i8> %i.m, %i.p
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32
  %i.t = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.s) #25, !srcloc !302 ; 2 uses
  %.not68 = icmp eq i32 %i.t, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementISt17basic_string_viewIcS7_ENS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSP_DpOSQ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !152
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.t, %.lr.ph ], [ %i.ag, %.critedge.i ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.sroa.639.0, %i.w
  %i.y = and i64 %i.x, %i.h                       ; 3 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !85
  %i.ad = icmp eq i64 %i.ac, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ad, label %bb.d, label %.critedge.i, !prof !303

bb.d:                                             ; preds = %bb.c
  br i1 %i.u, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aa, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.af = add i32 %.sroa.024.069, -1
  %i.ag = and i32 %i.af, %.sroa.024.069           ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementISt17basic_string_viewIcS7_ENS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSP_DpOSQ_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementISt17basic_string_viewIcS7_ENS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSP_DpOSQ_.exit: ; preds = %.critedge.i, %bb.b
  %i.ah = icmp eq <16 x i8> %i.p, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = zext i16 %i.ai to i32
  %i.ak = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aj) #25, !srcloc !302 ; 2 uses
  %.not62 = icmp eq i32 %i.ak, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !179

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementISt17basic_string_viewIcS7_ENS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSP_DpOSQ_.exit
  %i.al = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i32 %i.ak, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !31
  %.pre = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.k, align 8, !tbaa !31
  %.pre76 = and i64 %.pre, 255
  %.pre77 = shl nsw i64 -1, %.pre76               ; 2 uses
  %.pre78 = sub i64 15, %.pre77
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementISt17basic_string_viewIcS7_ENS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSP_DpOSQ_.exit
  %i.am = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.an = add i64 %i.am, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.pre-phi79 = phi i64 [ %.pre78, %bb.e ], [ %13, %bb.d ], [ %13, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %notmask.i.i.i.i.i8.pre-phi = phi i64 [ %.pre77, %bb.e ], [ %notmask.i.i.i.i.i.i, %bb.d ], [ %notmask.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.349.ph = phi i64 [ %i.al, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %19 = icmp samesign ugt i64 %notmask.i.i.i.i.i8.pre-phi, -3
  %20 = select i1 %19, i64 0, i64 %.pre-phi79
  %21 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %20
  %22 = icmp ule ptr %21, %1
  %23 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i.i7
  %24 = select i1 %22, i1 true, i1 %23
  tail call void @llvm.assume(i1 %24)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.ao, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.aq, align 8, !tbaa !292
  ret void
}

declare { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !85
  %i.d = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %2, ptr noundef %i.a, i64 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19transfer_n_slots_fnEPvSM_SM_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit
  %.014 = phi ptr [ %i.r, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit ], [ %1, %bb.a ] ; 6 uses
  %.0913 = phi ptr [ %i.q, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit ], [ %2, %bb.a ] ; 7 uses
  %.01012 = phi i64 [ %i.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit ], [ %3, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !84
  %i.b = load ptr, ptr %.0913, align 8, !tbaa !95 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.014, align 8, !tbaa !95
  %i.i = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.i, ptr %i.a, align 8, !tbaa !31
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !85
  store ptr %i.c, ptr %.0913, align 8, !tbaa !95
  store i64 0, ptr %i.j, align 8, !tbaa !85
  store i8 0, ptr %i.c, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !297
  store i64 %i.o, ptr %i.m, align 8, !tbaa !297
  %i.p = add i64 %.01012, -1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 40
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !304

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvS7_m(ptr noundef %0, i64 noundef %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2026052618container_internal8AllocateILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvPT0_m.exit, !prof !179

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZN4absl12lts_2026052618container_internal8AllocateILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  %i.b = select i1 %i.a, i64 8, i64 0
  %.0.i.i = select i1 %5, i64 9, i64 %i.b, !prof !179 ; 2 uses
  %i.c = icmp ult i64 %1, 2
  %i.d = add i64 %1, 15
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = add i64 %i.e, %4
  %i.g = add i64 %i.f, %.0.i.i
  %i.h = sub i64 0, %4
  %i.i = and i64 %i.g, %i.h
  %i.j = mul i64 %3, %1
  %i.k = sub nsw i64 0, %.0.i.i
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = add i64 %i.j, 7
  %i.n = add i64 %i.m, %i.i
  %i.o = and i64 %i.n, -8
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 3 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !31 ; 5 uses
  %5 = sub i64 15, %notmask.i.i
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %5
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #25, !srcloc !302 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !305

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.sroa.052.061 = phi i32 [ %i.ec, %bb.t ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.x ; 6 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255                      ; 4 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !95  ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !85 ; 14 uses
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i.i.i = load i64, ptr %i.ag, align 1
  %i.ah = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i34.i.i = load i32, ptr %i.ac, align 1
  %i.ai = zext i32 %.0.copyload.i.i34.i.i to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %.0.copyload.i4.i.i.i = load i32, ptr %i.al, align 1
  %i.am = zext i32 %.0.copyload.i4.i.i.i to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ac, align 1, !tbaa !31
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !31
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = lshr i64 %i.ae, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !31
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.av, %i.ba
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.an, %bb.e ], [ %i.bb, %bb.g ], [ 87, %bb.f ]
  %i.bc = xor i64 %.0.copyload.i.i.i.i, %.0.i.i.i
  %i.bd = xor i64 %i.bc, %i.ab
  %i.be = zext i64 %i.bd to i128
  %i.bf = mul nuw nsw i128 %i.be, 8779197792823184629 ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bj = icmp ult i64 %i.ae, 17
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i38.i.i = load i64, ptr %i.bk, align 1
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ac, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %.0.copyload.i.i2.i.i.i = load i64, ptr %i.bm, align 1
  %i.bn = xor i64 %.0.copyload.i.i38.i.i, %.0.copyload.i.i.i.i.i
  %i.bo = xor i64 %i.bn, %i.ab
  %i.bp = xor i64 %.0.copyload.i.i2.i.i.i, 8779197792823184629
  %i.bq = zext i64 %i.bo to i128
  %i.br = zext i64 %i.bp to i128
  %i.bs = mul nuw i128 %i.bq, %i.br               ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = xor i128 %i.bt, %i.bs
  %i.bv = trunc i128 %i.bu to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = icmp ult i64 %i.ae, 33
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i42.i.i = load i64, ptr %i.bx, align 1
  %i.by = xor i64 %.0.copyload.i.i42.i.i, %i.ab   ; 2 uses
  %.0.copyload.i.i43.i.i = load i64, ptr %i.ac, align 1
  %i.bz = xor i64 %.0.copyload.i.i43.i.i, 1376283091369227076
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i.i44.i.i = load i64, ptr %i.ca, align 1
  %i.cb = xor i64 %.0.copyload.i.i44.i.i, %i.by
  %i.cc = zext i64 %i.bz to i128
  %i.cd = zext i64 %i.cb to i128
  %i.ce = mul nuw i128 %i.cd, %i.cc               ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ac, i64 %i.ae  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -16
  %.0.copyload.i.i48.i.i = load i64, ptr %i.cg, align 1
  %i.ch = xor i64 %.0.copyload.i.i48.i.i, 589684135938649225
  %i.ci = getelementptr i8, ptr %i.cf, i64 -8
  %.0.copyload.i.i49.i.i = load i64, ptr %i.ci, align 1
  %i.cj = xor i64 %.0.copyload.i.i49.i.i, %i.by
  %i.ck = zext i64 %i.ch to i128
  %i.cl = zext i64 %i.cj to i128
  %i.cm = mul nuw i128 %i.cl, %i.ck               ; 2 uses
  %i.cn = xor i128 %i.cm, %i.ce
  %i.co = lshr i128 %i.cn, 64
  %i.cp = xor i128 %i.ce, %i.co
  %i.cq = xor i128 %i.cp, %i.cm
  %i.cr = trunc i128 %i.cq to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.l:                                             ; preds = %bb.j
  %i.cs = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %i.ab, ptr noundef %i.ac, i64 noundef %i.ae)
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, %bb.i, %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.bi, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i ], [ %i.bv, %bb.i ], [ %i.cr, %bb.k ], [ %i.cs, %bb.l ] ; 6 uses
  %i.ct = lshr i64 %.0.i.i, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8           ; 2 uses
  %i.cv = sub i64 %i.x, %.0.i.i                   ; 2 uses
  %i.cw = and i64 %i.i, %i.cv
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %bb.n, !prof !268

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.cy = and i64 %i.cv, 15
  %i.cz = add i64 %i.cy, %.0.i.i
  %i.da = and i64 %i.cz, %i.c
  br label %bb.r

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.db = and i64 %.0.i.i, %i.d
  %.not.i = icmp ult i64 %i.db, %i.x
  br i1 %.not.i, label %bb.o, label %bb.q, !prof !268

bb.o:                                             ; preds = %bb.n
  %i.dc = and i64 %.0.i.i, %i.c                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.dc
  %i.de = load <16 x i8>, ptr %i.dd, align 1, !tbaa !31
  %i.df = icmp slt <16 x i8> %i.de, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = zext i16 %i.dg to i32
  %i.di = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dh) #25, !srcloc !302 ; 2 uses
  %.not26.i = icmp eq i32 %i.di, 0
  br i1 %.not26.i, label %bb.q, label %bb.p, !prof !179

bb.p:                                             ; preds = %bb.o
  %i.dj = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.di, i1 true)
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add nuw i64 %i.dc, %i.dk
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cu, i64 noundef %i.x, i64 noundef %.0.i.i)
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.m
  %.sink27.i = phi i64 [ %i.dl, %bb.p ], [ %i.da, %bb.m ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.cu, ptr %i.dm, align 1, !tbaa !180
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 3 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !84
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !95  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ds = load i64, ptr %i.ad, align 8, !tbaa !85 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 16
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i64 %i.ds, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(1) %i.dq, i64 %i.du, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !95
  %i.dv = load i64, ptr %i.dq, align 8, !tbaa !31
  store i64 %i.dv, ptr %i.do, align 8, !tbaa !31
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = load i64, ptr %i.ad, align 8, !tbaa !85
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !85
  store ptr %i.dq, ptr %i.y, align 8, !tbaa !95
  store i64 0, ptr %i.ad, align 8, !tbaa !85
  store i8 0, ptr %i.dq, align 8, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !297
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !297
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit, %bb.q
  %i.eb = add i32 %.sroa.052.061, -1
  %i.ec = and i32 %i.eb, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i32 %i.ec, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i.i = load i64, ptr %i.b, align 1
  %i.c = icmp samesign ugt i64 %2, 3
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i34.i = load i32, ptr %1, align 1
  %i.d = zext i32 %.0.copyload.i.i34.i to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.g, align 1
  %i.h = zext i32 %.0.copyload.i4.i.i to i64
  %i.i = or disjoint i64 %i.e, %i.h
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %1, align 1, !tbaa !31
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 16
  %i.m = getelementptr i8, ptr %1, i64 %2
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !31
  %i.p = zext i8 %i.o to i64
  %i.q = or disjoint i64 %i.l, %i.p
  %i.r = lshr i64 %2, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !31
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.q, %i.v
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.c ], [ %i.w, %bb.e ], [ 87, %bb.d ]
  %i.x = xor i64 %.0.copyload.i.i.i, %.0.i.i
  %i.y = xor i64 %i.x, %0
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.f:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %2, 17
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i38.i = load i64, ptr %i.af, align 1
  %.0.copyload.i.i.i.i = load i64, ptr %1, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i.i2.i.i = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i38.i, %.0.copyload.i.i.i.i
  %i.aj = xor i64 %i.ai, %0
  %i.ak = xor i64 %.0.copyload.i.i2.i.i, 8779197792823184629
  %i.al = zext i64 %i.aj to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.al, %i.am               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %2, 33
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i42.i = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i42.i, %0        ; 2 uses
  %.0.copyload.i.i43.i = load i64, ptr %1, align 1
  %i.au = xor i64 %.0.copyload.i.i43.i, 1376283091369227076
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i44.i = load i64, ptr %i.av, align 1
  %i.aw = xor i64 %.0.copyload.i.i44.i, %i.at
  %i.ax = zext i64 %i.au to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.0.copyload.i.i48.i = load i64, ptr %i.bb, align 1
  %i.bc = xor i64 %.0.copyload.i.i48.i, 589684135938649225
  %i.bd = getelementptr i8, ptr %i.ba, i64 -8
  %.0.copyload.i.i49.i = load i64, ptr %i.bd, align 1
  %i.be = xor i64 %.0.copyload.i.i49.i, %i.at
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = xor i128 %i.bh, %i.az
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.az, %i.bj
  %i.bl = xor i128 %i.bk, %i.bh
  %i.bm = trunc i128 %i.bl to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ad, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i ], [ %i.aq, %bb.g ], [ %i.bm, %bb.i ], [ %i.bn, %bb.j ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306, !nonnull !124, !align !284 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !152
  %i.c = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %1, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i)
  ret i64 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #16

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_largeImEESE_INSI_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !31 ; 5 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = and i64 %i.b, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.c       ; 4 uses
  %3 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %4 = sub i64 15, %notmask.i.i.i.i.i             ; 2 uses
  %5 = select i1 %3, i64 0, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %5
  %7 = icmp ule ptr %6, %1
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.d = lshr i64 %i.b, 8
  %i.e = and i64 %i.d, 255
  %i.f = load i64, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.g = xor i64 %i.f, %i.e
  %i.h = zext i64 %i.g to i128
  %i.i = mul nuw nsw i128 %i.h, 8779197792823184629 ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = xor i128 %i.j, %i.i
  %i.l = trunc i128 %i.k to i64                   ; 3 uses
  %i.m = xor i64 %notmask.i.i.i.i.i, -1           ; 2 uses
  %i.n = lshr i64 %i.l, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.p, align 8, !tbaa !31 ; 3 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.l, %bb.a ], [ %i.ao, %bb.d ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.an, %bb.d ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.m               ; 5 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.639.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !31 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.r, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = zext i16 %i.w to i32
  %i.y = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.x) #25, !srcloc !302 ; 2 uses
  %.not67 = icmp eq i32 %i.y, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge.i
  %.sroa.024.068 = phi i32 [ %i.ah, %.critedge.i ], [ %i.y, %bb.b ] ; 3 uses
  %i.z = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.068, i1 true)
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = add nuw i64 %.sroa.639.0, %i.aa
  %i.ac = and i64 %i.ab, %i.m                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !38
  %i.af = icmp eq i64 %i.ae, %i.f
  br i1 %i.af, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_largeImEESE_INSI_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i, !prof !268

.critedge.i:                                      ; preds = %.lr.ph
  %i.ag = add i32 %.sroa.024.068, -1
  %i.ah = and i32 %i.ag, %.sroa.024.068           ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge.i, %bb.b
  %i.ai = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = zext i16 %i.aj to i32
  %i.al = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ak) #25, !srcloc !302 ; 2 uses
  %.not61 = icmp eq i32 %i.al, 0
  br i1 %.not61, label %bb.d, label %bb.c, !prof !179

bb.c:                                             ; preds = %._crit_edge
  %i.am = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.l, i32 %i.al, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !31
  %.pre = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.p, align 8, !tbaa !31
  %.pre75 = and i64 %.pre, 255
  %.pre76 = shl nsw i64 -1, %.pre75               ; 2 uses
  %.pre77 = sub i64 15, %.pre76
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_largeImEESE_INSI_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.d:                                             ; preds = %._crit_edge
  %i.an = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.ao = add i64 %i.an, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_largeImEESE_INSI_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %.lr.ph, %bb.c
  %.pre-phi78 = phi i64 [ %.pre77, %bb.c ], [ %4, %.lr.ph ]
  %notmask.i.i.i.i.i8.pre-phi = phi i64 [ %.pre76, %bb.c ], [ %notmask.i.i.i.i.i, %.lr.ph ]
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.c ], [ %.sroa.0.0.copyload.i.i.i3, %.lr.ph ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph ] ; 4 uses
  %.349.ph = phi i64 [ %i.am, %bb.c ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.c ], [ 0, %.lr.ph ]
  %11 = icmp samesign ugt i64 %notmask.i.i.i.i.i8.pre-phi, -3
  %12 = select i1 %11, i64 0, i64 %.pre-phi78
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %12
  %14 = icmp ule ptr %13, %1
  %15 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i.i7
  %16 = select i1 %14, i1 true, i1 %15
  tail call void @llvm.assume(i1 %16)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.ap, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.ar, align 8, !tbaa !71
  ret void
}

declare noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashImEEmLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !38
  %i.b = xor i64 %i.a, %2
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #17 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSO_PFvSO_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 3 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !31 ; 5 uses
  %5 = sub i64 15, %notmask.i.i
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %5
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #25, !srcloc !302 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !308

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.052.061 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !38
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
  %i.am = and i64 %i.i, %i.al
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e, !prof !268

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !268

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.ai, %i.c                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.as
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !31
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ax) #25, !srcloc !302 ; 2 uses
  %.not26.i = icmp eq i32 %i.ay, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !179

bb.g:                                             ; preds = %bb.f
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add nuw i64 %i.as, %i.ba
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ak, i64 noundef %i.x, i64 noundef %i.ai)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bb, %bb.g ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ak, ptr %i.bc, align 1, !tbaa !180
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = add i32 %.sroa.052.061, -1
  %i.bf = and i32 %i.be, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashImEEmLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !124, !align !284
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = xor i64 %i.c, %1
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr, ptr, ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_13TagEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr nofree readonly captures(none) %0, i64 %1, i32 %2, ptr noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [1 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %5 = alloca %"struct.absl::lts_20260526::debugging_internal::(anonymous namespace)::Varint", align 8 ; 4 uses
  %6 = alloca %"class.absl::lts_20260526::FormatSink", align 8 ; 4 uses
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 18                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !prof !311

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 4, !tbaa !90
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val11 = load i32, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %3, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.d = sext i32 %.val to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = sext i32 %.val11 to i64
  %i.g = or i64 %i.e, %i.f
  store i64 %i.g, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.h, align 8, !tbaa !93
  %i.i = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(8) %6, ptr nonnull @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_10FormatSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.14, i64 2, ptr nonnull %4, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_10FormatSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !312    ; 7 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN4absl12lts_2026052619str_format_internal11InvokeFlushINS0_10FormatSinkEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !315
  %i.e = add i64 %i.d, %1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !315
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !318  ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %.not.i.i.i.i = icmp ult i64 %1, %i.k
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !319
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !320
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !321
  store ptr %i.l, ptr %i.g, align 8, !tbaa !318
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !319
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !320
  tail call void %i.r(ptr noundef %i.s, i64 %1, ptr %2), !inline_history !322
  br label %_ZN4absl12lts_2026052619str_format_internal11InvokeFlushINS0_10FormatSinkEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %2, i64 %1, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %1
  store ptr %i.u, ptr %i.g, align 8, !tbaa !318
  br label %_ZN4absl12lts_2026052619str_format_internal11InvokeFlushINS0_10FormatSinkEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal11InvokeFlushINS0_10FormatSinkEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_18debugging_internal12_GLOBAL__N_16VarintEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr nofree readonly captures(none) %0, i64 %1, i32 %2, ptr noundef %3) #0 align 2 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = and i64 %1, 255
  %i.c = icmp eq i64 %i.b, 18                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e, !prof !311

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !tbaa !89    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = icmp ugt i64 %.val, 127
  br i1 %i.d, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.04.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %.val, %bb.b ] ; 3 uses
  %.083.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.e = trunc i64 %.04.i.i to i8
  %i.f = or i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %.083.i.i, i64 1 ; 2 uses
  store i8 %i.f, ptr %.083.i.i, align 1, !tbaa !31
  %i.h = lshr i64 %.04.i.i, 7                     ; 2 uses
  %i.i = icmp ugt i64 %.04.i.i, 16383
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !323

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.08.lcssa.i.i = phi ptr [ %i.a, %bb.b ], [ %i.g, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %.val, %bb.b ], [ %i.h, %.lr.ph.i.i ]
  %i.j = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i, i64 1
  store i8 %i.j, ptr %.08.lcssa.i.i, align 1, !tbaa !31
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !315
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8, !tbaa !315
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !318  ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %.not.i.i.i.i = icmp ult i64 %i.n, %i.w
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !319
  %i.ac = load ptr, ptr %3, align 8, !tbaa !320
  call void %i.ab(ptr noundef %i.ac, i64 %i.z, ptr nonnull %i.x), !inline_history !324
  store ptr %i.x, ptr %i.s, align 8, !tbaa !318
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !319
  %i.ae = load ptr, ptr %3, align 8, !tbaa !320
  call void %i.ad(ptr noundef %i.ae, i64 %i.n, ptr nonnull %i.a), !inline_history !325
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_18debugging_internal12_GLOBAL__N_16VarintEEENSt9enable_ifIXaaaantsr3std7is_enumIT_EE5valuentsr3std7is_sameIS7_NS0_4CordEEE5valuesr3std7is_voidIDTcl13AbslStringifyclL_ZSt7declvalIRNS0_10FormatSinkEEDTcl9__declvalIS7_ELi0EEEvEEfp_EEEE5valueENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524288EEEE4typeERKS7_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.a, i64 %i.n, i1 false)
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !318
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.n
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !318
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_18debugging_internal12_GLOBAL__N_16VarintEEENSt9enable_ifIXaaaantsr3std7is_enumIT_EE5valuentsr3std7is_sameIS7_NS0_4CordEEE5valuesr3std7is_voidIDTcl13AbslStringifyclL_ZSt7declvalIRNS0_10FormatSinkEEDTcl9__declvalIS7_ELi0EEEvEEfp_EEEE5valueENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524288EEEE4typeERKS7_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_18debugging_internal12_GLOBAL__N_16VarintEEENSt9enable_ifIXaaaantsr3std7is_enumIT_EE5valuentsr3std7is_sameIS7_NS0_4CordEEE5valuesr3std7is_voidIDTcl13AbslStringifyclL_ZSt7declvalIRNS0_10FormatSinkEEDTcl9__declvalIS7_ELi0EEEvEEfp_EEEE5valueENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524288EEEE4typeERKS7_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplINS0_18debugging_internal12_GLOBAL__N_16VarintEEENSt9enable_ifIXaaaantsr3std7is_enumIT_EE5valuentsr3std7is_sameIS7_NS0_4CordEEE5valuesr3std7is_voidIDTcl13AbslStringifyclL_ZSt7declvalIRNS0_10FormatSinkEEDTcl9__declvalIS7_ELi0EEEvEEfp_EEEE5valueENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE524288EEEE4typeERKS7_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2)
  ret void
}

declare void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !326    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !84
  %i.s = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !95
  %i.z = load i64, ptr %i.t, align 8, !tbaa !31
  store i64 %i.z, ptr %i.r, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !85
  store ptr %i.t, ptr %2, align 8, !tbaa !95
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.t, align 8, !tbaa !31
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !84, !alias.scope !327, !noalias !330
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !95, !alias.scope !330, !noalias !327 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !85, !alias.scope !330, !noalias !327 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !332
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !95, !alias.scope !327, !noalias !330
  %i.al = load i64, ptr %i.af, align 8, !tbaa !31, !alias.scope !330, !noalias !327
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !31, !alias.scope !327, !noalias !330
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !85, !alias.scope !330, !noalias !327
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !85, !alias.scope !327, !noalias !330
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !95, !alias.scope !330, !noalias !327
  store i64 0, ptr %i.an, align 8, !tbaa !85, !alias.scope !330, !noalias !327
  store i8 0, ptr %i.af, align 8, !tbaa !31, !alias.scope !330, !noalias !327
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !333

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !84, !alias.scope !334, !noalias !337
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !95, !alias.scope !337, !noalias !334 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !85, !alias.scope !337, !noalias !334 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !339
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !95, !alias.scope !334, !noalias !337
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !31, !alias.scope !337, !noalias !334
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !31, !alias.scope !334, !noalias !337
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !85, !alias.scope !337, !noalias !334
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !85, !alias.scope !334, !noalias !337
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !95, !alias.scope !337, !noalias !334
  store i64 0, ptr %i.bc, align 8, !tbaa !85, !alias.scope !337, !noalias !334
  store i8 0, ptr %i.au, align 8, !tbaa !31, !alias.scope !337, !noalias !334
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !333

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !326
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !127
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !130
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !31    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre13 = load i8, ptr %.phi.trans.insert12, align 1, !tbaa !31
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !172 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !31    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implImmJEEEEERSt4pairIKmmEPS9_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !172 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !31    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implImmJEEEEERSt4pairIKmmEPS9_EmmEv.exit, !llvm.loop !221

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implImmJEEEEERSt4pairIKmmEPS9_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !142
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implImmJEEEEERSt4pairIKmmEPS9_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implImmJEEEEERSt4pairIKmmEPS9_EmmEv.exit ], [ %.pre13, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implImmJEEEEERSt4pairIKmmEPS9_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implImmJEEEEERSt4pairIKmmEPS9_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 15
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 15) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 4
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #24 ; 12 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !172
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !31
  store ptr %i.af, ptr %4, align 8, !tbaa !145
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !31   ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 4          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %bb.d
  %i.an = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.ao = lshr exact i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, 1
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol

.lr.ph.i.i.i4.prol:                               ; preds = %.lr.ph.i.i.i4.preheader, %.lr.ph.i.i.i4.prol
  %.015.i.pn.i.i.prol = phi ptr [ %.015.i.i.i.prol, %.lr.ph.i.i.i4.prol ], [ %i.af, %.lr.ph.i.i.i4.preheader ]
  %.01214.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i4.prol ], [ %i.al, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i4.prol ], [ 0, %.lr.ph.i.i.i4.preheader ]
  %.015.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i.prol, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i.i.i.prol, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol, !llvm.loop !340

.lr.ph.i.i.i4.prol.loopexit:                      ; preds = %.lr.ph.i.i.i4.prol, %.lr.ph.i.i.i4.preheader
  %.015.i.pn.i.i.unr = phi ptr [ %i.af, %.lr.ph.i.i.i4.preheader ], [ %.015.i.i.i.prol, %.lr.ph.i.i.i4.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.i.i.i4.preheader ], [ %i.aq, %.lr.ph.i.i.i4.prol ]
  %i.ar = icmp ult i64 %i.an, 48
  br i1 %i.ar, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4
  %.015.i.pn.i.i = phi ptr [ %.015.i.i.i.3, %.lr.ph.i.i.i4 ], [ %.015.i.pn.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 4 uses
  %.01214.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 5 uses
  %.015.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i.i.i, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %.015.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i.1, ptr noundef nonnull align 1 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %.015.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i.2, ptr noundef nonnull align 1 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %.015.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i.3, ptr noundef nonnull align 1 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i5.3 = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i5.3, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !342

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.aw, align 2, !tbaa !31
  store i8 0, ptr %i.x, align 1, !tbaa !31
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE16clear_and_deleteEPS5_PSaISt4pairIKmmEE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !172
  store ptr %i.af, ptr %0, align 8, !tbaa !172
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre14 = load ptr, ptr %4, align 8, !tbaa !145
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = phi ptr [ %i.af, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE16internal_emplaceIJRPNS1_13map_slot_typeImmEEEEENS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKmmEPSG_EESJ_DpOT_ENKUlhE_clEh.exit ], [ %.pre14, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !142 ; 3 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 10 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !31  ; 3 uses
  %i.bd = icmp ugt i8 %i.bc, %i.az
  %i.be = zext nneg i32 %i.ba to i64              ; 2 uses
  br i1 %i.bd, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = getelementptr [16 x i8], ptr %i.bf, i64 %i.be ; 2 uses
  %narrow.i = sub nuw i8 %i.bc, %i.az
  %i.bh = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bh, 4
  %i.bi = getelementptr i8, ptr %i.bg, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bg, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.bb, align 1, !tbaa !31
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.bj = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bc, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.be
  %i.bm = load ptr, ptr %3, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bn = add i8 %i.bj, 1                         ; 3 uses
  store i8 %i.bn, ptr %i.bb, align 1, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 11
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !31
  %.not.i18.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJRPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i
  %i.bq = zext i8 %i.bn to i32
  %i.br = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bs = icmp samesign ult i32 %i.br, %i.bq
  br i1 %i.bs, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJRPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.bu = zext i8 %i.bn to i64                    ; 4 uses
  %i.bv = zext nneg i32 %i.br to i64
  %.mask = and i32 %i.ay, 255
  %i.bw = zext nneg i32 %.mask to i64             ; 2 uses
  %i.bx = xor i64 %i.bw, -1
  %i.by = add nsw i64 %i.bx, %i.bu
  %i.bz = add nsw i64 %i.bu, -2
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE5splitEiPS5_PSaISt4pairIKmmEE:bb.a

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.u, %.lr.ph.i.prol ], [ %i.p, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i.prol, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !356

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp ult i64 %i.r, 48
  br i1 %i.v, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.3, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.1, ptr noundef nonnull align 1 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.2, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.3, ptr noundef nonnull align 1 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.z, %i.q
  br i1 %.not.i.3, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !342

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i8, ptr %i.h, align 1, !tbaa !31
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit, %bb.d
  %i.aa = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ab = add i8 %i.aa, -1                        ; 2 uses
  store i8 %i.ab, ptr %i.h, align 1, !tbaa !31
  %i.ac = load ptr, ptr %0, align 8, !tbaa !172   ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !31  ; 5 uses
  %i.af = zext i8 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.af
  %i.ah = zext i8 %i.ae to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 10 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31  ; 3 uses
  %i.ak = icmp ult i8 %i.ae, %i.aj
  %i.al = zext i8 %i.ae to i64                    ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = getelementptr [16 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %narrow.i = sub nuw i8 %i.aj, %i.ae
  %i.ao = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.an, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.ai, align 1, !tbaa !31
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit
  %i.aq = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.aj, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE10transfer_nEmmmPS5_PSaISt4pairIKmmEE.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.at = add i8 %i.aq, 1                         ; 3 uses
  store i8 %i.at, ptr %i.ai, align 1, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  %i.av = load i8, ptr %i.au, align 1, !tbaa !31
  %.not.i18.i = icmp eq i8 %i.av, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i
  %i.aw = zext i8 %i.at to i32
  %i.ax = add nuw nsw i32 %i.ah, 1                ; 2 uses
  %i.ay = icmp samesign ult i32 %i.ax, %i.aw
  br i1 %i.ay, label %.lr.ph.i27, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 256 ; 10 uses
  %i.ba = zext i8 %i.at to i64                    ; 4 uses
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = zext i8 %i.ae to i64                    ; 2 uses
  %i.bd = xor i64 %i.bc, -1
  %i.be = add nsw i64 %i.bd, %i.ba
  %i.bf = add nsw i64 %i.ba, -2
  %i.bg = sub nsw i64 %i.bf, %i.bc
  %xtraiter36 = and i64 %i.be, 3                  ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i27, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.bh, %.prol.preheader ], [ %i.ba, %.lr.ph.i27 ] ; 3 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %.prol.preheader ], [ 0, %.lr.ph.i27 ]
  %i.bh = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !172 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.prol
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !172
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !31
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !357

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i27
  %indvars.iv.unr = phi i64 [ %i.ba, %.lr.ph.i27 ], [ %i.bh, %.prol.preheader ]
  %i.bn = icmp ult i64 %i.bg, 3
  br i1 %i.bn, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit, label %.lr.ph.i27.new

.lr.ph.i27.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i27.new
  %indvars.iv = phi i64 [ %i.cg, %.lr.ph.i27.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.bo = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !172 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !172
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = trunc nuw i64 %indvars.iv to i8
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !31
  %i.bu = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !172 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bo
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !172
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = trunc nuw i64 %i.bo to i8
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !31
  %i.ca = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !172 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bu
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !172
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = trunc nuw i64 %i.bu to i8
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !31
  %i.cg = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !172 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ca
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !172
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = trunc nuw i64 %i.ca to i8
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !31
  %.wide.3 = icmp ugt i64 %i.cg, %i.bb
  br i1 %.wide.3, label %.lr.ph.i27.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit, !llvm.loop !358

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i27.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE19transfer_n_backwardEmmmPS5_PSaISt4pairIKmmEE.exit.i, %bb.e
  %i.cm = load ptr, ptr %0, align 8, !tbaa !172
  %i.cn = load i8, ptr %i.ad, align 8, !tbaa !31
  %i.co = add i8 %i.cn, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 256
  %i.cq = zext i8 %i.co to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  store ptr %2, ptr %i.cr, align 8, !tbaa !172
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !31
  %.not.i28 = icmp eq i8 %i.ct, 0
  br i1 %.not.i28, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit
  %i.cu = load i8, ptr %i.h, align 2, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.0.in30 = phi i8 [ %i.cu, %bb.f ], [ %.0, %bb.g ]
  %.02529 = phi i8 [ 0, %bb.f ], [ %i.dd, %bb.g ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.cx = zext i8 %.0 to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !172 ; 3 uses
  %i.da = zext i8 %.02529 to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !172
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %.02529, ptr %i.dc, align 1, !tbaa !31
  store ptr %2, ptr %i.cz, align 8, !tbaa !172
  %i.dd = add i8 %.02529, 1                       ; 2 uses
  %i.de = load i8, ptr %i.j, align 1, !tbaa !31
  %.not = icmp ugt i8 %i.dd, %i.de
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !359

.loopexit:                                        ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE13emplace_valueIJPNS1_13map_slot_typeImmEEEEEvhPSaISt4pairIKmmEEDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !140    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !84
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !85   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !95
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !31
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !85
  store ptr %i.v, ptr %i.s, align 8, !tbaa !95
  store i64 0, ptr %i.ad, align 8, !tbaa !85
  store i8 0, ptr %i.v, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !84
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !95 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.am = load i64, ptr %i.al, align 8, !tbaa !85 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingC2EOS3_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !95
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !31
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !31
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !85
  br label %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingC2EOS3_.exit

_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingC2EOS3_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !85
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !95
  store i64 0, ptr %i.ar, align 8, !tbaa !85
  store i8 0, ptr %i.aj, align 8, !tbaa !31
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingC2EOS3_.exit, %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingC2EOS3_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingC2EOS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i, i64 24, i1 false), !alias.scope !365
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !84, !alias.scope !360, !noalias !363
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !95, !alias.scope !363, !noalias !360 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !85, !alias.scope !363, !noalias !360 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !365
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !95, !alias.scope !360, !noalias !363
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !31, !alias.scope !363, !noalias !360
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !31, !alias.scope !360, !noalias !363
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !85, !alias.scope !363, !noalias !360
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.be = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ba, %bb.e ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !85, !alias.scope !360, !noalias !363
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !95, !alias.scope !363, !noalias !360
  store i64 0, ptr %i.bf, align 8, !tbaa !85, !alias.scope !363, !noalias !360
  store i8 0, ptr %i.ax, align 8, !tbaa !31, !alias.scope !363, !noalias !360
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !84, !alias.scope !360, !noalias !363
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !95, !alias.scope !363, !noalias !360 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !85, !alias.scope !363, !noalias !360 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false), !alias.scope !365
  br label %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !95, !alias.scope !360, !noalias !363
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !31, !alias.scope !363, !noalias !360
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !31, !alias.scope !360, !noalias !363
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !85, !alias.scope !363, !noalias !360
  br label %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i, %bb.f
  %i.bs = phi i64 [ %i.bo, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !85, !alias.scope !360, !noalias !363
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !95, !alias.scope !363, !noalias !360
  store i64 0, ptr %i.bt, align 8, !tbaa !85, !alias.scope !363, !noalias !360
  store i8 0, ptr %i.bl, align 8, !tbaa !31, !alias.scope !363, !noalias !360
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !366

_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingC2EOS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingC2EOS3_.exit ], [ %i.bw, %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.db, %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.bx, %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.da, %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i19, i64 24, i1 false), !alias.scope !372
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 3 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !84, !alias.scope !367, !noalias !370
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !95, !alias.scope !370, !noalias !367 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !85, !alias.scope !370, !noalias !367 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false), !alias.scope !372
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !95, !alias.scope !367, !noalias !370
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !31, !alias.scope !370, !noalias !367
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !31, !alias.scope !367, !noalias !370
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !85, !alias.scope !370, !noalias !367
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.cj = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.cf, %bb.g ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !85, !alias.scope !367, !noalias !370
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !95, !alias.scope !370, !noalias !367
  store i64 0, ptr %i.ck, align 8, !tbaa !85, !alias.scope !370, !noalias !367
  store i8 0, ptr %i.cc, align 8, !tbaa !31, !alias.scope !370, !noalias !367
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 3 uses
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !84, !alias.scope !367, !noalias !370
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !95, !alias.scope !370, !noalias !367 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 5 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !85, !alias.scope !370, !noalias !367 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %i.cq, i64 %i.cv, i1 false), !alias.scope !372
  br label %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !95, !alias.scope !367, !noalias !370
  %i.cw = load i64, ptr %i.cq, align 8, !tbaa !31, !alias.scope !370, !noalias !367
  store i64 %i.cw, ptr %i.co, align 8, !tbaa !31, !alias.scope !367, !noalias !370
  %.phi.trans.insert5.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %.pre6.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i25, align 8, !tbaa !85, !alias.scope !370, !noalias !367
  br label %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24, %bb.h
  %i.cx = phi i64 [ %i.ct, %bb.h ], [ %.pre6.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !85, !alias.scope !367, !noalias !370
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !95, !alias.scope !370, !noalias !367
  store i64 0, ptr %i.cy, align 8, !tbaa !85, !alias.scope !370, !noalias !367
  store i8 0, ptr %i.cq, align 8, !tbaa !31, !alias.scope !370, !noalias !367
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 88 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 88 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.da, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30, label %.lr.ph.i.i.i17, !llvm.loop !366

_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30: ; preds = %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.bx, %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.db, %_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !153
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.df) #22
  br label %_ZNSt12_Vector_baseIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !140
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !137
  %i.dg = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %i.l
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !153
  ret void
}

declare void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"_ZTSN4absl12lts_2026052618debugging_internal8StringIdE", !7, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESH_INSL_8iteratorEbEDpOSR_: argument 0"}
!13 = distinct !{!13, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESH_INSL_8iteratorEbEDpOSR_"}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEEE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !20, !12}
!18 = distinct !{!18, !19, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEE5applyINS1_12raw_hash_setISB_JNS1_10StringHashENS1_8StringEqENS9_14ProfileBuilder17HashtablezBarrierISt4pairIKS8_SA_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS6_ESA_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_: argument 0"}
!19 = distinct !{!19, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEE5applyINS1_12raw_hash_setISB_JNS1_10StringHashENS1_8StringEqENS9_14ProfileBuilder17HashtablezBarrierISt4pairIKS8_SA_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS6_ESA_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_"}
!20 = distinct !{!20, !21, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12raw_hash_setISC_JNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS7_ESB_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_: argument 0"}
!21 = distinct !{!21, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12raw_hash_setISC_JNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS7_ESB_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_"}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !16, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4absl12lts_2026052618container_internal8PairArgsIRSt17basic_string_viewIcSt11char_traitsIcEENS0_18debugging_internal8StringIdEEESt4pairISt5tupleIJOT_EESB_IJOT0_EEESD_SG_: argument 0"}
!26 = distinct !{!26, !"_ZN4absl12lts_2026052618container_internal8PairArgsIRSt17basic_string_viewIcSt11char_traitsIcEENS0_18debugging_internal8StringIdEEESt4pairISt5tupleIJOT_EESB_IJOT0_EEESD_SG_"}
!27 = !{!28, !18, !20, !12}
!28 = distinct !{!28, !29, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS8_ESC_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_: argument 0"}
!29 = distinct !{!29, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS8_ESC_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_"}
!30 = !{!16, !16, i64 0}
!31 = !{!7, !7, i64 0}
!32 = !{!33, !10, i64 32}
!33 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052618debugging_internal8StringIdEE", !34, i64 0, !10, i64 32}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !37, i64 8, !7, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!36 = !{!"p1 omnipotent char", !16, i64 0}
!37 = !{!"long", !7, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7emplaceIJmS5_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSL_: argument 0"}
!41 = distinct !{!41, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7emplaceIJmS5_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSL_"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEvE5applyINS1_12raw_hash_setIS6_JNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE19EmplaceDecomposableEJmS5_ES6_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_: argument 0"}
!44 = distinct !{!44, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEvE5applyINS1_12raw_hash_setIS6_JNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE19EmplaceDecomposableEJmS5_ES6_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEE5applyINS1_12raw_hash_setIS5_JNS0_13hash_internal4HashImEESt8equal_toImENS3_14ProfileBuilder17HashtablezBarrierISt4pairIKmS4_EEEEE19EmplaceDecomposableEJmS4_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSL_DpOSM_: argument 0"}
!47 = distinct !{!47, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEE5applyINS1_12raw_hash_setIS5_JNS0_13hash_internal4HashImEESt8equal_toImENS3_14ProfileBuilder17HashtablezBarrierISt4pairIKmS4_EEEEE19EmplaceDecomposableEJmS4_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSL_DpOSM_"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS5_14ProfileBuilder17HashtablezBarrierISt4pairIKmS6_EEEEE19EmplaceDecomposableEJmS6_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSL_DpOSM_: argument 0"}
!50 = distinct !{!50, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS5_14ProfileBuilder17HashtablezBarrierISt4pairIKmS6_EEEEE19EmplaceDecomposableEJmS6_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSL_DpOSM_"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4absl12lts_2026052618container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS6_14ProfileBuilder17HashtablezBarrierISt4pairIKmS7_EEEEE19EmplaceDecomposableEOmSt5tupleIJOS7_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISN_IJSR_EEEEclsr3stdE7declvalIT1_EEEEOSQ_SG_ISU_SV_E: argument 0"}
!53 = distinct !{!53, !"_ZN4absl12lts_2026052618container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS6_14ProfileBuilder17HashtablezBarrierISt4pairIKmS7_EEEEE19EmplaceDecomposableEOmSt5tupleIJOS7_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISN_IJSR_EEEEclsr3stdE7declvalIT1_EEEEOSQ_SG_ISU_SV_E"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE19EmplaceDecomposableclImJRKSt21piecewise_construct_tSt5tupleIJOmEESO_IJOS5_EEEEESE_INSI_8iteratorEbERKT_DpOT0_: argument 0"}
!56 = distinct !{!56, !"_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE19EmplaceDecomposableclImJRKSt21piecewise_construct_tSt5tupleIJOmEESO_IJOS5_EEEEESE_INSI_8iteratorEbERKT_DpOT0_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_: argument 0"}
!59 = distinct !{!59, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_: argument 0"}
!62 = distinct !{!62, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE26find_or_prepare_insert_sooImEESE_INSI_8iteratorEbERKT_: argument 0"}
!65 = distinct !{!65, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE26find_or_prepare_insert_sooImEESE_INSI_8iteratorEbERKT_"}
!66 = !{!64, !61, !58, !55, !52, !49, !46, !43, !40}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTSN4absl12lts_2026052613hash_internal4HashImEE", !16, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 long", !16, i64 0}
!71 = !{!72, !74, i64 16}
!72 = !{!"_ZTSSt4pairIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyImNS1_18debugging_internal10LocationIdEEEJNS1_13hash_internal4HashImEESt8equal_toImENS5_14ProfileBuilder17HashtablezBarrierIS_IKmS6_EEEEE8iteratorEbE", !73, i64 0, !74, i64 16}
!73 = !{!"_ZTSN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE8iteratorE", !16, i64 0, !7, i64 8}
!74 = !{!"bool", !7, i64 0}
!75 = !{i8 0, i8 2}
!76 = !{!55, !52, !49, !46, !43, !40}
!77 = !{!49, !46, !43, !40}
!78 = !{!79, !37, i64 0}
!79 = !{!"_ZTSSt4pairImN4absl12lts_2026052618debugging_internal10LocationIdEE", !37, i64 0, !80, i64 8}
!80 = !{!"_ZTSN4absl12lts_2026052618debugging_internal10LocationIdE", !7, i64 0}
!81 = !{!79, !80, i64 8}
!82 = !{!83, !80, i64 8}
!83 = !{!"_ZTSSt4pairIKmN4absl12lts_2026052618debugging_internal10LocationIdEE", !37, i64 0, !80, i64 8}
!84 = !{!35, !36, i64 0}
!85 = !{!34, !37, i64 8}
!86 = !{!87, !6, i64 0}
!87 = !{!"_ZTSN4absl12lts_2026052618debugging_internal12_GLOBAL__N_111VarintFieldE", !6, i64 0, !88, i64 8}
!88 = !{!"_ZTSN4absl12lts_2026052618debugging_internal12_GLOBAL__N_16VarintE", !37, i64 0}
!89 = !{!88, !37, i64 0}
!90 = !{!91, !6, i64 0}
!91 = !{!"_ZTSN4absl12lts_2026052618debugging_internal12_GLOBAL__N_13TagE", !6, i64 0, !7, i64 4}
!92 = !{!91, !7, i64 4}
!93 = !{!94, !16, i64 8}
!94 = !{!"_ZTSN4absl12lts_2026052619str_format_internal13FormatArgImplE", !7, i64 0, !16, i64 8}
!95 = !{!34, !36, i64 0}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7emplaceIJmS5_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSL_: argument 0"}
!98 = distinct !{!98, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7emplaceIJmS5_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSL_"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEvE5applyINS1_12raw_hash_setIS6_JNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE19EmplaceDecomposableEJmS5_ES6_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_: argument 0"}
!101 = distinct !{!101, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEvE5applyINS1_12raw_hash_setIS6_JNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE19EmplaceDecomposableEJmS5_ES6_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEE5applyINS1_12raw_hash_setIS5_JNS0_13hash_internal4HashImEESt8equal_toImENS3_14ProfileBuilder17HashtablezBarrierISt4pairIKmS4_EEEEE19EmplaceDecomposableEJmS4_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSL_DpOSM_: argument 0"}
!104 = distinct !{!104, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEE5applyINS1_12raw_hash_setIS5_JNS0_13hash_internal4HashImEESt8equal_toImENS3_14ProfileBuilder17HashtablezBarrierISt4pairIKmS4_EEEEE19EmplaceDecomposableEJmS4_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSL_DpOSM_"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS5_14ProfileBuilder17HashtablezBarrierISt4pairIKmS6_EEEEE19EmplaceDecomposableEJmS6_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSL_DpOSM_: argument 0"}
!107 = distinct !{!107, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS5_14ProfileBuilder17HashtablezBarrierISt4pairIKmS6_EEEEE19EmplaceDecomposableEJmS6_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSL_DpOSM_"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN4absl12lts_2026052618container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS6_14ProfileBuilder17HashtablezBarrierISt4pairIKmS7_EEEEE19EmplaceDecomposableEOmSt5tupleIJOS7_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISN_IJSR_EEEEclsr3stdE7declvalIT1_EEEEOSQ_SG_ISU_SV_E: argument 0"}
!110 = distinct !{!110, !"_ZN4absl12lts_2026052618container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS6_14ProfileBuilder17HashtablezBarrierISt4pairIKmS7_EEEEE19EmplaceDecomposableEOmSt5tupleIJOS7_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISN_IJSR_EEEEclsr3stdE7declvalIT1_EEEEOSQ_SG_ISU_SV_E"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE19EmplaceDecomposableclImJRKSt21piecewise_construct_tSt5tupleIJOmEESO_IJOS5_EEEEESE_INSI_8iteratorEbERKT_DpOT0_: argument 0"}
!113 = distinct !{!113, !"_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE19EmplaceDecomposableclImJRKSt21piecewise_construct_tSt5tupleIJOmEESO_IJOS5_EEEEESE_INSI_8iteratorEbERKT_DpOT0_"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_: argument 0"}
!116 = distinct !{!116, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE22find_or_prepare_insertImEESE_INSI_8iteratorEbERKT_"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_: argument 0"}
!119 = distinct !{!119, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE28find_or_prepare_insert_smallImEESE_INSI_8iteratorEbERKT_"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE26find_or_prepare_insert_sooImEESE_INSI_8iteratorEbERKT_: argument 0"}
!122 = distinct !{!122, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE26find_or_prepare_insert_sooImEESE_INSI_8iteratorEbERKT_"}
!123 = !{!121, !118, !115, !112, !109, !106, !103, !100, !97}
!124 = !{}
!125 = !{!112, !109, !106, !103, !100, !97}
!126 = !{!106, !103, !100, !97}
!127 = !{!128, !129, i64 8}
!128 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!129 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!130 = !{!128, !129, i64 16}
!131 = !{!132, !10, i64 0}
!132 = !{!"_ZTSSt4pairIN4absl12lts_2026052618debugging_internal8StringIdElE", !10, i64 0, !37, i64 8}
!133 = !{!132, !37, i64 8}
!134 = !{!135, !6, i64 0}
!135 = !{!"_ZTSN4absl12lts_2026052618debugging_internal12_GLOBAL__N_115LengthDelimitedE", !6, i64 0, !136, i64 8}
!136 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !37, i64 0, !36, i64 8}
!137 = !{!138, !139, i64 8}
!138 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!139 = !{!"p1 _ZTSN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingE", !16, i64 0}
!140 = !{!138, !139, i64 0}
!141 = !{!74, !74, i64 0}
!142 = !{!143, !6, i64 8}
!143 = !{!"_ZTSN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implImmJEEEEERSt4pairIKmmEPS9_EE", !144, i64 0, !6, i64 8}
!144 = !{!"p1 _ZTSN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEEE", !16, i64 0}
!145 = !{!143, !144, i64 0}
!146 = !{!147, !37, i64 8}
!147 = !{!"_ZTSSt4pairIKmmE", !37, i64 0, !37, i64 8}
!148 = !{!149, !37, i64 0}
!149 = !{!"_ZTSN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingE", !37, i64 0, !37, i64 8, !37, i64 16, !34, i64 24, !34, i64 56}
!150 = !{!149, !37, i64 8}
!151 = !{!149, !37, i64 16}
!152 = !{!36, !36, i64 0}
!153 = !{!138, !139, i64 16}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZN4absl12lts_2026052618container_internal12CommonAccess9ConstructINS1_11node_handleINS1_15map_params_implImmJEEES6_SaISt4pairIKmmEEvEEJSA_RmSC_EEET_DpOT0_: argument 0"}
!156 = distinct !{!156, !"_ZN4absl12lts_2026052618container_internal12CommonAccess9ConstructINS1_11node_handleINS1_15map_params_implImmJEEES6_SaISt4pairIKmmEEvEEJSA_RmSC_EEET_DpOT0_"}
!157 = !{!158, !74, i64 1}
!158 = !{!"_ZTSSt22_Optional_payload_baseISaISt4pairIKmmEEE", !7, i64 0, !74, i64 1}
!159 = !{!160, !37, i64 0}
!160 = !{!"_ZTSSt4pairImmE", !37, i64 0, !37, i64 8}
!161 = !{!160, !37, i64 8}
!162 = !{!163, !163, i64 0}
!163 = !{!"p1 _ZTSN4absl12lts_2026052618container_internal13map_slot_typeImmEE", !16, i64 0}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13insert_uniqueImJRPNS1_13map_slot_typeImmEEEEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSB_IKmmEPSG_EEbERKT_DpOT0_: argument 0"}
!166 = distinct !{!166, !"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEE13insert_uniqueImJRPNS1_13map_slot_typeImmEEEEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSB_IKmmEPSG_EEbERKT_DpOT0_"}
!167 = !{!168, !37, i64 16}
!168 = !{!"_ZTSN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implImmJEEEEE", !144, i64 0, !169, i64 8, !37, i64 16}
!169 = !{!"_ZTSN4absl12lts_2026052618container_internal15CompressedTupleIJNS1_19key_compare_adapterISt4lessImEmE15checked_compareESaISt4pairIKmmEEPNS1_10btree_nodeINS1_15map_params_implImmJEEEEEEEE", !170, i64 0}
!170 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_19key_compare_adapterISt4lessImEmE15checked_compareESaISt4pairIKmmEEPNS1_10btree_nodeINS1_15map_params_implImmJEEEEEEEESt16integer_sequenceImJLm0ELm1ELm2EEELb1EEE", !171, i64 0}
!171 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple7StorageIPNS1_10btree_nodeINS1_15map_params_implImmJEEEEELm2ENS2_10StorageTagIJNS1_19key_compare_adapterISt4lessImEmE15checked_compareESaISt4pairIKmmEES8_EEELb0EEE", !144, i64 0}
!172 = !{!144, !144, i64 0}
!173 = distinct !{!173, !174}
!174 = !{!"llvm.loop.mustprogress"}
!175 = distinct !{!175, !174}
!176 = !{!177, !74, i64 16}
!177 = !{!"_ZTSSt4pairIN4absl12lts_2026052618container_internal14btree_iteratorINS2_10btree_nodeINS2_15map_params_implImmJEEEEERS_IKmmEPS9_EEbE", !143, i64 0, !74, i64 16}
!178 = !{!129, !129, i64 0}
!179 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!180 = !{!181, !181, i64 0}
!181 = !{!"_ZTSN4absl12lts_2026052618container_internal6ctrl_tE", !7, i64 0}
!182 = distinct !{!182, !174}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESH_INSL_8iteratorEbEDpOSR_: argument 0"}
!185 = distinct !{!185, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESH_INSL_8iteratorEbEDpOSR_"}
!186 = !{!187, !189, !184}
!187 = distinct !{!187, !188, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEE5applyINS1_12raw_hash_setISB_JNS1_10StringHashENS1_8StringEqENS9_14ProfileBuilder17HashtablezBarrierISt4pairIKS8_SA_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS6_ESA_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_: argument 0"}
!188 = distinct !{!188, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEE5applyINS1_12raw_hash_setISB_JNS1_10StringHashENS1_8StringEqENS9_14ProfileBuilder17HashtablezBarrierISt4pairIKS8_SA_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS6_ESA_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_"}
!189 = distinct !{!189, !190, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12raw_hash_setISC_JNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS7_ESB_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_: argument 0"}
!190 = distinct !{!190, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12raw_hash_setISC_JNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS7_ESB_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN4absl12lts_2026052618container_internal8PairArgsIRSt17basic_string_viewIcSt11char_traitsIcEENS0_18debugging_internal8StringIdEEESt4pairISt5tupleIJOT_EESB_IJOT0_EEESD_SG_: argument 0"}
!193 = distinct !{!193, !"_ZN4absl12lts_2026052618container_internal8PairArgsIRSt17basic_string_viewIcSt11char_traitsIcEENS0_18debugging_internal8StringIdEEESt4pairISt5tupleIJOT_EESB_IJOT0_EEESD_SG_"}
!194 = !{!195, !187, !189, !184}
!195 = distinct !{!195, !196, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS8_ESC_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_: argument 0"}
!196 = distinct !{!196, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS8_ESC_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESH_INSL_8iteratorEbEDpOSR_: argument 0"}
!199 = distinct !{!199, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESH_INSL_8iteratorEbEDpOSR_"}
!200 = !{!201, !203, !198}
!201 = distinct !{!201, !202, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEE5applyINS1_12raw_hash_setISB_JNS1_10StringHashENS1_8StringEqENS9_14ProfileBuilder17HashtablezBarrierISt4pairIKS8_SA_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS6_ESA_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_: argument 0"}
!202 = distinct !{!202, !"_ZN4absl12lts_2026052618container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEE5applyINS1_12raw_hash_setISB_JNS1_10StringHashENS1_8StringEqENS9_14ProfileBuilder17HashtablezBarrierISt4pairIKS8_SA_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS6_ESA_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_"}
!203 = distinct !{!203, !204, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12raw_hash_setISC_JNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS7_ESB_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_: argument 0"}
!204 = distinct !{!204, !"_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12raw_hash_setISC_JNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS7_ESB_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN4absl12lts_2026052618container_internal8PairArgsIRSt17basic_string_viewIcSt11char_traitsIcEENS0_18debugging_internal8StringIdEEESt4pairISt5tupleIJOT_EESB_IJOT0_EEESD_SG_: argument 0"}
!207 = distinct !{!207, !"_ZN4absl12lts_2026052618container_internal8PairArgsIRSt17basic_string_viewIcSt11char_traitsIcEENS0_18debugging_internal8StringIdEEESt4pairISt5tupleIJOT_EESB_IJOT0_EEESD_SG_"}
!208 = !{!209, !201, !203, !198}
!209 = distinct !{!209, !210, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS8_ESC_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_: argument 0"}
!210 = distinct !{!210, !"_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE19EmplaceDecomposableEJRSt17basic_string_viewIcS8_ESC_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN4absl12lts_202605266StrCatIJNS0_18debugging_internal12_GLOBAL__N_111VarintFieldEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESD_SD_SD_SD_DpRKT_: argument 0"}
!213 = distinct !{!213, !"_ZN4absl12lts_202605266StrCatIJNS0_18debugging_internal12_GLOBAL__N_111VarintFieldEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESD_SD_SD_SD_DpRKT_"}
!214 = distinct !{!214, !174}
!215 = !{!80, !80, i64 0}
!216 = !{!139, !139, i64 0}
!217 = distinct !{!217, !174}
!218 = distinct !{!218, !174}
!219 = !{!168, !144, i64 0}
!220 = distinct !{!220, !174}
!221 = distinct !{!221, !174}
!222 = !{!147, !37, i64 0}
!223 = distinct !{!223, !174}
!224 = !{!225, !10, i64 144}
!225 = !{!"_ZTSN4absl12lts_2026052618debugging_internal14ProfileBuilderE", !226, i64 0, !234, i64 24, !240, i64 48, !244, i64 72, !247, i64 96, !247, i64 120, !10, i64 144, !10, i64 152, !10, i64 160}
!226 = !{!"_ZTSN4absl12lts_2026052613flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdENS0_18container_internal10StringHashENSA_8StringEqENS8_14ProfileBuilder17HashtablezBarrierISt4pairIKS7_S9_EEEEE", !227, i64 0}
!227 = !{!"_ZTSN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEEE", !228, i64 0}
!228 = !{!"_ZTSN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEEE", !229, i64 0}
!229 = !{!"_ZTSN4absl12lts_2026052618container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEE", !230, i64 0}
!230 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !231, i64 0}
!231 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ENS2_10StorageTagIJS4_NS1_10StringHashENS1_8StringEqENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEELb0EEE", !232, i64 0}
!232 = !{!"_ZTSN4absl12lts_2026052618container_internal12CommonFieldsE", !233, i64 0, !7, i64 8}
!233 = !{!"_ZTSN4absl12lts_2026052618container_internal23HashtableInlineDataImplILNS1_28HashtableCapacityStorageModeE1EEE", !37, i64 0, !37, i64 1}
!234 = !{!"_ZTSN4absl12lts_2026052613flat_hash_mapImNS0_18debugging_internal10LocationIdENS0_13hash_internal4HashImEESt8equal_toImENS2_14ProfileBuilder17HashtablezBarrierISt4pairIKmS3_EEEEE", !235, i64 0}
!235 = !{!"_ZTSN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEEE", !236, i64 0}
!236 = !{!"_ZTSN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEEE", !237, i64 0}
!237 = !{!"_ZTSN4absl12lts_2026052618container_internal15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashImEESt8equal_toImENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEE", !238, i64 0}
!238 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashImEESt8equal_toImENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !239, i64 0}
!239 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ENS2_10StorageTagIJS4_NS0_13hash_internal4HashImEESt8equal_toImENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEELb0EEE", !232, i64 0}
!240 = !{!"_ZTSN4absl12lts_202605269btree_mapImmSt4lessImESaISt4pairIKmmEEEE", !241, i64 0}
!241 = !{!"_ZTSN4absl12lts_2026052618container_internal19btree_map_containerINS1_5btreeINS1_15map_params_implImmJEEEEEEE", !242, i64 0}
!242 = !{!"_ZTSN4absl12lts_2026052618container_internal19btree_set_containerINS1_5btreeINS1_15map_params_implImmJEEEEEEE", !243, i64 0}
!243 = !{!"_ZTSN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implImmJEEEEEEE", !168, i64 0}
!244 = !{!"_ZTSSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE", !245, i64 0}
!245 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE", !246, i64 0}
!246 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EE12_Vector_implE", !138, i64 0}
!247 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !248, i64 0}
!248 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !249, i64 0}
!249 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !128, i64 0}
!250 = !{i64 0, i64 8, !38, i64 8, i64 8, !152}
!251 = !{!136, !37, i64 0}
!252 = !{!225, !10, i64 152}
!253 = !{!225, !10, i64 160}
!254 = !{!255, !16, i64 16}
!255 = !{!"_ZTS12dl_phdr_info", !37, i64 0, !36, i64 8, !16, i64 16, !256, i64 24, !257, i64 32, !257, i64 40, !37, i64 48, !16, i64 56}
!256 = !{!"short", !7, i64 0}
!257 = !{!"long long", !7, i64 0}
!258 = !{!255, !256, i64 24}
!259 = !{!255, !36, i64 8}
!260 = distinct !{!260, !174}
!261 = !{!262, !6, i64 0}
!262 = !{!"_ZTS10Elf64_Phdr", !6, i64 0, !6, i64 4, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!263 = !{!255, !37, i64 0}
!264 = !{!262, !37, i64 16}
!265 = !{!266, !37, i64 0}
!266 = !{!"_ZTS9Elf64_Dyn", !37, i64 0, !7, i64 8}
!267 = distinct !{!267, !174}
!268 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110GetBuildIdB5cxx11EPK12dl_phdr_info: argument 0"}
!271 = distinct !{!271, !"_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110GetBuildIdB5cxx11EPK12dl_phdr_info"}
!272 = !{!262, !37, i64 32}
!273 = !{!262, !37, i64 48}
!274 = !{!275, !6, i64 0}
!275 = !{!"_ZTS10Elf64_Nhdr", !6, i64 0, !6, i64 4, !6, i64 8}
!276 = !{!275, !6, i64 4}
!277 = !{!275, !6, i64 8}
!278 = distinct !{!278, !174}
!279 = !{!262, !37, i64 40}
!280 = !{!262, !37, i64 8}
!281 = distinct !{!281, !174}
!282 = !{!283, !15, i64 0}
!283 = !{!"_ZTSN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableE", !15, i64 0}
!284 = !{i64 8}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_: argument 0"}
!287 = distinct !{!287, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_smallISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_: argument 0"}
!290 = distinct !{!290, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_smallISt17basic_string_viewIcS7_EEESH_INSL_8iteratorEbERKT_"}
!291 = !{!289, !286}
!292 = !{!293, !74, i64 16}
!293 = !{!"_ZTSSt4pairIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18debugging_internal8StringIdEEEJNS2_10StringHashENS2_8StringEqENSB_14ProfileBuilder17HashtablezBarrierIS_IKSA_SC_EEEEE8iteratorEbE", !294, i64 0, !74, i64 16}
!294 = !{!"_ZTSN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8iteratorE", !16, i64 0, !7, i64 8}
!295 = !{!296, !296, i64 0}
!296 = !{!"p1 _ZTSN4absl12lts_2026052618container_internal10StringHashE", !16, i64 0}
!297 = !{!298, !10, i64 32}
!298 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052618debugging_internal8StringIdEE", !34, i64 0, !10, i64 32}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZN4absl12lts_2026052618container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!301 = distinct !{!301, !"_ZN4absl12lts_2026052618container_internal5probeERKNS1_12CommonFieldsEm"}
!302 = !{i64 9952376}
!303 = !{!"branch_weights", i32 2146410443, i32 1073205}
!304 = distinct !{!304, !174}
!305 = distinct !{!305, !174}
!306 = !{!307, !23, i64 8}
!307 = !{!"_ZTSN4absl12lts_2026052618container_internal7HashKeyINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEE", !296, i64 0, !23, i64 8}
!308 = distinct !{!308, !174}
!309 = !{!310, !70, i64 8}
!310 = !{!"_ZTSN4absl12lts_2026052618container_internal7HashKeyINS0_13hash_internal4HashImEEmLb1EEE", !68, i64 0, !70, i64 8}
!311 = !{!"branch_weights", i32 4000000, i32 4001}
!312 = !{!313, !314, i64 0}
!313 = !{!"_ZTSN4absl12lts_2026052610FormatSinkE", !314, i64 0}
!314 = !{!"p1 _ZTSN4absl12lts_2026052619str_format_internal14FormatSinkImplE", !16, i64 0}
!315 = !{!316, !37, i64 16}
!316 = !{!"_ZTSN4absl12lts_2026052619str_format_internal14FormatSinkImplE", !317, i64 0, !37, i64 16, !36, i64 24, !7, i64 32}
!317 = !{!"_ZTSN4absl12lts_2026052619str_format_internal17FormatRawSinkImplE", !16, i64 0, !16, i64 8}
!318 = !{!316, !36, i64 24}
!319 = !{!317, !16, i64 8}
!320 = !{!317, !16, i64 0}
!321 = distinct !{null, null, null, null, null, null}
!322 = distinct !{null, null, null, null, null}
!323 = distinct !{!323, !174}
!324 = distinct !{null, null, null, null, null, null}
!325 = distinct !{null, null, null, null, null}
!326 = !{!128, !129, i64 0}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!329 = distinct !{!329, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!332 = !{!328, !331}
!333 = distinct !{!333, !174}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!336 = distinct !{!336, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!337 = !{!338}
!338 = distinct !{!338, !336, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!339 = !{!335, !338}
!340 = distinct !{!340, !341}
!341 = !{!"llvm.loop.unroll.disable"}
!342 = distinct !{!342, !174}
!343 = distinct !{!343, !341}
!344 = distinct !{!344, !174}
!345 = !{!6, !6, i64 0}
!346 = distinct !{!346, !174}
!347 = distinct !{!347, !174}
!348 = distinct !{!348, !174}
!349 = distinct !{!349, !174}
!350 = distinct !{!350, !174}
!351 = distinct !{!351, !174}
!352 = distinct !{!352, !341}
!353 = distinct !{!353, !174}
!354 = distinct !{!354, !174}
!355 = distinct !{!355, !174}
!356 = distinct !{!356, !341}
!357 = distinct !{!357, !341}
!358 = distinct !{!358, !174}
!359 = distinct !{!359, !174}
!360 = !{!361}
!361 = distinct !{!361, !362, !"_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!362 = distinct !{!362, !"_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_"}
!363 = !{!364}
!364 = distinct !{!364, !362, !"_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!365 = !{!361, !364}
!366 = distinct !{!366, !174}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!369 = distinct !{!369, !"_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"_ZSt19__relocate_object_aIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!372 = !{!368, !371}
end_hunk_3
