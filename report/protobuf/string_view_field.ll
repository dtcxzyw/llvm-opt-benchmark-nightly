Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/string_view_field?download=true
inline.NumInlined: 2932
inline.NumDeleted: 1338
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_string_view" = type { i64, ptr }
%"struct.absl::lts_20250512::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%class.anon.30 = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<google::protobuf::io::Printer::Sub, std::allocator<google::protobuf::io::Printer::Sub>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::io::Printer::Sub, std::allocator<google::protobuf::io::Printer::Sub>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::io::Printer::Sub, std::allocator<google::protobuf::io::Printer::Sub>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::io::Printer::Sub, std::allocator<google::protobuf::io::Printer::Sub>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.google::protobuf::io::Printer::Sub" = type { %"class.std::__cxx11::basic_string", %"struct.google::protobuf::io::Printer::ValueImpl", %"class.std::optional" }
%"struct.google::protobuf::io::Printer::ValueImpl" = type <{ %"class.std::variant", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type { %"union.std::__detail::__variant::_Variadic_union", i8 }
%"union.std::__detail::__variant::_Variadic_union" = type { %"struct.std::__detail::__variant::_Uninitialized" }
%"struct.std::__detail::__variant::_Uninitialized" = type { %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [32 x i8] }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base.54", [7 x i8] }
%"struct.std::_Optional_payload.base.54" = type { %"struct.std::_Optional_payload_base.base.53" }
%"struct.std::_Optional_payload_base.base.53" = type <{ %"union.std::_Optional_payload_base<google::protobuf::io::Printer::AnnotationRecord>::_Storage", i8 }>
%"union.std::_Optional_payload_base<google::protobuf::io::Printer::AnnotationRecord>::_Storage" = type { %"struct.google::protobuf::io::Printer::AnnotationRecord" }
%"struct.google::protobuf::io::Printer::AnnotationRecord" = type { %"class.std::vector.42", %"class.std::__cxx11::basic_string", %"class.std::optional.47" }
%"class.std::vector.42" = type { %"struct.std::_Vector_base.43" }
%"struct.std::_Vector_base.43" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional.47" = type { %"struct.std::_Optional_base.48" }
%"struct.std::_Optional_base.48" = type { %"struct.std::_Optional_payload.50" }
%"struct.std::_Optional_payload.50" = type { %"struct.std::_Optional_payload_base.base", [3 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<google::protobuf::io::AnnotationCollector::Semantic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<google::protobuf::io::AnnotationCollector::Semantic>::_Storage" = type { i32 }
%"class.absl::lts_20250512::Cleanup" = type { %"class.absl::lts_20250512::cleanup_internal::Storage" }
%"class.absl::lts_20250512::cleanup_internal::Storage" = type { i8, [7 x i8], [16 x i8] }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr.108" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr.108" = type { %"struct.std::__uniq_ptr_data.109" }
%"struct.std::__uniq_ptr_data.109" = type { %"class.std::__uniq_ptr_impl.110" }
%"class.std::__uniq_ptr_impl.110" = type { %"class.std::tuple.111" }
%"class.std::tuple.111" = type { %"struct.std::_Tuple_impl.112" }
%"struct.std::_Tuple_impl.112" = type { %"struct.std::_Head_base.115" }
%"struct.std::_Head_base.115" = type { ptr }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%class.anon.68 = type { ptr }
%class.anon.230 = type { ptr }
%class.anon.237 = type { ptr }
%"class.std::allocator.143" = type { i8 }
%"struct.std::pair.154" = type { %"class.std::tuple.156", %"class.std::tuple.159" }
%"class.std::tuple.156" = type { %"struct.std::_Tuple_impl.157" }
%"struct.std::_Tuple_impl.157" = type { %"struct.std::_Head_base.158" }
%"struct.std::_Head_base.158" = type { ptr }
%"class.std::tuple.159" = type { %"struct.std::_Tuple_impl.160" }
%"struct.std::_Tuple_impl.160" = type { %"struct.std::_Head_base.161" }
%"struct.std::_Head_base.161" = type { ptr }
%"class.absl::lts_20250512::flat_hash_map.102" = type { %"class.absl::lts_20250512::container_internal::raw_hash_map.103" }
%"class.absl::lts_20250512::container_internal::raw_hash_map.103" = type { %"class.absl::lts_20250512::container_internal::raw_hash_set.104" }
%"class.absl::lts_20250512::container_internal::raw_hash_set.104" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple" }
%"class.absl::lts_20250512::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" = type { %"class.absl::lts_20250512::container_internal::CommonFields" }
%"class.absl::lts_20250512::container_internal::CommonFields" = type { i64, %"class.absl::lts_20250512::container_internal::HashtableSize", %"union.absl::lts_20250512::container_internal::HeapOrSoo" }
%"class.absl::lts_20250512::container_internal::HashtableSize" = type { i64 }
%"union.absl::lts_20250512::container_internal::HeapOrSoo" = type { %"struct.absl::lts_20250512::container_internal::HeapPtrs" }
%"struct.absl::lts_20250512::container_internal::HeapPtrs" = type { ptr, %"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" }
%"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" = type { ptr }
%"class.absl::lts_20250512::flat_hash_map.105" = type { %"class.absl::lts_20250512::container_internal::raw_hash_map.106" }
%"class.absl::lts_20250512::container_internal::raw_hash_map.106" = type { %"class.absl::lts_20250512::container_internal::raw_hash_set.107" }
%"class.absl::lts_20250512::container_internal::raw_hash_set.107" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple" }
%"struct.std::pair.116" = type <{ %"class.absl::lts_20250512::container_internal::raw_hash_set<absl::lts_20250512::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, google::protobuf::io::Printer::ValueImpl<true>>, absl::lts_20250512::container_internal::StringHash, absl::lts_20250512::container_internal::StringEq, std::allocator<std::pair<const std::__cxx11::basic_string<char>, google::protobuf::io::Printer::ValueImpl<true>>>>::iterator", i8, [7 x i8] }>
%"class.absl::lts_20250512::container_internal::raw_hash_set<absl::lts_20250512::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, google::protobuf::io::Printer::ValueImpl<true>>, absl::lts_20250512::container_internal::StringHash, absl::lts_20250512::container_internal::StringEq, std::allocator<std::pair<const std::__cxx11::basic_string<char>, google::protobuf::io::Printer::ValueImpl<true>>>>::iterator" = type { ptr, %union.anon.118 }
%union.anon.118 = type { ptr }
%"struct.std::pair.119" = type { %"class.std::__cxx11::basic_string", %"struct.google::protobuf::io::Printer::ValueImpl" }
%"struct.std::pair.125" = type { %"class.std::__cxx11::basic_string", %"struct.google::protobuf::io::Printer::AnnotationRecord" }
%"struct.std::pair.121" = type <{ %"class.absl::lts_20250512::container_internal::raw_hash_set<absl::lts_20250512::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, google::protobuf::io::Printer::AnnotationRecord>, absl::lts_20250512::container_internal::StringHash, absl::lts_20250512::container_internal::StringEq, std::allocator<std::pair<const std::__cxx11::basic_string<char>, google::protobuf::io::Printer::AnnotationRecord>>>::iterator", i8, [7 x i8] }>
%"class.absl::lts_20250512::container_internal::raw_hash_set<absl::lts_20250512::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, google::protobuf::io::Printer::AnnotationRecord>, absl::lts_20250512::container_internal::StringHash, absl::lts_20250512::container_internal::StringEq, std::allocator<std::pair<const std::__cxx11::basic_string<char>, google::protobuf::io::Printer::AnnotationRecord>>>::iterator" = type { ptr, %union.anon.123 }
%union.anon.123 = type { ptr }
%class.anon.127 = type { %"class.absl::lts_20250512::flat_hash_map.102" }
%class.anon.130 = type { %"class.absl::lts_20250512::flat_hash_map.105" }
%"class.std::allocator.179" = type { i8 }
%"class.std::optional.184" = type { %"struct.std::_Optional_base.185" }
%"struct.std::_Optional_base.185" = type { %"struct.std::_Optional_payload.187" }
%"struct.std::_Optional_payload.187" = type { %"struct.std::_Optional_payload.base.212", [7 x i8] }
%"struct.std::_Optional_payload.base.212" = type { %"struct.std::_Optional_payload_base.base.211" }
%"struct.std::_Optional_payload_base.base.211" = type { %"union.std::_Optional_payload_base<google::protobuf::io::Printer::ValueImpl<false>>::_Storage", i8 }
%"union.std::_Optional_payload_base<google::protobuf::io::Printer::ValueImpl<false>>::_Storage" = type { %"struct.google::protobuf::io::Printer::ValueImpl.190" }
%"struct.google::protobuf::io::Printer::ValueImpl.190" = type <{ %"class.std::variant.191", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.std::variant.191" = type { %"struct.std::__detail::__variant::_Variant_base.base.205", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base.205" = type { %"struct.std::__detail::__variant::_Move_assign_base.base.204" }
%"struct.std::__detail::__variant::_Move_assign_base.base.204" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base.203" }
%"struct.std::__detail::__variant::_Copy_assign_base.base.203" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base.202" }
%"struct.std::__detail::__variant::_Move_ctor_base.base.202" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base.201" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base.201" = type { %"struct.std::__detail::__variant::_Variant_storage.base.200" }
%"struct.std::__detail::__variant::_Variant_storage.base.200" = type <{ %"union.std::__detail::__variant::_Variadic_union.198", i8 }>
%"union.std::__detail::__variant::_Variadic_union.198" = type { %"struct.std::__detail::__variant::_Uninitialized.199", [16 x i8] }
%"struct.std::__detail::__variant::_Uninitialized.199" = type { %"class.std::basic_string_view" }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon.227 = type { ptr }
%class.anon.234 = type { ptr }
%class.anon.256 = type { ptr, ptr }
%class.anon.261 = type <{ ptr, ptr, i8, [7 x i8] }>

$_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase27GenerateArenaDestructorCodeEPNS0_2io7PrinterE = comdat any

$_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase21GenerateIsInitializedEPNS0_2io7PrinterE = comdat any

$_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase18NeedsIsInitializedEv = comdat any

$_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase20NeedsArenaDestructorEv = comdat any

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS8_SaIcEEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKS9_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb = comdat any

$_ZN6google8protobuf8compiler3cpp20MakeDefaultFieldNameB5cxx11EPKNS0_15FieldDescriptorE = comdat any

$_ZN6google8protobuf2io7Printer3SubC2IRA5_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_ = comdat any

$_ZN6google8protobuf2io7Printer3SubD2Ev = comdat any

$_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev = comdat any

$_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE19_M_range_initializeIPKS4_EEvT_SA_St20forward_iterator_tag = comdat any

$_ZN6google8protobuf2io7Printer3SubC2ERKS3_ = comdat any

$_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev = comdat any

$_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSD_EUlOT_T0_E_JRKSt7variantIJS9_SC_EEEEDcOSI_DpOT1_ = comdat any

$_ZN6google8protobuf2io7Printer16AnnotationRecordC2ERKS3_ = comdat any

$_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EED2Ev = comdat any

$_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev = comdat any

$_ZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEb = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IS5_SB_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISF_SG_EEEbE4typeELb1EEERKS5_RKSB_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEED2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEED2Ev = comdat any

$_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE_D2Ev = comdat any

$_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEED2Ev = comdat any

$_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19transfer_n_slots_fnEPvSO_SO_m = comdat any

$_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvST_PFvST_hmmE = comdat any

$_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE = comdat any

$_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEE8transferISaISt4pairIKS8_SE_EEEEDaPT_PNS1_13map_slot_typeIS8_SE_EESP_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2EOSC_ = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE30find_or_prepare_insert_non_sooIS9_EESJ_INSN_8iteratorEbERKT_ = comdat any

$_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEE9constructISaISt4pairIKS8_SE_EEJRKSt21piecewise_construct_tSt5tupleIJOS8_EESO_IJOSE_EEEEEvPT_PNS1_13map_slot_typeIS8_SE_EEDpOT0_ = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_ = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19transfer_n_slots_fnEPvSN_SN_m = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSS_PFvSS_hmmE = comdat any

$_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_ = comdat any

$_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_ = comdat any

$_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_ = comdat any

$_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSB_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation = comdat any

$_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESC_ = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_ = comdat any

$_ZN6google8protobuf2io7Printer9ValueImplILb0EEaSILb1EEERS4_RKNS3_IXT_EEE = comdat any

$_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEED2Ev = comdat any

$_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_ = comdat any

$_ZNSt18bad_variant_accessD0Ev = comdat any

$_ZNKSt18bad_variant_access4whatEv = comdat any

$_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SH_EEEC1ERKSP_RKSO_EUlPvPKvE_vJSU_SW_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IKS5_SB_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE18_ConstructiblePairISG_SH_EEclsr6_PCCFPISG_SH_EE26_ImplicitlyConvertiblePairISG_SH_EEEbE4typeELb1EEERKS_ISG_SH_E = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSS_ST_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEEC2EOSN_ = comdat any

$_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE17_M_realloc_insertIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSB_E0_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_ = comdat any

$_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E9_M_invokeERKSt9_Any_dataOSA_ = comdat any

$_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_ = comdat any

$_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEEC1ERKSO_RKSN_EUlPvPKvE_vJST_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEEC2EOSM_ = comdat any

$_ZN6google8protobuf8compiler3cpp18FieldGeneratorBaseD2Ev = comdat any

$_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase21GenerateStaticMembersEPNS0_2io7PrinterE = comdat any

$_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase36GenerateNonInlineAccessorDefinitionsEPNS0_2io7PrinterE = comdat any

$_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase27GenerateMessageClearingCodeEPNS0_2io7PrinterE = comdat any

$_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase9IsInlinedEv = comdat any

$_ZN6google8protobuf8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS2_7OptionsEPNS0_2io7PrinterE = comdat any

$_ZN6google8protobuf8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS2_7OptionsEPNS0_2io7PrinterEb = comdat any

$_ZN6google8protobuf2io7Printer3SubC2IZNS0_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS6_7OptionsEPS2_EUlvE_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_ = comdat any

$_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS9_7OptionsEPS4_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS9_7OptionsEPS4_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation = comdat any

$_ZN6google8protobuf2io7Printer3SubC2IZNS0_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS6_7OptionsEPS2_bEUlvE_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_ = comdat any

$_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS9_7OptionsEPS4_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS9_7OptionsEPS4_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation = comdat any

$_ZSt13__invoke_implIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS8_7OptionsEPS3_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEESP_St14__invoke_otherOT0_DpOT1_ = comdat any

$_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE18GetPolicyFunctionsEvE5value = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value = comdat any

$_ZTISt18bad_variant_access = comdat any

$_ZTSSt18bad_variant_access = comdat any

$_ZTVSt18bad_variant_access = comdat any

$_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ = comdat any

$_ZTSZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ = comdat any

$_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_ = comdat any

$_ZTSZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_ = comdat any

$_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS7_7OptionsEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = comdat any

$_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS7_7OptionsEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = comdat any

$_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS7_7OptionsEPS2_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = comdat any

$_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS7_7OptionsEPS2_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = comdat any

@_ZTVN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewE = internal unnamed_addr constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewE, ptr @_ZN6google8protobuf8compiler3cpp18FieldGeneratorBaseD2Ev, ptr @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewD0Ev, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView13RequiresArenaENS2_18FieldGeneratorBase17GeneratorFunctionE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView8MakeVarsEv, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView22GeneratePrivateMembersEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView21GenerateStaticMembersEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView28GenerateAccessorDeclarationsEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView36GenerateNonInlineAccessorDefinitionsEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView20GenerateClearingCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView27GenerateMessageClearingCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView19GenerateMergingCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView27GenerateCopyConstructorCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView20GenerateSwappingCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView22GenerateDestructorCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase27GenerateArenaDestructorCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView34GenerateMemberConstexprConstructorEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView25GenerateMemberConstructorEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView29GenerateMemberCopyConstructorEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView26GenerateOneofCopyConstructEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView28GenerateAggregateInitializerEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView37GenerateConstexprAggregateInitializerEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView32GenerateCopyAggregateInitializerEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView39GenerateSerializeWithCachedSizesToArrayEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView16GenerateByteSizeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase21GenerateIsInitializedEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase18NeedsIsInitializedEv, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView9IsInlinedEv, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase20NeedsArenaDestructorEv] }, align 8
@_ZTIN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewE, ptr @_ZTIN6google8protobuf8compiler3cpp18FieldGeneratorBaseE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewE = internal constant [66 x i8] c"N6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewE\00", align 1
@_ZTIN6google8protobuf8compiler3cpp18FieldGeneratorBaseE = external constant ptr
@_ZTVN6google8protobuf8compiler3cpp18FieldGeneratorBaseE = external unnamed_addr constant { [31 x ptr] }, align 8
@.str = private unnamed_addr constant [22 x i8] c"::absl::string_view()\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"::internal::GetEmptyStringAlreadyInited()\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Impl_::\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"kDefaultLen\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"default_variable_name\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"default_variable_field\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"kDefaultStr\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c".get()\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"kDefaultValue\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"nullptr\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"lazy_args\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"proto2\00", align 1
@__const._ZN6google8protobuf8compiler3cpp17ProtobufNamespaceERKNS2_7OptionsE.kGoogle3Ns = private unnamed_addr constant %"class.std::basic_string_view" { i64 6, ptr @.str.21 }, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"google::protobuf\00", align 1
@__const._ZN6google8protobuf8compiler3cpp17ProtobufNamespaceERKNS2_7OptionsE.kOssNs = private unnamed_addr constant %"class.std::basic_string_view" { i64 16, ptr @.str.22 }, align 8
@.str.23 = private unnamed_addr constant [3 x i8] c";,\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"_i_give_permission_to_break_this_code_default_\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"Str\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"InlinedStringField\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"MicroString\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"ArenaStringPtr\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"\0A              $pbi$::$Str$ $name$_;\0A            \00", align 1
@.str.32 = private unnamed_addr constant [181 x i8] c"\0A        static constexpr auto $default_variable_name$ =\0A            $pbi$::MicroString::MakeUnownedPayload(\0A                ::absl::string_view($kDefault$, $kDefaultLen$));\0A      \00", align 1
@.str.33 = private unnamed_addr constant [72 x i8] c"\0A        static const $pbi$::LazyString $default_variable_name$;\0A      \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"set_\00", align 1
@.str.35 = private unnamed_addr constant [322 x i8] c"\0A    [[nodiscard]] $DEPRECATED$ ::absl::string_view $name$() const;\0A    template <typename Arg_ = ::std::string&&>\0A    $DEPRECATED$ void $set_name$(Arg_&& arg);\0A\0A    private:\0A    ::absl::string_view _internal_$name$() const;\0A    PROTOBUF_ALWAYS_INLINE void _internal_set_$name$(::absl::string_view value);\0A\0A    public:\0A  \00", align 1
@.str.36 = private unnamed_addr constant [67 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/io/printer.h\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"allow_callbacks || var.value_.AsCallback() == nullptr\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"callback arguments are not permitted in this position\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"result.second\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"repeated variable in Emit() or WithVars() call: \22\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@_ZN4absl12lts_2025051218container_internal11kEmptyGroupE = external constant [32 x i8], align 16
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 32, i32 112, i32 112, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19transfer_n_slots_fnEPvSO_SO_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvST_PFvST_hmmE }, comdat, align 8
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 32, i32 96, i32 96, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19transfer_n_slots_fnEPvSN_SN_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSS_PFvSS_hmmE }, comdat, align 8
@.str.45 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt18bad_variant_access = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8
@_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ = linkonce_odr hidden constant [126 x i8] c"ZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_\00", comdat, align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_ = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_ }, comdat, align 8
@_ZTSZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_ = linkonce_odr hidden constant [127 x i8] c"ZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_\00", comdat, align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"if_IsDefault\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"update_hasbit\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"check_hasbit\00", align 1
@.str.50 = private unnamed_addr constant [1119 x i8] c"\0A        inline ::absl::string_view $Msg$::$name$() const\0A            ABSL_ATTRIBUTE_LIFETIME_BOUND {\0A          $WeakDescriptorSelfPin$;\0A          $annotate_get$;\0A          // @@protoc_insertion_point(field_get:$pkg.Msg.field$)\0A          $if_IsDefault$;\0A          return _internal_$name_internal$();\0A        }\0A        template <typename Arg_>\0A        PROTOBUF_ALWAYS_INLINE void $Msg$::set_$name$(Arg_&& arg) {\0A          $WeakDescriptorSelfPin$;\0A          $TsanDetectConcurrentMutation$;\0A          $PrepareSplitMessageForWrite$;\0A          $update_hasbit$;\0A          $field_$.Set(static_cast<Arg_&&>(arg), GetArena());\0A          $annotate_set$;\0A          // @@protoc_insertion_point(field_set:$pkg.Msg.field$)\0A        }\0A        inline ::absl::string_view $Msg$::_internal_$name_internal$() const {\0A          $TsanDetectConcurrentRead$;\0A          $check_hasbit$;\0A          return $field_$.Get();\0A        }\0A        inline void $Msg$::_internal_set_$name_internal$(::absl::string_view value) {\0A          $TsanDetectConcurrentMutation$;\0A          $update_hasbit$;\0A          $field_$.Set(value, GetArena());\0A        }\0A      \00", align 1
@.str.51 = private unnamed_addr constant [131 x i8] c"\0A               if ($field_$.IsDefault()) {\0A                 return $default_variable_field$.get();\0A               }\0A             \00", align 1
@"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" }, align 8
@"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant [271 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"\0A      $set_hasbit$;\0A    \00", align 1
@.str.53 = private unnamed_addr constant [129 x i8] c"\0A    if ($not_has_field$) {\0A      clear_$oneof_name$();\0A\0A      set_has_$name_internal$();\0A      $field_$.InitDefault();\0A    }\0A  \00", align 1
@"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" }, align 8
@"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant [271 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", align 1
@.str.54 = private unnamed_addr constant [109 x i8] c"\0A               if ($not_has_field$) {\0A                 return $kDefaultStr$;\0A               }\0A             \00", align 1
@"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" }, align 8
@"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant [271 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", align 1
@.str.55 = private unnamed_addr constant [152 x i8] c"\0A      /*static*/ const ::_pbi::LazyString $Msg$::$default_variable_field${\0A          {{$kDefault$, $kDefaultLen$}},\0A          {nullptr},\0A      };\0A    \00", align 1
@.str.56 = private unnamed_addr constant [63 x i8] c"\0A        if (GetArena() == nullptr) $field_$.Destroy();\0A      \00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"\0A      $field_$.Destroy();\0A    \00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"\0A        $field_$.Clear();\0A      \00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"\0A      $field_$.ClearToEmpty();\0A    \00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"\0A    $field_$.ClearToDefault($lazy_var$, GetArena());\0A  \00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"\0A      $DCHK$(!$field_$.IsDefault());\0A    \00", align 1
@.str.62 = private unnamed_addr constant [61 x i8] c"\0A      $field_$.ClearToDefault($lazy_var$, GetArena());\0A    \00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"\0A      $field_$.Clear();\0A    \00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"ClearNonDefaultToEmpty\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"ClearToEmpty\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"\0A            $field_$.$Clear$();\0A          \00", align 1
@.str.68 = private unnamed_addr constant [152 x i8] c"\0A        if (oneof_needs_init) {\0A          _this->$field_$.InitDefault();\0A        }\0A        _this->$field_$.Set(from._internal_$name$(), arena);\0A      \00", align 1
@.str.69 = private unnamed_addr constant [70 x i8] c"\0A        _this->_internal_set_$name$(from._internal_$name$());\0A      \00", align 1
@.str.70 = private unnamed_addr constant [36 x i8] c"\0A      $field_$.InitDefault();\0A    \00", align 1
@.str.71 = private unnamed_addr constant [116 x i8] c"\0A        if ($pbi$::DebugHardenForceCopyDefaultString()) {\0A          $field_$.Set(\22\22, GetArena());\0A        }\0A      \00", align 1
@.str.72 = private unnamed_addr constant [62 x i8] c"\0A      new (&_this->$field_$)::_pbi::InlinedStringField;\0A    \00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"hazzer\00", align 1
@.str.74 = private unnamed_addr constant [117 x i8] c"\0A        if ($hazzer$) {\0A          _this->$field_$.Set(from._internal_$name$(), _this->GetArena());\0A        }\0A      \00", align 1
@.str.75 = private unnamed_addr constant [47 x i8] c"CheckHasBit(from.$has_bits_array$, $has_mask$)\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"!from._internal_$name$().empty()\00", align 1
@"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView27GenerateCopyConstructorCodeEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView27GenerateCopyConstructorCodeEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" }, align 8
@"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView27GenerateCopyConstructorCodeEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant [265 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView27GenerateCopyConstructorCodeEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", align 1
@.str.77 = private unnamed_addr constant [53 x i8] c"\0A      $field_$.InternalSwap(&other->$field_$);\0A    \00", align 1
@.str.78 = private unnamed_addr constant [71 x i8] c"\0A      $field_$.InternalSwap(&$field_$, &other->$field_$, arena);\0A    \00", align 1
@.str.79 = private unnamed_addr constant [131 x i8] c"\0A    ::_pbi::InlinedStringField::InternalSwap(&$field_$, &other->$field_$,\0A                                             arena);\0A  \00", align 1
@.str.80 = private unnamed_addr constant [51 x i8] c"\0A      $cached_split_ptr$->$name$_.Destroy();\0A    \00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"\0A    this_.$field_$.Destroy();\0A  \00", align 1
@.str.82 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/compiler/cpp/field.h\00", align 1
@.str.83 = private unnamed_addr constant [48 x i8] c"NeedsArenaDestructor() == ArenaDtorNeeds::kNone\00", align 1
@_ZN6google8protobuf15FieldDescriptor14kCppTypeToNameE = external local_unnamed_addr constant [11 x ptr], align 16
@_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE = external local_unnamed_addr constant [19 x i32], align 16
@.str.84 = private unnamed_addr constant [10 x i8] c"$name$_{}\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"$name$_($default_variable_field$)\00", align 1
@.str.86 = private unnamed_addr constant [84 x i8] c"$name$_(\0A    &$pbi$::fixed_address_empty_string,\0A    ::_pbi::ConstantInitialized())\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"$name$_(arena)\00", align 1
@.str.88 = private unnamed_addr constant [41 x i8] c"$name$_(arena, $default_variable_field$)\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"$name$_(arena, from.$name$_)\00", align 1
@.str.90 = private unnamed_addr constant [54 x i8] c"$name$_(arena, from.$name$_, $default_variable_name$)\00", align 1
@.str.91 = private unnamed_addr constant [56 x i8] c"new (&$field$) decltype($field$){arena, from.$field$};\0A\00", align 1
@.str.92 = private unnamed_addr constant [82 x i8] c"new (&$field$) decltype($field$){arena, from.$field$, $default_variable_field$};\0A\00", align 1
@.str.93 = private unnamed_addr constant [105 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/compiler/cpp/field_generators/string_view_field.cc\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"!is_inlined()\00", align 1
@.str.95 = private unnamed_addr constant [47 x i8] c"\0A      decltype(Impl_::Split::$name$_){},\0A    \00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"\0A      decltype($field_$){},\0A    \00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"\0A      decltype($field_$){arena},\0A    \00", align 1
@.str.98 = private unnamed_addr constant [53 x i8] c"\0A      /*decltype($field_$)*/ {nullptr, false},\0A    \00", align 1
@.str.99 = private unnamed_addr constant [43 x i8] c"\0A        /*decltype($field_$)*/ {},\0A      \00", align 1
@.str.100 = private unnamed_addr constant [80 x i8] c"\0A        /*decltype($field_$)*/ {$classname$::$default_variable_field$},\0A      \00", align 1
@.str.101 = private unnamed_addr constant [134 x i8] c"\0A      /*decltype($field_$)*/ {\0A          &::_pbi::fixed_address_empty_string,\0A          ::_pbi::ConstantInitialized{},\0A      },\0A    \00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"utf8_check\00", align 1
@.str.103 = private unnamed_addr constant [191 x i8] c"\0A            const ::absl::string_view _s = this_._internal_$name$();\0A            $utf8_check$;\0A            target = stream->Write$DeclaredType$MaybeAliased($number$, _s, target);\0A          \00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"_s.data(), static_cast<int>(_s.length()),\00", align 1
@"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView39GenerateSerializeWithCachedSizesToArrayEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView39GenerateSerializeWithCachedSizesToArrayEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" }, align 8
@"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView39GenerateSerializeWithCachedSizesToArrayEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant [277 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118SingularStringView39GenerateSerializeWithCachedSizesToArrayEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", align 1
@.str.105 = private unnamed_addr constant [148 x i8] c"\0A      total_size += $kTagBytes$ + $pbi$::WireFormatLite::$DeclaredType$Size(\0A                                      this_._internal_$name$());\0A    \00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"!NeedsIsInitialized()\00", align 1
@_ZTVN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewE = internal unnamed_addr constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewE, ptr @_ZN6google8protobuf8compiler3cpp18FieldGeneratorBaseD2Ev, ptr @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewD0Ev, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView13RequiresArenaENS2_18FieldGeneratorBase17GeneratorFunctionE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView8MakeVarsEv, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView22GeneratePrivateMembersEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase21GenerateStaticMembersEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView28GenerateAccessorDeclarationsEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView33GenerateInlineAccessorDefinitionsEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase36GenerateNonInlineAccessorDefinitionsEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView20GenerateClearingCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase27GenerateMessageClearingCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView19GenerateMergingCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView27GenerateCopyConstructorCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView20GenerateSwappingCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView22GenerateDestructorCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase27GenerateArenaDestructorCodeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase34GenerateMemberConstexprConstructorEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase25GenerateMemberConstructorEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase29GenerateMemberCopyConstructorEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase26GenerateOneofCopyConstructEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase28GenerateAggregateInitializerEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase37GenerateConstexprAggregateInitializerEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase32GenerateCopyAggregateInitializerEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView39GenerateSerializeWithCachedSizesToArrayEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringView16GenerateByteSizeEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase21GenerateIsInitializedEPNS0_2io7PrinterE, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase18NeedsIsInitializedEv, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase9IsInlinedEv, ptr @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase20NeedsArenaDestructorEv] }, align 8
@_ZTIN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewE, ptr @_ZTIN6google8protobuf8compiler3cpp18FieldGeneratorBaseE }, align 8
@_ZTSN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewE = internal constant [66 x i8] c"N6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewE\00", align 1
@.str.107 = private unnamed_addr constant [78 x i8] c"\0A        $pbi$::RawPtr<$pb$::RepeatedPtrField<::std::string>> $name$_;\0A      \00", align 1
@.str.108 = private unnamed_addr constant [63 x i8] c"\0A        $pb$::RepeatedPtrField<::std::string> $name$_;\0A      \00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"_internal_\00", align 1
@constinit = private unnamed_addr constant [2 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 0, ptr @.str.16 }, %"class.std::basic_string_view" { i64 10, ptr @.str.109 }], align 8
@.str.110 = private unnamed_addr constant [5 x i8] c"add_\00", align 1
@constinit.111 = private unnamed_addr constant [2 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 4, ptr @.str.34 }, %"class.std::basic_string_view" { i64 4, ptr @.str.110 }], align 8
@.str.112 = private unnamed_addr constant [9 x i8] c"mutable_\00", align 1
@.str.113 = private unnamed_addr constant [662 x i8] c"\0A    [[nodiscard]] $DEPRECATED$ ::absl::string_view $name$(int index) const;\0A    template <typename Arg_ = ::std::string&&>\0A    $DEPRECATED$ void set_$name$(int index, Arg_&& value);\0A    template <typename Arg_ = ::std::string&&>\0A    $DEPRECATED$ void add_$name$(Arg_&& value);\0A    [[nodiscard]] $DEPRECATED$ const $pb$::RepeatedPtrField<::std::string>&\0A    $name$() const;\0A    [[nodiscard]] $DEPRECATED$ $pb$::RepeatedPtrField<::std::string>* $nonnull$\0A    $mutable_name$();\0A\0A    private:\0A    const $pb$::RepeatedPtrField<::std::string>& _internal_$name$() const;\0A    $pb$::RepeatedPtrField<::std::string>* $nonnull$ _internal_mutable_$name$();\0A\0A    public:\0A  \00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"bytes_tag\00", align 1
@.str.115 = private unnamed_addr constant [2094 x i8] c"\0A        inline ::absl::string_view $Msg$::$name$(int index) const\0A            ABSL_ATTRIBUTE_LIFETIME_BOUND {\0A          $WeakDescriptorSelfPin$;\0A          $annotate_get$;\0A          // @@protoc_insertion_point(field_get:$pkg.Msg.field$)\0A          return $getter$;\0A        }\0A        //~ Note: no need to set hasbit in set_$name$(int index). Hasbits only\0A        //~ need to be updated if a new element is (potentially) added, not if\0A        //~ an existing element is mutated.\0A        template <typename Arg_>\0A        inline void $Msg$::set_$name$(int index, Arg_&& value) {\0A          $WeakDescriptorSelfPin$;\0A          $pbi$::AssignToString(*$mutable$, ::std::forward<Arg_>(value) $bytes_tag$);\0A          $annotate_set$;\0A          // @@protoc_insertion_point(field_set:$pkg.Msg.field$)\0A        }\0A        template <typename Arg_>\0A        inline void $Msg$::add_$name$(Arg_&& value) {\0A          $WeakDescriptorSelfPin$;\0A          $TsanDetectConcurrentMutation$;\0A          $pbi$::AddToRepeatedPtrField($pb$::MessageLite::internal_visibility(),\0A                                       GetArena(),\0A                                       *_internal_mutable_$name_internal$(),\0A                                       ::std::forward<Arg_>(value) $bytes_tag$);\0A          $set_hasbit$;\0A          $annotate_add$;\0A          // @@protoc_insertion_point(field_add:$pkg.Msg.field$)\0A        }\0A        inline const $pb$::RepeatedPtrField<::std::string>& $Msg$::$name$()\0A            const ABSL_ATTRIBUTE_LIFETIME_BOUND {\0A          $WeakDescriptorSelfPin$;\0A          $annotate_list$;\0A          // @@protoc_insertion_point(field_list:$pkg.Msg.field$)\0A          return _internal_$name_internal$();\0A        }\0A        inline $pb$::RepeatedPtrField<::std::string>* $nonnull$\0A        $Msg$::mutable_$name$() ABSL_ATTRIBUTE_LIFETIME_BOUND {\0A          $WeakDescriptorSelfPin$;\0A          $set_hasbit$;\0A          $annotate_mutable_list$;\0A          // @@protoc_insertion_point(field_mutable_list:$pkg.Msg.field$)\0A          $TsanDetectConcurrentMutation$;\0A          return _internal_mutable_$name_internal$();\0A        }\0A      \00", align 1
@.str.116 = private unnamed_addr constant [586 x i8] c"\0A      inline const $pb$::RepeatedPtrField<::std::string>&\0A      $Msg$::_internal_$name_internal$() const {\0A        $TsanDetectConcurrentRead$;\0A        return *$field_$;\0A      }\0A      inline $pb$::RepeatedPtrField<::std::string>* $nonnull$\0A      $Msg$::_internal_mutable_$name_internal$() {\0A        $TsanDetectConcurrentRead$;\0A        $PrepareSplitMessageForWrite$;\0A        if ($field_$.IsDefault()) {\0A          $field_$.Set(\0A              $pb$::Arena::Create<$pb$::RepeatedPtrField<::std::string>>(\0A                  GetArena()));\0A        }\0A        return $field_$.Get();\0A      }\0A    \00", align 1
@.str.117 = private unnamed_addr constant [365 x i8] c"\0A      inline const $pb$::RepeatedPtrField<::std::string>&\0A      $Msg$::_internal_$name_internal$() const {\0A        $TsanDetectConcurrentRead$;\0A        return $field_$;\0A      }\0A      inline $pb$::RepeatedPtrField<::std::string>* $nonnull$\0A      $Msg$::_internal_mutable_$name_internal$() {\0A        $TsanDetectConcurrentRead$;\0A        return &$field_$;\0A      }\0A    \00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"getter\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"_internal_$name_internal$().Get(index)\00", align 1
@.str.120 = private unnamed_addr constant [91 x i8] c"\0A              $pbi$::CheckedGetOrDefault(_internal_$name_internal$(), index)\0A            \00", align 1
@.str.121 = private unnamed_addr constant [89 x i8] c"\0A              $pbi$::CheckedGetOrAbort(_internal_$name_internal$(), index)\0A            \00", align 1
@_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS7_7OptionsEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS7_7OptionsEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ }, comdat, align 8
@_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS7_7OptionsEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = linkonce_odr hidden constant [248 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp29GetEmitRepeatedFieldGetterSubERKNS7_7OptionsEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", comdat, align 1
@.str.122 = private unnamed_addr constant [20 x i8] c", $pbi$::BytesTag{}\00", align 1
@"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" }, align 8
@"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant [271 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView33GenerateInlineAccessorDefinitionsEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"mutable\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"$field$.Mutable(index)\00", align 1
@.str.125 = private unnamed_addr constant [52 x i8] c"_internal_mutable_$name_internal$()->Mutable(index)\00", align 1
@.str.126 = private unnamed_addr constant [46 x i8] c"$pbi$::CheckedMutableOrAbort(&$field$, index)\00", align 1
@.str.127 = private unnamed_addr constant [126 x i8] c"\0A                $pbi$::CheckedMutableOrAbort(\0A                    _internal_mutable_$name_internal$(), index)\0A              \00", align 1
@_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS7_7OptionsEPS2_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS7_7OptionsEPS2_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ }, comdat, align 8
@_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS7_7OptionsEPS2_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = linkonce_odr hidden constant [250 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler3cpp30GetEmitRepeatedFieldMutableSubERKNS7_7OptionsEPS2_bEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", comdat, align 1
@.str.128 = private unnamed_addr constant [31 x i8] c"$field_$.ClearIfNotDefault();\0A\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"$field_$.Clear();\0A\00", align 1
@.str.131 = private unnamed_addr constant [78 x i8] c"\0A        if (!from.$field_$.IsDefault()) {\0A          $body$;\0A        }\0A      \00", align 1
@.str.132 = private unnamed_addr constant [178 x i8] c"\0A        _this->_internal_mutable_$name$()->InternalMergeFromWithArena(\0A            $pb$::MessageLite::internal_visibility(), arena,\0A            from._internal_$name$());\0A      \00", align 1
@_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIRZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView19GenerateMergingCodeEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIRZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView19GenerateMergingCodeEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ }, align 8
@_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIRZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView19GenerateMergingCodeEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_ = internal constant [259 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIRZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView19GenerateMergingCodeEPS2_EUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", align 1
@.str.133 = private unnamed_addr constant [235 x i8] c"\0A        if (!from._internal_$name$().empty()) {\0A          _internal_mutable_$name$()->InternalMergeFromWithArena(\0A              $pb$::MessageLite::internal_visibility(), arena,\0A              from._internal_$name$());\0A        }\0A      \00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"!should_split()\00", align 1
@.str.135 = private unnamed_addr constant [53 x i8] c"\0A        this_.$field_$.DeleteIfNotDefault();\0A      \00", align 1
@.str.136 = private unnamed_addr constant [267 x i8] c"\0A            for (int i = 0, n = this_._internal_$name$_size(); i < n; ++i) {\0A              const auto& s = this_._internal_$name$().Get(i);\0A              $utf8_check$;\0A              target = stream->Write$DeclaredType$($number$, s, target);\0A            }\0A          \00", align 1
@.str.137 = private unnamed_addr constant [40 x i8] c"s.data(), static_cast<int>(s.length()),\00", align 1
@"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView39GenerateSerializeWithCachedSizesToArrayEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView39GenerateSerializeWithCachedSizesToArrayEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" }, align 8
@"_ZTSZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView39GenerateSerializeWithCachedSizesToArrayEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_" = internal constant [277 x i8] c"ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS0_8compiler3cpp12_GLOBAL__N_118RepeatedStringView39GenerateSerializeWithCachedSizesToArrayEPS2_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_\00", align 1
@.str.138 = private unnamed_addr constant [295 x i8] c"\0A      total_size +=\0A          $kTagBytes$ * $pbi$::FromIntSize(this_._internal_$name$().size());\0A      for (int i = 0, n = this_._internal_$name$().size(); i < n; ++i) {\0A        total_size += $pbi$::WireFormatLite::$DeclaredType$Size(\0A            this_._internal_$name$().Get(i));\0A      }\0A    \00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp31MakeSingularStringViewGeneratorEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(217) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29, !noalias !183 ; 5 uses
  invoke void @_ZN6google8protobuf8compiler3cpp18FieldGeneratorBaseC2EPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(217) %2)
          to label %_ZNSt10unique_ptrIN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewESt14default_deleteIS5_EED2Ev.exit unwind label %bb.b, !noalias !183

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #30, !noalias !183
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringViewE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !183
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %2, ptr %i.c, align 8, !tbaa !25, !noalias !183
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp31MakeRepeatedStringViewGeneratorEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(217) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29, !noalias !186 ; 5 uses
  invoke void @_ZN6google8protobuf8compiler3cpp18FieldGeneratorBaseC2EPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(217) %2)
          to label %_ZNSt10unique_ptrIN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewESt14default_deleteIS5_EED2Ev.exit unwind label %bb.b, !noalias !186

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #30, !noalias !186
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN6google8protobuf8compiler3cpp12_GLOBAL__N_118RepeatedStringViewE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !186
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %2, ptr %i.c, align 8, !tbaa !30, !noalias !186
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  ret void
}
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView16GenerateByteSizeEPNS0_2io7PrinterE:bb.a
  tail call void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr null, i64 0, i64 147, ptr nonnull @.str.105)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase21GenerateIsInitializedEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(71) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(71) %0)
  br i1 %i.d, label %bb.b, label %.critedge, !prof !117

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.82, i32 noundef 187, ptr noundef nonnull @.str.106) #33
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #32
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #32
  unreachable

.critedge:                                        ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase18NeedsIsInitializedEv(ptr noundef nonnull align 8 dereferenceable(71) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118SingularStringView9IsInlinedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !37, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf8compiler3cpp18FieldGeneratorBase20NeedsArenaDestructorEv(ptr noundef nonnull align 8 dereferenceable(71) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS8_SaIcEEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKS9_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS7_SaIcEEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKS8_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSN_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !35
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS7_SaIcEEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKS8_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSN_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS7_SaIcEEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKS8_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSN_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14VarsEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(217) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %21 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca [9 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 125 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %33 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %34 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %37 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %38 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.google::protobuf::io::Printer::Sub", align 8 ; 23 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %43 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %44 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !53, !range !37, !noundef !40
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  br i1 %i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.j, ptr %10, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 21, ptr %i.f, align 8, !tbaa !57
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %10, align 8, !tbaa !56
  %i.l = load i64, ptr %i.f, align 8, !tbaa !57   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.k, ptr noundef nonnull align 1 dereferenceable(21) @.str, i64 21, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !55
  %i.n = load ptr, ptr %10, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %11, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 210
  %i.r = load i8, ptr %i.q, align 2, !tbaa !236, !range !37, !noundef !40
  %i.s = trunc nuw i8 %i.r to i1
  %..i = select i1 %i.s, ptr @__const._ZN6google8protobuf8compiler3cpp17ProtobufNamespaceERKNS2_7OptionsE.kOssNs, ptr @__const._ZN6google8protobuf8compiler3cpp17ProtobufNamespaceERKNS2_7OptionsE.kGoogle3Ns ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %..i, align 8, !tbaa !57
  %.sroa.2.0...sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0...sroa_idx.i, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i, ptr %12, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !116
  store i64 41, ptr %13, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.2, ptr %i.t, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.u = load i8, ptr %i.g, align 8, !tbaa !53, !range !37, !noundef !40
  %i.v = trunc nuw i8 %i.u to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  store i64 7, ptr %15, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.3, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  invoke void @_ZN6google8protobuf8compiler3cpp20MakeDefaultFieldNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %1)
          to label %bb.d unwind label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %17, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !55
  store i64 %i.z, ptr %16, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.x, ptr %i.aa, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %.critedge212 unwind label %bb.at

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !237
  invoke void @_ZN6google8protobuf8compiler3cpp18QualifiedClassNameB5cxx11EPKNS0_10DescriptorERKNS2_7OptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(217) %2)
          to label %bb.f unwind label %bb.aq

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %19, align 8, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55
  store i64 %i.af, ptr %18, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.ad, ptr %i.ag, align 8
  store i64 2, ptr %20, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.1, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  invoke void @_ZN6google8protobuf8compiler3cpp20MakeDefaultFieldNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.ar

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %22, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !55
  store i64 %i.ak, ptr %21, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.ai, ptr %i.al, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %.critedge208 unwind label %bb.as

.critedge208:                                     ; preds = %bb.g
  %i.am = load ptr, ptr %22, align 8, !tbaa !56   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge208
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !35
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.ar = load ptr, ptr %19, align 8, !tbaa !56   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.critedge211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !35
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %.critedge211

.critedge211:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.critedge214

.critedge212:                                     ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %i.aw = load ptr, ptr %17, align 8, !tbaa !56   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %.critedge212
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %.critedge212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %.critedge214

.critedge214:                                     ; preds = %.critedge211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !55
  %i.bf = icmp eq i64 %i.be, 0                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !115
  %i.bi = icmp eq i8 %i.bh, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  %i.bj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 11 uses
  store ptr %i.bj, ptr %24, align 8, !tbaa !54
  store i64 8389209267074581611, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 8, ptr %i.bk, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  invoke void @_ZN6google8protobuf8compiler3cpp12DefaultValueB5cxx11ERKNS2_7OptionsEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(217) %2, ptr noundef nonnull %1)
          to label %bb.h unwind label %bb.av

bb.h:                                             ; preds = %.critedge214
  %i.bm = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.bm, ptr %23, align 8, !tbaa !54
  %i.bn = load ptr, ptr %24, align 8, !tbaa !56   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bj
  br i1 %i.bo, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

bb.i:                                             ; preds = %bb.h
  %i.bp = load i64, ptr %i.bk, align 8, !tbaa !55 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.h
  store ptr %i.bn, ptr %23, align 8, !tbaa !56
  %i.bs = load i64, ptr %i.bj, align 8, !tbaa !35
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !35
  %.pre = load i64, ptr %i.bk, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235, %bb.i
  %i.bt = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ], [ %i.bp, %bb.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !55
  store ptr %i.bj, ptr %24, align 8, !tbaa !56
  store i64 0, ptr %i.bk, align 8, !tbaa !55
  store i8 0, ptr %i.bj, align 8, !tbaa !35
  %i.bv = load ptr, ptr %25, align 8, !tbaa !56   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 10 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 3 uses
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !55 ; 3 uses
  %i.cb = add nuw nsw i64 %i.ca, 1
  store ptr %i.bw, ptr %25, align 8, !tbaa !56
  store i64 0, ptr %i.bz, align 8, !tbaa !55
  %i.cc = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !35
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !55
  store ptr %i.bw, ptr %25, align 8, !tbaa !56
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !55
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !35, !alias.scope !238
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i243
end_hunk_1
