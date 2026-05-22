inline.NumInlined: 3052
inline.NumDeleted: 1336
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.hermes::vm::VTable" = type { i64, i32, i32, ptr, ptr, ptr }
%"struct.std::array.126" = type { [79 x ptr] }
%"struct.std::array.168" = type { [79 x %"struct.hermes::vm::Metadata"] }
%"struct.hermes::vm::Metadata" = type { %"struct.hermes::vm::Metadata::SlotOffsets", %"struct.std::array.170", ptr }
%"struct.hermes::vm::Metadata::SlotOffsets" = type { i8, i8, i8, i8, %"struct.std::array.169", %"class.hermes::OptValue" }
%"struct.std::array.169" = type { [8 x i8] }
%"class.hermes::OptValue" = type { %"struct.hermes::vm::Metadata::ArrayData", i8 }
%"struct.hermes::vm::Metadata::ArrayData" = type { i8, i8, i8, i8 }
%"struct.std::array.170" = type { [8 x ptr] }
%"class.hermes::vm::CardTable::Boundary" = type { i64, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.19 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.19 = type { i64, [8 x i8] }
%"class.llvh::ErrorOr" = type { %union.anon.79, i8, [7 x i8] }
%union.anon.79 = type { %"struct.llvh::AlignedCharArrayUnion" }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [32 x i8] }
%"class.hermes::vm::HadesGC::HeapSegment" = type { %"class.hermes::vm::AlignedHeapSegment" }
%"class.hermes::vm::AlignedHeapSegment" = type { %"struct.hermes::vm::AlignedStorage", ptr, ptr }
%"struct.hermes::vm::AlignedStorage" = type { ptr, ptr }
%"class.llvh::ErrorOr.119" = type { %union.anon.120, i8, [7 x i8] }
%union.anon.120 = type { %"struct.llvh::AlignedCharArrayUnion.121" }
%"struct.llvh::AlignedCharArrayUnion.121" = type { %"struct.llvh::AlignedCharArray.81" }
%"struct.llvh::AlignedCharArray.81" = type { [16 x i8] }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::function.82" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon.108 = type { %"class.std::function.82" }
%"struct.hermes::vm::GCBase::HeapInfo" = type { i32, i32, i64, i64, i64, i32, i64, i64, i32, %"struct.hermes::vm::GCBase::CumulativeHeapStats", %"struct.hermes::vm::GCBase::CumulativeHeapStats", %"struct.hermes::vm::GCBase::CumulativeHeapStats" }
%"struct.hermes::vm::GCBase::CumulativeHeapStats" = type { i32, %"class.hermes::StatsAccumulator", %"class.hermes::StatsAccumulator", i32, %"class.hermes::StatsAccumulator.15", %"class.hermes::StatsAccumulator.15" }
%"class.hermes::StatsAccumulator" = type { i32, double, double, double, double }
%"class.hermes::StatsAccumulator.15" = type { i32, i64, i32, i32, double }
%"class.hermes::vm::GCBase::GCCycle" = type <{ ptr, %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.hermes::vm::HadesGC::CollectionStats" = type { ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector.72", %"class.std::chrono::time_point", %"class.std::chrono::time_point", %"class.std::chrono::duration.14", %"class.std::chrono::duration.14", i64, i64, i64, i64, i64, i64 }
%"class.std::vector.72" = type { %"struct.std::_Vector_base.73" }
%"struct.std::_Vector_base.73" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }
%"class.std::chrono::duration.14" = type { i64 }
%"struct.hermes::vm::GCAnalyticsEvent" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::chrono::duration.87", %"class.std::chrono::duration.87", %"struct.hermes::vm::BeforeAndAfter", %"struct.hermes::vm::BeforeAndAfter", %"struct.hermes::vm::BeforeAndAfter", double, %"class.std::vector.72" }
%"class.std::chrono::duration.87" = type { i64 }
%"struct.hermes::vm::BeforeAndAfter" = type { i64, i64 }
%"class.std::unique_ptr.59" = type { %"struct.std::__uniq_ptr_data.60" }
%"struct.std::__uniq_ptr_data.60" = type { %"class.std::__uniq_ptr_impl.61" }
%"class.std::__uniq_ptr_impl.61" = type { %"class.std::tuple.62" }
%"class.std::tuple.62" = type { %"struct.std::_Tuple_impl.63" }
%"struct.std::_Tuple_impl.63" = type { %"struct.std::_Head_base.66" }
%"struct.std::_Head_base.66" = type { ptr }
%"class.hermes::vm::HadesGC::EvacAcceptor" = type { %"struct.hermes::vm::RootAndSlotAcceptor", %"struct.hermes::vm::WeakRootAcceptor", ptr, ptr, %"class.hermes::vm::AssignableCompressedPointer", i8, i64 }
%"struct.hermes::vm::RootAndSlotAcceptor" = type { %"struct.hermes::vm::RootAcceptor", %"struct.hermes::vm::SlotAcceptor" }
%"struct.hermes::vm::RootAcceptor" = type { %"struct.hermes::vm::RootSectionAcceptor" }
%"struct.hermes::vm::RootSectionAcceptor" = type { ptr }
%"struct.hermes::vm::SlotAcceptor" = type { ptr }
%"struct.hermes::vm::WeakRootAcceptor" = type { %"struct.hermes::vm::RootSectionAcceptor" }
%"class.hermes::vm::AssignableCompressedPointer" = type { %"class.hermes::vm::CompressedPointer" }
%"class.hermes::vm::CompressedPointer" = type { %"class.hermes::vm::BasedPointer" }
%"class.hermes::vm::BasedPointer" = type { i32 }
%"class.hermes::vm::HadesGC::EvacAcceptor.110" = type { %"struct.hermes::vm::RootAndSlotAcceptor", %"struct.hermes::vm::WeakRootAcceptor", ptr, ptr, %"class.hermes::vm::AssignableCompressedPointer", i8, i64 }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"struct.hermes::vm::DroppingAcceptor" = type { %"struct.hermes::vm::RootAndSlotAcceptorWithNames", ptr }
%"struct.hermes::vm::RootAndSlotAcceptorWithNames" = type { %"struct.hermes::vm::RootAndSlotAcceptor" }
%"class.std::lock_guard" = type { ptr }
%"class.hermes::vm::HadesGC::MarkWeakRootsAcceptor" = type { %"struct.hermes::vm::WeakRootAcceptor", ptr }
%"struct.hermes::vm::SlotVisitor.210" = type { ptr }
%"struct.hermes::vm::DroppingAcceptor.208" = type { %"struct.hermes::vm::RootAndSlotAcceptorWithNames", ptr }
%"struct.hermes::vm::SlotVisitor.215" = type { ptr }
%"struct.hermes::vm::DroppingAcceptor.213" = type { %"struct.hermes::vm::RootAndSlotAcceptorWithNames", ptr }
%"class.llvh::ErrorOr.113" = type { %union.anon.114, i8, [7 x i8] }
%union.anon.114 = type { %"struct.llvh::AlignedCharArrayUnion.80" }
%"struct.llvh::AlignedCharArrayUnion.80" = type { %"struct.llvh::AlignedCharArray.81" }
%"struct.std::_Deque_iterator.118" = type { ptr, ptr, ptr, ptr }
%"struct.hermes::vm::SlotVisitor" = type { ptr }
%"class.llvh::SmallVector.92" = type { %"class.llvh::SmallVectorImpl.93" }
%"class.llvh::SmallVectorImpl.93" = type { %"class.llvh::SmallVectorTemplateBase.94" }
%"class.llvh::SmallVectorTemplateBase.94" = type { %"class.llvh::SmallVectorTemplateCommon.95" }
%"class.llvh::SmallVectorTemplateCommon.95" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"class.std::unique_ptr.182" = type { %"struct.std::__uniq_ptr_data.183" }
%"struct.std::__uniq_ptr_data.183" = type { %"class.std::__uniq_ptr_impl.184" }
%"class.std::__uniq_ptr_impl.184" = type { %"class.std::tuple.185" }
%"class.std::tuple.185" = type { %"struct.std::_Tuple_impl.186" }
%"struct.std::_Tuple_impl.186" = type { %"struct.std::_Head_base.189" }
%"struct.std::_Head_base.189" = type { ptr }
%"class.std::unique_lock.193" = type <{ ptr, i8, [7 x i8] }>
%"class.std::function.177" = type { %"class.std::_Function_base", ptr }
%"struct.std::_Deque_iterator.102" = type { ptr, ptr, ptr, ptr }
%"struct.std::_V2::condition_variable_any::_Unlock" = type { ptr }

$_ZNK4llvh7ErrorOrIN6hermes2vm7HadesGC11HeapSegmentEE8getErrorEv = comdat any

$_ZN6hermes2vm7HadesGC6OldGenD2Ev = comdat any

$_ZN6hermes2vm6GCBaseD2Ev = comdat any

$_ZNO6hermes2vm7HadesGC15CollectionStats8getEventEv = comdat any

$_ZN6hermes2vm16GCAnalyticsEventD2Ev = comdat any

$_ZN6hermes2vm7HadesGC15CollectionStatsD2Ev = comdat any

$_ZSt11make_uniqueIN6hermes2vm7HadesGC15CollectionStatsEJRS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA4_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptorC2ERS1_ = comdat any

$_ZNK6hermes2vm7HadesGC10inYoungGenEPKv = comdat any

$_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm = comdat any

$_ZSt11make_uniqueIN6hermes2vm7HadesGC15CollectionStatsEJRS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZN6hermes2vm7HadesGC20youngGenEvacuateImplINS1_12EvacAcceptorILb1EEEEEvRT_b = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EED2Ev = comdat any

$_ZN6hermes2vm7HadesGC20youngGenEvacuateImplINS1_12EvacAcceptorILb0EEEEEvRT_b = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb0EED2Ev = comdat any

$_ZN6hermes2vm19RootSectionAcceptorD2Ev = comdat any

$_ZN6hermes2vm19RootSectionAcceptor16beginRootSectionENS1_7SectionE = comdat any

$_ZN6hermes2vm19RootSectionAcceptor14endRootSectionEv = comdat any

$_ZN6hermes2vm6GCBase25recordNumAllocatedObjectsEv = comdat any

$_ZNK6hermes2vm6GCBase21getPeakAllocatedBytesEv = comdat any

$_ZNK6hermes2vm6GCBase18getPeakLiveAfterGCEv = comdat any

$_ZNK6hermes2vm6GCBase25bytesAllocatedSinceLastGCEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE19_M_destroy_data_auxESt15_Deque_iteratorIS3_RS3_PS3_ES9_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptorD2Ev = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptorD0Ev = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERPNS0_6GCCellE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17PinnedHermesValueE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor14acceptNullableERNS0_17PinnedHermesValueE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERKNS0_12RootSymbolIDE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_13GCPointerBaseE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERKNS0_10GCSymbolIDE = comdat any

$_ZThn8_N6hermes2vm7HadesGC12MarkAcceptorD1Ev = comdat any

$_ZThn8_N6hermes2vm7HadesGC12MarkAcceptorD0Ev = comdat any

$_ZThn8_N6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_13GCPointerBaseE = comdat any

$_ZThn8_N6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE = comdat any

$_ZThn8_N6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE = comdat any

$_ZThn8_N6hermes2vm7HadesGC12MarkAcceptor6acceptERKNS0_10GCSymbolIDE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptRootEPNS0_6GCCellE = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptHeapEPNS0_6GCCellEPKv = comdat any

$_ZThn8_N6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEED1Ev = comdat any

$_ZN6hermes2vm7HadesGC12MarkAcceptor13drainSomeWorkEm = comdat any

$_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE4swapERS5_ = comdat any

$_ZN6hermes2vm11SlotVisitorINS0_7HadesGC12MarkAcceptorEE11visitFieldsEPcRKNS0_8Metadata11SlotOffsetsE = comdat any

$_ZN6hermes2vm11BaseVisitor10visitArrayINS0_7HadesGC12MarkAcceptorELb0EEEvRT_PcRKNS0_8Metadata9ArrayDataE = comdat any

$_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6insertIPS4_vEES7_S7_T_S8_ = comdat any

$_ZN6hermes2vm7HadesGC21MarkWeakRootsAcceptorD0Ev = comdat any

$_ZN6hermes2vm7HadesGC21MarkWeakRootsAcceptor10acceptWeakERNS0_12WeakRootBaseE = comdat any

$_ZNK6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EE7forEachIZNS1_6GCBase13markWeakRootsERNS1_16WeakRootAcceptorEbEUlRS2_E_EEvT_ = comdat any

$_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_6GCBase13markWeakRootsERNS1_16WeakRootAcceptorEbEUlRS2_E_EEvT_ = comdat any

$_ZN4llvh9BitVector6resizeEjb = comdat any

$_ZN6hermes2vm7HadesGC8ExecutorC2Ev = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6hermes2vm7HadesGC8ExecutorC1EvEUlvE_EEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6hermes2vm7HadesGC8ExecutorC1EvEUlvE_EEEEE6_M_runEv = comdat any

$_ZN6hermes2vm7HadesGC8Executor6workerEv = comdat any

$_ZN6hermes2vm7HadesGC8ExecutorD2Ev = comdat any

$_ZNSt5dequeISt8functionIFvvEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_ = comdat any

$_ZNSt3_V222condition_variable_any4waitISt11unique_lockISt15recursive_mutexEEEvRT_ = comdat any

$_ZNSt3_V222condition_variable_any7_UnlockISt11unique_lockISt15recursive_mutexEED2Ev = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEED0Ev = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERPNS0_6GCCellE = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17PinnedHermesValueE = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames14acceptNullableERNS0_17PinnedHermesValueE = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERKNS0_12RootSymbolIDE = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEE6acceptERPNS0_6GCCellEPKc = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEE6acceptERNS0_17PinnedHermesValueEPKc = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEE14acceptNullableERNS0_17PinnedHermesValueEPKc = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEE6acceptERKNS0_12RootSymbolIDEPKc = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_13GCPointerBaseE = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEE6acceptERNS0_13GCPointerBaseEPKc = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEE6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEEPKc = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEE6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEEPKc = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames6acceptERKNS0_10GCSymbolIDE = comdat any

$_ZN6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEE6acceptERKNS0_10GCSymbolIDEPKc = comdat any

$_ZN6hermes2vm28RootAndSlotAcceptorWithNames15provideSnapshotERKSt8functionIFvRNS0_12HeapSnapshotEEE = comdat any

$_ZThn8_N6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEED0Ev = comdat any

$_ZThn8_N6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_13GCPointerBaseE = comdat any

$_ZThn8_N6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE = comdat any

$_ZThn8_N6hermes2vm28RootAndSlotAcceptorWithNames6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE = comdat any

$_ZThn8_N6hermes2vm28RootAndSlotAcceptorWithNames6acceptERKNS0_10GCSymbolIDE = comdat any

$_ZNSt5dequeISt8functionIFvvEESaIS2_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes2vm7HadesGC11HeapSegmentESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes2vm7HadesGC11HeapSegmentESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes2vm7HadesGC11HeapSegmentESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes2vm7HadesGC11HeapSegmentESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EED0Ev = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE6acceptERPNS0_6GCCellE = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE6acceptERNS0_17PinnedHermesValueE = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE14acceptNullableERNS0_17PinnedHermesValueE = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE6acceptERKNS0_12RootSymbolIDE = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE6acceptERNS0_13GCPointerBaseE = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE10acceptWeakERNS0_12WeakRootBaseE = comdat any

$_ZN6hermes2vm7HadesGC12EvacAcceptorILb1EE6acceptERKNS0_10GCSymbolIDE = comdat any

$_ZThn8_N6hermes2vm7HadesGC12EvacAcceptorILb1EED1Ev = comdat any

$_ZThn8_N6hermes2vm7HadesGC12EvacAcceptorILb1EED0Ev = comdat any

$_ZThn8_N6hermes2vm7HadesGC12EvacAcceptorILb1EE6acceptERNS0_13GCPointerBaseE = comdat any

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7HadesGC6OldGen5allocEj:bb.a
  %3 = alloca %"class.llvh::ErrorOr", align 8     ; 9 uses
  %4 = alloca %"class.hermes::vm::HadesGC::HeapSegment", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN6hermes2vm7HadesGC6OldGen6searchEj(ptr noundef nonnull align 8 dereferenceable(6672) %0, i32 noundef %1) ; 2 uses
  %.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.b = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !61, !align !62
  call void @_ZN6hermes2vm7HadesGC13createSegmentEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8112) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127  ; 2 uses
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !233
  %.not.i.not = icmp ugt ptr %i.i, %i.k
  br i1 %.not.i.not, label %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit, label %bb.d, !prof !137

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.f, align 8, !tbaa !127
  br label %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit

_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit:   ; preds = %bb.c, %bb.d
  %spec.select.i = phi ptr [ null, %bb.c ], [ %i.g, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %i.h ; 2 uses
  %i.m = ptrtoint ptr %spec.select.i to i64       ; 2 uses
  %i.n = and i64 %i.m, -4194304                   ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.p = getelementptr inbounds i8, ptr %spec.select.i, i64 -1
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.n
  %i.s = ashr i64 %i.r, 9
  %i.t = add nsw i64 %i.s, 1                      ; 2 uses
  %i.u = shl i64 %i.t, 9
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u ; 2 uses
  store i64 %i.t, ptr %2, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = icmp ult ptr %i.v, %i.l
  br i1 %i.x, label %bb.e, label %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit

bb.e:                                             ; preds = %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit
  call void @_ZN6hermes2vm9CardTable16updateBoundariesEPNS1_8BoundaryEPKcS5_(ptr noundef nonnull align 1 dereferenceable(16384) %i.o, ptr noundef nonnull %2, ptr noundef %spec.select.i, ptr noundef nonnull %i.l) #35
  br label %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit

_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit: ; preds = %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @_ZN6hermes2vm14AlignedStorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #35
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @_ZN6hermes2vm7HadesGC6OldGen10addSegmentENS1_11HeapSegmentE(ptr noundef nonnull align 8 dereferenceable(6672) %0, ptr noundef nonnull %4)
  call void @_ZN6hermes2vm18AlignedHeapSegmentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #35
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16384 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.m, %i.aa
  %i.ac = ashr i64 %i.ab, 3                       ; 2 uses
  %i.ad = and i64 %i.ac, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = lshr i64 %i.ac, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !51
  %i.ai = or i64 %i.ah, %i.ae
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !51
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.aj = call noundef ptr @_ZN6hermes2vm7HadesGC6OldGen6searchEj(ptr noundef nonnull align 8 dereferenceable(6672) %0, i32 noundef %1) ; 2 uses
  %.not17 = icmp eq ptr %i.aj, null
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.al = call { i32, ptr } @_ZNK4llvh7ErrorOrIN6hermes2vm7HadesGC11HeapSegmentEE8getErrorEv(ptr noundef nonnull align 8 dereferenceable(33) %3) ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.al, 0
  %i.an = extractvalue { i32, ptr } %i.al, 1
  call void @_ZN6hermes2vm6GCBase3oomESt10error_code(ptr noundef nonnull align 8 dereferenceable(717) %i.ak, i32 %i.am, ptr %i.an) #37
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit
  %.2 = phi ptr [ %spec.select.i, %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit ], [ %i.aj, %bb.f ]
  %i.ao = load i8, ptr %i.c, align 8
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %_ZN4llvh7ErrorOrIN6hermes2vm7HadesGC11HeapSegmentEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN6hermes2vm18AlignedHeapSegmentD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %3) #35
  br label %_ZN4llvh7ErrorOrIN6hermes2vm7HadesGC11HeapSegmentEED2Ev.exit

_ZN4llvh7ErrorOrIN6hermes2vm7HadesGC11HeapSegmentEED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN4llvh7ErrorOrIN6hermes2vm7HadesGC11HeapSegmentEED2Ev.exit
  %.3 = phi ptr [ %.2, %_ZN4llvh7ErrorOrIN6hermes2vm7HadesGC11HeapSegmentEED2Ev.exit ], [ %i.a, %bb.a ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm7HadesGC6OldGen6searchEj(ptr noundef nonnull align 8 dereferenceable(6672) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::CardTable::Boundary", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 2048
  %i.b = lshr i32 %1, 3
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.d = sub nuw nsw i32 276, %i.c
  %.0.i = select i1 %i.a, i32 %i.b, i32 %i.d      ; 2 uses
  %i.e = zext nneg i32 %.0.i to i64               ; 4 uses
  %i.f = icmp samesign ult i32 %.0.i, 256
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63, !nonnull !61
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 4, !tbaa !3
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.p = add i64 %i.o, %i.n                       ; 3 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.r, align 4 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.j, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !58 ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.pre.i.i.i, ptr %i.t, align 8, !tbaa !58
  br label %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i.i

_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i.i: ; preds = %bb.e, %bb.d
  store ptr %i.s, ptr %.pre.i.i.i, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !52
  %.not8.i.i = icmp eq ptr %i.v, null
  %i.w = and i64 %i.e, 63
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = lshr i64 %i.e, 6                         ; 2 uses
  br i1 %.not8.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  %i.ab = or i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !51
  br label %bb.h

bb.g:                                             ; preds = %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i.i
  %i.ac = xor i64 %i.x, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !51
  %i.af = and i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !27
  %i.ak = and i64 %i.p, -4194304
  %i.al = inttoptr i64 %i.ak to ptr
  br label %.critedge.sink.split

bb.i:                                             ; preds = %bb.b
  %i.am = add i32 %1, 8                           ; 3 uses
  %i.an = icmp ult i32 %i.am, 2048
  %i.ao = lshr i32 %i.am, 3
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.am, i1 true)
  %i.aq = sub nuw nsw i32 276, %i.ap
  %.0.i71 = select i1 %i.an, i32 %i.ao, i32 %i.aq
  %i.ar = zext nneg i32 %.0.i71 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  %.052 = phi i64 [ %i.ar, %bb.i ], [ %i.e, %bb.a ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.at = lshr i64 %.052, 6                       ; 6 uses
  %i.au = and i64 %.052, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !51
  %i.ax = shl nsw i64 -1, %i.au
  %i.ay = and i64 %i.ax, %i.aw                    ; 2 uses
  %.not14.i.i = icmp eq i64 %i.ay, 0
  %i.az = icmp samesign ult i64 %.052, 256
  %i.ba = and i1 %i.az, %.not14.i.i
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit

.lr.ph.i.i:                                       ; preds = %bb.j
  %.0.i.i = add nuw nsw i64 %i.at, 1              ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !51 ; 2 uses
  %.not.i.i72 = icmp eq i64 %i.bc, 0
  %i.bd = icmp samesign ult i64 %.052, 192
  %i.be = select i1 %.not.i.i72, i1 %i.bd, i1 false
  br i1 %i.be, label %.lr.ph.i.i.1, label %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %.0.i.i.1 = add nuw nsw i64 %i.at, 2            ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i.i.1
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %.not.i.i72.1 = icmp eq i64 %i.bg, 0
  %i.bh = icmp samesign ult i64 %.052, 128
  %i.bi = select i1 %.not.i.i72.1, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.i.i.2, label %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %.0.i.i.2 = add nuw nsw i64 %i.at, 3            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i.i.2
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !51 ; 2 uses
  %i.bl = or i64 %i.bk, %i.at
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.3, label %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !51
  br label %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit

_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %bb.j
  %.010.lcssa.i.i = phi i64 [ %i.ay, %bb.j ], [ %i.bc, %.lr.ph.i.i ], [ %i.bg, %.lr.ph.i.i.1 ], [ %i.bk, %.lr.ph.i.i.2 ], [ %i.bo, %.lr.ph.i.i.3 ]
  %.0.in.lcssa.i.i = phi i64 [ %i.at, %bb.j ], [ %.0.i.i, %.lr.ph.i.i ], [ %.0.i.i.1, %.lr.ph.i.i.1 ], [ %.0.i.i.2, %.lr.ph.i.i.2 ], [ 4, %.lr.ph.i.i.3 ]
  %i.bp = shl nuw nsw i64 %.0.in.lcssa.i.i, 6
  %i.bq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i.i, i1 false)
  %i.br = add nuw nsw i64 %i.bp, %i.bq            ; 2 uses
  %i.bs = icmp samesign ult i64 %i.br, 267
  br i1 %i.bs, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bu = add i32 %1, 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit97
  %.153145 = phi i64 [ %i.br, %.lr.ph ], [ %.sroa.speculated.i.i92, %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit97 ] ; 8 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.153145 ; 3 uses
  %3 = load ptr, ptr %i.bv, align 8, !tbaa !52
  %4 = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !61, !align !62
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bw = load ptr, ptr %5, align 8, !tbaa !63, !nonnull !61
  %6 = ptrtoint ptr %i.bw to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.ad, %bb.k
  %.058 = phi ptr [ %3, %bb.k ], [ %i.fy, %bb.ad ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.058, i64 16 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.ac, %bb.l
  %.sroa.0.0.copyload.i.i80 = phi i32 [ %i.by, %bb.l ], [ %.sroa.0.0.copyload.i81, %bb.ac ]
  %.060 = phi ptr [ %i.bx, %bb.l ], [ %i.fd, %bb.ac ] ; 3 uses
  %i.bz = zext i32 %.sroa.0.0.copyload.i.i80 to i64
  %i.ca = add i64 %6, %i.bz                       ; 4 uses
  %i.cb = inttoptr i64 %i.ca to ptr               ; 8 uses
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = and i32 %i.cc, 16777215                 ; 3 uses
  %.not68 = icmp ult i32 %i.cd, %i.bu
  br i1 %.not68, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = sub nsw i32 %i.cd, %1                   ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf ; 5 uses
  %i.ch = and i32 %i.cc, -16777216
  %i.ci = and i32 %i.ce, 16777215                 ; 2 uses
  %i.cj = or disjoint i32 %i.ci, %i.ch
  store i32 %i.cj, ptr %i.cb, align 4, !tbaa !59
  %i.ck = zext i32 %1 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck ; 2 uses
  %i.cm = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cn = and i64 %i.cm, -4194304                 ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.cp = getelementptr inbounds i8, ptr %i.cg, i64 -1
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cn
  %i.cs = ashr i64 %i.cr, 9
  %i.ct = add nsw i64 %i.cs, 1                    ; 2 uses
  %i.cu = shl i64 %i.ct, 9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cu ; 2 uses
  store i64 %i.ct, ptr %2, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  %i.cx = icmp ult ptr %i.cv, %i.cl
  br i1 %i.cx, label %bb.o, label %_ZN6hermes2vm7HadesGC6OldGen12FreelistCell5carveEj.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN6hermes2vm9CardTable16updateBoundariesEPNS1_8BoundaryEPKcS5_(ptr noundef nonnull align 1 dereferenceable(16384) %i.co, ptr noundef nonnull %2, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cl) #35
  %.pre = load i32, ptr %i.cb, align 4
  %i.cy = and i32 %.pre, 16777215
  br label %_ZN6hermes2vm7HadesGC6OldGen12FreelistCell5carveEj.exit

_ZN6hermes2vm7HadesGC6OldGen12FreelistCell5carveEj.exit: ; preds = %bb.n, %bb.o
  %i.cz = phi i32 [ %i.ci, %bb.n ], [ %i.cy, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.da = icmp samesign ult i32 %i.cz, 2048
  %i.db = lshr i32 %i.cz, 3
  %i.dc = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true)
  %i.dd = sub nuw nsw i32 276, %i.dc
  %.0.i73 = select i1 %i.da, i32 %i.db, i32 %i.dd
  %i.de = zext nneg i32 %.0.i73 to i64            ; 2 uses
  %.not69 = icmp eq i64 %.153145, %i.de
  br i1 %.not69, label %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6hermes2vm7HadesGC6OldGen12FreelistCell5carveEj.exit
  %i.df = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !63, !nonnull !61
  %.sroa.0.0.copyload.i.i74 = load i32, ptr %.060, align 4, !tbaa !3
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = zext i32 %.sroa.0.0.copyload.i.i74 to i64
  %i.dk = add i64 %i.dj, %i.di
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %.sroa.0.0.copyload.i75 = load i32, ptr %i.dm, align 4
  store i32 %.sroa.0.0.copyload.i75, ptr %.060, align 4, !tbaa !3
  %i.dn = load i32, ptr %i.bx, align 4, !tbaa !107
  %.not.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i, label %bb.q, label %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit

bb.q:                                             ; preds = %bb.p
  %i.do = load ptr, ptr %.058, align 8, !tbaa !52 ; 3 uses
  %.not.i.i76 = icmp eq ptr %i.do, null
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58 ; 2 uses
  br i1 %.not.i.i76, label %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.pre.i.i, ptr %i.dp, align 8, !tbaa !58
  br label %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i

_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i: ; preds = %bb.r, %bb.q
  store ptr %i.do, ptr %.pre.i.i, align 8, !tbaa !52
  %i.dq = load ptr, ptr %i.bv, align 8, !tbaa !52
  %.not8.i = icmp eq ptr %i.dq, null
  %i.dr = and i64 %.153145, 63
  %i.ds = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dt = lshr i64 %.153145, 6                    ; 2 uses
  br i1 %.not8.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.dt ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !51
  %i.dw = or i64 %i.dv, %i.ds
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit

bb.t:                                             ; preds = %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i
  %i.dx = xor i64 %i.ds, -1
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.dt ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !51
  %i.ea = and i64 %i.dz, %i.dx
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit

_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit: ; preds = %bb.p, %bb.s, %bb.t
  %.neg = sub nsw i64 %i.de, %.153145
  %i.eb = getelementptr inbounds [24 x i8], ptr %.058, i64 %.neg ; 5 uses
  %i.ec = load i32, ptr %i.cb, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !3  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !3
  %i.eg = sub i64 %i.ca, %i.di
  %i.eh = trunc i64 %i.eg to i32
  store i32 %i.eh, ptr %i.ed, align 8, !tbaa !3
  %.not.i77 = icmp eq i32 %i.ee, 0
  br i1 %.not.i77, label %bb.u, label %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit

bb.u:                                             ; preds = %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit
  %i.ei = and i32 %i.ec, 16777215                 ; 3 uses
  %i.ej = icmp samesign ult i32 %i.ei, 2048
  %i.ek = lshr i32 %i.ei, 3
  %i.el = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ei, i1 true)
  %i.em = sub nuw nsw i32 276, %i.el
  %.0.i.i78 = select i1 %i.ej, i32 %i.ek, i32 %i.em
  %i.en = zext nneg i32 %.0.i.i78 to i64          ; 3 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.en ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !52 ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i79, label %_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.eb, ptr %i.eq, align 8, !tbaa !58
  br label %_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i

_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i: ; preds = %bb.v, %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.eo, ptr %i.er, align 8, !tbaa !58
  store ptr %i.ep, ptr %i.eb, align 8, !tbaa !52
  store ptr %i.eb, ptr %i.eo, align 8, !tbaa !52
  %i.es = and i64 %i.en, 63
  %i.et = shl nuw i64 1, %i.es
  %i.eu = lshr i64 %i.en, 6
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.eu ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !51
  %i.ex = or i64 %i.ew, %i.et
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit

_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit: ; preds = %_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i, %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit, %_ZN6hermes2vm7HadesGC6OldGen12FreelistCell5carveEj.exit
  %i.ey = sext i32 %1 to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !27
  %i.fb = add i64 %i.fa, %i.ey
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !27
  br label %.critedge.sink.split

bb.w:                                             ; preds = %bb.m
  %i.fc = icmp eq i32 %i.cd, %1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i81 = load i32, ptr %i.fd, align 4 ; 3 uses
  br i1 %i.fc, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  store i32 %.sroa.0.0.copyload.i81, ptr %.060, align 4, !tbaa !3
  %i.fe = load i32, ptr %i.bx, align 4, !tbaa !107
  %.not.i82 = icmp eq i32 %i.fe, 0
  br i1 %.not.i82, label %bb.y, label %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit88

bb.y:                                             ; preds = %bb.x
  %i.ff = load ptr, ptr %.058, align 8, !tbaa !52 ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.ff, null
  %.phi.trans.insert.i.i84 = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.pre.i.i85 = load ptr, ptr %.phi.trans.insert.i.i84, align 8, !tbaa !58 ; 2 uses
  br i1 %.not.i.i83, label %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i86, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %.pre.i.i85, ptr %i.fg, align 8, !tbaa !58
  br label %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i86

_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i86: ; preds = %bb.z, %bb.y
  store ptr %i.ff, ptr %.pre.i.i85, align 8, !tbaa !52
  %i.fh = load ptr, ptr %i.bv, align 8, !tbaa !52
  %.not8.i87 = icmp eq ptr %i.fh, null
  %i.fi = and i64 %.153145, 63
  %i.fj = shl nuw i64 1, %i.fi                    ; 2 uses
  %i.fk = lshr i64 %.153145, 6                    ; 2 uses
  br i1 %.not8.i87, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i86
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.fk ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !51
  %i.fn = or i64 %i.fm, %i.fj
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit88

bb.ab:                                            ; preds = %_ZNK6hermes2vm7HadesGC6OldGen13SegmentBucket18removeFromFreelistEv.exit.i86
  %i.fo = xor i64 %i.fj, -1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.fk ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !51
  %i.fr = and i64 %i.fq, %i.fo
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit88

_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit88: ; preds = %bb.x, %bb.aa, %bb.ab
  %i.fs = zext nneg i32 %1 to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !27
  %i.fv = add i64 %i.fu, %i.fs
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !27
  %i.fw = and i64 %i.ca, -4194304
  %i.fx = inttoptr i64 %i.fw to ptr
  br label %.critedge.sink.split

bb.ac:                                            ; preds = %bb.w
  %.not115 = icmp eq i32 %.sroa.0.0.copyload.i81, 0
  br i1 %.not115, label %bb.ad, label %bb.m, !llvm.loop !529

bb.ad:                                            ; preds = %bb.ac
  %i.fy = load ptr, ptr %.058, align 8, !tbaa !52 ; 2 uses
  %.not70 = icmp eq ptr %i.fy, null
  br i1 %.not70, label %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit97, label %bb.l, !llvm.loop !530

_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit97: ; preds = %bb.ad
  %i.fz = add nuw nsw i64 %.153145, 1
  %.sroa.speculated.i.i92 = tail call noundef i64 @_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 noundef %i.fz) ; 2 uses
  %i.ga = icmp ult i64 %.sroa.speculated.i.i92, 267
  br i1 %i.ga, label %bb.k, label %.critedge, !llvm.loop !531

.critedge.sink.split:                             ; preds = %bb.h, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit, %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit88
  %.sink = phi ptr [ %i.fx, %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit88 ], [ %i.co, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit ], [ %i.al, %bb.h ]
  %.lcssa190.sink = phi i64 [ %i.ca, %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit88 ], [ %i.cm, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit ], [ %i.p, %bb.h ]
  %.6.ph = phi ptr [ %i.cb, %_ZN6hermes2vm7HadesGC6OldGen22removeCellFromFreelistEPNS0_27AssignableCompressedPointerEmPNS2_13SegmentBucketE.exit88 ], [ %i.cg, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPNS2_12FreelistCellEPNS2_13SegmentBucketE.exit ], [ %i.q, %bb.h ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.sink, i64 16384 ; 2 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %.lcssa190.sink, %i.gc
  %i.ge = ashr i64 %i.gd, 3                       ; 2 uses
  %i.gf = and i64 %i.ge, 63
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = lshr i64 %i.ge, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gh ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !51
  %i.gk = or i64 %i.gj, %i.gg
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !51
  br label %.critedge

.critedge:                                        ; preds = %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit97, %.critedge.sink.split, %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit
  %.6 = phi ptr [ %.6.ph, %.critedge.sink.split ], [ null, %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit ], [ null, %_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm.exit97 ]
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC6OldGen10addSegmentENS1_11HeapSegmentE(ptr noundef nonnull align 8 dereferenceable(6672) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::CardTable::Boundary", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !532
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.not.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm14AlignedStorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1) #35
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !211
  br label %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !120, !noalias !533
  br label %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124, !noalias !536
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE4backEv.exit

bb.d:                                             ; preds = %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125, !noalias !533
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  br label %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE4backEv.exit

_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE4backEv.exit: ; preds = %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ %i.k, %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 86016
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %sext = shl i64 %i.ab, 32
  %i.ac = ashr exact i64 %sext, 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.af = add i64 %i.ac, %i.ae
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !215 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !539
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -6408
  %.not.i9 = icmp eq ptr %i.ah, %i.ak
  br i1 %.not.i9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE4backEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6408) %i.ah, i8 0, i64 6408, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.idx.i.i = phi i64 [ 0, %bb.e ], [ %.add.i.i.2, %bb.f ] ; 4 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i.i, i8 0, i64 20, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i.i.1, i8 0, i64 20, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.ptr.i.i.2 = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i.i.2, i8 0, i64 20, i1 false)
  %.add.i.i.2 = add nuw nsw i64 %.idx.i.i, 72     ; 2 uses
  %i.an = icmp eq i64 %.add.i.i.2, 6408
  br i1 %i.an, label %_ZNSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EEC2Ev.exit.i, label %bb.f

_ZNSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EEC2Ev.exit.i: ; preds = %bb.f
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !215
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 6408
  store ptr %i.ap, ptr %i.ag, align 8, !tbaa !215
  br label %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE4backEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aq)
  br label %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit

_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit: ; preds = %bb.g, %_ZNSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EEC2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117, !noalias !540
  %i.at = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !233 ; 2 uses
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !127 ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = trunc i64 %i.ay to i32                  ; 5 uses
  %.not = icmp ult i32 %i.az, 8
  br i1 %.not, label %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit._ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit_crit_edge, label %bb.h

_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit._ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit_crit_edge: ; preds = %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !60
  br label %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit

bb.h:                                             ; preds = %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit
  %i.ba = and i64 %i.ay, 4294967295               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 2 uses
  %.not.i11.not = icmp ugt ptr %i.bb, %i.au
  br i1 %.not.i11.not, label %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit, label %bb.i, !prof !137

bb.i:                                             ; preds = %bb.h
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !127
  br label %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit

_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit:   ; preds = %bb.h, %bb.i
  %spec.select.i = phi ptr [ null, %bb.h ], [ %i.av, %bb.i ] ; 8 uses
  %i.bc = icmp ult i32 %i.az, 2048
  %i.bd = lshr i32 %i.az, 3
  %i.be = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bf = sub nuw nsw i32 276, %i.be
  %.0.i = select i1 %i.bc, i32 %i.bd, i32 %i.bf
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !113, !noalias !543 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.as
  br i1 %i.bh, label %bb.j, label %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE4backEv.exit

bb.j:                                             ; preds = %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !118, !noalias !543
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !119
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6408
  br label %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE4backEv.exit

_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE4backEv.exit: ; preds = %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit, %bb.j
  %i.bn = phi ptr [ %i.bm, %bb.j ], [ %i.bg, %_ZN6hermes2vm18AlignedHeapSegment5allocEj.exit ]
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -6408
  %i.bp = zext nneg i32 %.0.i to i64
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bp ; 5 uses
  store i64 0, ptr %spec.select.i, align 4
  %i.br = and i32 %i.az, 16777215                 ; 2 uses
  %i.bs = or disjoint i32 %i.br, 33554432
  store i32 %i.bs, ptr %spec.select.i, align 4, !tbaa !59
  %i.bt = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %i.ba ; 2 uses
  %i.bu = ptrtoint ptr %spec.select.i to i64      ; 2 uses
  %i.bv = and i64 %i.bu, -4194304                 ; 2 uses
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.bx = getelementptr inbounds i8, ptr %spec.select.i, i64 -1
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bv
  %i.ca = ashr i64 %i.bz, 9
  %i.cb = add nsw i64 %i.ca, 1                    ; 2 uses
  %i.cc = shl i64 %i.cb, 9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cc ; 2 uses
  store i64 %i.cb, ptr %2, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cd, ptr %i.ce, align 8
  %i.cf = icmp ult ptr %i.cd, %i.bt
  br i1 %i.cf, label %bb.k, label %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit.i

bb.k:                                             ; preds = %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE4backEv.exit
  call void @_ZN6hermes2vm9CardTable16updateBoundariesEPNS1_8BoundaryEPKcS5_(ptr noundef nonnull align 1 dereferenceable(16384) %i.bw, ptr noundef nonnull %2, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %i.bt) #35
  %.pre.i12 = load i32, ptr %spec.select.i, align 4
  %i.cg = and i32 %.pre.i12, 16777215
  br label %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit.i

_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit.i: ; preds = %bb.k, %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE4backEv.exit
  %i.ch = phi i32 [ %i.br, %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE4backEv.exit ], [ %i.cg, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !3  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  %i.cl = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !61, !align !62 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !63, !nonnull !61
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.bu, %i.co
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %i.ci, align 8, !tbaa !3
  %.not.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i, label %bb.l, label %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit

bb.l:                                             ; preds = %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit.i
  %i.cr = icmp samesign ult i32 %i.ch, 2048
  %i.cs = lshr i32 %i.ch, 3
  %i.ct = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true)
  %i.cu = sub nuw nsw i32 276, %i.ct
  %.0.i.i.i = select i1 %i.cr, i32 %i.cs, i32 %i.cu
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cw = zext nneg i32 %.0.i.i.i to i64          ; 3 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.bq, ptr %i.cz, align 8, !tbaa !58
  br label %_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i.i

_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i.i: ; preds = %bb.m, %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !58
  store ptr %i.cy, ptr %i.bq, align 8, !tbaa !52
  store ptr %i.bq, ptr %i.cx, align 8, !tbaa !52
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dc = and i64 %i.cw, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = lshr i64 %i.cw, 6
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !51
  %i.dh = or i64 %i.dg, %i.dd
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit

_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit: ; preds = %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit._ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit_crit_edge, %_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i.i, %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit.i
  %i.di = phi ptr [ %.pre21, %_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE12emplace_backIJEEERS6_DpOT_.exit._ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit_crit_edge ], [ %i.cl, %_ZN6hermes2vm7HadesGC6OldGen13SegmentBucket13addToFreelistEPS3_.exit.i.i ], [ %i.cl, %_ZN6hermes2vm7HadesGC11HeapSegment11setCellHeadEPKNS0_6GCCellEm.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !125 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !125
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3
  %i.ds = icmp ne ptr %i.dl, null
  %.neg.i.i.i = sext i1 %i.ds to i64
  %i.dt = add nsw i64 %i.dr, %.neg.i.i.i
  %i.du = shl nsw i64 %i.dt, 4
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 5
  %i.eb = add nsw i64 %i.du, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !205
  %i.ee = load ptr, ptr %i.dj, align 8, !tbaa !120
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 5
  %i.ej = add nsw i64 %i.eb, %i.ei                ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.ek = icmp ult i64 %i.ej, 10
  br i1 %i.ek, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit, %bb.s
  %.02229.i.i = phi i64 [ %i.er, %bb.s ], [ %i.ej, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.es, %bb.s ], [ 1, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit ] ; 4 uses
  %i.el = icmp ult i64 %.02229.i.i, 100
  br i1 %i.el, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.em = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.en = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eo = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ep = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.ep, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eq = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.s:                                             ; preds = %bb.q
  %i.er = udiv i64 %.02229.i.i, 10000
  %i.es = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.et = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.et, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !289

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit
  %.0.i.i = phi i32 [ %i.eq, %bb.r ], [ %i.em, %bb.n ], [ %i.eo, %bb.p ], [ 1, %_ZN6hermes2vm7HadesGC6OldGen17addCellToFreelistEPvjPNS2_13SegmentBucketE.exit ], [ %i.es, %bb.s ]
  %i.eu = zext i32 %.0.i.i to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ev, ptr %3, align 8, !tbaa !273, !alias.scope !546
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eu, i8 noundef signext 0) #35
  %i.ew = load ptr, ptr %3, align 8, !tbaa !274, !alias.scope !546 ; 4 uses
  %i.ex = icmp ugt i64 %i.ej, 99
  br i1 %i.ex, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !275, !alias.scope !546
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = add i32 %i.fa, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.fe, %.lr.ph.i2.i ], [ %i.ej, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.fo, %.lr.ph.i2.i ], [ %i.fb, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.fc = urem i64 %.020.i.i, 100
  %i.fd = shl nuw nsw i64 %i.fc, 1
  %i.fe = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fd ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !59, !noalias !546
  %i.fi = zext i32 %.01819.i.i to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fi
  store i8 %i.fh, ptr %i.fj, align 1, !tbaa !59
  %i.fk = load i8, ptr %i.ff, align 2, !tbaa !59, !noalias !546
  %i.fl = add i32 %.01819.i.i, -1
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fm
  store i8 %i.fk, ptr %i.fn, align 1, !tbaa !59
  %i.fo = add i32 %.01819.i.i, -2
  %i.fp = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.fp, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !290

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.ej, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.fe, %.lr.ph.i2.i ] ; 3 uses
  %i.fq = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.fq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.fr = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.fs = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !59, !noalias !546
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !59
  %i.fw = load i8, ptr %i.fs, align 2, !tbaa !59, !noalias !546
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.fx = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.fy = or disjoint i8 %i.fx, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.t, %bb.u
  %storemerge.i.i = phi i8 [ %i.fy, %bb.u ], [ %i.fw, %bb.t ]
  store i8 %storemerge.i.i, ptr %i.ew, align 1, !tbaa !59
  call void @_ZN6hermes2vm7HadesGC30addSegmentExtentToCrashManagerERKNS1_11HeapSegmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8112) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.fz = load ptr, ptr %3, align 8, !tbaa !274   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ev
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.gb = load i64, ptr %i.ev, align 8, !tbaa !59
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx119to_stringEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6hermes8BitArrayILm267ELm8EE18findNextSetBitFromEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = lshr i64 %1, 6                             ; 6 uses
  %4 = and i64 %1, 63
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %6 = load i64, ptr %5, align 8, !tbaa !51
  %7 = shl nsw i64 -1, %4
  %8 = and i64 %6, %7                             ; 2 uses
  %.not14.i = icmp eq i64 %8, 0
  %9 = icmp ult i64 %1, 256
  %10 = and i1 %9, %.not14.i
  br i1 %10, label %.lr.ph.i, label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

.lr.ph.i:                                         ; preds = %2
  %.0.i = add nuw nsw i64 %3, 1                   ; 2 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i
  %12 = load i64, ptr %11, align 8, !tbaa !51     ; 2 uses
  %.not.i = icmp eq i64 %12, 0
  %13 = icmp ult i64 %1, 192
  %14 = and i1 %.not.i, %13
  br i1 %14, label %.lr.ph.i.1, label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %.0.i.1 = add nuw nsw i64 %3, 2                 ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i.1
  %16 = load i64, ptr %15, align 8, !tbaa !51     ; 2 uses
  %.not.i.1 = icmp eq i64 %16, 0
  %17 = icmp ult i64 %1, 128
  %18 = and i1 %.not.i.1, %17
  br i1 %18, label %.lr.ph.i.2, label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %.0.i.2 = add nuw nsw i64 %3, 3                 ; 2 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i.2
  %20 = load i64, ptr %19, align 8, !tbaa !51     ; 2 uses
  %21 = or i64 %20, %3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %.lr.ph.i.3, label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %24 = load i64, ptr %23, align 8, !tbaa !51
  br label %_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit

_ZNK6hermes8BitArrayILm267ELm8EE15findNextBitImplILb1EEEmm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %2
  %.010.lcssa.i = phi i64 [ %8, %2 ], [ %12, %.lr.ph.i ], [ %16, %.lr.ph.i.1 ], [ %20, %.lr.ph.i.2 ], [ %24, %.lr.ph.i.3 ]
  %.0.in.lcssa.i = phi i64 [ %3, %2 ], [ %.0.i, %.lr.ph.i ], [ %.0.i.1, %.lr.ph.i.1 ], [ %.0.i.2, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ]
  %25 = shl i64 %.0.in.lcssa.i, 6
  %26 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.010.lcssa.i, i1 false)
  %27 = add i64 %25, %26
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %27, i64 267)
  ret i64 %.sroa.speculated.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11make_uniqueIN6hermes2vm7HadesGC15CollectionStatsEJRS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(6) %3) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #36 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !273
  %i.e = load ptr, ptr %2, align 8, !tbaa !274    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.g, ptr %i.b, align 8, !tbaa !51
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #35 ; 2 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !274
  %i.j = load i64, ptr %i.b, align 8, !tbaa !51
  store i64 %i.j, ptr %i.d, align 8, !tbaa !59
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !59
  store i8 %i.l, ptr %i.k, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !275
  %i.o = load ptr, ptr %4, align 8, !tbaa !274
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !273
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.r, ptr %i.a, align 8, !tbaa !51
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i3

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #35 ; 2 uses
  store ptr %i.t, ptr %5, align 8, !tbaa !274
  %i.u = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.u, ptr %i.q, align 8, !tbaa !59
  br label %._crit_edge.i.i3

._crit_edge.i.i3:                                 ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i3
  %i.w = load i8, ptr %3, align 1, !tbaa !59
  store i8 %i.w, ptr %i.v, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %3, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i3, %bb.f, %bb.g
  %i.x = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !275
  %i.z = load ptr, ptr %5, align 8, !tbaa !274
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  store ptr %1, ptr %i.c, align 8, !tbaa !207
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !273
  %i.ad = load ptr, ptr %4, align 8, !tbaa !274   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.af = load i64, ptr %i.n, align 8, !tbaa !275 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !274
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !59
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !59
  %.pre = load i64, ptr %i.n, align 8, !tbaa !275
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.aj = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.af, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !275
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !273
  %i.an = load ptr, ptr %5, align 8, !tbaa !274   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.q
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ap = load i64, ptr %i.y, align 8, !tbaa !275 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.an, ptr %i.al, align 8, !tbaa !274
  %i.as = load i64, ptr %i.q, align 8, !tbaa !59
  store i64 %i.as, ptr %i.am, align 8, !tbaa !59
  %.pre8 = load i64, ptr %i.y, align 8, !tbaa !275
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2.i
  %i.at = phi i64 [ %i.ap, %bb.i ], [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.at, ptr %i.au, align 8, !tbaa !275
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.av, i8 0, i64 104, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm7HadesGC23promoteYoungGenToOldGenEv(ptr noundef nonnull align 8 dereferenceable(8112) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.hermes::vm::CardTable::Boundary", align 8 ; 5 uses
  %2 = alloca %"class.llvh::ErrorOr", align 8     ; 7 uses
  %3 = alloca %"class.hermes::vm::HadesGC::HeapSegment", align 8 ; 3 uses
  %4 = alloca %"class.hermes::vm::HadesGC::HeapSegment", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7657 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !258, !range !257, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN6hermes2vm7HadesGC13createSegmentEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8112) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = trunc i8 %i.e to i1                      ; 2 uses
  %i.g = xor i1 %i.f, true
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !258
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8040 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !267
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !112
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8, !tbaa !112
  store i64 0, ptr %i.h, align 8, !tbaa !267
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  call void @_ZN6hermes2vm18AlignedHeapSegment25clearExternalMemoryChargeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.n) #35
  %.val = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %.val2 = load ptr, ptr %i.o, align 8, !tbaa !127 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 86016 ; 2 uses
  %.not6.i = icmp eq ptr %i.p, %.val2
  br i1 %.not6.i, label %"_ZN6hermes2vm7HadesGC11HeapSegment10forAllObjsIZNS1_23promoteYoungGenToOldGenEvE3$_0EEvT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.01.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.ak, %bb.h ] ; 7 uses
  %i.r = load i32, ptr %.sroa.01.07.i, align 4    ; 4 uses
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.r, -16777216
  %i.s = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 33554432
  br i1 %i.s, label %bb.h, label %bb.f
end_hunk_1
