inline.NumInlined: 24506
inline.NumDeleted: 9549
begin_hunk_0
%"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::container_internal::internal_compressed_tuple::Storage", %"struct.absl::container_internal::internal_compressed_tuple::Storage.13" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage" = type { %"class.absl::container_internal::CommonFields" }
%"class.absl::container_internal::CommonFields" = type { i64, %"class.absl::container_internal::HashtableSize", %"union.absl::container_internal::HeapOrSoo" }
%"class.absl::container_internal::HashtableSize" = type { i64 }
%"union.absl::container_internal::HeapOrSoo" = type { %"struct.absl::container_internal::HeapPtrs" }
%"struct.absl::container_internal::HeapPtrs" = type { %"union.absl::container_internal::MaybeInitializedPtr", %"union.absl::container_internal::MaybeInitializedPtr.10" }
%"union.absl::container_internal::MaybeInitializedPtr" = type { ptr }
%"union.absl::container_internal::MaybeInitializedPtr.10" = type { ptr }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.13" = type { %"class.v8::internal::ZoneAllocator.14" }
%"class.v8::internal::ZoneAllocator.14" = type { ptr }
%"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.1024" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1025" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1025" = type { %"class.v8::internal::ZoneVector.1026" }
%"class.v8::internal::ZoneVector.1026" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneUnorderedMap.1027" = type { %"class.std::unordered_map.1028" }
%"class.std::unordered_map.1028" = type { %"class.std::_Hashtable.1029" }
%"class.std::_Hashtable.1029" = type { %"struct.std::__detail::_Hashtable_alloc.1037", ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hashtable_alloc.1037" = type { %"struct.std::__detail::_Hashtable_ebo_helper.1038" }
%"struct.std::__detail::_Hashtable_ebo_helper.1038" = type { %"class.v8::internal::ZoneAllocator.1039" }
%"class.v8::internal::ZoneAllocator.1039" = type { ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.v8::internal::compiler::turboshaft::WasmLoadEliminationAnalyzer" = type { ptr, ptr, %"class.v8::internal::compiler::turboshaft::FixedOpIndexSidetable", %"class.v8::internal::compiler::turboshaft::SparseOpIndexSnapshotTable", %"class.v8::internal::compiler::turboshaft::wle::WasmMemoryContentTable", %"class.v8::internal::compiler::turboshaft::FixedBlockSidetable", %"class.v8::internal::ZoneVector.72", %"class.v8::internal::ZoneVector.73" }
%"class.v8::internal::compiler::turboshaft::SparseOpIndexSnapshotTable" = type { %"class.v8::internal::compiler::turboshaft::SnapshotTable", %"class.v8::internal::ZoneAbslFlatHashMap" }
%"class.v8::internal::compiler::turboshaft::SnapshotTable" = type { ptr, %"class.v8::internal::ZoneDeque", %"class.v8::internal::ZoneDeque.0", %"class.v8::internal::ZoneVector.6", ptr, ptr, %"class.v8::internal::ZoneVector.7", %"class.v8::internal::ZoneVector.8", %"class.v8::internal::ZoneVector.9" }
%"class.v8::internal::ZoneDeque" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<bool, v8::internal::compiler::turboshaft::NoKeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<bool, v8::internal::compiler::turboshaft::NoKeyData>>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<bool, v8::internal::compiler::turboshaft::NoKeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<bool, v8::internal::compiler::turboshaft::NoKeyData>>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<bool, v8::internal::compiler::turboshaft::NoKeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<bool, v8::internal::compiler::turboshaft::NoKeyData>>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator" = type { %"class.v8::internal::ZoneAllocator", ptr }
%"class.v8::internal::ZoneAllocator" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<bool, v8::internal::compiler::turboshaft::NoKeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<bool, v8::internal::compiler::turboshaft::NoKeyData>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneDeque.0" = type { %"class.std::deque.1" }
%"class.std::deque.1" = type { %"class.std::_Deque_base.2" }
%"class.std::_Deque_base.2" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<bool>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<bool>::SnapshotData>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<bool>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<bool>::SnapshotData>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.3", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<bool>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<bool>::SnapshotData>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.3" = type { %"class.v8::internal::ZoneAllocator.4", ptr }
%"class.v8::internal::ZoneAllocator.4" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<bool>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<bool>::SnapshotData>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.5", %"struct.std::_Deque_iterator.5" }
%"struct.std::_Deque_iterator.5" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.6" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.7" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.8" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.9" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneAbslFlatHashMap" = type { %"class.absl::flat_hash_map" }
%"class.absl::flat_hash_map" = type { %"class.absl::container_internal::raw_hash_map" }
%"class.absl::container_internal::raw_hash_map" = type { %"class.absl::container_internal::raw_hash_set" }
%"class.absl::container_internal::raw_hash_set" = type { %"class.absl::container_internal::CompressedTuple" }
%"class.v8::internal::compiler::turboshaft::wle::WasmMemoryContentTable" = type { %"class.v8::internal::compiler::turboshaft::ChangeTrackingSnapshotTable", ptr, ptr, ptr, ptr, ptr, %"class.v8::internal::ZoneUnorderedMap", %"class.v8::internal::ZoneUnorderedMap.36", %"class.v8::internal::ZoneUnorderedMap.52" }
%"class.v8::internal::compiler::turboshaft::ChangeTrackingSnapshotTable" = type { %"class.v8::internal::compiler::turboshaft::SnapshotTable.15" }
%"class.v8::internal::compiler::turboshaft::SnapshotTable.15" = type { ptr, %"class.v8::internal::ZoneDeque.16", %"class.v8::internal::ZoneDeque.22", %"class.v8::internal::ZoneVector.28", ptr, ptr, %"class.v8::internal::ZoneVector.29", %"class.v8::internal::ZoneVector", %"class.v8::internal::ZoneVector.30" }
%"class.v8::internal::ZoneDeque.16" = type { %"class.std::deque.17" }
%"class.std::deque.17" = type { %"class.std::_Deque_base.18" }
%"class.std::_Deque_base.18" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.19", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.19" = type { %"class.v8::internal::ZoneAllocator.20", ptr }
%"class.v8::internal::ZoneAllocator.20" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.21", %"struct.std::_Deque_iterator.21" }
%"struct.std::_Deque_iterator.21" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneDeque.22" = type { %"class.std::deque.23" }
%"class.std::deque.23" = type { %"class.std::_Deque_base.24" }
%"class.std::_Deque_base.24" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>::SnapshotData>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>::SnapshotData>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.25", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>::SnapshotData>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.25" = type { %"class.v8::internal::ZoneAllocator.26", ptr }
%"class.v8::internal::ZoneAllocator.26" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::wle::KeyData>::SnapshotData>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.27", %"struct.std::_Deque_iterator.27" }
%"struct.std::_Deque_iterator.27" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.28" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.29" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.30" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneUnorderedMap" = type { %"class.std::unordered_map" }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { %"struct.std::__detail::_Hashtable_alloc", ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hashtable_alloc" = type { %"struct.std::__detail::_Hashtable_ebo_helper.34" }
%"struct.std::__detail::_Hashtable_ebo_helper.34" = type { %"class.v8::internal::ZoneAllocator.35" }
%"class.v8::internal::ZoneAllocator.35" = type { ptr }
%"class.v8::internal::ZoneUnorderedMap.36" = type { %"class.std::unordered_map.37" }
%"class.std::unordered_map.37" = type { %"class.std::_Hashtable.38" }
%"class.std::_Hashtable.38" = type { %"struct.std::__detail::_Hashtable_alloc.49", ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hashtable_alloc.49" = type { %"struct.std::__detail::_Hashtable_ebo_helper.50" }
%"struct.std::__detail::_Hashtable_ebo_helper.50" = type { %"class.v8::internal::ZoneAllocator.51" }
%"class.v8::internal::ZoneAllocator.51" = type { ptr }
%"class.v8::internal::ZoneUnorderedMap.52" = type { %"class.std::unordered_map.53" }
%"class.std::unordered_map.53" = type { %"class.std::_Hashtable.54" }
%"class.std::_Hashtable.54" = type { %"struct.std::__detail::_Hashtable_alloc.67", ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hashtable_alloc.67" = type { %"struct.std::__detail::_Hashtable_ebo_helper.68" }
%"struct.std::__detail::_Hashtable_ebo_helper.68" = type { %"class.v8::internal::ZoneAllocator.69" }
%"class.v8::internal::ZoneAllocator.69" = type { ptr }
%"class.v8::internal::compiler::turboshaft::FixedBlockSidetable" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.70" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.70" = type { %"class.v8::internal::ZoneVector.71" }
%"class.v8::internal::ZoneVector.71" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.72" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.73" = type { ptr, ptr, ptr, ptr }
%"struct.v8::internal::compiler::turboshaft::VariableReducer<v8::internal::compiler::turboshaft::WasmLoadEliminationReducer<v8::internal::compiler::turboshaft::WasmGCTypedOptimizationReducer<v8::internal::compiler::turboshaft::EmitProjectionReducer<v8::internal::compiler::turboshaft::GenericReducerBase<v8::internal::compiler::turboshaft::TSReducerBase<v8::internal::compiler::turboshaft::StackBottom<v8::base::tmp::list1<v8::internal::compiler::turboshaft::GraphVisitor, v8::internal::compiler::turboshaft::WasmLoadEliminationReducer, v8::internal::compiler::turboshaft::WasmGCTypedOptimizationReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>>>>>>::VariableTable" = type { %"class.v8::internal::compiler::turboshaft::ChangeTrackingSnapshotTable.1040", %"class.v8::internal::ZoneIntrusiveSet" }
%"class.v8::internal::compiler::turboshaft::ChangeTrackingSnapshotTable.1040" = type { %"class.v8::internal::compiler::turboshaft::SnapshotTable.1041" }
%"class.v8::internal::compiler::turboshaft::SnapshotTable.1041" = type { ptr, %"class.v8::internal::ZoneDeque.1042", %"class.v8::internal::ZoneDeque.1048", %"class.v8::internal::ZoneVector.1054", ptr, ptr, %"class.v8::internal::ZoneVector.1055", %"class.v8::internal::ZoneVector", %"class.v8::internal::ZoneVector.1056" }
%"class.v8::internal::ZoneDeque.1042" = type { %"class.std::deque.1043" }
%"class.std::deque.1043" = type { %"class.std::_Deque_base.1044" }
%"class.std::_Deque_base.1044" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.1045", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.1045" = type { %"class.v8::internal::ZoneAllocator.1046", ptr }
%"class.v8::internal::ZoneAllocator.1046" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.1047", %"struct.std::_Deque_iterator.1047" }
%"struct.std::_Deque_iterator.1047" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneDeque.1048" = type { %"class.std::deque.1049" }
%"class.std::deque.1049" = type { %"class.std::_Deque_base.1050" }
%"class.std::_Deque_base.1050" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.1051", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.1051" = type { %"class.v8::internal::ZoneAllocator.1052", ptr }
%"class.v8::internal::ZoneAllocator.1052" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.1053", %"struct.std::_Deque_iterator.1053" }
%"struct.std::_Deque_iterator.1053" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.1054" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.1055" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.1056" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneIntrusiveSet" = type { %"class.v8::base::IntrusiveSet.base", [7 x i8] }
%"class.v8::base::IntrusiveSet.base" = type <{ %"class.v8::internal::ZoneVector.1057", i8 }>
%"class.v8::internal::ZoneVector.1057" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::GrowingBlockSidetable" = type { %"class.v8::internal::compiler::turboshaft::detail::GrowingSidetable.1058" }
%"class.v8::internal::compiler::turboshaft::detail::GrowingSidetable.1058" = type { %"class.v8::internal::ZoneVector.1059" }
%"class.v8::internal::ZoneVector.1059" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.1060" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneAbslFlatHashMap.1061" = type { %"class.absl::flat_hash_map.1062" }
%"class.absl::flat_hash_map.1062" = type { %"class.absl::container_internal::raw_hash_map.1063" }
%"class.absl::container_internal::raw_hash_map.1063" = type { %"class.absl::container_internal::raw_hash_set.1064" }
%"class.absl::container_internal::raw_hash_set.1064" = type { %"class.absl::container_internal::CompressedTuple.1065" }
%"class.absl::container_internal::CompressedTuple.1065" = type { %"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl.1066" }
%"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl.1066" = type { %"struct.absl::container_internal::internal_compressed_tuple::Storage.1067", %"struct.absl::container_internal::internal_compressed_tuple::Storage.1074" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.1067" = type { %"class.absl::container_internal::CommonFields" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.1074" = type { %"class.v8::internal::ZoneAllocator.14" }
%"class.v8::internal::compiler::turboshaft::FixedOpIndexSidetable" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable" = type { %"class.v8::internal::ZoneVector" }
%"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.1075" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1076" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1076" = type { %"class.v8::internal::ZoneVector.74" }
%"class.v8::internal::ZoneVector.74" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::BitVector" = type { i32, %"union.v8::internal::BitVector::DataStorage", ptr, ptr }
%"union.v8::internal::BitVector::DataStorage" = type { ptr }
%"class.v8::internal::compiler::turboshaft::FixedOpIndexSidetable.1077" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1078" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1078" = type { %"class.v8::internal::ZoneVector.1079" }
%"class.v8::internal::ZoneVector.1079" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.1080" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::TurboshaftAssemblerOpInterface" = type { %"class.v8::base::SmallVector.1081", [4 x %"class.v8::internal::MaybeHandle"], i8, %"class.v8::internal::compiler::turboshaft::OperationMatcher" }
%"class.v8::base::SmallVector.1081" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::internal::MaybeHandle" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::compiler::turboshaft::OperationMatcher" = type { ptr }
%"class.v8::internal::compiler::turboshaft::V.1082" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::base::SmallVector.1205" = type { ptr, ptr, ptr, [1024 x i8] }
%"class.v8::internal::compiler::turboshaft::LoopFinder" = type { ptr, ptr, %"class.v8::base::EnumSet", %"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.1167", %"class.v8::internal::ZoneUnorderedMap.1170", %"class.v8::internal::ZoneVector.1169" }
%"class.v8::base::EnumSet" = type { i8 }
%"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.1167" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1168" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1168" = type { %"class.v8::internal::ZoneVector.1169" }
%"class.v8::internal::ZoneUnorderedMap.1170" = type { %"class.std::unordered_map.1171" }
%"class.std::unordered_map.1171" = type { %"class.std::_Hashtable.1172" }
%"class.std::_Hashtable.1172" = type { %"struct.std::__detail::_Hashtable_alloc.1185", ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hashtable_alloc.1185" = type { %"struct.std::__detail::_Hashtable_ebo_helper.1186" }
%"struct.std::__detail::_Hashtable_ebo_helper.1186" = type { %"class.v8::internal::ZoneAllocator.1187" }
%"class.v8::internal::ZoneAllocator.1187" = type { ptr }
%"class.v8::internal::ZoneVector.1169" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::AnalyzerIterator" = type { ptr, ptr, i64, %"struct.v8::internal::compiler::turboshaft::AnalyzerIterator::StackNode", %"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.1188", %"class.v8::internal::ZoneVector.1191" }
%"struct.v8::internal::compiler::turboshaft::AnalyzerIterator::StackNode" = type { ptr, i64 }
%"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.1188" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1189" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.1189" = type { %"class.v8::internal::ZoneVector.1190" }
%"class.v8::internal::ZoneVector.1190" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.1191" = type { ptr, ptr, ptr, ptr }
%class.anon.1195 = type { ptr }
%class.anon.1193 = type { ptr }
%class.anon.1194 = type { ptr }
%"class.v8::base::SmallVector.1260" = type { ptr, ptr, ptr, [256 x i8] }
%class.anon.1215 = type { ptr }
%class.anon.1212 = type { ptr }
%"class.v8::internal::ZoneVector.1134" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::BlockIndex" = type { i32 }
%"struct.absl::container_internal::HashKey.1256" = type { ptr, ptr }
%"class.v8::base::SmallVector.1232" = type { ptr, ptr, ptr, [256 x i8] }
%"class.v8::base::SmallVector.1233" = type { ptr, ptr, ptr, [128 x i8] }
%class.anon.1645 = type { ptr }
%"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.1116" = type <{ %"struct.v8::internal::compiler::turboshaft::VariableData", %"class.v8::internal::compiler::turboshaft::OpIndex", i32, i32, [4 x i8] }>
%"struct.v8::internal::compiler::turboshaft::VariableData" = type { %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation", i8, %"class.v8::base::IntrusiveSetIndex" }
%"class.v8::base::IntrusiveSetIndex" = type { i64 }
%"struct.v8::internal::compiler::FeedbackSource" = type <{ %"class.v8::internal::Handle.446", %"class.v8::internal::FeedbackSlot", [4 x i8] }>
%"class.v8::internal::Handle.446" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::FeedbackSlot" = type { i32 }
%"class.v8::internal::compiler::ElementsTransition" = type { i8, %"class.v8::internal::compiler::MapRef", %"class.v8::internal::compiler::MapRef" }
%"class.v8::internal::compiler::MapRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::HeapObjectRef" = type { %"class.v8::internal::compiler::ObjectRef" }
%"class.v8::internal::compiler::ObjectRef" = type { ptr }
%"class.v8::internal::compiler::turboshaft::Type" = type { %union.anon.543, [2 x i64] }
%union.anon.543 = type { i64 }
%"class.v8::base::SmallVector.1266" = type { ptr, ptr, ptr, [32 x i8] }
%"class.v8::base::SmallVector.1267" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::base::SmallVector.1276" = type { ptr, ptr, ptr, [16 x i8] }
%"class.v8::base::SmallVector.1277" = type { ptr, ptr, ptr, [256 x i8] }
%"class.v8::base::SmallVector.1223" = type { ptr, ptr, ptr, [32 x i8] }
%"class.v8::internal::compiler::ElementsTransitionWithMultipleSources" = type { %"class.v8::internal::ZoneCompactSet", %"class.v8::internal::compiler::MapRef", %"struct.v8::internal::compiler::FeedbackSource" }
%"class.v8::internal::ZoneCompactSet" = type { %"class.v8::base::PointerWithPayload" }
%"class.v8::base::PointerWithPayload" = type { i64 }
%class.anon.1955 = type { ptr }
%"class.v8::base::Vector" = type { ptr, i64 }
%"class.v8::internal::compiler::turboshaft::OperationBuffer" = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.1958 = type { ptr }
%class.anon.1960 = type { ptr }
%class.anon.1962 = type { ptr }

$_ZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockE = comdat any

$_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = comdat any

$_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable4FindERKNS2_11StructGetOpE = comdat any

$_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv = comdat any

$_ZNK2v88internal8compiler10turboshaft11StructGetOp11outputs_repEv = comdat any

$_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable6InsertERKNS2_11StructGetOpENS2_7OpIndexE = comdat any

$_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE9HasKeyForENS2_7OpIndexE = comdat any

$_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable23InvalidateMaybeAliasingILNS4_18EntriesWithOffsetsE0EEEvv = comdat any

$_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE = comdat any

$_ZNSt10_HashtableIN2v88internal8compiler10turboshaft3wle17WasmMemoryAddressESt4pairIKS5_NS3_16SnapshotTableKeyINS3_7OpIndexENS4_7KeyDataEEEENS1_13ZoneAllocatorISC_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_ = comdat any

$_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv = comdat any

$_ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv = comdat any

$_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable6InsertENS2_7OpIndexEiNS0_4wasm15ModuleTypeIndexEhbS5_ = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_3wle7KeyDataEE8LogEntryEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS3_7KeyDataEEE = comdat any

$_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS3_3wle8BaseDataEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS9_EEES5_INSC_14_Node_iteratorIS9_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS3_3wle8BaseDataEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableIiSt4pairIKiN2v84base18DoublyThreadedListINS2_8internal8compiler10turboshaft16SnapshotTableKeyINS7_7OpIndexENS7_3wle7KeyDataEEENSA_16OffsetListTraitsEEEENS5_13ZoneAllocatorISF_EENSt8__detail10_Select1stESt8equal_toIiENS3_4hashIiEENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJSF_EEES0_INSI_14_Node_iteratorISF_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIiSt4pairIKiN2v84base18DoublyThreadedListINS2_8internal8compiler10turboshaft16SnapshotTableKeyINS7_7OpIndexENS7_3wle7KeyDataEEENSA_16OffsetListTraitsEEEENS5_13ZoneAllocatorISF_EENSt8__detail10_Select1stESt8equal_toIiENS3_4hashIiEENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJS8_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_reallocate_mapEmb = comdat any

$_ZNSt10_HashtableIN2v88internal8compiler10turboshaft3wle17WasmMemoryAddressESt4pairIKS5_NS3_16SnapshotTableKeyINS3_7OpIndexENS4_7KeyDataEEEENS1_13ZoneAllocatorISC_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJSC_EEES6_INSF_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIN2v88internal8compiler10turboshaft3wle17WasmMemoryAddressESt4pairIKS5_NS3_16SnapshotTableKeyINS3_7OpIndexENS4_7KeyDataEEEENS1_13ZoneAllocatorISC_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable10InvalidateEiNS0_4wasm15ModuleTypeIndexE = comdat any

$_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE = comdat any

$_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTable14TypesUnrelatedENS0_4wasm15ModuleTypeIndexES6_ = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS5_12SnapshotDataENS_4base6VectorIKNS5_8SnapshotEEERKT_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataEE4GrowEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJRPS7_mEEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotENS_4base6VectorIKNS7_8SnapshotEEEEUlNS2_16SnapshotTableKeyIS4_S6_EERKS4_SK_E_EERNS7_12SnapshotDataESG_RKT_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_3wle7KeyDataEE12SnapshotDataEE4GrowEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_3wle7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE16_M_push_back_auxIJRPS9_mEEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_3wle7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_reallocate_mapEmb = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8SnapshotEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_3wle7KeyDataEE8SnapshotEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MergePredecessorsIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotISK_EEvNSH_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSH_IKT0_EEEEUlSF_RSI_S11_E_EEvSR_SU_RSZ_ = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EERNS7_12SnapshotDataESR_SU_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE16_M_push_back_auxIJS6_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE17_M_reallocate_mapEmb = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm = comdat any

$_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m = comdat any

$_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSS_PFvSS_hmmE = comdat any

$_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft16CopyingPhaseImplIJNS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerEEE3RunEPNS2_12PipelineDataERNS2_5GraphEPNS0_4ZoneEb = comdat any

$_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE10VisitGraphILb0EEEvv = comdat any

$_ZN2v88internal8compiler10turboshaft5GraphC2EPNS0_4ZoneEm = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIjEEjLb1EEEmPKvPvm = comdat any

$_ZN4absl18container_internal20TransferNRelocatableILm4EEEvPvS2_S2_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSJ_PFvSJ_hmmE = comdat any

$_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEEC2Ev = comdat any

$_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEEC2Ev = comdat any

$_ZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzerC2EPNS2_12PipelineDataERNS2_5GraphEPNS0_4ZoneE = comdat any

$_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzerC2EPNS2_12PipelineDataERNS2_5GraphEPNS0_4ZoneE = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEEC2EPNS0_4ZoneE = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE16_M_push_back_auxIJRPS9_mEEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS1_4wasm9ValueTypeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_reallocate_mapEmb = comdat any

$_ZN2v88internal8compiler10turboshaft3wle22WasmMemoryContentTableC2EPNS2_12PipelineDataEPNS0_4ZoneERNS2_26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEEERNS2_21FixedOpIndexSidetableINS2_7OpIndexEEERNS2_5GraphE = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEEC2EPNS0_4ZoneE = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE17_M_initialize_mapEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEEC2EPNS0_4ZoneE = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_3wle7KeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_3wle7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS9_EEE17_M_initialize_mapEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEEC2EPNS0_4ZoneE = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJRPS8_mEEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE17_M_reallocate_mapEmb = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft10BlockIndexEEES8_Lb1EEEmPKvPvm = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE19transfer_n_slots_fnEPvST_ST_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSY_PFvSY_hmmE = comdat any

$_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE14VisitAllBlocksILb0EEEvv = comdat any

$_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE8FinalizeEv = comdat any

$_ZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer3RunEv = comdat any

$_ZN2v88internal8compiler10turboshaft10LoopFinderC2EPNS0_4ZoneEPKNS2_5GraphENS_4base7EnumSetINS3_11ConfigFlagsEaEE = comdat any

$_ZN2v88internal8compiler10turboshaft27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MergePredecessorsIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotISK_EEvNSH_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSH_IKT0_EEEEUlSF_RSI_S11_E_EEvSR_SU_RSZ_ = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_3wle7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS5_22WasmMemoryContentTableES4_S6_E16StartNewSnapshotIZNS2_27WasmLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S6_EENS_4base6VectorIKS4_EEE_EEvNSL_IKNS7_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSL_IKT0_EEEEUlSJ_RSM_S11_E_EERNS7_12SnapshotDataESR_SU_ = comdat any

$_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE10VisitBlockILb0EEEvPKNS2_5BlockE = comdat any

$_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE32ProcessWaitingCloningAndInliningILb0EEEvv = comdat any

$_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft5BlockELm128ESaIS7_EE4GrowEv = comdat any

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE14VisitBlockBodyILNSK_11CanHavePhisE1ELNSK_10ForCloningE1ELb0EEEvPKNS2_5BlockEi:bb.a
  %.sroa.0.0.copyload.i69 = phi i32 [ %.sroa.0.0.copyload.i69.pre, %.critedge.loopexit ], [ %.sroa.01.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.01.0.copyload.i68 = phi i32 [ %.sroa.01.0.copyload.i68.pre, %.critedge.loopexit ], [ %.sroa.01.0.copyload.i, %bb.a ] ; 2 uses
  %i.bc = phi ptr [ %.pre140, %.critedge.loopexit ], [ %.pre141, %bb.a ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !686
  %i.bf = lshr i32 %.sroa.0.0.copyload.i69, 4
  %i.bg = add nsw i32 %i.bf, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !noalias !686
  %i.bk = zext i16 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 3
  %i.bm = sub i32 %.sroa.0.0.copyload.i69, %i.bl  ; 2 uses
  %.not126.not134 = icmp eq i32 %.sroa.01.0.copyload.i68, %i.bm
  br i1 %.not126.not134, label %.critedge130, label %.lr.ph138

.lr.ph138:                                        ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2536
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph138, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread
  %.048136 = phi i32 [ 0, %.lr.ph138 ], [ %.250.ph, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread ] ; 8 uses
  %.sroa.0.0135 = phi i32 [ %.sroa.01.0.copyload.i68, %.lr.ph138 ], [ %i.dd, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread ] ; 5 uses
  %i.bo = load ptr, ptr %i.f, align 8, !nonnull !6, !align !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = zext i32 %.sroa.0.0135 to i64           ; 3 uses
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = inttoptr i64 %i.bt to ptr               ; 4 uses
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = icmp eq i8 %i.bv, 104
  br i1 %i.bw, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit: ; preds = %bb.i
  %i.ca = call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bu)
  %i.cb = and i32 %i.ca, 262144
  %.not127 = icmp eq i32 %i.cb, 0
  br i1 %.not127, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115_crit_edge

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %.pre144 = load ptr, ptr %i.f, align 8
  %.phi.trans.insert145 = getelementptr inbounds nuw i8, ptr %.pre144, i64 8
  %.pre146 = load ptr, ptr %.phi.trans.insert145, align 8
  %.pre147 = ptrtoint ptr %.pre146 to i64
  %.pre148 = add i64 %.pre147, %i.bs
  %.pre150 = inttoptr i64 %.pre148 to ptr
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115_crit_edge, %bb.i
  %.pre-phi151 = phi ptr [ %.pre150, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115_crit_edge ], [ %i.bu, %bb.i ]
  %i.cc = load i8, ptr %.pre-phi151, align 4
  %i.cd = icmp eq i8 %i.cc, 91
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115
  %i.ce = add nsw i32 %.048136, 1
  %i.cf = sext i32 %.048136 to i64
  %i.cg = load ptr, ptr %3, align 8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %.sroa.03.0.copyload = load i32, ptr %i.ch, align 4
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.sink.split

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread115
  %i.ci = load ptr, ptr %i.bn, align 8
  %.not128 = icmp eq ptr %i.ci, null
  br i1 %.not128, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE20VisitBlockTerminatorILb0EEEvRKNS2_9OperationEPKNS2_5BlockE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = call i32 @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22VisitOpNoMappingUpdateILb0EEENS2_7OpIndexESM_PKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(2400) %0, i32 %.sroa.0.0135, ptr noundef nonnull %1), !inline_history !202 ; 4 uses
  %i.ck = load ptr, ptr %i.f, align 8, !nonnull !6, !align !10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = add i64 %i.cn, %i.bs
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = icmp eq i8 %i.cq, 92
  br i1 %i.cr, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i: ; preds = %bb.l
  %i.cs = call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.cp), !inline_history !202
  %i.ct = extractvalue { ptr, i64 } %i.cs, 1
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = icmp ne i32 %i.cj, -1
  %or.cond.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.sink.split, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i: ; preds = %bb.l
  %.old.not.i = icmp eq i32 %i.cj, -1
  br i1 %.old.not.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.sink.split

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.sink.split: ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i, %bb.j
  %.sink = phi i32 [ %.sroa.03.0.copyload, %bb.j ], [ %i.cj, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i ], [ %i.cj, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i ]
  %.250.ph.ph = phi i32 [ %i.ce, %bb.j ], [ %.048136, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i ], [ %.048136, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i ]
  call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(2400) %0, i32 %.sroa.0.0135, i32 %.sink)
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.sink.split, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i, %bb.h, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %.250.ph = phi i32 [ %.048136, %bb.h ], [ %.048136, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit ], [ %.048136, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i ], [ %.048136, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i ], [ %.250.ph.ph, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread.sink.split ]
  %i.cw = load ptr, ptr %i.bd, align 8
  %i.cx = lshr i32 %.sroa.0.0135, 4
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 3
  %i.dd = add i32 %i.dc, %.sroa.0.0135            ; 2 uses
  %.not126.not = icmp eq i32 %i.dd, %i.bm
  br i1 %.not126.not, label %.critedge130, label %bb.h

.critedge130:                                     ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, %.critedge
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE20VisitBlockTerminatorILb0EEEvRKNS2_9OperationEPKNS2_5BlockE.exit, label %bb.m

bb.m:                                             ; preds = %.critedge130
  %i.dh = load ptr, ptr %i.f, align 8, !nonnull !6, !align !10 ; 2 uses
  %.sroa.0.0.copyload.i84 = load i32, ptr %i.h, align 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = lshr i32 %.sroa.0.0.copyload.i84, 4
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 3
  %i.dr = sub i32 %.sroa.0.0.copyload.i84, %i.dq  ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = zext i32 %i.dr to i64                   ; 2 uses
  %i.dw = add i64 %i.dv, %i.du
  %i.dx = inttoptr i64 %i.dw to ptr               ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 4
  %i.dz = icmp eq i8 %i.dy, 1
  br i1 %i.dz, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = icmp eq i32 %i.ed, 1
  br i1 %i.ee, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2360
  store ptr %i.eb, ptr %i.ef, align 8
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE20VisitBlockTerminatorILb0EEEvRKNS2_9OperationEPKNS2_5BlockE.exit

.thread.i:                                        ; preds = %bb.m, %bb.n
  %i.eg = call i32 @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22VisitOpNoMappingUpdateILb0EEENS2_7OpIndexESM_PKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(2400) %0, i32 %i.dr, ptr noundef nonnull %1), !inline_history !202 ; 3 uses
  %i.eh = load ptr, ptr %i.f, align 8, !nonnull !6, !align !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = add i64 %i.dv, %i.ek
  %i.em = inttoptr i64 %i.el to ptr               ; 2 uses
  %i.en = load i8, ptr %i.em, align 4
  %i.eo = icmp eq i8 %i.en, 92
  br i1 %i.eo, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i.i, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i.i

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i.i: ; preds = %.thread.i
  %i.ep = call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.em), !inline_history !202
  %i.eq = extractvalue { ptr, i64 } %i.ep, 1
  %i.er = icmp ne i64 %i.eq, 0
  %i.es = icmp ne i32 %i.eg, -1
  %or.cond.i.i = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond.i.i, label %bb.p, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE20VisitBlockTerminatorILb0EEEvRKNS2_9OperationEPKNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i.i: ; preds = %.thread.i
  %.old.not.i.i = icmp eq i32 %i.eg, -1
  br i1 %.old.not.i.i, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE20VisitBlockTerminatorILb0EEEvRKNS2_9OperationEPKNS2_5BlockE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i.i, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i.i
  call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(2400) %0, i32 %i.dr, i32 %i.eg), !inline_history !202
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE20VisitBlockTerminatorILb0EEEvRKNS2_9OperationEPKNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE20VisitBlockTerminatorILb0EEEvRKNS2_9OperationEPKNS2_5BlockE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit, %bb.k, %bb.p, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.thread.i.i, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i.i, %bb.o, %.critedge130
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

declare void @_ZN2v88internal8compiler15NodeOriginTable13SetNodeOriginEjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph17SwapWithCompanionEv(ptr noundef nonnull align 8 dereferenceable(328) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.1955, align 8           ; 4 uses
  %2 = alloca %"class.v8::base::Vector", align 8  ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::turboshaft::OperationBuffer", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph20GetOrCreateCompanionEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ult i64 %i.q, 328
  br i1 %i.r, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft5GraphEJRPS1_jEEEPT_DpOT0_.exit.i, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef 328) #23
  %.pre.i.i.i = load i64, ptr %i.o, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft5GraphEJRPS1_jEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft5GraphEJRPS1_jEEEPT_DpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = add i64 %i.s, 328
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = and i64 %i.l, 4294967295
  tail call void @_ZN2v88internal8compiler10turboshaft5GraphC2EPNS0_4ZoneEm(ptr noundef nonnull align 8 dereferenceable(328) %i.t, ptr noundef %i.v, i64 noundef %i.w)
  store ptr %i.t, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft5Graph20GetOrCreateCompanionEv.exit

_ZN2v88internal8compiler10turboshaft5Graph20GetOrCreateCompanionEv.exit: ; preds = %bb.a, %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft5GraphEJRPS1_jEEEPT_DpOT0_.exit.i
  %i.x = phi ptr [ %i.t, %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft5GraphEJRPS1_jEEEPT_DpOT0_.exit.i ], [ %i.b, %bb.a ] ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ag = icmp eq ptr %i.aa, null
  br i1 %i.ag, label %bb.d, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph20GetOrCreateCompanionEv.exit
  %i.ah = load ptr, ptr %i.z, align 8
  store ptr %i.ah, ptr %i.y, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft5Graph20GetOrCreateCompanionEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %i.ab, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr %i.al, ptr %i.ac, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %i.ae, align 8
  %i.ao = load ptr, ptr %i.z, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.e, label %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit

bb.e:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i
  store ptr %i.aa, ptr %i.z, align 8
  br label %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit

_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i, %bb.e
  store <2 x ptr> %i.ad, ptr %i.ai, align 8
  store ptr %i.af, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 2 uses
  %i.au = load i64, ptr %i.as, align 8
  %i.av = load i64, ptr %i.at, align 8
  store i64 %i.av, ptr %i.as, align 8
  store i64 %i.au, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 128 ; 3 uses
  %i.ay = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load <2 x ptr>, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.be = icmp eq ptr %i.ay, null
  br i1 %i.be, label %bb.f, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i11

bb.f:                                             ; preds = %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit
  %i.bf = load ptr, ptr %i.ax, align 8
  store ptr %i.bf, ptr %i.aw, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i11

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i11: ; preds = %bb.f, %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  store ptr %i.bh, ptr %i.az, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.ba, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 152 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  store ptr %i.bl, ptr %i.bc, align 8
  %i.bm = load ptr, ptr %i.ax, align 8
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.g, label %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit12

bb.g:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i11
  store ptr %i.ay, ptr %i.ax, align 8
  br label %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit12

_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit12: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i11, %bb.g
  store <2 x ptr> %i.bb, ptr %i.bg, align 8
  store ptr %i.bd, ptr %i.bk, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 160 ; 2 uses
  %i.bq = load ptr, ptr %i.bo, align 8
  %i.br = load ptr, ptr %i.bp, align 8
  store ptr %i.br, ptr %i.bo, align 8
  store ptr %i.bq, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 3 uses
  %i.bu = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bx = load <2 x ptr>, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %i.ca = icmp eq ptr %i.bu, null
  br i1 %i.ca, label %bb.h, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i

bb.h:                                             ; preds = %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit12
  %i.cb = load ptr, ptr %i.bt, align 8
  store ptr %i.cb, ptr %i.bs, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i: ; preds = %bb.h, %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.bv, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8
  store ptr %i.cf, ptr %i.bw, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  store ptr %i.ch, ptr %i.by, align 8
  %i.ci = load ptr, ptr %i.bt, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i
  store ptr %i.bu, ptr %i.bt, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i, %bb.i
  store <2 x ptr> %i.bx, ptr %i.cc, align 8
  store ptr %i.bz, ptr %i.cg, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 168 ; 3 uses
  %i.cm = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cp = load <2 x ptr>, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.cs = icmp eq ptr %i.cm, null
  br i1 %i.cs, label %bb.j, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit
  %i.ct = load ptr, ptr %i.cl, align 8
  store ptr %i.ct, ptr %i.ck, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i: ; preds = %bb.j, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  store ptr %i.cv, ptr %i.cn, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.cx = load ptr, ptr %i.cw, align 8
  store ptr %i.cx, ptr %i.co, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  store ptr %i.cz, ptr %i.cq, align 8
  %i.da = load ptr, ptr %i.cl, align 8
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.k, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit

bb.k:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i
  store ptr %i.cm, ptr %i.cl, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i, %bb.k
  store <2 x ptr> %i.cp, ptr %i.cu, align 8
  store ptr %i.cr, ptr %i.cy, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 200 ; 3 uses
  %i.de = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dh = load <2 x ptr>, ptr %i.df, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dk = icmp eq ptr %i.de, null
  br i1 %i.dk, label %bb.l, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit
  %i.dl = load ptr, ptr %i.dd, align 8
  store ptr %i.dl, ptr %i.dc, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i: ; preds = %bb.l, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  store ptr %i.dn, ptr %i.df, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.dp = load ptr, ptr %i.do, align 8
  store ptr %i.dp, ptr %i.dg, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 224 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  store ptr %i.dr, ptr %i.di, align 8
  %i.ds = load ptr, ptr %i.dd, align 8
  %i.dt = icmp eq ptr %i.ds, null
end_hunk_1
