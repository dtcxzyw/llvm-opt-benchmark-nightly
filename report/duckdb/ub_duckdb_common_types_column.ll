inline.NumInlined: 5552
inline.NumDeleted: 2531
begin_hunk_0

module asm ".globl _ZSt21ios_base_library_initv"

%"class.duckdb::ManagedResultSet" = type { %"class.duckdb::enable_shared_from_this", i8, %"class.duckdb::weak_ptr.6", %"class.duckdb::optional_ptr" }
%"class.duckdb::enable_shared_from_this" = type { %"class.duckdb::weak_ptr" }
%"class.duckdb::weak_ptr" = type { %"class.std::weak_ptr" }
%"class.std::weak_ptr" = type { %"class.std::__weak_ptr" }
%"class.std::__weak_ptr" = type { ptr, %"class.std::__weak_count" }
%"class.std::__weak_count" = type { ptr }
%"class.duckdb::weak_ptr.6" = type { %"class.std::weak_ptr.7" }
%"class.std::weak_ptr.7" = type { %"class.std::__weak_ptr.8" }
%"class.std::__weak_ptr.8" = type { ptr, %"class.std::__weak_count" }
%"class.duckdb::optional_ptr" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.57 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.57 = type { i64, [8 x i8] }
%"class.std::allocator.54" = type { i8 }
%"class.duckdb::shared_ptr.331" = type { %"class.std::shared_ptr.332" }
%"class.std::shared_ptr.332" = type { %"class.std::__shared_ptr.333" }
%"class.std::__shared_ptr.333" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.duckdb::shared_ptr.398" = type { %"class.std::shared_ptr.399" }
%"class.std::shared_ptr.399" = type { %"class.std::__shared_ptr.400" }
%"class.std::__shared_ptr.400" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::BufferHandle" = type { %"class.duckdb::shared_ptr.398", %"class.duckdb::optional_ptr.429" }
%"class.duckdb::optional_ptr.429" = type { ptr }
%"struct.duckdb::BlockMetaData" = type { i32, i32, %"class.duckdb::shared_ptr.398", %"class.duckdb::weak_ptr.402" }
%"class.duckdb::weak_ptr.402" = type { %"class.std::weak_ptr.403" }
%"class.std::weak_ptr.403" = type { %"class.std::__weak_ptr.404" }
%"class.std::__weak_ptr.404" = type { ptr, %"class.std::__weak_count" }
%"class.duckdb::AllocatedData" = type { %"class.duckdb::optional_ptr.450", ptr, i64 }
%"class.duckdb::optional_ptr.450" = type { ptr }
%"class.duckdb::vector.505" = type { %"class.std::vector.506" }
%"class.std::vector.506" = type { %"struct.std::_Vector_base.507" }
%"struct.std::_Vector_base.507" = type { %"struct.std::_Vector_base<duckdb::LogicalType, std::allocator<duckdb::LogicalType>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::LogicalType, std::allocator<duckdb::LogicalType>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::LogicalType, std::allocator<duckdb::LogicalType>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::LogicalType, std::allocator<duckdb::LogicalType>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::ColumnDataCopyFunction" = type { ptr, %"class.duckdb::vector.517" }
%"class.duckdb::vector.517" = type { %"class.std::vector.518" }
%"class.std::vector.518" = type { %"struct.std::_Vector_base.519" }
%"struct.std::_Vector_base.519" = type { %"struct.std::_Vector_base<duckdb::ColumnDataCopyFunction, std::allocator<duckdb::ColumnDataCopyFunction>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::ColumnDataCopyFunction, std::allocator<duckdb::ColumnDataCopyFunction>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::ColumnDataCopyFunction, std::allocator<duckdb::ColumnDataCopyFunction>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::ColumnDataCopyFunction, std::allocator<duckdb::ColumnDataCopyFunction>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::shared_ptr.501" = type { %"class.std::shared_ptr.502" }
%"class.std::shared_ptr.502" = type { %"class.std::__shared_ptr.503" }
%"class.std::__shared_ptr.503" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::unique_ptr.524" = type { %"class.std::unique_ptr.525" }
%"class.std::unique_ptr.525" = type { %"struct.std::__uniq_ptr_data.526" }
%"struct.std::__uniq_ptr_data.526" = type { %"class.std::__uniq_ptr_impl.527" }
%"class.std::__uniq_ptr_impl.527" = type { %"class.std::tuple.528" }
%"class.std::tuple.528" = type { %"struct.std::_Tuple_impl.529" }
%"struct.std::_Tuple_impl.529" = type { %"struct.std::_Head_base.532" }
%"struct.std::_Head_base.532" = type { ptr }
%"class.duckdb::optional_idx" = type { i64 }
%"class.duckdb::Value" = type { %"struct.duckdb::LogicalType", i8, %"union.duckdb::Value::Val", %"class.duckdb::shared_ptr.562" }
%"struct.duckdb::LogicalType" = type { i8, i8, %"class.duckdb::shared_ptr" }
%"class.duckdb::shared_ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"union.duckdb::Value::Val" = type { %"struct.duckdb::hugeint_t" }
%"struct.duckdb::hugeint_t" = type { i64, i64 }
%"class.duckdb::shared_ptr.562" = type { %"class.std::shared_ptr.563" }
%"class.std::shared_ptr.563" = type { %"class.std::__shared_ptr.564" }
%"class.std::__shared_ptr.564" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::ColumnDataScanState" = type { %"class.duckdb::shared_ptr.331", %"struct.duckdb::ChunkManagementState", i64, i64, i64, i64, i8, %"class.duckdb::vector.578" }
%"struct.duckdb::ChunkManagementState" = type <{ %"class.std::unordered_map.430", i8, [7 x i8] }>
%"class.std::unordered_map.430" = type { %"class.std::_Hashtable.431" }
%"class.std::_Hashtable.431" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.duckdb::vector.578" = type { %"class.std::vector.579" }
%"class.std::vector.579" = type { %"struct.std::_Vector_base.580" }
%"struct.std::_Vector_base.580" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::unique_ptr.584" = type { %"class.std::unique_ptr.585" }
%"class.std::unique_ptr.585" = type { %"struct.std::__uniq_ptr_data.586" }
%"struct.std::__uniq_ptr_data.586" = type { %"class.std::__uniq_ptr_impl.587" }
%"class.std::__uniq_ptr_impl.587" = type { %"class.std::tuple.588" }
%"class.std::tuple.588" = type { %"struct.std::_Tuple_impl.589" }
%"struct.std::_Tuple_impl.589" = type { %"struct.std::_Head_base.592" }
%"struct.std::_Head_base.592" = type { ptr }
%"class.duckdb::ColumnDataChunkIterationHelper" = type { ptr, %"class.duckdb::vector.578" }
%"class.duckdb::ColumnDataRowIterationHelper" = type { ptr }
%"class.duckdb::ColumnDataRowIterationHelper::ColumnDataRowIterator" = type { ptr, %"struct.duckdb::ColumnDataScanState", %"class.duckdb::shared_ptr.595", %"class.duckdb::ColumnDataRow" }
%"class.duckdb::shared_ptr.595" = type { %"class.std::shared_ptr.596" }
%"class.std::shared_ptr.596" = type { %"class.std::__shared_ptr.597" }
%"class.std::__shared_ptr.597" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::ColumnDataRow" = type { ptr, i64, i64 }
%"struct.duckdb::ChunkMetaData" = type <{ %"class.duckdb::vector.469", %"class.std::unordered_set.475", i16, [6 x i8] }>
%"class.duckdb::vector.469" = type { %"class.std::vector.470" }
%"class.std::vector.470" = type { %"struct.std::_Vector_base.471" }
%"struct.std::_Vector_base.471" = type { %"struct.std::_Vector_base<duckdb::VectorDataIndex, std::allocator<duckdb::VectorDataIndex>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::VectorDataIndex, std::allocator<duckdb::VectorDataIndex>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::VectorDataIndex, std::allocator<duckdb::VectorDataIndex>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::VectorDataIndex, std::allocator<duckdb::VectorDataIndex>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unordered_set.475" = type { %"class.std::_Hashtable.476" }
%"class.std::_Hashtable.476" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.duckdb::ValidityMask" = type { %"struct.duckdb::TemplatedValidityMask" }
%"struct.duckdb::TemplatedValidityMask" = type { ptr, %"class.duckdb::shared_ptr.457", i64 }
%"class.duckdb::shared_ptr.457" = type { %"class.std::shared_ptr.458" }
%"class.std::shared_ptr.458" = type { %"class.std::__shared_ptr.459" }
%"class.std::__shared_ptr.459" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::string_t" = type { %union.anon.465 }
%union.anon.465 = type { %struct.anon }
%struct.anon = type { i32, [4 x i8], ptr }
%"struct.std::__detail::_AllocNode.977" = type { ptr }
%"struct.duckdb::VectorMetaData" = type { i32, i32, i16, %"class.duckdb::vector.451", %"struct.duckdb::VectorChildIndex", %"struct.duckdb::VectorDataIndex" }
%"class.duckdb::vector.451" = type { %"class.std::vector.452" }
%"class.std::vector.452" = type { %"struct.std::_Vector_base.453" }
%"struct.std::_Vector_base.453" = type { %"struct.std::_Vector_base<duckdb::SwizzleMetaData, std::allocator<duckdb::SwizzleMetaData>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::SwizzleMetaData, std::allocator<duckdb::SwizzleMetaData>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::SwizzleMetaData, std::allocator<duckdb::SwizzleMetaData>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::SwizzleMetaData, std::allocator<duckdb::SwizzleMetaData>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::VectorChildIndex" = type { i64 }
%"struct.duckdb::VectorDataIndex" = type { i64 }
%"struct.duckdb::ColumnDataMetaData" = type { ptr, ptr, ptr, ptr, %"struct.duckdb::VectorDataIndex", i64 }
%"struct.duckdb::UnifiedVectorFormat" = type <{ ptr, ptr, %"struct.duckdb::ValidityMask", %"struct.duckdb::SelectionVector", i8, [7 x i8] }>
%"struct.duckdb::SelectionVector" = type { ptr, %"class.duckdb::shared_ptr.605" }
%"class.duckdb::shared_ptr.605" = type { %"class.std::shared_ptr.606" }
%"class.std::shared_ptr.606" = type { %"class.std::__shared_ptr.607" }
%"class.std::__shared_ptr.607" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::ConsecutiveChildListInfo" = type { i8, i8, %"struct.duckdb::list_entry_t" }
%"struct.duckdb::list_entry_t" = type { i64, i64 }
%"class.duckdb::Vector" = type { i8, %"struct.duckdb::LogicalType", ptr, %"struct.duckdb::ValidityMask", %"class.duckdb::shared_ptr.461", %"class.duckdb::shared_ptr.461" }
%"class.duckdb::shared_ptr.461" = type { %"class.std::shared_ptr.462" }
%"class.std::shared_ptr.462" = type { %"class.std::__shared_ptr.463" }
%"class.std::__shared_ptr.463" = type { ptr, %"class.std::__shared_count" }
%"class.std::vector.864" = type { %"struct.std::_Vector_base.865" }
%"struct.std::_Vector_base.865" = type { %"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::ColumnDataAppendState" = type { %"struct.duckdb::ChunkManagementState", %"class.duckdb::vector.599" }
%"class.duckdb::vector.599" = type { %"class.std::vector.600" }
%"class.std::vector.600" = type { %"struct.std::_Vector_base.601" }
%"struct.std::_Vector_base.601" = type { %"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::ColumnDataRowCollection" = type { %"class.duckdb::vector.566", %"class.duckdb::vector.572", %"struct.duckdb::ColumnDataScanState" }
%"class.duckdb::vector.566" = type { %"class.std::vector.567" }
%"class.std::vector.567" = type { %"struct.std::_Vector_base.568" }
%"struct.std::_Vector_base.568" = type { %"struct.std::_Vector_base<duckdb::ColumnDataRow, std::allocator<duckdb::ColumnDataRow>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::ColumnDataRow, std::allocator<duckdb::ColumnDataRow>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::ColumnDataRow, std::allocator<duckdb::ColumnDataRow>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::ColumnDataRow, std::allocator<duckdb::ColumnDataRow>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::vector.572" = type { %"class.std::vector.573" }
%"class.std::vector.573" = type { %"struct.std::_Vector_base.574" }
%"struct.std::_Vector_base.574" = type { %"struct.std::_Vector_base<duckdb::unique_ptr<duckdb::DataChunk>, std::allocator<duckdb::unique_ptr<duckdb::DataChunk>>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::unique_ptr<duckdb::DataChunk>, std::allocator<duckdb::unique_ptr<duckdb::DataChunk>>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::unique_ptr<duckdb::DataChunk>, std::allocator<duckdb::unique_ptr<duckdb::DataChunk>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::unique_ptr<duckdb::DataChunk>, std::allocator<duckdb::unique_ptr<duckdb::DataChunk>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::DataChunk" = type { %"class.duckdb::vector.550", i64, i64, i64, %"class.duckdb::vector.556" }
%"class.duckdb::vector.550" = type { %"class.std::vector.551" }
%"class.std::vector.551" = type { %"struct.std::_Vector_base.552" }
%"struct.std::_Vector_base.552" = type { %"struct.std::_Vector_base<duckdb::Vector, std::allocator<duckdb::Vector>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::Vector, std::allocator<duckdb::Vector>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::Vector, std::allocator<duckdb::Vector>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::Vector, std::allocator<duckdb::Vector>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::vector.556" = type { %"class.std::vector.557" }
%"class.std::vector.557" = type { %"struct.std::_Vector_base.558" }
%"struct.std::_Vector_base.558" = type { %"struct.std::_Vector_base<duckdb::VectorCache, std::allocator<duckdb::VectorCache>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::VectorCache, std::allocator<duckdb::VectorCache>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::VectorCache, std::allocator<duckdb::VectorCache>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::VectorCache, std::allocator<duckdb::VectorCache>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::unordered_multiset" = type { %"class.std::_Hashtable.634" }
%"class.std::_Hashtable.634" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.duckdb::vector.651" = type { %"class.std::vector.652" }
%"class.std::vector.652" = type { %"struct.std::_Vector_base.653" }
%"struct.std::_Vector_base.653" = type { %"struct.std::_Vector_base<duckdb::shared_ptr<duckdb::StringHeap>, std::allocator<duckdb::shared_ptr<duckdb::StringHeap>>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::shared_ptr<duckdb::StringHeap>, std::allocator<duckdb::shared_ptr<duckdb::StringHeap>>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::shared_ptr<duckdb::StringHeap>, std::allocator<duckdb::shared_ptr<duckdb::StringHeap>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::shared_ptr<duckdb::StringHeap>, std::allocator<duckdb::shared_ptr<duckdb::StringHeap>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::shared_ptr.546" = type { %"class.std::shared_ptr.547" }
%"class.std::shared_ptr.547" = type { %"class.std::__shared_ptr.548" }
%"class.std::__shared_ptr.548" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::vector.657" = type { %"class.std::vector.658" }
%"class.std::vector.658" = type { %"struct.std::_Vector_base.659" }
%"struct.std::_Vector_base.659" = type { %"struct.std::_Vector_base<duckdb::vector<duckdb::Value>, std::allocator<duckdb::vector<duckdb::Value>>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::vector<duckdb::Value>, std::allocator<duckdb::vector<duckdb::Value>>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::vector<duckdb::Value>, std::allocator<duckdb::vector<duckdb::Value>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::vector<duckdb::Value>, std::allocator<duckdb::vector<duckdb::Value>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator" = type { %"class.duckdb::optional_ptr.594", %"struct.duckdb::ColumnDataScanState", %"class.duckdb::unique_ptr.584", i64 }
%"class.duckdb::optional_ptr.594" = type { ptr }
%"class.duckdb::unique_ptr.725" = type { %"class.std::unique_ptr.726" }
%"class.std::unique_ptr.726" = type { %"struct.std::__uniq_ptr_data.727" }
%"struct.std::__uniq_ptr_data.727" = type { %"class.std::__uniq_ptr_impl.728" }
%"class.std::__uniq_ptr_impl.728" = type { %"class.std::tuple.729" }
%"class.std::tuple.729" = type { %"struct.std::_Tuple_impl.730" }
%"struct.std::_Tuple_impl.730" = type { %"struct.std::_Head_base.733" }
%"struct.std::_Head_base.733" = type { ptr }
%"struct.std::__detail::_AllocNode.983" = type { ptr }
%"class.duckdb::unique_ptr.782" = type { %"class.std::unique_ptr.783" }
%"class.std::unique_ptr.783" = type { %"struct.std::__uniq_ptr_data.784" }
%"struct.std::__uniq_ptr_data.784" = type { %"class.std::__uniq_ptr_impl.785" }
%"class.std::__uniq_ptr_impl.785" = type { %"class.std::tuple.786" }
%"class.std::tuple.786" = type { %"struct.std::_Tuple_impl.787" }
%"struct.std::_Tuple_impl.787" = type { %"struct.std::_Head_base.790" }
%"struct.std::_Head_base.790" = type { ptr }
%"struct.duckdb::ExceptionFormatValue" = type { i8, double, %"struct.duckdb::hugeint_t", %"class.std::__cxx11::basic_string" }
%"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::BufferHandle>, std::allocator<std::pair<const unsigned long, duckdb::BufferHandle>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node" = type { ptr, ptr }
%"struct.std::_Hashtable<duckdb::Value, duckdb::Value, std::allocator<duckdb::Value>, std::__detail::_Identity, duckdb::ValueResultEquals, duckdb::ValueHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, false>>::_Scoped_node" = type { ptr, ptr }
%"class.duckdb::vector.663" = type { %"class.std::vector.664" }
%"class.std::vector.664" = type { %"struct.std::_Vector_base.665" }
%"struct.std::_Vector_base.665" = type { %"struct.std::_Vector_base<duckdb::Value, std::allocator<duckdb::Value>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::Value, std::allocator<duckdb::Value>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::Value, std::allocator<duckdb::Value>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::Value, std::allocator<duckdb::Value>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }

$_ZNSt6vectorIN6duckdb13AllocatedDataESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN6duckdb13BlockMetaDataESaIS1_EED2Ev = comdat any

$_ZN6duckdb16ManagedResultSetD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK6duckdb10shared_ptrINS_16DatabaseInstanceELb1EEdeEv = comdat any

$_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev = comdat any

$_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv = comdat any

$_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev = comdat any

$_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm = comdat any

$_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EE4backEv = comdat any

$_ZNK6duckdb12optional_idx8GetIndexEv = comdat any

$_ZN6duckdb13BlockMetaDataD2Ev = comdat any

$_ZN6duckdb6vectorINS_13AllocatedDataELb1ESaIS1_EE4backEv = comdat any

$_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv = comdat any

$_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EED2Ev = comdat any

$_ZNSt6vectorIN6duckdb22ColumnDataCopyFunctionESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev = comdat any

$_ZN6duckdb22ColumnDataCopyFunctionD2Ev = comdat any

$_ZN6duckdb9make_uniqINS_27ColumnDataCollectionSegmentEJRNS_10shared_ptrINS_19ColumnDataAllocatorELb1EEERNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_ = comdat any

$_ZNSt10unique_ptrIN6duckdb27ColumnDataCollectionSegmentESt14default_deleteIS1_EED2Ev = comdat any

$_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv = comdat any

$_ZNK6duckdb10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZN6duckdb12optional_idxC2Em = comdat any

$_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm = comdat any

$_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev = comdat any

$_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZN6duckdb19ColumnDataScanStateD2Ev = comdat any

$_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev = comdat any

$_ZN6duckdb6vectorINS_13ColumnDataRowELb1ESaIS1_EEixEm = comdat any

$_ZNK6duckdb6vectorINS_13ColumnDataRowELb1ESaIS1_EEixEm = comdat any

$_ZSt4swapIN6duckdb19ColumnDataScanStateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_ = comdat any

$_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEdeEv = comdat any

$_ZN6duckdb10shared_ptrINS_9DataChunkELb1EED2Ev = comdat any

$_ZNK6duckdb10shared_ptrINS_9DataChunkELb1EEptEv = comdat any

$_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv = comdat any

$_ZNK6duckdb10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZN6duckdb21TemplatedValidityMaskImED2Ev = comdat any

$_ZN6duckdb6vectorINS_22ColumnDataCopyFunctionELb1ESaIS1_EEixEm = comdat any

$_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm = comdat any

$_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZN6duckdb19UnifiedVectorFormatD2Ev = comdat any

$_ZN6duckdb8EnumUtil8ToStringINS_12PhysicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_ = comdat any

$_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_ = comdat any

$_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EEixEm = comdat any

$_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EE4backEv = comdat any

$_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm = comdat any

$_ZN6duckdb21ColumnDataAppendStateD2Ev = comdat any

$_ZN6duckdb6vectorImLb1ESaImEEixEm = comdat any

$_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm = comdat any

$_ZNK6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm = comdat any

$_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm = comdat any

$_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEdeEv = comdat any

$_ZNSt18unordered_multisetIN6duckdb5ValueENS0_17ValueHashFunctionENS0_17ValueResultEqualsESaIS1_EED2Ev = comdat any

$_ZN6duckdb23ColumnDataRowCollectionD2Ev = comdat any

$_ZN6duckdb10shared_ptrINS_10StringHeapELb1EED2Ev = comdat any

$_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm = comdat any

$_ZN6duckdb6vectorINS_10shared_ptrINS_10StringHeapELb1EEELb1ESaIS3_EEixEm = comdat any

$_ZNSt6vectorIN6duckdb10shared_ptrINS0_10StringHeapELb1EEESaIS3_EED2Ev = comdat any

$_ZN6duckdb30ColumnDataChunkIterationHelper5beginEv = comdat any

$_ZN6duckdb6vectorINS0_INS_5ValueELb1ESaIS1_EEELb1ESaIS3_EEixEm = comdat any

$_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS2_INS_5ValueELb1ESaIS3_EEELb1ESaIS5_EEEEEvtPKcRKT_ = comdat any

$_ZNSt6vectorIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEESaIS4_EED2Ev = comdat any

$_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EED2Ev = comdat any

$_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm = comdat any

$_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm = comdat any

$_ZN6duckdb13ChunkMetaDataD2Ev = comdat any

$_ZNK6duckdb6vectorImLb1ESaImEEixEm = comdat any

$_ZNK6duckdb10shared_ptrINS_10StringHeapELb1EEptEv = comdat any

$_ZN6duckdb20ChunkManagementStateD2Ev = comdat any

$_ZNK6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm = comdat any

$_ZN6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm = comdat any

$_ZN6duckdb15SelectionVector10InitializeEm = comdat any

$_ZN6duckdb32PartitionedColumnDataAppendState34GetPartitionIndexIfSinglePartitionEb = comdat any

$_ZN6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm = comdat any

$_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm = comdat any

$_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZN6duckdb21PartitionedColumnData14AppendInternalILb1EEEvRNS_32PartitionedColumnDataAppendStateERNS_9DataChunkE = comdat any

$_ZN6duckdb21PartitionedColumnData14AppendInternalILb0EEEvRNS_32PartitionedColumnDataAppendStateERNS_9DataChunkE = comdat any

$_ZN6duckdb21PartitionedColumnData17BuildPartitionSelILb1EEEvRNS_32PartitionedColumnDataAppendStateEm = comdat any

$_ZN6duckdb21PartitionedColumnData17BuildPartitionSelILb0EEEvRNS_32PartitionedColumnDataAppendStateEm = comdat any

$_ZN6duckdb6vectorINS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm = comdat any

$_ZNK6duckdb10shared_ptrINS_29PartitionColumnDataAllocatorsELb1EEptEv = comdat any

$_ZN6duckdb6vectorINS_10shared_ptrINS_19ColumnDataAllocatorELb1EEELb1ESaIS3_EE4backEv = comdat any

$_ZNK6duckdb21PartitionedColumnData10BufferSizeEv = comdat any

$_ZNK6duckdb21PartitionedColumnData29InitializeAppendStateInternalERNS_32PartitionedColumnDataAppendStateE = comdat any

$_ZN6duckdb21PartitionedColumnData23ComputePartitionIndicesERNS_32PartitionedColumnDataAppendStateERNS_9DataChunkE = comdat any

$_ZNK6duckdb21PartitionedColumnData17MaxPartitionIndexEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv = comdat any

$_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb22ColumnDataCopyFunctionEEEvT_S5_ = comdat any

$_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_ = comdat any

$_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev = comdat any

$_ZN6duckdb27ColumnDataCollectionSegmentD2Ev = comdat any

$_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev = comdat any
end_hunk_0
begin_hunk_1_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_:bb.a
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1139
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !129  ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.v = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.c ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = icmp ult i32 %i.x, %i.z
  %spec.select.i.i.i.i.i = select i1 %i.aa, ptr %i.v, ptr %.sroa.02.010.i.i.i.i.i ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.sroa.02.2.i.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !1137
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1139
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i.i7.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit13.i.i, label %.lr.ph.i.i.i8.i.i

.lr.ph.i.i.i8.i.i:                                ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, %.lr.ph.i.i.i8.i.i
  %i.an = phi ptr [ %i.at, %.lr.ph.i.i.i8.i.i ], [ %i.am, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i = phi ptr [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ], [ %i.al, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = icmp ult i32 %i.ap, %i.ar
  %spec.select.i.i.i10.i.i = select i1 %i.as, ptr %i.an, ptr %.sroa.02.010.i.i.i9.i.i ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i11.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit13.i.i, label %.lr.ph.i.i.i8.i.i, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit13.i.i: ; preds = %.lr.ph.i.i.i8.i.i, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i
  %.sroa.02.2.i.i.i12.i.i = phi ptr [ %i.al, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ], [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = icmp ult i32 %i.ad, %i.av
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %bb.b, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit13.i.i
  %.0.i.i = phi i1 [ %i.m, %bb.b ], [ %i.aw, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit13.i.i ]
  %spec.select = select i1 %.0.i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select
  %i.ay = getelementptr inbounds [16 x i8], ptr %0, i64 %.036
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.ax, i64 12, i1 false), !tbaa.struct !1159
  %i.az = icmp slt i64 %spec.select, %i.b
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !1559

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit ] ; 5 uses
  %i.ba = and i64 %2, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.bc = add nsw i64 %2, -2
  %i.bd = ashr exact i64 %i.bc, 1
  %i.be = icmp eq i64 %.0.lcssa, %i.bd
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = shl nsw i64 %.0.lcssa, 1
  %i.bg = or disjoint i64 %i.bf, 1                ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bi, ptr noundef nonnull align 8 dereferenceable(12) %i.bh, i64 12, i1 false), !tbaa.struct !1159
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.bg, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr %3, i32 %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr %3, i32 %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = zext i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.020 = phi i64 [ %1, %.lr.ph ], [ %.0921, %bb.e ] ; 4 uses
  %.0921.in = add nsw i64 %.020, -1
  %.0921 = sdiv i64 %.0921.in, 2                  ; 4 uses
  %i.d = getelementptr inbounds [16 x i8], ptr %0, i64 %.0921 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1137 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !284  ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !284    ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %bb.e, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1139
  %i.l = zext i32 %i.k to i64
  %i.m = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129  ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.q = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = icmp ult i32 %i.s, %i.u
  %spec.select.i.i.i.i.i = select i1 %i.v, ptr %i.q, ptr %.sroa.02.010.i.i.i.i.i ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !129  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.02.2.i.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i.i7.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit, label %.lr.ph.i.i.i8.i.i

.lr.ph.i.i.i8.i.i:                                ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, %.lr.ph.i.i.i8.i.i
  %i.ad = phi ptr [ %i.aj, %.lr.ph.i.i.i8.i.i ], [ %i.ac, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i = phi ptr [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ], [ %i.ab, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = icmp ult i32 %i.af, %i.ah
  %spec.select.i.i.i10.i.i = select i1 %i.ai, ptr %i.ad, ptr %.sroa.02.010.i.i.i9.i.i ; 2 uses
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i11.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit, label %.lr.ph.i.i.i8.i.i, !llvm.loop !1140

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit: ; preds = %.lr.ph.i.i.i8.i.i, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i
  %.sroa.02.2.i.i.i12.i.i = phi ptr [ %i.ab, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ], [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = icmp ult i32 %i.y, %i.al
  br i1 %i.am, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit
  %i.an = getelementptr inbounds [16 x i8], ptr %0, i64 %.020
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.an, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !1159
  %i.ao = icmp sgt i64 %.0921, %2
  br i1 %i.ao, label %bb.b, label %.critedge, !llvm.loop !1560

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit, %bb.e, %bb.c, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.020, %bb.c ], [ %.0921, %bb.e ], [ %.020, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit ]
  %i.ap = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  store ptr %3, ptr %i.ap, align 8, !tbaa !247
  %.sroa.4.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %4, ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1137   ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !1137   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1139
  %i.i = zext i32 %i.h to i64
  %i.j = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129  ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.n = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp ult i32 %i.p, %i.r
  %spec.select.i.i.i.i.i = select i1 %i.s, ptr %i.n, ptr %.sroa.02.010.i.i.i.i.i ; 2 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !129  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.sroa.02.2.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = load ptr, ptr %2, align 8, !tbaa !1137
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1139
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i.i7.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, label %.lr.ph.i.i.i8.i.i

.lr.ph.i.i.i8.i.i:                                ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, %.lr.ph.i.i.i8.i.i
  %i.af = phi ptr [ %i.al, %.lr.ph.i.i.i8.i.i ], [ %i.ae, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i = phi ptr [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ], [ %i.ad, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = icmp ult i32 %i.ah, %i.aj
  %spec.select.i.i.i10.i.i = select i1 %i.ak, ptr %i.af, ptr %.sroa.02.010.i.i.i9.i.i ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i11.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, label %.lr.ph.i.i.i8.i.i, !llvm.loop !1140

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %.lr.ph.i.i.i8.i.i, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i
  %.sroa.02.2.i.i.i12.i.i = phi ptr [ %i.ad, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ], [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = icmp ult i32 %i.v, %i.an
  br i1 %i.ao, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge97, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge97: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.pre98 = load ptr, ptr %2, align 8, !tbaa !1137 ; 2 uses
  %.pre99 = load ptr, ptr %.pre98, align 8, !tbaa !284
  br label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !1137  ; 2 uses
  %.pre94 = load ptr, ptr %.pre, align 8, !tbaa !284
  br label %bb.m

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge97, %bb.b
  %i.ap = phi ptr [ %.pre99, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge97 ], [ %i.d, %bb.b ] ; 2 uses
  %i.aq = phi ptr [ %.pre98, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge97 ], [ %i.c, %bb.b ]
  %i.ar = load ptr, ptr %3, align 8, !tbaa !1137
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !284 ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = icmp ult ptr %i.ap, %i.as
  br i1 %i.at, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1139
  %i.ax = zext i32 %i.aw to i64
  %i.ay = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i28 = icmp eq ptr %i.bb, null
  br i1 %.not9.i.i.i.i.i28, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i33, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i29
  %i.bc = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i29 ], [ %i.bb, %bb.f ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i30 = phi ptr [ %spec.select.i.i.i.i.i31, %.lr.ph.i.i.i.i.i29 ], [ %i.ba, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i30, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = icmp ult i32 %i.be, %i.bg
  %spec.select.i.i.i.i.i31 = select i1 %i.bh, ptr %i.bc, ptr %.sroa.02.010.i.i.i.i.i30 ; 2 uses
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i32, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i33, label %.lr.ph.i.i.i.i.i29, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i33: ; preds = %.lr.ph.i.i.i.i.i29, %bb.f
  %.sroa.02.2.i.i.i.i.i34 = phi ptr [ %i.ba, %bb.f ], [ %spec.select.i.i.i.i.i31, %.lr.ph.i.i.i.i.i29 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i34, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = load ptr, ptr %3, align 8, !tbaa !1137
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1139
  %i.bp = zext i32 %i.bo to i64
  %i.bq = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 noundef %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i35 = icmp eq ptr %i.bt, null
  br i1 %.not9.i.i.i7.i.i35, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42, label %.lr.ph.i.i.i8.i.i36

.lr.ph.i.i.i8.i.i36:                              ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i33, %.lr.ph.i.i.i8.i.i36
  %i.bu = phi ptr [ %i.ca, %.lr.ph.i.i.i8.i.i36 ], [ %i.bt, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i33 ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i37 = phi ptr [ %spec.select.i.i.i10.i.i38, %.lr.ph.i.i.i8.i.i36 ], [ %i.bs, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i33 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i37, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = icmp ult i32 %i.bw, %i.by
  %spec.select.i.i.i10.i.i38 = select i1 %i.bz, ptr %i.bu, ptr %.sroa.02.010.i.i.i9.i.i37 ; 2 uses
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i39 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i11.i.i39, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42, label %.lr.ph.i.i.i8.i.i36, !llvm.loop !1140

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42: ; preds = %.lr.ph.i.i.i8.i.i36, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i33
  %.sroa.02.2.i.i.i12.i.i41 = phi ptr [ %i.bs, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i33 ], [ %spec.select.i.i.i10.i.i38, %.lr.ph.i.i.i8.i.i36 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i41, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = icmp ult i32 %i.bk, %i.cc
  br i1 %i.cd, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42._crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42
  %.pre100 = load ptr, ptr %3, align 8, !tbaa !1137
  %.pre101 = load ptr, ptr %.pre100, align 8, !tbaa !284
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42
  %.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1159
  %.sroa.0.0.vec.extract = shufflevector <16 x i8> %.sroa.0.0.copyload, <16 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <12 x i8> %.sroa.0.0.vec.extract, ptr %2, align 8
  br label %bb.v

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42._crit_edge, %bb.e
  %i.ce = phi ptr [ %.pre101, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit42._crit_edge ], [ %i.as, %bb.e ] ; 2 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !1137  ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !284 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.cg, %i.ce
  br i1 %.not.i.i43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = icmp ult ptr %i.cg, %i.ce
  br i1 %i.ch, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !1139
  %i.cl = zext i32 %i.ck to i64
  %i.cm = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 noundef %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i45 = icmp eq ptr %i.cp, null
  br i1 %.not9.i.i.i.i.i45, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i50, label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i46
  %i.cq = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i46 ], [ %i.cp, %bb.j ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i47 = phi ptr [ %spec.select.i.i.i.i.i48, %.lr.ph.i.i.i.i.i46 ], [ %i.co, %bb.j ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i47, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = icmp ult i32 %i.cs, %i.cu
  %spec.select.i.i.i.i.i48 = select i1 %i.cv, ptr %i.cq, ptr %.sroa.02.010.i.i.i.i.i47 ; 2 uses
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i49 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i49, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i50, label %.lr.ph.i.i.i.i.i46, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i50: ; preds = %.lr.ph.i.i.i.i.i46, %bb.j
  %.sroa.02.2.i.i.i.i.i51 = phi ptr [ %i.co, %bb.j ], [ %spec.select.i.i.i.i.i48, %.lr.ph.i.i.i.i.i46 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i51, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = load ptr, ptr %3, align 8, !tbaa !1137
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !1139
  %i.dd = zext i32 %i.dc to i64
  %i.de = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 noundef %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i52 = icmp eq ptr %i.dh, null
  br i1 %.not9.i.i.i7.i.i52, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit59, label %.lr.ph.i.i.i8.i.i53

.lr.ph.i.i.i8.i.i53:                              ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i50, %.lr.ph.i.i.i8.i.i53
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i.i8.i.i53 ], [ %i.dh, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i50 ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i54 = phi ptr [ %spec.select.i.i.i10.i.i55, %.lr.ph.i.i.i8.i.i53 ], [ %i.dg, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i50 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i54, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = icmp ult i32 %i.dk, %i.dm
  %spec.select.i.i.i10.i.i55 = select i1 %i.dn, ptr %i.di, ptr %.sroa.02.010.i.i.i9.i.i54 ; 2 uses
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i56 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i11.i.i56, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit59, label %.lr.ph.i.i.i8.i.i53, !llvm.loop !1140

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit59: ; preds = %.lr.ph.i.i.i8.i.i53, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i50
  %.sroa.02.2.i.i.i12.i.i58 = phi ptr [ %i.dg, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i50 ], [ %spec.select.i.i.i10.i.i55, %.lr.ph.i.i.i8.i.i53 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i58, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = icmp ult i32 %i.cy, %i.dq
  br i1 %i.dr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit59
  %.sroa.0121.0.copyload = load <16 x i8>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !1159
  %.sroa.0121.0.vec.extract = shufflevector <16 x i8> %.sroa.0121.0.copyload, <16 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <12 x i8> %.sroa.0121.0.vec.extract, ptr %3, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit59
  %.sroa.0122.0.copyload = load <16 x i8>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !1159
  %.sroa.0122.0.vec.extract = shufflevector <16 x i8> %.sroa.0122.0.copyload, <16 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <12 x i8> %.sroa.0122.0.vec.extract, ptr %1, align 8
  br label %bb.v

bb.m:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge, %bb.b
  %i.ds = phi ptr [ %.pre94, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge ], [ %i.b, %bb.b ] ; 2 uses
  %i.dt = phi ptr [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge ], [ %i.a, %bb.b ]
  %i.du = load ptr, ptr %3, align 8, !tbaa !1137
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !284 ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.ds, %i.dv
  br i1 %.not.i.i60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = icmp ult ptr %i.ds, %i.dv
  br i1 %i.dw, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !1139
  %i.ea = zext i32 %i.dz to i64
  %i.eb = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 noundef %i.ea)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i62 = icmp eq ptr %i.ee, null
  br i1 %.not9.i.i.i.i.i62, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i67, label %.lr.ph.i.i.i.i.i63

.lr.ph.i.i.i.i.i63:                               ; preds = %bb.o, %.lr.ph.i.i.i.i.i63
  %i.ef = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i63 ], [ %i.ee, %bb.o ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i64 = phi ptr [ %spec.select.i.i.i.i.i65, %.lr.ph.i.i.i.i.i63 ], [ %i.ed, %bb.o ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i64, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = icmp ult i32 %i.eh, %i.ej
  %spec.select.i.i.i.i.i65 = select i1 %i.ek, ptr %i.ef, ptr %.sroa.02.010.i.i.i.i.i64 ; 2 uses
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i66, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i67, label %.lr.ph.i.i.i.i.i63, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i67: ; preds = %.lr.ph.i.i.i.i.i63, %bb.o
  %.sroa.02.2.i.i.i.i.i68 = phi ptr [ %i.ed, %bb.o ], [ %spec.select.i.i.i.i.i65, %.lr.ph.i.i.i.i.i63 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i68, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = load ptr, ptr %3, align 8, !tbaa !1137
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1139
  %i.es = zext i32 %i.er to i64
  %i.et = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 noundef %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i69 = icmp eq ptr %i.ew, null
  br i1 %.not9.i.i.i7.i.i69, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76, label %.lr.ph.i.i.i8.i.i70

.lr.ph.i.i.i8.i.i70:                              ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i67, %.lr.ph.i.i.i8.i.i70
  %i.ex = phi ptr [ %i.fd, %.lr.ph.i.i.i8.i.i70 ], [ %i.ew, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i67 ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i71 = phi ptr [ %spec.select.i.i.i10.i.i72, %.lr.ph.i.i.i8.i.i70 ], [ %i.ev, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i67 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i71, i64 8
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = icmp ult i32 %i.ez, %i.fb
  %spec.select.i.i.i10.i.i72 = select i1 %i.fc, ptr %i.ex, ptr %.sroa.02.010.i.i.i9.i.i71 ; 2 uses
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i73 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i11.i.i73, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76, label %.lr.ph.i.i.i8.i.i70, !llvm.loop !1140

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76: ; preds = %.lr.ph.i.i.i8.i.i70, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i67
  %.sroa.02.2.i.i.i12.i.i75 = phi ptr [ %i.ev, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i67 ], [ %spec.select.i.i.i10.i.i72, %.lr.ph.i.i.i8.i.i70 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i75, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fg = icmp ult i32 %i.en, %i.ff
  br i1 %i.fg, label %bb.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76._crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76
  %.pre95 = load ptr, ptr %3, align 8, !tbaa !1137
  %.pre96 = load ptr, ptr %.pre95, align 8, !tbaa !284
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76
  %.sroa.0123.0.copyload = load <16 x i8>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !1159
  %.sroa.0123.0.vec.extract = shufflevector <16 x i8> %.sroa.0123.0.copyload, <16 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <12 x i8> %.sroa.0123.0.vec.extract, ptr %1, align 8
  br label %bb.v

bb.q:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76._crit_edge, %bb.n
  %i.fh = phi ptr [ %.pre96, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit76._crit_edge ], [ %i.dv, %bb.n ] ; 2 uses
  %i.fi = load ptr, ptr %2, align 8, !tbaa !1137  ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !284 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.fj, %i.fh
  br i1 %.not.i.i77, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fk = icmp ult ptr %i.fj, %i.fh
  br i1 %i.fk, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !1139
  %i.fo = zext i32 %i.fn to i64
  %i.fp = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 noundef %i.fo)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i79 = icmp eq ptr %i.fs, null
  br i1 %.not9.i.i.i.i.i79, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i84, label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %bb.s, %.lr.ph.i.i.i.i.i80
  %i.ft = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i80 ], [ %i.fs, %bb.s ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i81 = phi ptr [ %spec.select.i.i.i.i.i82, %.lr.ph.i.i.i.i.i80 ], [ %i.fr, %bb.s ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i81, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fy = icmp ult i32 %i.fv, %i.fx
  %spec.select.i.i.i.i.i82 = select i1 %i.fy, ptr %i.ft, ptr %.sroa.02.010.i.i.i.i.i81 ; 2 uses
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i83, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i84, label %.lr.ph.i.i.i.i.i80, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i84: ; preds = %.lr.ph.i.i.i.i.i80, %bb.s
  %.sroa.02.2.i.i.i.i.i85 = phi ptr [ %i.fr, %bb.s ], [ %spec.select.i.i.i.i.i82, %.lr.ph.i.i.i.i.i80 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i85, i64 8
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = load ptr, ptr %3, align 8, !tbaa !1137
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !1139
  %i.gg = zext i32 %i.gf to i64
  %i.gh = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 noundef %i.gg)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i86 = icmp eq ptr %i.gk, null
  br i1 %.not9.i.i.i7.i.i86, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit93, label %.lr.ph.i.i.i8.i.i87

.lr.ph.i.i.i8.i.i87:                              ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i84, %.lr.ph.i.i.i8.i.i87
  %i.gl = phi ptr [ %i.gr, %.lr.ph.i.i.i8.i.i87 ], [ %i.gk, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i84 ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i88 = phi ptr [ %spec.select.i.i.i10.i.i89, %.lr.ph.i.i.i8.i.i87 ], [ %i.gj, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i84 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i88, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3
  %i.gq = icmp ult i32 %i.gn, %i.gp
  %spec.select.i.i.i10.i.i89 = select i1 %i.gq, ptr %i.gl, ptr %.sroa.02.010.i.i.i9.i.i88 ; 2 uses
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i90 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i11.i.i90, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit93, label %.lr.ph.i.i.i8.i.i87, !llvm.loop !1140

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit93: ; preds = %.lr.ph.i.i.i8.i.i87, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i84
  %.sroa.02.2.i.i.i12.i.i92 = phi ptr [ %i.gj, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i84 ], [ %spec.select.i.i.i10.i.i89, %.lr.ph.i.i.i8.i.i87 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i92, i64 8
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = icmp ult i32 %i.gb, %i.gt
  br i1 %i.gu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit93
  %.sroa.0124.0.copyload = load <16 x i8>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !1159
  %.sroa.0124.0.vec.extract = shufflevector <16 x i8> %.sroa.0124.0.copyload, <16 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <12 x i8> %.sroa.0124.0.vec.extract, ptr %3, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit93
  %.sroa.0125.0.copyload = load <16 x i8>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1159
  %.sroa.0125.0.vec.extract = shufflevector <16 x i8> %.sroa.0125.0.copyload, <16 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <12 x i8> %.sroa.0125.0.vec.extract, ptr %2, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.u, %bb.t, %bb.g, %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %bb.a
  %.sroa.063.0 = phi ptr [ %0, %bb.a ], [ %i.fb, %bb.x ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.x ]
  %i.n = load ptr, ptr %2, align 8, !tbaa !1137   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !284 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %bb.b
  %.sroa.063.1 = phi ptr [ %.sroa.063.0, %bb.b ], [ %i.ch, %bb.l ] ; 8 uses
  %i.q = load ptr, ptr %.sroa.063.1, align 8, !tbaa !1137 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %.pre
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ult ptr %i.r, %.pre
  br i1 %i.s, label %bb.l, label %.preheader

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.063.1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1139
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !452
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !454  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.w, ptr %i.i, align 8, !tbaa !103
  store i64 %i.ad, ptr %i.j, align 8, !tbaa !103
  %.not.i.i.i25 = icmp ugt i64 %i.ad, %i.w
  br i1 %.not.i.i.i25, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32, label %.noexc.i50, !prof !104

.noexc.i50:                                       ; preds = %bb.e
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 55, ptr %i.c, align 8, !tbaa !103
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc51 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26 ; 3 uses

.noexc51:                                         ; preds = %.noexc.i50
  store ptr %i.ag, ptr %5, align 8, !tbaa !72
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ag, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !361
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc51
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26: ; preds = %.noexc.i50
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.f, %.noexc51
  %.0.i.i.i29 = phi i1 [ false, %bb.f ], [ true, %.noexc51 ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.af
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.am) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i29, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i29, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.sink = phi ptr [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46 ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39 ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47 ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46 ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i26 ]
  call void @__cxa_free_exception(ptr %.sink) #24
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31
  %common.resume.op = phi { ptr, i32 } [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i31 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %i.w
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32, %.lr.ph.i.i.i.i.i
  %i.as = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.ar, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32 ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.aq, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = icmp ult i32 %i.au, %i.aw
  %spec.select.i.i.i.i.i = select i1 %i.ax, ptr %i.as, ptr %.sroa.02.010.i.i.i.i.i ; 2 uses
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32
  %.sroa.02.2.i.i.i.i.i = phi ptr [ %i.aq, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit32 ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.m, align 8, !tbaa !1139
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !452
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !454 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %i.bc, ptr %i.k, align 8, !tbaa !103
  store i64 %i.bi, ptr %i.l, align 8, !tbaa !103
  %.not.i.i.i = icmp ugt i64 %i.bi, %i.bc
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit, label %.noexc.i, !prof !104

.noexc.i:                                         ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bk, ptr %6, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 55, ptr %i.d, align 8, !tbaa !103
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bl, ptr %6, align 8, !tbaa !72
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !103 ; 3 uses
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bl, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !361
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume.sink.split

bb.j:                                             ; preds = %bb.i, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.i ], [ true, %.noexc ] ; 2 uses
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !72    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bk
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.br) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

bb.k:                                             ; preds = %bb.i
  unreachable

end_hunk_1
begin_hunk_2_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_SC_T0_:bb.a
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.cm, ptr %i.e, align 8, !tbaa !103
  store i64 %i.cs, ptr %i.f, align 8, !tbaa !103
  %.not.i.i.i41 = icmp ugt i64 %i.cs, %i.cm
  br i1 %.not.i.i.i41, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48, label %.noexc.i58, !prof !104

.noexc.i58:                                       ; preds = %bb.o
  %i.ct = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.cu, ptr %3, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 55, ptr %i.a, align 8, !tbaa !103
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc59 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42 ; 3 uses

.noexc59:                                         ; preds = %.noexc.i58
  store ptr %i.cv, ptr %3, align 8, !tbaa !72
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.cv, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !361
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc59
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.r unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i42: ; preds = %.noexc.i58
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume.sink.split

bb.q:                                             ; preds = %bb.p, %.noexc59
  %.0.i.i.i45 = phi i1 [ false, %bb.p ], [ true, %.noexc59 ] ; 2 uses
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.db = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cu
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.db) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i45, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i45, label %common.resume.sink.split, label %common.resume

bb.r:                                             ; preds = %bb.p
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %i.co, i64 %i.cm
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i10 = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i.i.i.i10, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15, label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48, %.lr.ph.i.i.i.i.i11
  %i.dh = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i11 ], [ %i.dg, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48 ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i12 = phi ptr [ %spec.select.i.i.i.i.i13, %.lr.ph.i.i.i.i.i11 ], [ %i.df, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i12, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = icmp ult i32 %i.dj, %i.dl
  %spec.select.i.i.i.i.i13 = select i1 %i.dm, ptr %i.dh, ptr %.sroa.02.010.i.i.i.i.i12 ; 2 uses
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i14, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15, label %.lr.ph.i.i.i.i.i11, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15: ; preds = %.lr.ph.i.i.i.i.i11, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48
  %.sroa.02.2.i.i.i.i.i16 = phi ptr [ %i.df, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit48 ], [ %spec.select.i.i.i.i.i13, %.lr.ph.i.i.i.i.i11 ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i16, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = load ptr, ptr %.sroa.0.1, align 8, !tbaa !1137 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !1139
  %i.du = zext i32 %i.dt to i64                   ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !452
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !454 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.du, ptr %i.g, align 8, !tbaa !103
  store i64 %i.eb, ptr %i.h, align 8, !tbaa !103
  %.not.i.i.i33 = icmp ugt i64 %i.eb, %i.du
  br i1 %.not.i.i.i33, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40, label %.noexc.i54, !prof !104

.noexc.i54:                                       ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15
  %i.ec = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ed, ptr %4, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 55, ptr %i.b, align 8, !tbaa !103
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc55 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34 ; 3 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.ee, ptr %4, align 8, !tbaa !72
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ee, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !361
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  store i8 0, ptr %i.eh, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc55
  invoke void @__cxa_throw(ptr nonnull %i.ec, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.u unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i34: ; preds = %.noexc.i54
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume.sink.split

bb.t:                                             ; preds = %bb.s, %.noexc55
  %.0.i.i.i37 = phi i1 [ false, %bb.s ], [ true, %.noexc55 ] ; 2 uses
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ek = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ed
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.ek) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.0.i.i.i37, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.0.i.i.i37, label %common.resume.sink.split, label %common.resume

bb.u:                                             ; preds = %bb.s
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40: ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.em = getelementptr inbounds nuw [88 x i8], ptr %i.dx, i64 %i.du
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i17 = icmp eq ptr %i.ep, null
  br i1 %.not9.i.i.i7.i.i17, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24, label %.lr.ph.i.i.i8.i.i18

.lr.ph.i.i.i8.i.i18:                              ; preds = %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40, %.lr.ph.i.i.i8.i.i18
  %i.eq = phi ptr [ %i.ew, %.lr.ph.i.i.i8.i.i18 ], [ %i.ep, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40 ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i19 = phi ptr [ %spec.select.i.i.i10.i.i20, %.lr.ph.i.i.i8.i.i18 ], [ %i.eo, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i19, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = icmp ult i32 %i.es, %i.eu
  %spec.select.i.i.i10.i.i20 = select i1 %i.ev, ptr %i.eq, ptr %.sroa.02.010.i.i.i9.i.i19 ; 2 uses
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i21 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i11.i.i21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24, label %.lr.ph.i.i.i8.i.i18, !llvm.loop !1140

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24: ; preds = %.lr.ph.i.i.i8.i.i18, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40
  %.sroa.02.2.i.i.i12.i.i23 = phi ptr [ %i.eo, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit40 ], [ %spec.select.i.i.i10.i.i20, %.lr.ph.i.i.i8.i.i18 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i23, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = icmp ult i32 %i.dp, %i.ey
  br i1 %i.ez, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit24
  %i.fa = icmp ult ptr %.sroa.063.1, %.sroa.0.1
  br i1 %i.fa, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  ret ptr %.sroa.063.1

bb.x:                                             ; preds = %bb.v
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.063.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.063.1, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.1, i64 12, i1 false), !tbaa.struct !1159
  %.sroa.0.0.vec.extract = shufflevector <16 x i8> %.sroa.0.0.copyload, <16 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <12 x i8> %.sroa.0.0.vec.extract, ptr %.sroa.0.1, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.063.1, i64 16
  br label %bb.b, !llvm.loop !1563
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.032 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.0.032, %1
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.035 = phi ptr [ %.sroa.0.032, %.lr.ph ], [ %.sroa.0.0, %bb.t ] ; 7 uses
  %.pn34 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.035, %bb.t ] ; 4 uses
  %i.j = load ptr, ptr %.sroa.0.035, align 8, !tbaa !1137 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !284  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !1137
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %.pn34, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1139
  %i.r = zext i32 %i.q to i64
  %i.s = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !129  ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.w = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = icmp ult i32 %i.y, %i.aa
  %spec.select.i.i.i.i.i = select i1 %i.ab, ptr %i.w, ptr %.sroa.02.010.i.i.i.i.i ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.02.2.i.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = load ptr, ptr %0, align 8, !tbaa !1137
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !1139
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i7.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i.i7.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, label %.lr.ph.i.i.i8.i.i

.lr.ph.i.i.i8.i.i:                                ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i, %.lr.ph.i.i.i8.i.i
  %i.an = phi ptr [ %i.at, %.lr.ph.i.i.i8.i.i ], [ %i.am, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i9.i.i = phi ptr [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ], [ %i.al, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i9.i.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = icmp ult i32 %i.ap, %i.ar
  %spec.select.i.i.i10.i.i = select i1 %i.as, ptr %i.an, ptr %.sroa.02.010.i.i.i9.i.i ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i11.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i11.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, label %.lr.ph.i.i.i8.i.i, !llvm.loop !1140

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %.lr.ph.i.i.i8.i.i, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i
  %.sroa.02.2.i.i.i12.i.i = phi ptr [ %i.al, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i ], [ %spec.select.i.i.i10.i.i, %.lr.ph.i.i.i8.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i12.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = icmp ult i32 %i.ae, %i.av
  br i1 %i.aw, label %bb.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.sroa.03.0.copyload.i.pre = load ptr, ptr %.sroa.0.035, align 8, !tbaa !247
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.0.035, align 8
  %i.ax = ptrtoint ptr %.sroa.0.035 to i64
  %i.ay = sub i64 %i.ax, %i.i                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 4                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.f, label %bb.g, !prof !104

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn34, i64 32
  %i.bc = sub nsw i64 0, %i.az
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.e
  %i.be = icmp eq i64 %i.ay, 16
  br i1 %i.be, label %bb.h, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn34, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !1159
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.0.0.vec.extract = shufflevector <16 x i8> %.sroa.0.0.copyload, <16 x i8> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  store <12 x i8> %.sroa.0.0.vec.extract, ptr %0, align 8
  br label %bb.t

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge, %bb.c
  %.sroa.03.0.copyload.i = phi ptr [ %.sroa.03.0.copyload.i.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit._crit_edge ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn34, i64 24
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 48
  %i.bh = zext i32 %.sroa.5.0.copyload.i to i64   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 56
  br label %bb.j

bb.j:                                             ; preds = %bb.s, %bb.i
  %.sroa.07.0.i = phi ptr [ %.sroa.0.035, %bb.i ], [ %.sroa.0.0.i, %bb.s ] ; 5 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -16 ; 3 uses
  %i.bj = load ptr, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !284 ; 2 uses
  %i.bk = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1137 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !284 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.s, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb18ColumnDataConsumer14ChunkReferenceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

bb.l:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !452
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !454 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.bh, ptr %i.c, align 8, !tbaa !103
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !103
  %.not.i.i.i8 = icmp ugt i64 %i.bs, %i.bh
  br i1 %.not.i.i.i8, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit15, label %.noexc.i17, !prof !104

.noexc.i17:                                       ; preds = %bb.l
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 55, ptr %i.a, align 8, !tbaa !103
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9 ; 3 uses

.noexc18:                                         ; preds = %.noexc.i17
  store ptr %i.bv, ptr %2, align 8, !tbaa !72
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !361
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc18
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.o unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9: ; preds = %.noexc.i17
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume.sink.split

bb.n:                                             ; preds = %bb.m, %.noexc18
  %.0.i.i.i12 = phi i1 [ false, %bb.m ], [ true, %.noexc18 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.cb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i.i12, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i.i12, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.sink = phi ptr [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9 ]
  call void @__cxa_free_exception(ptr %.sink) #24
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14 ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.m
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit15: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cd = getelementptr inbounds nuw [88 x i8], ptr %i.bo, i64 %i.bh
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit15, %.lr.ph.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %i.cg, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit15 ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cf, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit15 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.i.i.i, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = icmp ult i32 %i.cj, %i.cl
  %spec.select.i.i.i.i.i.i = select i1 %i.cm, ptr %i.ch, ptr %.sroa.02.010.i.i.i.i.i.i ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1140

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit15
  %.sroa.02.2.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit15 ], [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i.i.i.i, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.cr = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !1139
  %i.ct = zext i32 %i.cs to i64                   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !452
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !454 ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ct, ptr %i.e, align 8, !tbaa !103
  store i64 %i.da, ptr %i.f, align 8, !tbaa !103
  %.not.i.i.i7 = icmp ugt i64 %i.da, %i.ct
  br i1 %.not.i.i.i7, label %_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit, label %.noexc.i, !prof !104

.noexc.i:                                         ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i.i
  %i.db = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.dc, ptr %3, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 55, ptr %i.b, align 8, !tbaa !103
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.dd, ptr %3, align 8, !tbaa !72
  %i.de = load i64, ptr %i.b, align 8, !tbaa !103 ; 3 uses
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dd, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !361
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.db, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.r unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume.sink.split

bb.q:                                             ; preds = %bb.p, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.p ], [ true, %.noexc ] ; 2 uses
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dj = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.dc
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.dj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

bb.r:                                             ; preds = %bb.p
  unreachable

_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm.exit: ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit.i.i.i
end_hunk_2
