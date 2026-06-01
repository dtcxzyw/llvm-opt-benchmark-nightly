inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0
%"struct.std::_Head_base.405" = type { ptr }
%"class.duckdb::shared_ptr.920" = type { %"class.std::shared_ptr.921" }
%"class.std::shared_ptr.921" = type { %"class.std::__shared_ptr.922" }
%"class.std::__shared_ptr.922" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::date_t" = type { i32 }
%"class.duckdb::RandomEngine" = type { %"class.std::mutex", %"class.duckdb::unique_ptr.412" }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.duckdb::unique_ptr.412" = type { %"class.std::unique_ptr.413" }
%"class.std::unique_ptr.413" = type { %"struct.std::__uniq_ptr_data.414" }
%"struct.std::__uniq_ptr_data.414" = type { %"class.std::__uniq_ptr_impl.415" }
%"class.std::__uniq_ptr_impl.415" = type { %"class.std::tuple.416" }
%"class.std::tuple.416" = type { %"struct.std::_Tuple_impl.417" }
%"struct.std::_Tuple_impl.417" = type { %"struct.std::_Head_base.420" }
%"struct.std::_Head_base.420" = type { ptr }
%"struct.duckdb::UnifiedVectorFormat" = type <{ ptr, ptr, %"struct.duckdb::ValidityMask", %"struct.duckdb::SelectionVector", i8, [7 x i8] }>
%"class.duckdb::unique_ptr.421" = type { %"class.std::unique_ptr.422" }
%"class.std::unique_ptr.422" = type { %"struct.std::__uniq_ptr_data.423" }
%"struct.std::__uniq_ptr_data.423" = type { %"class.std::__uniq_ptr_impl.424" }
%"class.std::__uniq_ptr_impl.424" = type { %"class.std::tuple.425" }
%"class.std::tuple.425" = type { %"struct.std::_Tuple_impl.426" }
%"struct.std::_Tuple_impl.426" = type { %"struct.std::_Head_base.429" }
%"struct.std::_Head_base.429" = type { ptr }
%"class.duckdb::unique_ptr.430" = type { %"class.std::unique_ptr.431" }
%"class.std::unique_ptr.431" = type { %"struct.std::__uniq_ptr_data.432" }
%"struct.std::__uniq_ptr_data.432" = type { %"class.std::__uniq_ptr_impl.433" }
%"class.std::__uniq_ptr_impl.433" = type { %"class.std::tuple.434" }
%"class.std::tuple.434" = type { %"struct.std::_Tuple_impl.435" }
%"struct.std::_Tuple_impl.435" = type { %"struct.std::_Head_base.438" }
%"struct.std::_Head_base.438" = type { ptr }
%"struct.duckdb::dtime_t" = type { i64 }
%"struct.duckdb::TimestampComponents" = type { i32, i32, i32, i32, i32, i32, i32 }
%"struct.duckdb::timestamp_t" = type { i64 }
%"struct.duckdb::ListSegmentFunctions" = type { ptr, ptr, ptr, i16, %"class.duckdb::vector.440" }
%"class.duckdb::vector.440" = type { %"class.std::vector.441" }
%"class.std::vector.441" = type { %"struct.std::_Vector_base.442" }
%"struct.std::_Vector_base.442" = type { %"struct.std::_Vector_base<duckdb::ListSegmentFunctions, std::allocator<duckdb::ListSegmentFunctions>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::ListSegmentFunctions, std::allocator<duckdb::ListSegmentFunctions>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::ListSegmentFunctions, std::allocator<duckdb::ListSegmentFunctions>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::ListSegmentFunctions, std::allocator<duckdb::ListSegmentFunctions>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::vector.461" = type { %"class.std::vector.462" }
%"class.std::vector.462" = type { %"struct.std::_Vector_base.463" }
%"struct.std::_Vector_base.463" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, duckdb::LogicalType>, std::allocator<std::pair<std::__cxx11::basic_string<char>, duckdb::LogicalType>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, duckdb::LogicalType>, std::allocator<std::pair<std::__cxx11::basic_string<char>, duckdb::LogicalType>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, duckdb::LogicalType>, std::allocator<std::pair<std::__cxx11::basic_string<char>, duckdb::LogicalType>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, duckdb::LogicalType>, std::allocator<std::pair<std::__cxx11::basic_string<char>, duckdb::LogicalType>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::LinkedList" = type { i64, ptr, ptr }
%"struct.duckdb::timestamp_ns_t" = type { %"struct.duckdb::timestamp_t" }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.duckdb::ColumnList" = type <{ %"class.duckdb::vector.274", %"class.std::unordered_map.823", %"class.duckdb::vector.146", i8, [7 x i8] }>
%"class.duckdb::vector.274" = type { %"class.std::vector.275" }
%"class.std::vector.275" = type { %"struct.std::_Vector_base.276" }
%"struct.std::_Vector_base.276" = type { %"struct.std::_Vector_base<duckdb::ColumnDefinition, std::allocator<duckdb::ColumnDefinition>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::ColumnDefinition, std::allocator<duckdb::ColumnDefinition>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::ColumnDefinition, std::allocator<duckdb::ColumnDefinition>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::ColumnDefinition, std::allocator<duckdb::ColumnDefinition>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unordered_map.823" = type { %"class.std::_Hashtable.824" }
%"class.std::_Hashtable.824" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.duckdb::vector.146" = type { %"class.std::vector.147" }
%"class.std::vector.147" = type { %"struct.std::_Vector_base.148" }
%"struct.std::_Vector_base.148" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::ParserOptions" = type <{ i8, i8, [6 x i8], i64, %"class.duckdb::optional_ptr.1189", i8, [7 x i8] }>
%"class.duckdb::optional_ptr.1189" = type { ptr }
%"class.duckdb::vector.522" = type { %"class.std::vector.523" }
%"class.std::vector.523" = type { %"struct.std::_Vector_base.524" }
%"struct.std::_Vector_base.524" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.525" = type { i8 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.duckdb::shared_ptr.1098" = type { %"class.std::shared_ptr.1099" }
%"class.std::shared_ptr.1099" = type { %"class.std::__shared_ptr.1100" }
%"class.std::__shared_ptr.1100" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::optional_ptr.439" = type { ptr }
%"class.duckdb::String" = type { i32, %union.anon.770 }
%union.anon.770 = type { ptr }
%"class.duckdb::InvalidInputException" = type { %"class.duckdb::Exception" }
%"class.duckdb::Exception" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.145 }
%union.anon.145 = type { ptr }
%"class.duckdb::shared_ptr.771" = type { %"class.std::shared_ptr.772" }
%"class.std::shared_ptr.772" = type { %"class.std::__shared_ptr.773" }
%"class.std::__shared_ptr.773" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::timestamp_ms_t" = type { %"struct.duckdb::timestamp_t" }
%"struct.duckdb::timestamp_sec_t" = type { %"struct.duckdb::timestamp_t" }
%"class.std::allocator.1347" = type { i8 }
%"struct.std::pair.467" = type { %"class.std::__cxx11::basic_string", %"struct.duckdb::LogicalType" }
%"class.duckdb::vector.775" = type { %"class.std::vector.776" }
%"class.std::vector.776" = type { %"struct.std::_Vector_base.777" }
%"struct.std::_Vector_base.777" = type { %"struct.std::_Vector_base<duckdb::Value, std::allocator<duckdb::Value>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::Value, std::allocator<duckdb::Value>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::Value, std::allocator<duckdb::Value>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::Value, std::allocator<duckdb::Value>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::__detail::_AllocNode.1515" = type { ptr }
%"class.std::unordered_set.795" = type { %"class.std::_Hashtable.796" }
%"class.std::_Hashtable.796" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::pair.815" = type { ptr, %"struct.duckdb::LogicalType" }
%"class.duckdb::vector.785" = type { %"class.std::vector.786" }
%"class.std::vector.786" = type { %"struct.std::_Vector_base.787" }
%"struct.std::_Vector_base.787" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, duckdb::Value>, std::allocator<std::pair<std::__cxx11::basic_string<char>, duckdb::Value>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, duckdb::Value>, std::allocator<std::pair<std::__cxx11::basic_string<char>, duckdb::Value>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, duckdb::Value>, std::allocator<std::pair<std::__cxx11::basic_string<char>, duckdb::Value>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, duckdb::Value>, std::allocator<std::pair<std::__cxx11::basic_string<char>, duckdb::Value>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair.792" = type { %"class.std::__cxx11::basic_string", %"class.duckdb::Value" }
%"class.duckdb::MemoryStream" = type { %"class.duckdb::WriteStream", %"class.duckdb::ReadStream", %"class.duckdb::optional_ptr.469", i64, i64, ptr }
%"class.duckdb::WriteStream" = type { ptr }
%"class.duckdb::ReadStream" = type { ptr }
%"class.duckdb::SerializationOptions" = type { i8, i8, [6 x i8], %"class.duckdb::SerializationCompatibility" }
%"class.duckdb::SerializationCompatibility" = type <{ %"class.std::__cxx11::basic_string", i64, i8, [7 x i8] }>
%"class.duckdb::BinarySerializer" = type { %"class.duckdb::Serializer", %"class.duckdb::vector.1517", ptr, %"struct.duckdb::SerializationData" }
%"class.duckdb::Serializer" = type { ptr, %"class.duckdb::SerializationOptions", %"struct.duckdb::SerializationData" }
%"class.duckdb::vector.1517" = type { %"class.std::vector.1518" }
%"class.std::vector.1518" = type { %"struct.std::_Vector_base.1519" }
%"struct.std::_Vector_base.1519" = type { %"struct.std::_Vector_base<duckdb::BinarySerializer::DebugState, std::allocator<duckdb::BinarySerializer::DebugState>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::BinarySerializer::DebugState, std::allocator<duckdb::BinarySerializer::DebugState>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::BinarySerializer::DebugState, std::allocator<duckdb::BinarySerializer::DebugState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::BinarySerializer::DebugState, std::allocator<duckdb::BinarySerializer::DebugState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::SerializationData" = type { %"class.std::stack", %"class.std::stack.314", %"class.std::stack.321", %"class.std::stack.328", %"class.std::stack.332", %"class.std::stack.339", %"class.std::stack.346", %"class.std::unordered_map.353" }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::reference_wrapper<duckdb::ClientContext>, std::allocator<std::reference_wrapper<duckdb::ClientContext>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::reference_wrapper<duckdb::ClientContext>, std::allocator<std::reference_wrapper<duckdb::ClientContext>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::reference_wrapper<duckdb::ClientContext>, std::allocator<std::reference_wrapper<duckdb::ClientContext>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::reference_wrapper<duckdb::ClientContext>, std::allocator<std::reference_wrapper<duckdb::ClientContext>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::stack.314" = type { %"class.std::deque.315" }
%"class.std::deque.315" = type { %"class.std::_Deque_base.316" }
%"class.std::_Deque_base.316" = type { %"struct.std::_Deque_base<std::reference_wrapper<duckdb::DatabaseInstance>, std::allocator<std::reference_wrapper<duckdb::DatabaseInstance>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::reference_wrapper<duckdb::DatabaseInstance>, std::allocator<std::reference_wrapper<duckdb::DatabaseInstance>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::reference_wrapper<duckdb::DatabaseInstance>, std::allocator<std::reference_wrapper<duckdb::DatabaseInstance>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::reference_wrapper<duckdb::DatabaseInstance>, std::allocator<std::reference_wrapper<duckdb::DatabaseInstance>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.320", %"struct.std::_Deque_iterator.320" }
%"struct.std::_Deque_iterator.320" = type { ptr, ptr, ptr, ptr }
%"class.std::stack.321" = type { %"class.std::deque.322" }
%"class.std::deque.322" = type { %"class.std::_Deque_base.323" }
%"class.std::_Deque_base.323" = type { %"struct.std::_Deque_base<std::reference_wrapper<duckdb::Catalog>, std::allocator<std::reference_wrapper<duckdb::Catalog>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::reference_wrapper<duckdb::Catalog>, std::allocator<std::reference_wrapper<duckdb::Catalog>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::reference_wrapper<duckdb::Catalog>, std::allocator<std::reference_wrapper<duckdb::Catalog>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::reference_wrapper<duckdb::Catalog>, std::allocator<std::reference_wrapper<duckdb::Catalog>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.327", %"struct.std::_Deque_iterator.327" }
%"struct.std::_Deque_iterator.327" = type { ptr, ptr, ptr, ptr }
%"class.std::stack.328" = type { %"class.std::deque.329" }
%"class.std::deque.329" = type { %"class.std::_Deque_base.330" }
%"class.std::_Deque_base.330" = type { %"struct.std::_Deque_base<unsigned long, std::allocator<unsigned long>>::_Deque_impl" }
%"struct.std::_Deque_base<unsigned long, std::allocator<unsigned long>>::_Deque_impl" = type { %"struct.std::_Deque_base<unsigned long, std::allocator<unsigned long>>::_Deque_impl_data" }
%"struct.std::_Deque_base<unsigned long, std::allocator<unsigned long>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.331", %"struct.std::_Deque_iterator.331" }
%"struct.std::_Deque_iterator.331" = type { ptr, ptr, ptr, ptr }
%"class.std::stack.332" = type { %"class.std::deque.333" }
%"class.std::deque.333" = type { %"class.std::_Deque_base.334" }
%"class.std::_Deque_base.334" = type { %"struct.std::_Deque_base<std::reference_wrapper<std::unordered_map<std::__cxx11::basic_string<char>, duckdb::shared_ptr<duckdb::BoundParameterData>, duckdb::CaseInsensitiveStringHashFunction, duckdb::CaseInsensitiveStringEquality>>, std::allocator<std::reference_wrapper<std::unordered_map<std::__cxx11::basic_string<char>, duckdb::shared_ptr<duckdb::BoundParameterData>, duckdb::CaseInsensitiveStringHashFunction, duckdb::CaseInsensitiveStringEquality>>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::reference_wrapper<std::unordered_map<std::__cxx11::basic_string<char>, duckdb::shared_ptr<duckdb::BoundParameterData>, duckdb::CaseInsensitiveStringHashFunction, duckdb::CaseInsensitiveStringEquality>>, std::allocator<std::reference_wrapper<std::unordered_map<std::__cxx11::basic_string<char>, duckdb::shared_ptr<duckdb::BoundParameterData>, duckdb::CaseInsensitiveStringHashFunction, duckdb::CaseInsensitiveStringEquality>>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::reference_wrapper<std::unordered_map<std::__cxx11::basic_string<char>, duckdb::shared_ptr<duckdb::BoundParameterData>, duckdb::CaseInsensitiveStringHashFunction, duckdb::CaseInsensitiveStringEquality>>, std::allocator<std::reference_wrapper<std::unordered_map<std::__cxx11::basic_string<char>, duckdb::shared_ptr<duckdb::BoundParameterData>, duckdb::CaseInsensitiveStringHashFunction, duckdb::CaseInsensitiveStringEquality>>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::reference_wrapper<std::unordered_map<std::__cxx11::basic_string<char>, duckdb::shared_ptr<duckdb::BoundParameterData>, duckdb::CaseInsensitiveStringHashFunction, duckdb::CaseInsensitiveStringEquality>>, std::allocator<std::reference_wrapper<std::unordered_map<std::__cxx11::basic_string<char>, duckdb::shared_ptr<duckdb::BoundParameterData>, duckdb::CaseInsensitiveStringHashFunction, duckdb::CaseInsensitiveStringEquality>>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.338", %"struct.std::_Deque_iterator.338" }
%"struct.std::_Deque_iterator.338" = type { ptr, ptr, ptr, ptr }
%"class.std::stack.339" = type { %"class.std::deque.340" }
%"class.std::deque.340" = type { %"class.std::_Deque_base.341" }
%"class.std::_Deque_base.341" = type { %"struct.std::_Deque_base<std::reference_wrapper<const duckdb::LogicalType>, std::allocator<std::reference_wrapper<const duckdb::LogicalType>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::reference_wrapper<const duckdb::LogicalType>, std::allocator<std::reference_wrapper<const duckdb::LogicalType>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::reference_wrapper<const duckdb::LogicalType>, std::allocator<std::reference_wrapper<const duckdb::LogicalType>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::reference_wrapper<const duckdb::LogicalType>, std::allocator<std::reference_wrapper<const duckdb::LogicalType>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.345", %"struct.std::_Deque_iterator.345" }
%"struct.std::_Deque_iterator.345" = type { ptr, ptr, ptr, ptr }
%"class.std::stack.346" = type { %"class.std::deque.347" }
%"class.std::deque.347" = type { %"class.std::_Deque_base.348" }
%"class.std::_Deque_base.348" = type { %"struct.std::_Deque_base<std::reference_wrapper<const duckdb::CompressionInfo>, std::allocator<std::reference_wrapper<const duckdb::CompressionInfo>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::reference_wrapper<const duckdb::CompressionInfo>, std::allocator<std::reference_wrapper<const duckdb::CompressionInfo>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::reference_wrapper<const duckdb::CompressionInfo>, std::allocator<std::reference_wrapper<const duckdb::CompressionInfo>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::reference_wrapper<const duckdb::CompressionInfo>, std::allocator<std::reference_wrapper<const duckdb::CompressionInfo>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.352", %"struct.std::_Deque_iterator.352" }
%"struct.std::_Deque_iterator.352" = type { ptr, ptr, ptr, ptr }
%"class.std::unordered_map.353" = type { %"class.std::_Hashtable.354" }
%"class.std::_Hashtable.354" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.duckdb::ConversionException" = type { %"class.duckdb::Exception" }
%"struct.duckdb::dtime_ns_t" = type { %"struct.duckdb::dtime_t" }
%"struct.duckdb::timestamp_tz_t" = type { %"struct.duckdb::timestamp_t" }
%"struct.duckdb::dtime_tz_t" = type { i64 }
%"struct.duckdb::interval_t" = type { i32, i32, i64 }
%"struct.duckdb::RecursiveUnifiedVectorFormat" = type { %"struct.duckdb::UnifiedVectorFormat", %"class.duckdb::vector.455", %"struct.duckdb::LogicalType" }
%"class.duckdb::vector.455" = type { %"class.std::vector.456" }
%"class.std::vector.456" = type { %"struct.std::_Vector_base.457" }
%"struct.std::_Vector_base.457" = type { %"struct.std::_Vector_base<duckdb::RecursiveUnifiedVectorFormat, std::allocator<duckdb::RecursiveUnifiedVectorFormat>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::RecursiveUnifiedVectorFormat, std::allocator<duckdb::RecursiveUnifiedVectorFormat>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::RecursiveUnifiedVectorFormat, std::allocator<duckdb::RecursiveUnifiedVectorFormat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::RecursiveUnifiedVectorFormat, std::allocator<duckdb::RecursiveUnifiedVectorFormat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::UnifiedVariantVectorData" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.duckdb::BinaryDeserializer" = type <{ %"class.duckdb::Deserializer", ptr, i64, i8, i8, i16, [4 x i8] }>
%"class.duckdb::Deserializer" = type { ptr, i8, %"struct.duckdb::SerializationData" }
%"struct.duckdb::(anonymous namespace)::ToSpatialGeometryState" = type { %"class.duckdb::GeometryExtent", %"class.duckdb::(anonymous namespace)::BlobReader", i8, i8, i8, i8, i32 }
%"class.duckdb::GeometryExtent" = type { double, double, double, double, double, double, double, double }
%"class.duckdb::(anonymous namespace)::BlobReader" = type { ptr, ptr, ptr }
%"class.duckdb::(anonymous namespace)::FixedSizeBlobWriter" = type { ptr, ptr, ptr }
%class.anon.843 = type { ptr, ptr, ptr }
%"class.duckdb::vector.845" = type { %"class.std::vector.846" }
%"class.std::vector.846" = type { %"struct.std::_Vector_base.847" }
%"struct.std::_Vector_base.847" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::vector.851" = type { %"class.std::vector.852" }
%"class.std::vector.852" = type { %"struct.std::_Vector_base.853" }
%"struct.std::_Vector_base.853" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::bignum_t" = type { %"struct.duckdb::string_t" }
%"class.duckdb::shared_ptr.973" = type { %"class.std::shared_ptr.974" }
%"class.std::shared_ptr.974" = type { %"class.std::__shared_ptr.975" }
%"class.std::__shared_ptr.975" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::ConsecutiveChildListInfo" = type { i8, i8, %"struct.duckdb::list_entry_t" }
%"struct.duckdb::list_entry_t" = type { i64, i64 }
%"class.duckdb::vector.8" = type { %"class.std::vector.9" }
%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.11" = type { i8 }
%"class.duckdb::shared_ptr.981" = type { %"class.std::shared_ptr.982" }
%"class.std::shared_ptr.982" = type { %"class.std::__shared_ptr.983" }
%"class.std::__shared_ptr.983" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::(anonymous namespace)::TextReader" = type { ptr, ptr, ptr }
%"class.duckdb::(anonymous namespace)::BlobWriter" = type { %"class.duckdb::vector.987" }
%"class.duckdb::vector.987" = type { %"class.std::vector.988" }
%"class.std::vector.988" = type { %"struct.std::_Vector_base.989" }
%"struct.std::_Vector_base.989" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb::(anonymous namespace)::TextWriter" = type { %"class.duckdb::vector.987" }
%"struct.duckdb_fmt::v6::format_handler" = type { [8 x i8], %"class.duckdb_fmt::v6::basic_format_parse_context", %"class.duckdb_fmt::v6::basic_format_context", %"class.duckdb_fmt::v6::basic_format_arg" }
%"class.duckdb_fmt::v6::basic_format_parse_context" = type <{ %"class.duckdb_fmt::v6::basic_string_view", i32, [4 x i8] }>
%"class.duckdb_fmt::v6::basic_string_view" = type { ptr, i64 }
%"class.duckdb_fmt::v6::basic_format_context" = type { %"class.std::back_insert_iterator", %"class.duckdb_fmt::v6::basic_format_args", %"class.duckdb_fmt::v6::internal::arg_map", %"class.duckdb_fmt::v6::internal::locale_ref" }
%"class.std::back_insert_iterator" = type { ptr }
%"class.duckdb_fmt::v6::basic_format_args" = type { i64, %union.anon.1356 }
%union.anon.1356 = type { ptr }
%"class.duckdb_fmt::v6::internal::arg_map" = type <{ ptr, i32, [4 x i8] }>
%"class.duckdb_fmt::v6::internal::locale_ref" = type { ptr }
%"class.duckdb_fmt::v6::basic_format_arg" = type <{ %"class.duckdb_fmt::v6::internal::value", i32, [12 x i8] }>
%"class.duckdb_fmt::v6::internal::value" = type { %union.anon.1357 }
%union.anon.1357 = type { x86_fp80 }
%"class.duckdb_fmt::v6::format_arg_store" = type { [1 x %"class.duckdb_fmt::v6::internal::value"] }
%"struct.duckdb::VertexXYM" = type { double, double, double }
%"struct.duckdb::VertexXYZ" = type { double, double, double }
%"struct.duckdb::VertexXYZM" = type { double, double, double, double }
%"class.duckdb::(anonymous namespace)::WKTParser" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.duckdb::unique_ptr.994" = type { %"class.std::unique_ptr.995" }
%"class.std::unique_ptr.995" = type { %"struct.std::__uniq_ptr_data.996" }
%"struct.std::__uniq_ptr_data.996" = type { %"class.std::__uniq_ptr_impl.997" }
%"class.std::__uniq_ptr_impl.997" = type { %"class.std::tuple.998" }
%"class.std::tuple.998" = type { %"struct.std::_Tuple_impl.999" }
%"struct.std::_Tuple_impl.999" = type { %"struct.std::_Head_base.1002" }
%"struct.std::_Head_base.1002" = type { ptr }
%"class.duckdb::CoordinateReferenceSystem" = type { i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.duckdb::unique_ptr.1020" = type { %"class.std::unique_ptr.1021" }
%"class.std::unique_ptr.1021" = type { %"struct.std::__uniq_ptr_data.1022" }
%"struct.std::__uniq_ptr_data.1022" = type { %"class.std::__uniq_ptr_impl.1023" }
%"class.std::__uniq_ptr_impl.1023" = type { %"class.std::tuple.1024" }
%"class.std::tuple.1024" = type { %"struct.std::_Tuple_impl.1025" }
%"struct.std::_Tuple_impl.1025" = type { %"struct.std::_Head_base.1028" }
%"struct.std::_Head_base.1028" = type { ptr }
%"class.duckdb::optional_ptr.1029" = type { ptr }
%"struct.duckdb::ExceptionFormatValue" = type { i8, double, %"struct.duckdb::hugeint_t", %"class.std::__cxx11::basic_string" }
%"struct.duckdb_fast_float::decimal" = type <{ i32, i32, i8, i8, [768 x i8], [2 x i8] }>
%"class.duckdb_fmt::v6::arg_formatter" = type { %"class.duckdb_fmt::v6::internal::arg_formatter_base", ptr, ptr }
%"class.duckdb_fmt::v6::internal::arg_formatter_base" = type { %"class.duckdb_fmt::v6::internal::basic_writer", ptr }
%"class.duckdb_fmt::v6::internal::basic_writer" = type { %"class.std::back_insert_iterator", %"class.duckdb_fmt::v6::internal::locale_ref" }
%struct.pfs_writer = type { ptr }
%"struct.duckdb_fmt::v6::internal::id_adapter" = type { ptr }
%"struct.duckdb_fmt::v6::basic_format_specs" = type <{ i32, i32, i8, i8, %"struct.duckdb_fmt::v6::internal::fill_t", i8, [3 x i8] }>
%"struct.duckdb_fmt::v6::internal::fill_t" = type { [6 x i8] }
%"class.duckdb_fmt::v6::internal::specs_checker" = type { %"class.duckdb_fmt::v6::internal::specs_handler", %"class.duckdb_fmt::v6::internal::numeric_specs_checker" }
%"class.duckdb_fmt::v6::internal::specs_handler" = type { %"class.duckdb_fmt::v6::internal::specs_setter", ptr, ptr }
%"class.duckdb_fmt::v6::internal::specs_setter" = type { ptr }
%"class.duckdb_fmt::v6::internal::numeric_specs_checker" = type <{ ptr, i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::error_handler" = type { i8 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::pointer_writer" = type { i64, i32 }
%"struct.duckdb_fmt::v6::internal::arg_formatter_base<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::cstring_spec_handler" = type { ptr, ptr }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer" = type <{ ptr, ptr, i32, [4 x i8], i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer.1404" = type { ptr, ptr, %"struct.duckdb::uhugeint_t", [4 x i8], i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer.1385" = type { ptr, ptr, i64, [4 x i8], i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer.1375" = type { ptr, ptr, i64, [4 x i8], i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer.1366" = type <{ ptr, ptr, i32, [4 x i8], i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer.1393" = type { ptr, ptr, %"struct.duckdb::uhugeint_t", [4 x i8], i32 }
%"struct.duckdb_fmt::v6::internal::arg_formatter_base<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::char_spec_handler" = type <{ ptr, i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::str_writer" = type { ptr, i64 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1359" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" = type { i32, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" = type <{ i32, i32, ptr, i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1362" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" = type <{ ptr, i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1363" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" = type { i32, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1365" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1364" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<int, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1364" = type { i32, i32 }
%class.anon.1358 = type { ptr, %"class.duckdb_fmt::v6::basic_string_view", ptr, ptr }
%"class.__gnu_cxx::__normal_iterator.1019" = type { ptr }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1370" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" = type { i32, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1368" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" = type <{ i32, i32, ptr, i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1371" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" = type <{ ptr, i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1372" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" = type { i32, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1374" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1373" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned int, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1373" = type { i32, i32 }
%class.anon.1369 = type { ptr, %"class.duckdb_fmt::v6::basic_string_view", ptr, ptr }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1378" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" = type { i64, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1376" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" = type <{ i64, i32, [4 x i8], ptr, i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1381" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" = type <{ ptr, i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1382" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" = type { i64, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1384" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1383" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<long long, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1383" = type { i64, i32 }
%class.anon.1377 = type { ptr, %"class.duckdb_fmt::v6::basic_string_view", ptr, ptr }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1388" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" = type { i64, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1386" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" = type <{ i64, i32, [4 x i8], ptr, i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1389" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" = type <{ ptr, i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1390" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" = type { i64, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1392" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1391" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<unsigned long long, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1391" = type { i64, i32 }
%class.anon.1387 = type { ptr, %"class.duckdb_fmt::v6::basic_string_view", ptr, ptr }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1396" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" = type <{ %"struct.duckdb::uhugeint_t", i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1394" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" = type <{ %"struct.duckdb::uhugeint_t", i32, [4 x i8], ptr, i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1399" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" = type <{ ptr, i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1400" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" = type <{ %"struct.duckdb::uhugeint_t", i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1403" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1401" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::hugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1401" = type <{ %"struct.duckdb::uhugeint_t", i32, [4 x i8] }>
%class.anon.1395 = type { ptr, %"class.duckdb_fmt::v6::basic_string_view", ptr, ptr }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1407" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" = type <{ %"struct.duckdb::uhugeint_t", i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1405" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" = type <{ %"struct.duckdb::uhugeint_t", i32, [4 x i8], ptr, i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1408" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" = type <{ ptr, i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1409" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" = type <{ %"struct.duckdb::uhugeint_t", i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1412" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1410" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<duckdb::uhugeint_t, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1410" = type <{ %"struct.duckdb::uhugeint_t", i32, [4 x i8] }>
%class.anon.1406 = type { ptr, %"class.duckdb_fmt::v6::basic_string_view", ptr, ptr }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer.1413" = type <{ ptr, ptr, i32, [4 x i8], i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::arg_formatter_base<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::char_writer" = type { i8 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1417" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::dec_writer" = type { i32, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1415" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::num_writer" = type <{ i32, i32, ptr, i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1418" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::hex_writer" = type <{ ptr, i32, [4 x i8] }>
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1419" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer" = type { i32, i32 }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::padded_int_writer.1421" = type { i64, %"class.duckdb_fmt::v6::basic_string_view", i8, i64, %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1420" }
%"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::int_writer<char, duckdb_fmt::v6::basic_format_specs<char>>::bin_writer.1420" = type { i32, i32 }
%class.anon.1416 = type { ptr, %"class.duckdb_fmt::v6::basic_string_view", ptr, ptr }
%"struct.duckdb_fmt::v6::internal::nonfinite_writer" = type { i32, ptr }
%"class.duckdb_fmt::v6::basic_memory_buffer" = type <{ %"class.duckdb_fmt::v6::internal::buffer", [500 x i8], [4 x i8] }>
%"class.duckdb_fmt::v6::internal::buffer" = type { ptr, ptr, i64, i64 }
%"class.duckdb_fmt::v6::internal::float_writer" = type <{ ptr, i32, i32, i64, %"struct.duckdb_fmt::v6::internal::float_specs", i8, [7 x i8] }>
%"struct.duckdb_fmt::v6::internal::float_specs" = type { i32, i32 }
%"struct.duckdb_fmt::v6::internal::arg_map<duckdb_fmt::v6::basic_format_context<std::back_insert_iterator<duckdb::vector<char>>, char>>::entry" = type { %"class.duckdb_fmt::v6::basic_string_view", %"class.duckdb_fmt::v6::basic_format_arg" }
%"struct.duckdb_fmt::v6::internal::width_adapter" = type { ptr }
%"struct.duckdb_fmt::v6::internal::precision_adapter" = type { ptr }
%"class.duckdb_fmt::v6::internal::width_checker" = type { ptr }
%"class.duckdb_fmt::v6::internal::precision_checker" = type { ptr }
%"class.duckdb::vector.1003" = type { %"class.std::vector.1004" }
%"class.std::vector.1004" = type { %"struct.std::_Vector_base.1005" }
%"struct.std::_Vector_base.1005" = type { %"struct.std::_Vector_base<duckdb::unique_ptr<duckdb::(anonymous namespace)::WKTValue>, std::allocator<duckdb::unique_ptr<duckdb::(anonymous namespace)::WKTValue>>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::unique_ptr<duckdb::(anonymous namespace)::WKTValue>, std::allocator<duckdb::unique_ptr<duckdb::(anonymous namespace)::WKTValue>>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::unique_ptr<duckdb::(anonymous namespace)::WKTValue>, std::allocator<duckdb::unique_ptr<duckdb::(anonymous namespace)::WKTValue>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::unique_ptr<duckdb::(anonymous namespace)::WKTValue>, std::allocator<duckdb::unique_ptr<duckdb::(anonymous namespace)::WKTValue>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, duckdb::unique_ptr<duckdb::ColumnDataCollection>>, std::_Select1st<std::pair<const unsigned long, duckdb::unique_ptr<duckdb::ColumnDataCollection>>>, std::less<unsigned long>>::_Auto_node" = type { ptr, ptr }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"class.duckdb::BufferHandle" = type { %"class.duckdb::shared_ptr.888", %"class.duckdb::optional_ptr.892" }
%"class.duckdb::shared_ptr.888" = type { %"class.std::shared_ptr.889" }
%"class.std::shared_ptr.889" = type { %"class.std::__shared_ptr.890" }
%"class.std::__shared_ptr.890" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::optional_ptr.892" = type { ptr }
%"class.duckdb::shared_ptr.1661" = type { %"class.std::shared_ptr.1662" }
%"class.std::shared_ptr.1662" = type { %"class.std::__shared_ptr.1663" }
%"class.std::__shared_ptr.1663" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::shared_ptr.1665" = type { %"class.std::shared_ptr.1666" }
%"class.std::shared_ptr.1666" = type { %"class.std::__shared_ptr.1667" }
%"class.std::__shared_ptr.1667" = type { ptr, %"class.std::__shared_count" }

$_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev = comdat any

$_ZNK6duckdb10shared_ptrINS_16DatabaseInstanceELb1EEdeEv = comdat any

$_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZNSt4pairImN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEED2Ev = comdat any

$_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev = comdat any

$_ZN6duckdb17InternalExceptionC2IJRKmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZN6duckdb17InternalExceptionC2IJRmmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

end_hunk_0
begin_hunk_1_@_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb:bb.a
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i), !inline_history !563
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr1.i, i64 88
  %i.af = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae), !inline_history !563
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !484
  %i.ai = icmp eq i8 %i.ah, 3
  br i1 %i.ai, label %tailrecurse.i27, label %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit

_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit: ; preds = %tailrecurse.i27, %bb.h
  %.tr.lcssa.i26 = phi ptr [ %.tr, %bb.h ], [ %i.ag, %tailrecurse.i27 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i26, i64 88
  %i.ak = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj), !inline_history !564
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al), !inline_history !563 ; 3 uses
  %i.an = tail call noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 2 uses
  %i.ao = load i8, ptr %i.am, align 8, !tbaa !484
  %i.ap = icmp eq i8 %i.ao, 2
  br i1 %i.ap, label %tailrecurse, label %.preheader

.preheader:                                       ; preds = %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit
  %.not43 = icmp eq i64 %i.an, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.039 = phi i64 [ %i.aq, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %i.am, i64 noundef %.039, i1 noundef zeroext true)
  %i.aq = add nuw i64 %.039, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.an
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !2585

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %.lr.ph42, %bb.c, %bb.b, %.preheader, %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !778

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR) #46
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, i64 8), i8 0, i64 16, i1 false)
  store ptr @_ZN6duckdb14ConstantVector11ZERO_VECTORE, ptr @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, align 8, !tbaa !390
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6duckdb15SelectionVectorD2Ev, ptr nonnull @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, ptr nonnull @__dso_handle) #46 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR) #46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48, !noalias !2586 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !410, !noalias !2586
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !412, !noalias !2586
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !413, !noalias !2586
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN6duckdb13SelectionDataC1Em(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %1)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !2586

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #47, !noalias !2586
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153, !noalias !2591
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.b, align 8, !tbaa !3, !noalias !2591
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.b, align 8, !tbaa !3, !noalias !2591
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4, !noalias !2591 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.d, %bb.c
  %i.j = load atomic i64, ptr %i.b acquire, align 8, !noalias !2591 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.b, align 8, !tbaa !410, !noalias !2591
  store i32 0, ptr %i.c, align 4, !tbaa !412, !noalias !2591
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !413, !noalias !2591
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2591
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #46, !noalias !2591, !inline_history !1092
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !413, !noalias !2591
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2591
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #46, !noalias !2591, !inline_history !1092
  br label %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153, !noalias !2591
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.l, -1
  store i32 %i.t, ptr %i.b, align 8, !tbaa !3, !noalias !2591
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4, !noalias !2591
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.u, %bb.h ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.i, label %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !88

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #46, !noalias !2591
  br label %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.w, align 8, !tbaa !2484
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !409  ; 8 uses
  store ptr %i.a, ptr %i.x, align 8, !tbaa !409
  %.not.i.i.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i1, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !410
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !412
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !413
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #46, !inline_history !2592
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !413
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #46, !inline_history !2592
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.m ], [ %i.am, %bb.n ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.o, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit, !prof !88

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #46
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.ao = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_13SelectionDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !594
  store ptr %i.aq, ptr %0, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14ConstantVector9ReferenceERNS_6VectorES2_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %11 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !483
  switch i8 %i.c, label %bb.df [
    i8 23, label %bb.b
    i8 29, label %bb.ai
    i8 24, label %bb.bx
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %4, align 8, !tbaa !773
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !390  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %2
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = zext i32 %i.g to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.c
  %i.i = phi i64 [ %i.h, %bb.d ], [ %2, %bb.c ]   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !520  ; 2 uses
  %.not.i114 = icmp eq ptr %i.k, null
  br i1 %.not.i114, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.l = lshr i64 %i.i, 6
  %i.m = and i64 %i.i, 63
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !108
  %i.p = shl nuw i64 1, %i.m
  %i.q = and i64 %i.o, %i.p
  %.not205 = icmp eq i64 %i.q, 0
  br i1 %.not205, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %6)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #46
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.u

bb.i:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.j:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #46
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pn105 = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.t, %bb.k ], [ %i.s, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.ah

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !774
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.i
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.x, align 8
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !428
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.z, align 8
  %i.aa = load i8, ptr %0, align 8, !tbaa !484
  %i.ab = icmp eq i8 %i.aa, 3
  br i1 %i.ab, label %tailrecurse.i, label %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i

tailrecurse.i:                                    ; preds = %bb.o, %.noexc115
  %.tr1.i = phi ptr [ %i.ae, %.noexc115 ], [ %0, %bb.o ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !597

.noexc:                                           ; preds = %tailrecurse.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1.i, i64 88
  %i.ad = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !597

.noexc115:                                        ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !484
  %i.ag = icmp eq i8 %i.af, 3
  br i1 %i.ag, label %tailrecurse.i, label %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i

_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i: ; preds = %.noexc115, %bb.o
  %.tr.lcssa.i = phi ptr [ %0, %bb.o ], [ %i.ae, %.noexc115 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 88
  %i.ai = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !597

.noexc116:                                        ; preds = %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !597

_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit: ; preds = %.noexc116
  %i.al = load i8, ptr %1, align 8, !tbaa !484
  %i.am = icmp eq i8 %i.al, 3
  br i1 %i.am, label %tailrecurse.i120, label %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i118

tailrecurse.i120:                                 ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit, %.noexc123
  %.tr1.i121 = phi ptr [ %i.ap, %.noexc123 ], [ %1, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i121)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !597

.noexc122:                                        ; preds = %tailrecurse.i120
  %i.an = getelementptr inbounds nuw i8, ptr %.tr1.i121, i64 88
  %i.ao = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !597

.noexc123:                                        ; preds = %.noexc122
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !484
  %i.ar = icmp eq i8 %i.aq, 3
  br i1 %i.ar, label %tailrecurse.i120, label %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i118

_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i118: ; preds = %.noexc123, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit
  %.tr.lcssa.i119 = phi ptr [ %1, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit ], [ %i.ap, %.noexc123 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i119, i64 88
  %i.at = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !597

.noexc124:                                        ; preds = %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i118
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !597

_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit126: ; preds = %.noexc124
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, ptr noundef nonnull align 8 dereferenceable(104) %i.av)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit126
  %i.aw = load i8, ptr %1, align 8, !tbaa !484
  %i.ax = icmp eq i8 %i.aw, 3
  br i1 %i.ax, label %tailrecurse.i128, label %tailrecurse._crit_edge.i

tailrecurse.i128:                                 ; preds = %bb.p, %.noexc130
  %.tr4.i = phi ptr [ %i.ba, %.noexc130 ], [ %1, %bb.p ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr4.i)
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit, !inline_history !485

.noexc129:                                        ; preds = %tailrecurse.i128
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr4.i, i64 88
  %i.az = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit, !inline_history !485

.noexc130:                                        ; preds = %.noexc129
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !484
  %i.bc = icmp eq i8 %i.bb, 3
  br i1 %i.bc, label %tailrecurse.i128, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %.noexc130, %bb.p
  %.tr.lcssa.i127 = phi ptr [ %1, %bb.p ], [ %i.ba, %.noexc130 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i127, i64 88
  %i.be = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !485

bb.q:                                             ; preds = %tailrecurse._crit_edge.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !549
  %i.bh = load i8, ptr %0, align 8, !tbaa !484
  %i.bi = icmp eq i8 %i.bh, 3
  br i1 %i.bi, label %tailrecurse.i134, label %tailrecurse._crit_edge.i132

tailrecurse.i134:                                 ; preds = %bb.q, %.noexc136
  %.tr6.i = phi ptr [ %i.bl, %.noexc136 ], [ %0, %bb.q ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr6.i)
          to label %.noexc135 unwind label %.loopexit, !inline_history !1050

.noexc135:                                        ; preds = %tailrecurse.i134
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr6.i, i64 88
  %i.bk = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %.noexc136 unwind label %.loopexit, !inline_history !1050

.noexc136:                                        ; preds = %.noexc135
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !484
  %i.bn = icmp eq i8 %i.bm, 3
  br i1 %i.bn, label %tailrecurse.i134, label %tailrecurse._crit_edge.i132

tailrecurse._crit_edge.i132:                      ; preds = %.noexc136, %bb.q
  %.tr.lcssa.i133 = phi ptr [ %0, %bb.q ], [ %i.bl, %.noexc136 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i133, i64 88
  %i.bp = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1050

bb.r:                                             ; preds = %tailrecurse._crit_edge.i132
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store i64 %i.bg, ptr %i.bq, align 8, !tbaa !549
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext 2)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.t:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit:                                        ; preds = %tailrecurse.i134, %.noexc135
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp.loopexit:                      ; preds = %.noexc129, %tailrecurse.i128
  %lpad.loopexit206 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %tailrecurse.i120, %.noexc122
  %lpad.loopexit209 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc, %tailrecurse.i
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %tailrecurse._crit_edge.i132, %tailrecurse._crit_edge.i, %.noexc124, %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i118, %.noexc116, %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i, %bb.r, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit126
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.u:                                             ; preds = %bb.r, %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bv, align 8, !tbaa !410
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !412
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !413
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #46, !inline_history !849
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !413
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #46, !inline_history !849
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.by, %bb.y ], [ %i.ci, %bb.z ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.aa, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !88

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #46
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cm, align 8, !tbaa !410
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !412
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !413
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #46, !inline_history !850
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !413
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #46, !inline_history !850
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.af:                                            ; preds = %bb.ad
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.cp, %bb.ae ], [ %i.cz, %bb.af ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.da, label %bb.ag, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !88

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #46
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.di

bb.ah:                                            ; preds = %bb.t, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit, %bb.m, %bb.s, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.br, %bb.s ], [ %.pn105, %bb.m ], [ %i.bs, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit206, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit209, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit211, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.dj

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.db = load ptr, ptr %7, align 8, !tbaa !773
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !390 ; 2 uses
  %.not.i138 = icmp eq ptr %i.dc, null
  br i1 %.not.i138, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit139, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %2
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = zext i32 %i.de to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit139

_ZNK6duckdb15SelectionVector9get_indexEm.exit139: ; preds = %bb.ak, %bb.aj
  %i.dg = phi i64 [ %i.df, %bb.ak ], [ %2, %bb.aj ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !520 ; 2 uses
  %.not.i140 = icmp eq ptr %i.di, null
  br i1 %.not.i140, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit139
  %i.dj = lshr i64 %i.dg, 6
  %i.dk = and i64 %i.dg, 63
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dj
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !108
  %i.dn = shl nuw i64 1, %i.dk
  %i.do = and i64 %i.dm, %i.dn
  %.not204 = icmp eq i64 %i.do, 0
  br i1 %.not204, label %bb.al, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread

bb.al:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %9)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #46
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.bj

bb.ap:                                            ; preds = %bb.ai
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.aq:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %bb.am
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #46
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #46
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.pn95 = phi { ptr, i32 } [ %i.ds, %bb.as ], [ %i.dr, %bb.ar ], [ %i.dq, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.bw

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit139, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142
  %i.dt = load i8, ptr %0, align 8, !tbaa !484
  %i.du = icmp eq i8 %i.dt, 3
  br i1 %i.du, label %tailrecurse.i144, label %_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i

tailrecurse.i144:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread, %.noexc147
  %.tr1.i145 = phi ptr [ %i.dx, %.noexc147 ], [ %0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i145)
          to label %.noexc146 unwind label %.loopexit218, !inline_history !563

.noexc146:                                        ; preds = %tailrecurse.i144
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr1.i145, i64 88
  %i.dw = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
          to label %.noexc147 unwind label %.loopexit218, !inline_history !563

.noexc147:                                        ; preds = %.noexc146
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !484
  %i.dz = icmp eq i8 %i.dy, 3
  br i1 %i.dz, label %tailrecurse.i144, label %_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i

_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i: ; preds = %.noexc147, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread
  %.tr.lcssa.i143 = phi ptr [ %0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread ], [ %i.dx, %.noexc147 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i143, i64 88
  %i.eb = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %.noexc148 unwind label %.loopexit.split-lp219, !inline_history !563

.noexc148:                                        ; preds = %_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec)
          to label %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit unwind label %.loopexit.split-lp219, !inline_history !563 ; 3 uses

_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit: ; preds = %.noexc148
  %i.ee = load i8, ptr %1, align 8, !tbaa !484
  %i.ef = icmp eq i8 %i.ee, 3
  br i1 %i.ef, label %tailrecurse.i152, label %_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i150

tailrecurse.i152:                                 ; preds = %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit, %.noexc155
  %.tr1.i153 = phi ptr [ %i.ei, %.noexc155 ], [ %1, %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i153)
          to label %.noexc154 unwind label %.loopexit214, !inline_history !563

.noexc154:                                        ; preds = %tailrecurse.i152
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr1.i153, i64 88
  %i.eh = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg)
          to label %.noexc155 unwind label %.loopexit214, !inline_history !563

.noexc155:                                        ; preds = %.noexc154
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48 ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !484
  %i.ek = icmp eq i8 %i.ej, 3
  br i1 %i.ek, label %tailrecurse.i152, label %_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i150

_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i150: ; preds = %.noexc155, %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit
  %.tr.lcssa.i151 = phi ptr [ %1, %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit ], [ %i.ei, %.noexc155 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i151, i64 88
  %i.em = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el)
          to label %.noexc156 unwind label %.loopexit.split-lp215, !inline_history !563

.noexc156:                                        ; preds = %_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i150
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.en)
          to label %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit158 unwind label %.loopexit.split-lp215, !inline_history !563

_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit158: ; preds = %.noexc156
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ed, ptr noundef nonnull align 8 dereferenceable(104) %i.eo)
          to label %bb.au unwind label %.loopexit.split-lp215

bb.au:                                            ; preds = %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit158
  %i.ep = invoke noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.av unwind label %bb.ax     ; 9 uses

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.ep)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.aw

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.av
  %.not244 = icmp eq i64 %i.ep, 0
  br i1 %.not244, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.lr.ph242

.lr.ph242:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.er = mul i64 %i.ep, %i.dg                    ; 2 uses
  %i.es = load ptr, ptr %10, align 8, !tbaa !390  ; 2 uses
  %min.iters.check = icmp ult i64 %i.ep, 8
  br i1 %min.iters.check, label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader285, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph242
  %n.vec = and i64 %i.ep, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.et = add <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add <4 x i64> %vec.ind, %invariant.op
  %i.eu = trunc <4 x i64> %i.et to <4 x i32>
  %i.ev = trunc <4 x i64> %.reass to <4 x i32>
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <4 x i32> %i.eu, ptr %i.ew, align 4, !tbaa !3
  store <4 x i32> %i.ev, ptr %i.ex, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !2593

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader285

_ZN6duckdb15SelectionVectorC2Em.exit.preheader285: ; preds = %.lr.ph242, %middle.block
  %.086241.ph = phi i64 [ 0, %.lr.ph242 ], [ %n.vec, %middle.block ]
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

bb.aw:                                            ; preds = %bb.av
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.eq) #46
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit, %middle.block, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  invoke void @_ZN6duckdb6Vector5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.ep)
          to label %bb.ay unwind label %bb.bi

.loopexit218:                                     ; preds = %tailrecurse.i144, %.noexc146
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp219:                            ; preds = %_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i, %.noexc148
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit214:                                     ; preds = %tailrecurse.i152, %.noexc154
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp215:                            ; preds = %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit158, %_ZN6duckdb11ArrayVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i150, %.noexc156
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.ax:                                            ; preds = %bb.au
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader285, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.086241 = phi i64 [ %i.fe, %_ZN6duckdb15SelectionVectorC2Em.exit ], [ %.086241.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader285 ] ; 3 uses
  %i.fb = add i64 %.086241, %i.er
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.086241
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !3
  %i.fe = add nuw i64 %.086241, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fe, %i.ep
  br i1 %exitcond.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %_ZN6duckdb15SelectionVectorC2Em.exit, !llvm.loop !2594

bb.ay:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.ed, i64 noundef %i.ep)
          to label %bb.az unwind label %bb.bi

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext 2)
          to label %bb.ba unwind label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !520 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !108
  %i.fi = or i64 %i.fh, 1
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !108
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit: ; preds = %bb.bb, %bb.ba
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.fl, align 8, !tbaa !410
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !412
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !413
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #46, !inline_history !763
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !413
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #46, !inline_history !763
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.be:                                            ; preds = %bb.bc
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i159 = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i159, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.bf ], [ %i.fy, %bb.bg ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fz, label %bb.bh, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !88

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #46
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %bb.bj

bb.bi:                                            ; preds = %bb.az, %bb.ay, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #46
  br label %.body

.body:                                            ; preds = %bb.aw, %bb.bi
  %.pn97.pn = phi { ptr, i32 } [ %i.ga, %bb.bi ], [ %i.ez, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %bb.bw

bb.bj:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.ao
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i.i160 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i160, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i164, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.gd, align 8, !tbaa !410
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !412
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !413
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #46, !inline_history !849
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !413
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #46, !inline_history !849
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i164

bb.bm:                                            ; preds = %bb.bk
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i161 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i.i161, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i162

bb.bo:                                            ; preds = %bb.bm
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i162

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i162: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i.i163 = phi i32 [ %i.gg, %bb.bn ], [ %i.gq, %bb.bo ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i.i163, 1
  br i1 %i.gr, label %bb.bp, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i164, !prof !88

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i162
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #46
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i164

_ZN6duckdb15SelectionVectorD2Ev.exit.i164:        ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i162, %bb.bl, %bb.bj
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i1.i165 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i1.i165, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169, label %bb.bq

bb.bq:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i164
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %i.gv = load atomic i64, ptr %i.gu acquire, align 8 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 4294967297
  %i.gx = trunc i64 %i.gv to i32                  ; 2 uses
  br i1 %i.gw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.gu, align 8, !tbaa !410
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 0, ptr %i.gy, align 4, !tbaa !412
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !413
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #46, !inline_history !850
  %i.hc = load ptr, ptr %i.gt, align 8, !tbaa !413
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #46, !inline_history !850
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169

bb.bs:                                            ; preds = %bb.bq
  %i.hf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i2.i166 = icmp eq i8 %i.hf, 0
  br i1 %.not.i.i.i.i.i2.i166, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hg = add nsw i32 %i.gx, -1
  store i32 %i.hg, ptr %i.gu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i167

bb.bu:                                            ; preds = %bb.bs
  %i.hh = atomicrmw volatile add ptr %i.gu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i167

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i167: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i4.i168 = phi i32 [ %i.gx, %bb.bt ], [ %i.hh, %bb.bu ]
  %i.hi = icmp eq i32 %.0.i.i.i.i.i.i4.i168, 1
  br i1 %i.hi, label %bb.bv, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169, !prof !88

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i167
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #46
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169:      ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i164, %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i167, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.di

bb.bw:                                            ; preds = %.loopexit214, %.loopexit.split-lp215, %.loopexit218, %.loopexit.split-lp219, %bb.at, %.body, %bb.ax, %bb.ap
  %.pn97.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ap ], [ %i.fa, %bb.ax ], [ %.pn95, %bb.at ], [ %.pn97.pn, %.body ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp219 ], [ %lpad.loopexit220, %.loopexit218 ], [ %lpad.loopexit216, %.loopexit214 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp215 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.dj

bb.bx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %11)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.by unwind label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.hj = load ptr, ptr %11, align 8, !tbaa !773
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !390 ; 2 uses
  %.not.i170 = icmp eq ptr %i.hk, null
  br i1 %.not.i170, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit171, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %2
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = zext i32 %i.hm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit171

_ZNK6duckdb15SelectionVector9get_indexEm.exit171: ; preds = %bb.bz, %bb.by
  %i.ho = phi i64 [ %i.hn, %bb.bz ], [ %2, %bb.by ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !520 ; 2 uses
  %.not.i172 = icmp eq ptr %i.hq, null
  br i1 %.not.i172, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit171
  %i.hr = lshr i64 %i.ho, 6
  %i.hs = and i64 %i.ho, 63
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hr
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !108
  %i.hv = shl nuw i64 1, %i.hs
  %i.hw = and i64 %i.hu, %i.hv
  %.not = icmp eq i64 %i.hw, 0
  br i1 %.not, label %bb.ca, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread

bb.ca:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %13)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #46
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190

bb.ce:                                            ; preds = %bb.bx
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cf:                                            ; preds = %bb.ca
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #46
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cc
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #46
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.ch ], [ %i.hz, %bb.cg ], [ %i.hy, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %bb.de

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit171, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174
  %i.ib = load i8, ptr %1, align 8, !tbaa !484
  %i.ic = icmp eq i8 %i.ib, 3
  br i1 %i.ic, label %tailrecurse.i177, label %tailrecurse._crit_edge.i175

tailrecurse.i177:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread, %.noexc179
  %.tr5.i = phi ptr [ %i.if, %.noexc179 ], [ %1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i)
          to label %.noexc178 unwind label %.loopexit228, !inline_history !507

.noexc178:                                        ; preds = %tailrecurse.i177
  %i.id = getelementptr inbounds nuw i8, ptr %.tr5.i, i64 88
  %i.ie = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id)
          to label %.noexc179 unwind label %.loopexit228, !inline_history !507

.noexc179:                                        ; preds = %.noexc178
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 48 ; 3 uses
  %i.ig = load i8, ptr %i.if, align 8, !tbaa !484
  %i.ih = icmp eq i8 %i.ig, 3
  br i1 %i.ih, label %tailrecurse.i177, label %tailrecurse._crit_edge.i175

tailrecurse._crit_edge.i175:                      ; preds = %.noexc179, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread
  %.tr.lcssa.i176 = phi ptr [ %1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread ], [ %i.if, %.noexc179 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i176, i64 88
  %i.ij = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ii)
          to label %bb.cj unwind label %.loopexit.split-lp229, !inline_history !507 ; 2 uses

bb.cj:                                            ; preds = %tailrecurse._crit_edge.i175
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 48 ; 3 uses
  %i.il = load i8, ptr %0, align 8, !tbaa !484
  %i.im = icmp eq i8 %i.il, 3
  br i1 %i.im, label %tailrecurse.i183, label %tailrecurse._crit_edge.i181

tailrecurse.i183:                                 ; preds = %bb.cj, %.noexc186
  %.tr5.i184 = phi ptr [ %i.ip, %.noexc186 ], [ %0, %bb.cj ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i184)
          to label %.noexc185 unwind label %.loopexit223, !inline_history !507

.noexc185:                                        ; preds = %tailrecurse.i183
  %i.in = getelementptr inbounds nuw i8, ptr %.tr5.i184, i64 88
  %i.io = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.in)
          to label %.noexc186 unwind label %.loopexit223, !inline_history !507

.noexc186:                                        ; preds = %.noexc185
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 48 ; 3 uses
  %i.iq = load i8, ptr %i.ip, align 8, !tbaa !484
  %i.ir = icmp eq i8 %i.iq, 3
  br i1 %i.ir, label %tailrecurse.i183, label %tailrecurse._crit_edge.i181

tailrecurse._crit_edge.i181:                      ; preds = %.noexc186, %bb.cj
  %.tr.lcssa.i182 = phi ptr [ %0, %bb.cj ], [ %i.ip, %.noexc186 ]
  %i.is = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i182, i64 88
  %i.it = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is)
          to label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit188 unwind label %.loopexit.split-lp224, !inline_history !507

_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit188: ; preds = %tailrecurse._crit_edge.i181
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 56 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !544
  %i.ix = load ptr, ptr %i.ik, align 8, !tbaa !546
  %.not243 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not243, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.co, %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit188
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext 2)
          to label %bb.cq unwind label %.loopexit.split-lp224

.loopexit228:                                     ; preds = %tailrecurse.i177, %.noexc178
  %lpad.loopexit230 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp229:                            ; preds = %tailrecurse._crit_edge.i175
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit223:                                     ; preds = %tailrecurse.i183, %.noexc185
  %lpad.loopexit225 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp224:                            ; preds = %._crit_edge, %tailrecurse._crit_edge.i181
  %lpad.loopexit.split-lp226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.lr.ph:                                           ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit188, %bb.co
  %.0240 = phi i64 [ %i.jc, %bb.co ], [ 0, %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit188 ] ; 3 uses
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i64 noundef %.0240)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %.lr.ph
  %i.iz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i64 noundef %.0240)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.jb = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ja)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN6duckdb14ConstantVector9ReferenceERNS_6VectorES2_mm(ptr noundef nonnull align 8 dereferenceable(104) %i.iz, ptr noundef nonnull align 8 dereferenceable(104) %i.jb, i64 noundef %2, i64 noundef %3)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.jc = add nuw i64 %.0240, 1                   ; 2 uses
  %i.jd = load ptr, ptr %i.iv, align 8, !tbaa !544
  %i.je = load ptr, ptr %i.ik, align 8, !tbaa !546
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ashr exact i64 %i.jh, 3
  %i.jj = icmp ult i64 %i.jc, %i.ji
  br i1 %i.jj, label %.lr.ph, label %._crit_edge, !llvm.loop !2595

bb.cp:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %.lr.ph
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cq:                                            ; preds = %._crit_edge
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !520 ; 3 uses
  %.not.i.i189 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i189, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !108
  %i.jo = or i64 %i.jn, 1
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !108
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190: ; preds = %bb.cr, %bb.cq, %bb.cd
  %i.jp = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i.i191 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i191, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i195, label %bb.cs

bb.cs:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 4 uses
  %i.js = load atomic i64, ptr %i.jr acquire, align 8 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 4294967297
  %i.ju = trunc i64 %i.js to i32                  ; 2 uses
  br i1 %i.jt, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.jr, align 8, !tbaa !410
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 0, ptr %i.jv, align 4, !tbaa !412
  %i.jw = load ptr, ptr %i.jq, align 8, !tbaa !413
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #46, !inline_history !849
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !413
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #46, !inline_history !849
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i195

bb.cu:                                            ; preds = %bb.cs
  %i.kc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i192 = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i.i.i.i192, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kd = add nsw i32 %i.ju, -1
  store i32 %i.kd, ptr %i.jr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193

bb.cw:                                            ; preds = %bb.cu
  %i.ke = atomicrmw volatile add ptr %i.jr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i.i.i.i194 = phi i32 [ %i.ju, %bb.cv ], [ %i.ke, %bb.cw ]
  %i.kf = icmp eq i32 %.0.i.i.i.i.i.i.i194, 1
  br i1 %i.kf, label %bb.cx, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i195, !prof !88

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #46
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i195

_ZN6duckdb15SelectionVectorD2Ev.exit.i195:        ; preds = %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193, %bb.ct, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190
  %i.kg = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i1.i196 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i1.i196, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200, label %bb.cy

bb.cy:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i195
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 4 uses
  %i.kj = load atomic i64, ptr %i.ki acquire, align 8 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 4294967297
  %i.kl = trunc i64 %i.kj to i32                  ; 2 uses
  br i1 %i.kk, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.ki, align 8, !tbaa !410
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  store i32 0, ptr %i.km, align 4, !tbaa !412
  %i.kn = load ptr, ptr %i.kh, align 8, !tbaa !413
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #46, !inline_history !850
  %i.kq = load ptr, ptr %i.kh, align 8, !tbaa !413
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #46, !inline_history !850
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200

bb.da:                                            ; preds = %bb.cy
  %i.kt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i2.i197 = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i.i.i2.i197, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ku = add nsw i32 %i.kl, -1
  store i32 %i.ku, ptr %i.ki, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i198

bb.dc:                                            ; preds = %bb.da
  %i.kv = atomicrmw volatile add ptr %i.ki, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i198

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i198: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i.i4.i199 = phi i32 [ %i.kl, %bb.db ], [ %i.kv, %bb.dc ]
  %i.kw = icmp eq i32 %.0.i.i.i.i.i.i4.i199, 1
  br i1 %i.kw, label %bb.dd, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200, !prof !88

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i198
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #46
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200:      ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i195, %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i198, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br label %bb.di

bb.de:                                            ; preds = %.loopexit223, %.loopexit.split-lp224, %.loopexit228, %.loopexit.split-lp229, %bb.ci, %bb.cp, %bb.ce
  %.pn90.pn.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.ce ], [ %lpad.loopexit.split-lp231, %.loopexit.split-lp229 ], [ %.pn, %bb.ci ], [ %i.jk, %bb.cp ], [ %lpad.loopexit230, %.loopexit228 ], [ %lpad.loopexit225, %.loopexit223 ], [ %lpad.loopexit.split-lp226, %.loopexit.split-lp224 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br label %bb.dj

bb.df:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  call void @_ZN6duckdb6Vector8GetValueERKS0_m(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %14, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2), !inline_history !513
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  ret void

bb.dj:                                            ; preds = %bb.dh, %bb.de, %bb.bw, %bb.ah
  %.pn112 = phi { ptr, i32 } [ %i.kx, %bb.dh ], [ %.pn107.pn.pn.pn, %bb.ah ], [ %.pn97.pn.pn.pn.pn.pn.pn, %bb.bw ], [ %.pn90.pn.pn.pn, %bb.de ]
  resume { ptr, i32 } %.pn112
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 6 uses
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  store i32 %i.a, ptr %.sroa.0, align 8, !tbaa !153
  %i.b = icmp ult i32 %i.a, 13
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.4..sroa_idx15 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx15, i8 0, i64 12, i1 false)
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %2, 15
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.4..sroa_idx, ptr align 1 %1, i64 %i.d, i1 false)
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre = load ptr, ptr %.sroa.0.8..sroa_idx, align 8
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.d:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %.sroa.0.4..sroa_idx14 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.e, ptr %.sroa.0.4..sroa_idx14, align 4
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.8..sroa.0.8..sroa.0.8. = phi ptr [ null, %bb.b ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre, %bb.c ], [ %1, %bb.d ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i32
  %i.f = icmp ult i32 %.sroa.0.0.extract.trunc.i, 13
  br i1 %i.f, label %_ZN6duckdb12StringVector9AddStringERNS_6VectorENS_8string_tE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb8string_tC2EPKcj.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 4294967295 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.j = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0        ; 3 uses
  store i64 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.n = trunc i64 %i.k to i32
  %i.o = icmp ult i32 %i.n, 13                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.q = select i1 %i.o, ptr %i.p, ptr %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr readonly align 1 %.sroa.0.8..sroa.0.8..sroa.0.8., i64 %i.i, i1 false)
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.k, 15                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = sub nuw nsw i64 12, %i.r
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.t, i1 false)
  %.fca.1.load.pre.i.i.i.i.i = load ptr, ptr %i.l, align 8
  br label %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.v = load i32, ptr %i.u, align 1
  store i32 %i.v, ptr %i.p, align 4
  br label %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i

_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i: ; preds = %bb.g, %bb.f
  %.fca.1.load.i.i.i.i.i = phi ptr [ %.fca.1.load.pre.i.i.i.i.i, %bb.f ], [ %i.u, %bb.g ]
  %.fca.0.load.i.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN6duckdb12StringVector9AddStringERNS_6VectorENS_8string_tE.exit

_ZN6duckdb12StringVector9AddStringERNS_6VectorENS_8string_tE.exit: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i
  %.pn13.i = phi i64 [ %.fca.0.load.i.i.i.i.i, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., %_ZN6duckdb8string_tC2EPKcj.exit ]
  %.pn11.i = phi ptr [ %.fca.1.load.i.i.i.i.i, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i ], [ %.sroa.0.8..sroa.0.8..sroa.0.8., %_ZN6duckdb8string_tC2EPKcj.exit ]
  %.pn.i = insertvalue { i64, ptr } poison, i64 %.pn13.i, 0
  %.fca.1.insert.merged.i = insertvalue { i64, ptr } %.pn.i, ptr %.pn11.i, 1
  ret { i64, ptr } %.fca.1.insert.merged.i
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = icmp ult i32 %.sroa.0.0.extract.trunc, 13
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = and i64 %1, 4294967295                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef %i.d) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 3 uses
  store i64 %i.f, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = trunc i64 %i.f to i32
  %i.j = icmp ult i32 %i.i, 13                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.l = select i1 %i.j, ptr %i.k, ptr %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr readonly align 1 %2, i64 %i.d, i1 false)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %i.f, 15                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = sub nuw nsw i64 12, %i.m
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  %.fca.1.load.pre.i.i.i.i = load ptr, ptr %i.g, align 8
  br label %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  store i32 %i.q, ptr %i.k, align 4
  br label %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit

_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit: ; preds = %bb.c, %bb.d
  %.fca.1.load.i.i.i.i = phi ptr [ %.fca.1.load.pre.i.i.i.i, %bb.c ], [ %i.p, %bb.d ]
  %.fca.0.load.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit
  %.pn13 = phi i64 [ %.fca.0.load.i.i.i.i, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit ], [ %1, %bb.a ]
  %.pn11 = phi ptr [ %.fca.1.load.i.i.i.i, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit ], [ %2, %bb.a ]
  %.pn = insertvalue { i64, ptr } poison, i64 %.pn13, 0
  %.fca.1.insert.merged = insertvalue { i64, ptr } %.pn, ptr %.pn11, 1
  ret { i64, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 6 uses
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  store i32 %i.a, ptr %.sroa.0, align 8, !tbaa !153
  %i.b = icmp ult i32 %i.a, 13
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.4..sroa_idx15 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx15, i8 0, i64 12, i1 false)
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %2, 15
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.4..sroa_idx, ptr align 1 %1, i64 %i.d, i1 false)
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre = load ptr, ptr %.sroa.0.8..sroa_idx, align 8
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.d:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %.sroa.0.4..sroa_idx14 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.e, ptr %.sroa.0.4..sroa_idx14, align 4
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.8..sroa.0.8..sroa.0.8. = phi ptr [ null, %bb.b ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre, %bb.c ], [ %1, %bb.d ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i32
  %i.f = icmp ult i32 %.sroa.0.0.extract.trunc.i, 13
  br i1 %i.f, label %_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb8string_tC2EPKcj.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 4294967295 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.j = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0        ; 3 uses
  store i64 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.n = trunc i64 %i.k to i32
  %i.o = icmp ult i32 %i.n, 13                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.q = select i1 %i.o, ptr %i.p, ptr %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr readonly align 1 %.sroa.0.8..sroa.0.8..sroa.0.8., i64 %i.i, i1 false)
end_hunk_1
