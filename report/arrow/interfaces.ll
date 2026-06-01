inline.NumInlined: 1995
inline.NumDeleted: 945
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.arrow::io::IOContext" = type { ptr, ptr, i64, %"class.arrow::StopToken" }
%"class.arrow::StopToken" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.85" = type { %"class.std::__shared_ptr.86" }
%"class.std::__shared_ptr.86" = type { ptr, %"class.std::__shared_count" }
%"class.arrow::Status" = type { ptr }
%"class.arrow::Future" = type { %"class.std::shared_ptr.3" }
%"class.std::shared_ptr.3" = type { %"class.std::__shared_ptr.4" }
%"class.std::__shared_ptr.4" = type { ptr, %"class.std::__shared_count" }
%"class.std::unique_ptr.138" = type { %"struct.std::__uniq_ptr_data.139" }
%"struct.std::__uniq_ptr_data.139" = type { %"class.std::__uniq_ptr_impl.140" }
%"class.std::__uniq_ptr_impl.140" = type { %"class.std::tuple.141" }
%"class.std::tuple.141" = type { %"struct.std::_Tuple_impl.142" }
%"struct.std::_Tuple_impl.142" = type { %"struct.std::_Head_base.145" }
%"struct.std::_Head_base.145" = type { ptr }
%"class.std::_Bind" = type { [8 x i8], %"class.std::tuple.114" }
%"class.std::tuple.114" = type { %"struct.std::_Tuple_impl.115" }
%"struct.std::_Tuple_impl.115" = type { %"struct.std::_Tuple_impl.116", %"struct.std::_Head_base.118" }
%"struct.std::_Tuple_impl.116" = type { %"struct.std::_Head_base.117" }
%"struct.std::_Head_base.117" = type { %class.anon }
%class.anon = type { %"class.std::shared_ptr.8" }
%"class.std::shared_ptr.8" = type { %"class.std::__shared_ptr.9" }
%"class.std::__shared_ptr.9" = type { ptr, %"class.std::__shared_count" }
%"struct.std::_Head_base.118" = type { %"class.arrow::Future" }
%"class.arrow::internal::FnOnce" = type { %"class.std::unique_ptr.121" }
%"class.std::unique_ptr.121" = type { %"struct.std::__uniq_ptr_data.122" }
%"struct.std::__uniq_ptr_data.122" = type { %"class.std::__uniq_ptr_impl.123" }
%"class.std::__uniq_ptr_impl.123" = type { %"class.std::tuple.124" }
%"class.std::tuple.124" = type { %"struct.std::_Tuple_impl.125" }
%"struct.std::_Tuple_impl.125" = type { %"struct.std::_Head_base.128" }
%"struct.std::_Head_base.128" = type { ptr }
%"class.arrow::internal::FnOnce.129" = type { %"class.std::unique_ptr.130" }
%"class.std::unique_ptr.130" = type { %"struct.std::__uniq_ptr_data.131" }
%"struct.std::__uniq_ptr_data.131" = type { %"class.std::__uniq_ptr_impl.132" }
%"class.std::__uniq_ptr_impl.132" = type { %"class.std::tuple.133" }
%"class.std::tuple.133" = type { %"struct.std::_Tuple_impl.134" }
%"struct.std::_Tuple_impl.134" = type { %"struct.std::_Head_base.137" }
%"struct.std::_Head_base.137" = type { ptr }
%"struct.arrow::internal::TaskHints" = type { i32, i64, i64, i64 }
%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::internal::AlignedStorage" = type { [16 x i8] }
%"class.arrow::Result.11" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.14" }
%"class.arrow::internal::AlignedStorage.14" = type { [16 x i8] }
%"class.arrow::Result.15" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.18" }
%"class.arrow::internal::AlignedStorage.18" = type { [16 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.92" = type { i8 }
%"class.arrow::Result.19" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.22" }
%"class.arrow::internal::AlignedStorage.22" = type { [16 x i8] }
%"class.arrow::Future.26" = type { %"class.std::shared_ptr.3" }
%"class.std::_Bind.178" = type { [8 x i8], %"class.std::tuple.179" }
%"class.std::tuple.179" = type { %"struct.std::_Tuple_impl.180" }
%"struct.std::_Tuple_impl.180" = type { %"struct.std::_Tuple_impl.181", %"struct.std::_Head_base.183" }
%"struct.std::_Tuple_impl.181" = type { %"struct.std::_Head_base.182" }
%"struct.std::_Head_base.182" = type { %class.anon.34 }
%class.anon.34 = type { %"class.std::shared_ptr.27" }
%"class.std::shared_ptr.27" = type { %"class.std::__shared_ptr.28" }
%"class.std::__shared_ptr.28" = type { ptr, %"class.std::__shared_count" }
%"struct.std::_Head_base.183" = type { %"class.arrow::Future.26" }
%"class.arrow::Result.30" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.33" }
%"class.arrow::internal::AlignedStorage.33" = type { [16 x i8] }
%"class.arrow::Result.35" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.38" }
%"class.arrow::internal::AlignedStorage.38" = type { [24 x i8] }
%"class.arrow::Result.51" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.54" }
%"class.arrow::internal::AlignedStorage.54" = type { [8 x i8] }
%"class.arrow::Future.55" = type { %"class.std::shared_ptr.3" }
%"class.std::_Bind.195" = type { [8 x i8], %"class.std::tuple.196" }
%"class.std::tuple.196" = type { %"struct.std::_Tuple_impl.197" }
%"struct.std::_Tuple_impl.197" = type { %"struct.std::_Tuple_impl.198", %"struct.std::_Head_base.200" }
%"struct.std::_Tuple_impl.198" = type { %"struct.std::_Head_base.199" }
%"struct.std::_Head_base.199" = type { %class.anon.63 }
%class.anon.63 = type { %"class.std::shared_ptr.56", i64, i64 }
%"class.std::shared_ptr.56" = type { %"class.std::__shared_ptr.57" }
%"class.std::__shared_ptr.57" = type { ptr, %"class.std::__shared_count" }
%"struct.std::_Head_base.200" = type { %"class.arrow::Future.55" }
%"class.arrow::Result.59" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.62" }
%"class.arrow::internal::AlignedStorage.62" = type { [16 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<arrow::Future<std::shared_ptr<arrow::Buffer>>, std::allocator<arrow::Future<std::shared_ptr<arrow::Buffer>>>>::_Vector_impl" }
%"struct.std::_Vector_base<arrow::Future<std::shared_ptr<arrow::Buffer>>, std::allocator<arrow::Future<std::shared_ptr<arrow::Buffer>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<arrow::Future<std::shared_ptr<arrow::Buffer>>, std::allocator<arrow::Future<std::shared_ptr<arrow::Buffer>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<arrow::Future<std::shared_ptr<arrow::Buffer>>, std::allocator<arrow::Future<std::shared_ptr<arrow::Buffer>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.arrow::Result.75" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.78" }
%"class.arrow::internal::AlignedStorage.78" = type { [16 x i8] }
%"class.std::allocator.150" = type { i8 }
%"class.std::shared_ptr.79" = type { %"class.std::__shared_ptr.80" }
%"class.std::__shared_ptr.80" = type { ptr, %"class.std::__shared_count" }
%"class.arrow::util::ArrowLog" = type <{ %"class.arrow::util::ArrowLogBase", ptr, i8, [7 x i8] }>
%"class.arrow::util::ArrowLogBase" = type { ptr }
%"class.arrow::Result.99" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.102" }
%"class.arrow::internal::AlignedStorage.102" = type { [32 x i8] }
%"class.arrow::Result.103" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.106" }
%"class.arrow::internal::AlignedStorage.106" = type { [16 x i8] }
%"class.arrow::Result.88" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.91" }
%"class.arrow::internal::AlignedStorage.91" = type { [24 x i8] }
%"struct.arrow::io::ReadRange" = type { i64, i64 }
%"class.std::vector.64" = type { %"struct.std::_Vector_base.65" }
%"struct.std::_Vector_base.65" = type { %"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl" }
%"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl" = type { %"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl_data" }
%"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.arrow::Result.159" = type <{ %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.162", [7 x i8] }>
%"class.arrow::internal::AlignedStorage.162" = type { [1 x i8] }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr.169", ptr }
%"class.std::unique_ptr.169" = type { %"struct.std::__uniq_ptr_data.170" }
%"struct.std::__uniq_ptr_data.170" = type { %"class.std::__uniq_ptr_impl.171" }
%"class.std::__uniq_ptr_impl.171" = type { %"class.std::tuple.172" }
%"class.std::tuple.172" = type { %"struct.std::_Tuple_impl.173" }
%"struct.std::_Tuple_impl.173" = type { %"struct.std::_Head_base.176" }
%"struct.std::_Head_base.176" = type { ptr }

$_ZN5arrow9StopTokenD2Ev = comdat any

$_ZN5arrow2io9IOContextC2Ev = comdat any

$_ZN5arrow2io9IOContextD2Ev = comdat any

$_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEED2Ev = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev = comdat any

$_ZN5arrow6ResultISt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6ResultINS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEED2Ev = comdat any

$_ZN5arrow6ResultINS_8IteratorISt10shared_ptrINS_6BufferEEEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6ResultIlEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6ResultINS_6FutureISt10shared_ptrINS_6BufferEEEEED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEED2Ev = comdat any

$_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EED2Ev = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_2io11InputStreamEEEC2ERKNS_6StatusE = comdat any

$_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow2io8WritableD2Ev = comdat any

$_ZN5arrow2io8WritableD0Ev = comdat any

$_ZN5arrow2io8ReadableD2Ev = comdat any

$_ZN5arrow2io8ReadableD0Ev = comdat any

$_ZN5arrow2io11InputStreamD1Ev = comdat any

$_ZN5arrow2io11InputStreamD0Ev = comdat any

$_ZTv0_n24_N5arrow2io11InputStreamD1Ev = comdat any

$_ZTv0_n24_N5arrow2io11InputStreamD0Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZN5arrow2io8SeekableD2Ev = comdat any

$_ZN5arrow2io8SeekableD0Ev = comdat any

$_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev = comdat any

$_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm = comdat any

$_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6FutureINS_8internal5EmptyEED2Ev = comdat any

$_ZNSt10shared_ptrIN5arrow10FutureImplEEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS2_E4typeEOSF_ = comdat any

$_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE = comdat any

$_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE = comdat any

$_ZZN5arrow6FutureINS_8internal5EmptyEE9SetResultENS_6ResultIS2_EEENUlPvE_8__invokeES6_ = comdat any

$_ZN5arrow6ResultINS_8internal5EmptyEEC2ERKNS_6StatusE = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5arrow6FutureINS_8internal5EmptyEE12MakeFinishedIS2_vEES3_NS_6StatusE = comdat any

$_ZN5arrow6FutureINS_8internal5EmptyEE12MakeFinishedENS_6ResultIS2_EE = comdat any

$_ZN5arrow6FutureINS_8internal5EmptyEE20InitializeFromResultENS_6ResultIS2_EE = comdat any

$_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6ResultINS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev = comdat any

$_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE12MarkFinishedENS_6ResultIS4_EE = comdat any

$_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev = comdat any

$_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE14DoMarkFinishedENS_6ResultIS4_EE = comdat any

$_ZZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE9SetResultENS_6ResultIS4_EEENUlPvE_8__invokeES8_ = comdat any

$_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE12MakeFinishedENS_6ResultIS4_EE = comdat any

$_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE20InitializeFromResultENS_6ResultIS4_EE = comdat any

$_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow6ResultINS_6FutureISt10shared_ptrINS_6BufferEEEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE12MarkFinishedENS_6ResultIS3_EE = comdat any

$_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE14DoMarkFinishedENS_6ResultIS3_EE = comdat any

$_ZZN5arrow6FutureISt10shared_ptrINS_6BufferEEE9SetResultENS_6ResultIS3_EEENUlPvE_8__invokeES7_ = comdat any

$_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE12MakeFinishedENS_6ResultIS3_EE = comdat any

$_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE20InitializeFromResultENS_6ResultIS3_EE = comdat any

$_ZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZNSt12__shared_ptrIN5arrow2io17FileSegmentReaderELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS1_16RandomAccessFileEERlSB_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEED1Ev = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEED0Ev = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE4ReadElPv = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE4ReadEl = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE4PeekEl = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE5CloseEv = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE5AbortEv = comdat any

$_ZNK5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE4TellEv = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE7DoAbortEv = comdat any

$_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE6DoPeekEl = comdat any

$_ZTv0_n24_N5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEED1Ev = comdat any

$_ZTv0_n24_N5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEED0Ev = comdat any

$_ZTv0_n32_N5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE5CloseEv = comdat any

$_ZTv0_n48_N5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE5AbortEv = comdat any

end_hunk_0
begin_hunk_1_@_ZN5arrow2io8internal12_GLOBAL__N_116MakeIOThreadPoolEv:bb.a
  %i.av = load ptr, ptr %1, align 8, !tbaa !127   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.e
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !33
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.v:                                             ; preds = %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.as, %bb.q ]
  %i.az = load ptr, ptr %1, align 8, !tbaa !127   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.v
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !33
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bd = icmp sgt i32 %.113.fr, 0
  %spec.select = select i1 %i.bd, i32 %.113.fr, i32 8
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread3
  %i.be = phi i32 [ 8, %.thread3 ], [ %spec.select, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  invoke void @_ZN5arrow8internal10ThreadPool11MakeEternalEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.103") align 8 %3, i32 noundef %i.be)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %3, align 8, !tbaa !81
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

bb.ad:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.ad
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !33
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit: ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !14, !noalias !347
  store <2 x ptr> %i.bq, ptr @_ZZN5arrow2io8internal15GetIOThreadPoolEvE4pool, align 16, !tbaa !14, !alias.scope !347
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.br = load ptr, ptr %0, align 8, !tbaa !81    ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ae, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !89

bb.ae:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !127 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.ae
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !33
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #36
  %.pr.pre.i = load ptr, ptr %0, align 8, !tbaa !81 ; 2 uses
  %.not.i.i34 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i34, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !118

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit
  %i.bz = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i ], [ %i.br, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !90, !range !100, !noundef !101
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #32
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ae, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31: ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %.pn18 = phi { ptr, i32 } [ %i.bi, %bb.ac ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bj, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, %bb.ab
  %.pn20.pn = phi { ptr, i32 } [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ], [ %i.bh, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.ag ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !243
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !243
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io8internal18CoalesceReadRangesESt6vectorINS0_9ReadRangeESaIS3_EEll(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.88") align 8 captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %5 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %6 = alloca %"class.std::vector.64", align 8    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !348    ; 27 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !348
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350  ; 11 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !350
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !351  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !351
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.h = icmp eq ptr %i.a, %i.d
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !352
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !348, !alias.scope !352
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !350, !alias.scope !352
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.k, align 8, !tbaa !351, !alias.scope !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = ashr i64 %i.n, 6                         ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.q = and i64 %i.n, -64
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.a, i64 %i.q ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %.051.i.i.i.i.i = phi i64 [ %i.aa, %bb.g ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.031.050.i.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ %i.a, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.r = getelementptr i8, ptr %.sroa.031.050.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !355, !noalias !352
  %i.s = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr i8, ptr %.sroa.031.050.i.i.i.i.i, i64 24
  %.val.i16.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !355, !noalias !352
  %i.u = icmp eq i64 %.val.i16.i.i.i.i.i, 0
  br i1 %i.u, label %.loopexit.split.loop.exit41.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %.sroa.031.050.i.i.i.i.i, i64 40
  %.val.i17.i.i.i.i.i = load i64, ptr %i.v, align 8, !tbaa !355, !noalias !352
  %i.w = icmp eq i64 %.val.i17.i.i.i.i.i, 0
  br i1 %i.w, label %.loopexit.split.loop.exit43.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.sroa.031.050.i.i.i.i.i, i64 56
  %.val.i18.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !355, !noalias !352
  %i.y = icmp eq i64 %.val.i18.i.i.i.i.i, 0
  br i1 %i.y, label %.loopexit.split.loop.exit45.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 64
  %i.aa = add nsw i64 %.051.i.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.051.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !357

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.g
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre56.i.i.i.i.i = sub i64 %i.l, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.c
  %.pre-phi57.i.i.i.i.i = phi i64 [ %.pre56.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.n, %bb.c ]
  %.sroa.031.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.a, %bb.c ] ; 5 uses
  %i.ac = ashr exact i64 %.pre-phi57.i.i.i.i.i, 4
  switch i64 %i.ac, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ad = getelementptr i8, ptr %.sroa.031.0.lcssa.i.i.i.i.i, i64 8
  %.val.i19.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !355, !noalias !352
  %i.ae = icmp eq i64 %.val.i19.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.sroa.031.1.i.i.i.i.i = phi ptr [ %i.af, %bb.i ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.sroa.031.1.i.i.i.i.i, i64 8
  %.val.i20.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !355, !noalias !352
  %i.ah = icmp eq i64 %.val.i20.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i.i.i, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i
  %.sroa.031.2.i.i.i.i.i = phi ptr [ %i.ai, %bb.k ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.sroa.031.2.i.i.i.i.i, i64 8
  %.val.i21.i.i.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !355, !noalias !352
  %i.ak = icmp eq i64 %.val.i21.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.ak, ptr %.sroa.031.2.i.i.i.i.i, ptr %i.d
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i

.loopexit.split.loop.exit41.i.i.i.i.i:            ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i

.loopexit.split.loop.exit43.i.i.i.i.i:            ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 32
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i

.loopexit.split.loop.exit45.i.i.i.i.i:            ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i.i, i64 48
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.split.loop.exit45.i.i.i.i.i, %.loopexit.split.loop.exit43.i.i.i.i.i, %.loopexit.split.loop.exit41.i.i.i.i.i, %bb.l, %bb.j, %bb.h
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.031.1.i.i.i.i.i, %bb.j ], [ %spec.select.i.i.i.i.i, %bb.l ], [ %i.an, %.loopexit.split.loop.exit45.i.i.i.i.i ], [ %.sroa.031.0.lcssa.i.i.i.i.i, %bb.h ], [ %i.am, %.loopexit.split.loop.exit43.i.i.i.i.i ], [ %i.al, %.loopexit.split.loop.exit41.i.i.i.i.i ], [ %.sroa.031.050.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.ao = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.d
  %.sroa.06.021.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.06.021.i.i.i, %i.d
  %or.cond.i.i.i = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond.i.i.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, %bb.n
  %.sroa.06.024.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.n ], [ %.sroa.06.021.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.012.023.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %bb.n ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn22.i.i.i = phi ptr [ %.sroa.06.024.i.i.i, %bb.n ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i ]
  %i.aq = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn22.i.i.i, i64 24
  %.val.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !355, !noalias !352
  %i.ar = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.023.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.024.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.023.i.i.i, %.lr.ph.i.i.i ], [ %i.as, %bb.m ] ; 2 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.024.i.i.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %.sroa.06.0.i.i.i, %i.d
  br i1 %i.at, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !359

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i: ; preds = %bb.n, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.012.2.i.i.i = phi ptr [ %i.d, %._crit_edge.i.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_EEET_SJ_SJ_T0_.exit.i.i.i ], [ %.sroa.012.1.i.i.i, %bb.n ] ; 11 uses
  %i.au = icmp eq ptr %i.a, %.sroa.012.2.i.i.i
  br i1 %i.au, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i
  %i.av = ptrtoint ptr %.sroa.012.2.i.i.i to i64
  %i.aw = sub i64 %i.av, %i.m                     ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 4
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = xor i64 %i.az, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_T1_(ptr %i.a, ptr %.sroa.012.2.i.i.i, i64 noundef %i.ba), !noalias !352
  %i.bb = icmp sgt i64 %i.aw, 256
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.a, i64 16 ; 3 uses
  br i1 %i.bb, label %.lr.ph.i.i.i.i32.i, label %bb.u

.lr.ph.i.i.i.i32.i:                               ; preds = %bb.o, %bb.t
  %.sroa.0.018.i.idx.i.i.i.i = phi i64 [ %.sroa.0.018.i.add.i.i.i.i, %bb.t ], [ 16, %bb.o ] ; 4 uses
  %.pn17.i.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i.i.i, %bb.t ], [ %i.a, %bb.o ] ; 4 uses
  %.sroa.0.018.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.018.i.idx.i.i.i.i ; 5 uses
  %.val.i.i.i.i.i33.i = load i64, ptr %.sroa.0.018.i.ptr.i.i.i.i, align 8, !tbaa !360, !noalias !352 ; 4 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !360, !noalias !352
  %i.bc = icmp slt i64 %.val.i.i.i.i.i33.i, %.val1.i.i.i.i.i.i
  br i1 %i.bc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i.i.i.i32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.ptr.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %i.bd = icmp samesign ugt i64 %.sroa.0.018.i.idx.i.i.i.i, 16
  br i1 %i.bd, label %bb.q, label %bb.r, !prof !89

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %.sroa.0.018.i.idx.i.i.i.i, i1 false), !noalias !352
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i.i32.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.val2.i11.i.i.i.i.i.i = load i64, ptr %.pn17.i.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bf = icmp slt i64 %.val.i.i.i.i.i33.i, %.val2.i11.i.i.i.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn17.i.i.i.i.i, %bb.s ] ; 4 uses
  %.sroa.07.012.i.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.018.i.ptr.i.i.i.i, %bb.s ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bg = icmp slt i64 %.val.i.i.i.i.i33.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i.i.i.i.i, !llvm.loop !361

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.s
  %.sroa.07.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i.i.i, %bb.s ], [ %.sroa.0.013.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 %.val.i.i.i.i.i33.i, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i, align 8, !tbaa !246, !noalias !352
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i
  %.sroa.0.018.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.018.i.idx.i.i.i.i, 16 ; 2 uses
  %i.bh = icmp eq i64 %.sroa.0.018.i.add.i.i.i.i, 256
  br i1 %i.bh, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i32.i, !llvm.loop !362

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i: ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %.sroa.012.2.i.i.i
  br i1 %i.bj, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i12.i.i.i.i

.lr.ph.i12.i.i.i.i:                               ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.bn, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i ], [ %i.bi, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i ] ; 6 uses
  %i.bk = load <2 x i64>, ptr %.sroa.0.06.i.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8, !tbaa !246, !noalias !352 ; 2 uses
  %.sroa.0.010.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i11.i.i15.i.i.i.i = load i64, ptr %.sroa.0.010.i.i.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bl = icmp slt i64 %.sroa.03.0.copyload.i.i.i.i.i.i, %.val2.i11.i.i15.i.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i19.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i

.lr.ph.i.i19.i.i.i.i:                             ; preds = %.lr.ph.i12.i.i.i.i, %.lr.ph.i.i19.i.i.i.i
  %.sroa.0.013.i.i20.i.i.i.i = phi ptr [ %.sroa.0.0.i.i22.i.i.i.i, %.lr.ph.i.i19.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ] ; 4 uses
  %.sroa.07.012.i.i21.i.i.i.i = phi ptr [ %.sroa.0.013.i.i20.i.i.i.i, %.lr.ph.i.i19.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i21.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i20.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %.sroa.0.0.i.i22.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i20.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i23.i.i.i.i = load i64, ptr %.sroa.0.0.i.i22.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.bm = icmp slt i64 %.sroa.03.0.copyload.i.i.i.i.i.i, %.val2.i.i.i23.i.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i19.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i, !llvm.loop !361

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i: ; preds = %.lr.ph.i.i19.i.i.i.i, %.lr.ph.i12.i.i.i.i
  %.sroa.07.0.lcssa.i.i17.i.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ], [ %.sroa.0.013.i.i20.i.i.i.i, %.lr.ph.i.i19.i.i.i.i ]
  store <2 x i64> %i.bk, ptr %.sroa.07.0.lcssa.i.i17.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %.sroa.012.2.i.i.i
  br i1 %i.bo, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i12.i.i.i.i, !llvm.loop !363

bb.u:                                             ; preds = %bb.o
  %i.bp = icmp eq ptr %scevgep.i.i.i.i, %.sroa.012.2.i.i.i
  br i1 %i.bp, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i26.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.u, %bb.aa
  %.sroa.0.018.i27.i.i.i.i = phi ptr [ %.sroa.0.0.i37.i.i.i.i, %bb.aa ], [ %scevgep.i.i.i.i, %bb.u ] ; 7 uses
  %.pn17.i28.i.i.i.i = phi ptr [ %.sroa.0.018.i27.i.i.i.i, %bb.aa ], [ %i.a, %bb.u ] ; 5 uses
  %.val.i.i29.i.i.i.i = load i64, ptr %.sroa.0.018.i27.i.i.i.i, align 8, !tbaa !360, !noalias !352 ; 4 uses
  %.val1.i.i30.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !360, !noalias !352
  %i.bq = icmp slt i64 %.val.i.i29.i.i.i.i, %.val1.i.i30.i.i.i.i
  br i1 %i.bq, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph.i26.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i27.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %i.br = ptrtoint ptr %.sroa.0.018.i27.i.i.i.i to i64
  %i.bs = sub i64 %i.br, %i.m                     ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 4                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.w, label %bb.x, !prof !89

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn17.i28.i.i.i.i, i64 32
  %i.bw = sub nsw i64 0, %i.bt
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %i.bw
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bs, i1 false), !noalias !352
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.by = icmp eq i64 %i.bs, 16
  br i1 %i.by, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn17.i28.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i26.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i31.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i28.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i32.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i31.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.val2.i11.i.i33.i.i.i.i = load i64, ptr %.pn17.i28.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.ca = icmp slt i64 %.val.i.i29.i.i.i.i, %.val2.i11.i.i33.i.i.i.i
  br i1 %i.ca, label %.lr.ph.i.i38.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i

.lr.ph.i.i38.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i.i38.i.i.i.i
  %.sroa.0.013.i.i39.i.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ], [ %.pn17.i28.i.i.i.i, %bb.z ] ; 4 uses
  %.sroa.07.012.i.i40.i.i.i.i = phi ptr [ %.sroa.0.013.i.i39.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ], [ %.sroa.0.018.i27.i.i.i.i, %bb.z ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i40.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i39.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %.sroa.0.0.i.i41.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i39.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i42.i.i.i.i = load i64, ptr %.sroa.0.0.i.i41.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.cb = icmp slt i64 %.val.i.i29.i.i.i.i, %.val2.i.i.i42.i.i.i.i
  br i1 %i.cb, label %.lr.ph.i.i38.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i, !llvm.loop !361

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i.i, %bb.z
  %.sroa.07.0.lcssa.i.i35.i.i.i.i = phi ptr [ %.sroa.0.018.i27.i.i.i.i, %bb.z ], [ %.sroa.0.013.i.i39.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ] ; 2 uses
  store i64 %.val.i.i29.i.i.i.i, ptr %.sroa.07.0.lcssa.i.i35.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.sroa.5.0..sroa_idx5.i.i36.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i35.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i32.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i36.i.i.i.i, align 8, !tbaa !246, !noalias !352
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i
  %.sroa.0.0.i37.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i27.i.i.i.i, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %.sroa.0.0.i37.i.i.i.i, %.sroa.012.2.i.i.i
  br i1 %i.cc, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i26.i.i.i.i, !llvm.loop !362

.preheader.i.i.i.i.preheader:                     ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i, %bb.u
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %bb.ab
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.cd, %bb.ab ], [ %i.a, %.preheader.i.i.i.i.preheader ] ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 16 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, %.sroa.012.2.i.i.i
  br i1 %i.ce, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %.sroa.09.0.i.i.i.i, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.09.0.i.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !352
  %.val2.i.i.i.i.i = load i64, ptr %i.cd, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cg = getelementptr i8, ptr %.sroa.09.0.i.i.i.i, i64 24
  %.val3.i.i.i.i.i = load i64, ptr %i.cg, align 8, !noalias !352
  %.not.i.i.i.i.i.i = icmp sge i64 %.val2.i.i.i.i.i, %.val.i.i.i.i.i
  %i.ch = add nsw i64 %.val3.i.i.i.i.i, %.val2.i.i.i.i.i
  %i.ci = add nsw i64 %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  %i.cj = icmp sle i64 %i.ch, %i.ci
  %i.ck = select i1 %.not.i.i.i.i.i.i, i1 %i.cj, i1 false
  br i1 %i.ck, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !364

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i: ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 32 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %.sroa.012.2.i.i.i
  br i1 %i.cm, label %._crit_edge.i.i.i, label %.lr.ph.i.i34.i

.lr.ph.i.i34.i:                                   ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i, %bb.ad
  %i.cn = phi ptr [ %i.cv, %bb.ad ], [ %i.cl, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 4 uses
  %.sroa.0.020.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.ad ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 4 uses
  %.sroa.012.019.i.i.i = phi ptr [ %i.cn, %bb.ad ], [ %i.cd, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ]
  %.val.i.i.i35.i = load i64, ptr %.sroa.0.020.i.i.i, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.0.020.i.i.i, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.co, align 8, !noalias !352
  %.val2.i.i.i.i = load i64, ptr %i.cn, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.012.019.i.i.i, i64 24
  %.val3.i.i.i.i = load i64, ptr %i.cp, align 8, !noalias !352
  %.not.i.i.i.i.i = icmp sge i64 %.val2.i.i.i.i, %.val.i.i.i35.i
  %i.cq = add nsw i64 %.val3.i.i.i.i, %.val2.i.i.i.i
  %i.cr = add nsw i64 %.val1.i.i.i.i, %.val.i.i.i35.i
  %i.cs = icmp sle i64 %i.cq, %i.cr
  %i.ct = select i1 %.not.i.i.i.i.i, i1 %i.cs, i1 false
  br i1 %i.ct, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i34.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i34.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.020.i.i.i, %.lr.ph.i.i34.i ], [ %i.cu, %bb.ac ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %.sroa.012.2.i.i.i
  br i1 %i.cw, label %._crit_edge.i.i.i, label %.lr.ph.i.i34.i, !llvm.loop !365

._crit_edge.i.i.i:                                ; preds = %bb.ad, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.ad ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 16
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i: ; preds = %.preheader.i.i.i.i, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i, %._crit_edge.i.i.i
  %.sroa.06.0.i.i36.i = phi ptr [ %i.cx, %._crit_edge.i.i.i ], [ %i.a, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i ], [ %.sroa.012.2.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.cy = ptrtoint ptr %.sroa.06.0.i.i36.i to i64
  %i.cz = sub i64 %i.cy, %i.m                     ; 2 uses
  %i.da = ashr exact i64 %i.cz, 4                 ; 3 uses
  %i.db = ashr exact i64 %i.n, 4                  ; 3 uses
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i
  %i.dd = sub nuw nsw i64 %i.da, %i.db
  invoke void @_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.dd)
          to label %.noexc unwind label %bb.az

.noexc:                                           ; preds = %bb.ae
  %.pre78.i = load ptr, ptr %6, align 8, !tbaa !244, !noalias !352
  %.pre79.i = load ptr, ptr %i.b, align 8, !tbaa !244, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i

bb.af:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i
  %i.de = icmp uge i64 %i.da, %i.db
  %.not.i.i.i = icmp eq ptr %i.d, %.sroa.06.0.i.i36.i
  %or.cond31.i = or i1 %.not.i.i.i, %i.de
  br i1 %or.cond31.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz ; 2 uses
  store ptr %i.df, ptr %i.b, align 8, !tbaa !350, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.af, %.noexc
  %i.dg = phi ptr [ %.pre79.i, %.noexc ], [ %i.d, %bb.af ], [ %i.df, %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i ] ; 4 uses
  %i.dh = phi ptr [ %.pre78.i, %.noexc ], [ %i.a, %bb.af ], [ %i.a, %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i ] ; 5 uses
  %i.di = icmp eq ptr %i.dh, %i.dg
  br i1 %i.di, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !352
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !348, !alias.scope !352
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !350, !alias.scope !352
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !351, !noalias !352
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !351, !alias.scope !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i
  %.not53.i = icmp ult ptr %i.dh, %i.dg
  br i1 %.not53.i, label %.lr.ph.i.preheader, label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

.lr.ph.i.preheader:                               ; preds = %bb.ah
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !360, !noalias !352 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i
  %i.do = phi ptr [ %i.ep, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dg, %.lr.ph.i.preheader ] ; 3 uses
  %.02959.i = phi i64 [ %.1.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dn, %.lr.ph.i.preheader ] ; 6 uses
  %.03058.i = phi i64 [ %i.ds, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dn, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.015.057.i = phi ptr [ %.sroa.015.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 9 uses
  %.sroa.12.056.i = phi ptr [ %.sroa.12.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 9 uses
  %.sroa.21.055.i = phi ptr [ %.sroa.21.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.054.i = phi ptr [ %i.eq, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dh, %.lr.ph.i.preheader ] ; 3 uses
  %i.dp = load i64, ptr %.sroa.010.054.i, align 8, !tbaa !360, !noalias !352 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !355, !noalias !352
  %i.ds = add nsw i64 %i.dr, %i.dp                ; 4 uses
  %i.dt = sub nsw i64 %i.ds, %.02959.i
  %i.du = icmp sgt i64 %i.dt, %3
  %i.dv = sub nsw i64 %i.dp, %.03058.i
  %i.dw = icmp sgt i64 %i.dv, %2
  %or.cond.i = select i1 %i.du, i1 true, i1 %i.dw
  br i1 %or.cond.i, label %bb.ai, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.ai:                                            ; preds = %.lr.ph.i
  %i.dx = icmp sgt i64 %.03058.i, %.02959.i
  br i1 %i.dx, label %bb.aj, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.dy = sub nsw i64 %.03058.i, %.02959.i        ; 2 uses
  %.not.i.i37.i = icmp eq ptr %.sroa.12.056.i, %.sroa.21.055.i
  br i1 %.not.i.i37.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %.02959.i, ptr %.sroa.12.056.i, align 8, !tbaa !246, !noalias !352
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.12.056.i, i64 8
  store i64 %i.dy, ptr %.sroa.66.0..sroa_idx.i, align 8, !tbaa !246, !noalias !352
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.12.056.i, i64 16
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ea = ptrtoint ptr %.sroa.12.056.i to i64
  %i.eb = ptrtoint ptr %.sroa.015.057.i to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 6 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775792
  br i1 %i.ed, label %bb.am, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #34
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !352

.noexc.i:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.al
  %i.ee = ashr exact i64 %i.ec, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 576460752303423487)
  %i.ei = select i1 %i.eg, i64 576460752303423487, i64 %i.eh ; 3 uses
  %.not.i.i.i.i38.i = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38.i)
  %i.ej = shl nuw nsw i64 %i.ei, 4
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #35
          to label %.noexc39.i unwind label %.loopexit.i, !noalias !352 ; 4 uses

.noexc39.i:                                       ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ec ; 3 uses
  store i64 %.02959.i, ptr %i.el, align 8, !tbaa !246, !noalias !352
  %.sroa.66.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.dy, ptr %.sroa.66.0..sroa_idx7.i, align 8, !tbaa !246, !noalias !352
  %i.em = icmp sgt i64 %i.ec, 0
  br i1 %i.em, label %bb.an, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.an:                                            ; preds = %.noexc39.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr align 8 %.sroa.015.057.i, i64 %i.ec, i1 false), !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.an, %.noexc39.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.015.057.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.057.i, i64 noundef %i.ec) #36, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.ei
  %.pre80.i = load ptr, ptr %i.b, align 8, !tbaa !244, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp.i:                             ; preds = %bb.am
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.ak, %bb.ai, %.lr.ph.i
  %i.ep = phi ptr [ %i.do, %.lr.ph.i ], [ %i.do, %bb.ai ], [ %.pre80.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.do, %bb.ak ] ; 2 uses
  %.sroa.21.2.i = phi ptr [ %.sroa.21.055.i, %.lr.ph.i ], [ %.sroa.21.055.i, %bb.ai ], [ %i.eo, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.21.055.i, %bb.ak ] ; 6 uses
  %.sroa.12.2.i = phi ptr [ %.sroa.12.056.i, %.lr.ph.i ], [ %.sroa.12.056.i, %bb.ai ], [ %i.en, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.dz, %bb.ak ] ; 6 uses
  %.sroa.015.2.i = phi ptr [ %.sroa.015.057.i, %.lr.ph.i ], [ %.sroa.015.057.i, %bb.ai ], [ %i.ek, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.015.057.i, %bb.ak ] ; 8 uses
  %.1.i = phi i64 [ %.02959.i, %.lr.ph.i ], [ %i.dp, %bb.ai ], [ %i.dp, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.dp, %bb.ak ] ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 16 ; 2 uses
  %.not.i = icmp ult ptr %i.eq, %i.ep
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !366

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i
  %i.er = icmp sgt i64 %i.ds, %.1.i
  br i1 %i.er, label %bb.ap, label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.ap:                                            ; preds = %._crit_edge.i
  %i.es = sub nsw i64 %i.ds, %.1.i                ; 2 uses
  %.not.i.i40.i = icmp eq ptr %.sroa.12.2.i, %.sroa.21.2.i
  br i1 %.not.i.i40.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %.1.i, ptr %.sroa.12.2.i, align 8, !tbaa !246, !noalias !352
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i, i64 8
  store i64 %i.es, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !246, !noalias !352
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i, i64 16
  br label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.ar:                                            ; preds = %bb.ap
  %i.eu = ptrtoint ptr %.sroa.21.2.i to i64
  %i.ev = ptrtoint ptr %.sroa.015.2.i to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 6 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775792
  br i1 %i.ex, label %bb.as, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #34
          to label %.noexc47.i unwind label %bb.av, !noalias !352

.noexc47.i:                                       ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i: ; preds = %bb.ar
  %i.ey = ashr exact i64 %i.ew, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i42.i = call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i.i42.i, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = call i64 @llvm.umin.i64(i64 %i.ez, i64 576460752303423487)
  %i.fc = select i1 %i.fa, i64 576460752303423487, i64 %i.fb ; 3 uses
  %.not.i.i.i.i43.i = icmp ne i64 %i.fc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43.i)
  %i.fd = shl nuw nsw i64 %i.fc, 4
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #35
          to label %.noexc48.i unwind label %bb.av, !noalias !352 ; 4 uses

.noexc48.i:                                       ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.ew ; 3 uses
  store i64 %.1.i, ptr %i.ff, align 8, !tbaa !246, !noalias !352
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %i.es, ptr %.sroa.6.0..sroa_idx2.i, align 8, !tbaa !246, !noalias !352
  %i.fg = icmp sgt i64 %i.ew, 0
  br i1 %i.fg, label %bb.at, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i

bb.at:                                            ; preds = %.noexc48.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr align 8 %.sroa.015.2.i, i64 %i.ew, i1 false), !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i: ; preds = %bb.at, %.noexc48.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.not.i17.i.i.i45.i = icmp eq ptr %.sroa.015.2.i, null
  br i1 %.not.i17.i.i.i45.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.2.i, i64 noundef %i.ew) #36, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i: ; preds = %bb.au, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.fc
  br label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.av:                                            ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i, %bb.as
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.21.045.i = phi ptr [ %.sroa.21.2.i, %bb.av ], [ %.sroa.12.056.i, %.loopexit.i ], [ %.sroa.12.056.i, %.loopexit.split-lp.i ]
  %.sroa.015.039.i = phi ptr [ %.sroa.015.2.i, %bb.av ], [ %.sroa.015.057.i, %.loopexit.i ], [ %.sroa.015.057.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %i.fj, %bb.av ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i50.i = icmp eq ptr %.sroa.015.039.i, null
  br i1 %.not.i.i.i50.i, label %.body, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = ptrtoint ptr %.sroa.21.045.i to i64
  %i.fl = ptrtoint ptr %.sroa.015.039.i to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.039.i, i64 noundef %i.fm) #36, !noalias !352
  br label %.body

_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit: ; preds = %bb.ah, %._crit_edge.i, %bb.aq, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i
  %.sroa.21.4.i = phi ptr [ %.sroa.21.2.i, %._crit_edge.i ], [ %i.fi, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %.sroa.21.2.i, %bb.aq ], [ null, %bb.ah ]
  %.sroa.12.4.i = phi ptr [ %.sroa.12.2.i, %._crit_edge.i ], [ %i.fh, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %i.et, %bb.aq ], [ null, %bb.ah ]
  %.sroa.015.4.i = phi ptr [ %.sroa.015.2.i, %._crit_edge.i ], [ %i.fe, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %.sroa.015.2.i, %bb.aq ], [ null, %bb.ah ]
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !352
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.015.4.i, ptr %i.fn, align 8, !tbaa !348, !alias.scope !352
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.4.i, ptr %i.fo, align 8, !tbaa !350, !alias.scope !352
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.21.4.i, ptr %i.fp, align 8, !tbaa !351, !alias.scope !352
  %.pr = load ptr, ptr %6, align 8, !tbaa !348    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit
  %i.fq = load ptr, ptr %i.e, align 8, !tbaa !351
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %.pr to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ft) #36
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit: ; preds = %bb.b, %bb.ag, %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit, %bb.ay
  ret void

bb.az:                                            ; preds = %bb.ae
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aw, %bb.ax, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.fu, %bb.az ], [ %.pn.i, %bb.ax ], [ %.pn.i, %bb.aw ]
  %i.fv = load ptr, ptr %6, align 8, !tbaa !348   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6, label %bb.ba

bb.ba:                                            ; preds = %.body
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !351
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fz) #36
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6: ; preds = %.body, %bb.ba
  resume { ptr, i32 } %eh.lpad-body
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8WritableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8WritableD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8ReadableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8ReadableD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io11InputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io11InputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5arrow2io11InputStreamD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5arrow2io11InputStreamD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !29
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32, !inline_history !367
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32, !inline_history !367
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #32 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !368
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !368
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !334
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #34
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !34

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !127
  store i64 %i.c, ptr %i.a, align 8, !tbaa !33
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !33
  store i8 %i.j, ptr %i.i, align 1, !tbaa !33
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !292
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !29
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !381
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !381
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, !prof !34

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, !prof !118

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !90, !range !100, !noundef !101
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !33
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !81 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !118

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !90, !range !100, !noundef !101
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %3 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %4 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %5 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %6 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %7 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %8 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %9 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %.fr33 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr33 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit
  %i.h = icmp eq i64 %i.bt, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph42, !llvm.loop !382

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cg, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr33, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i.i25.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i ; 2 uses
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !246
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.s, align 8, !tbaa !246
  %i.u = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.y
  %.val.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !360
  %.val1.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !360
  %i.aa = icmp slt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.aa, i64 %i.y, i64 %i.w ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !358
  %i.ad = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !383

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ae, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !358
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.af = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !360
  %i.ah = icmp slt i64 %.val.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.ah, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !358
  %i.aj = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i, !llvm.loop !384

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.t, ptr %i.ak, align 8, !tbaa !246
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.al = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i, label %bb.c, !llvm.loop !385

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i
  %i.am = icmp sgt i64 %.fr.i.i25.lcssa, 16
  br i1 %i.am, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.an, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i ], [ %storemerge23.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i ]
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !tbaa !246
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.an, align 8, !tbaa !246
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !358
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 4                 ; 3 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = sdiv i64 %i.as, 2
  %i.au = icmp sgt i64 %i.ar, 2
  br i1 %i.au, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.037.i.i.i23.i = phi i64 [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.av = shl i64 %.037.i.i.i23.i, 1              ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.ay
  %.val.i.i.i.i24.i = load i64, ptr %i.ax, align 8, !tbaa !360
  %.val1.i.i.i.i25.i = load i64, ptr %i.az, align 8, !tbaa !360
  %i.ba = icmp slt i64 %.val.i.i.i.i24.i, %.val1.i.i.i.i25.i
  %spec.select.i.i.i26.i = select i1 %i.ba, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i26.i
  %i.bc = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i23.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !358
  %i.bd = icmp slt i64 %spec.select.i.i.i26.i, %i.at
  br i1 %i.bd, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i, !llvm.loop !383

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.be = and i64 %i.aq, 16
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bg = add nsw i64 %i.ar, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.bk
  %i.bm = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !358
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bk, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i19.i = load i64, ptr %i.bn, align 8, !tbaa !360
  %i.bo = icmp slt i64 %.val.i.i.i.i.i19.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.bo, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bp = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !358
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i, label %.lr.ph.i.i.i.i16.i, !llvm.loop !384

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bq = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i
  store <2 x i64> %i.ao, ptr %i.bq, align 8, !tbaa !246
  %i.br = icmp sgt i64 %i.aq, 16
  br i1 %i.br, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit, !llvm.loop !386

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr33, %.lr.ph ] ; 3 uses
  %.02440 = phi i64 [ %i.bt, %bb.b ], [ %2, %.lr.ph ]
  %i.bs = phi i64 [ %i.ch, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bt = add nsw i64 %.02440, -1                 ; 3 uses
  %i.bu = lshr i64 %i.bs, 1
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %storemerge2341, i64 -16 ; 5 uses
  %.val.i.i.i = load i64, ptr %i.f, align 8, !tbaa !360 ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.bv, align 8, !tbaa !360 ; 3 uses
  %i.bx = icmp slt i64 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i64, ptr %i.bw, align 8, !tbaa !360 ; 4 uses
  br i1 %i.bx, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.by = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph42
  %i.ca = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cb = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader, %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.cd, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2341, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader ]
  %.val1.i.i13.i = load i64, ptr %.fr26, align 8, !tbaa !360 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i ], [ %i.cd, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i64, ptr %.sroa.014.1.i.i, align 8, !tbaa !360
  %i.cc = icmp slt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  br i1 %i.cc, label %bb.t, label %.preheader.i.i, !llvm.loop !387

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %.val1.i11.i.i = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !360
  %i.ce = icmp slt i64 %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.ce, label %.preheader.i.i, label %bb.u, !llvm.loop !388

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, i64 16, i1 false), !tbaa.struct !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !358
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i, !llvm.loop !389

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2341, i64 noundef %i.bt)
  %i.cf = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cg = sub i64 %i.cf, %i.a                     ; 2 uses
  %i.ch = ashr exact i64 %i.cg, 4                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 16
  br i1 %i.ci, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit, !llvm.loop !382

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350  ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !348    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !351
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !358
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !390

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !358
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !358
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !358
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !358
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !392

_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !350
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #34
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #35 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !358
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !393

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !358
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !358
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !358
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !358
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !392

_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN5arrow2io9ReadRangeESaIS2_EE13_M_deallocateEPS2_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aw = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #36
  br label %_ZNSt12_Vector_baseIN5arrow2io9ReadRangeESaIS2_EE13_M_deallocateEPS2_m.exit38

_ZNSt12_Vector_baseIN5arrow2io9ReadRangeESaIS2_EE13_M_deallocateEPS2_m.exit38: ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !348
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %1
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !350
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ay, ptr %i.h, align 8, !tbaa !351
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5arrow2io9ReadRangeESaIS2_EE13_M_deallocateEPS2_m.exit38, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #24

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_2
