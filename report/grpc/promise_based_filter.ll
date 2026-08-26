Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/promise_based_filter?download=true
inline.NumInlined: 8114
inline.NumDeleted: 4051
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
%struct.grpc_closure_list = type { ptr, ptr }
%"struct.grpc_core::ExecCtx::CombinerData" = type { ptr, ptr }
%"class.std::optional.600" = type { %"struct.std::_Optional_base.601" }
%"struct.std::_Optional_base.601" = type { %"struct.std::_Optional_payload.603" }
%"struct.std::_Optional_payload.603" = type { %"struct.std::_Optional_payload.base.615", [7 x i8] }
%"struct.std::_Optional_payload.base.615" = type { %"struct.std::_Optional_payload_base.base.614" }
%"struct.std::_Optional_payload_base.base.614" = type <{ %"union.std::_Optional_payload_base<grpc_core::ScopedTimeCache>::_Storage", i8 }>
%"union.std::_Optional_payload_base<grpc_core::ScopedTimeCache>::_Storage" = type { %"class.grpc_core::ScopedTimeCache" }
%"class.grpc_core::ScopedTimeCache" = type { %"class.grpc_core::Timestamp::ScopedSource", %"class.std::optional.606" }
%"class.grpc_core::Timestamp::ScopedSource" = type { %"class.grpc_core::Timestamp::Source", ptr }
%"class.grpc_core::Timestamp::Source" = type { ptr }
%"class.std::optional.606" = type { %"struct.std::_Optional_base.607" }
%"struct.std::_Optional_base.607" = type { %"struct.std::_Optional_payload.609" }
%"struct.std::_Optional_payload.609" = type { %"struct.std::_Optional_payload_base.base.611", [7 x i8] }
%"struct.std::_Optional_payload_base.base.611" = type <{ %"union.std::_Optional_payload_base<grpc_core::Timestamp>::_Storage", i8 }>
%"union.std::_Optional_payload_base<grpc_core::Timestamp>::_Storage" = type { %"class.grpc_core::Timestamp" }
%"class.grpc_core::Timestamp" = type { i64 }
%class.anon.19 = type { ptr, %"class.grpc_core::channelz::DataSink" }
%"class.grpc_core::channelz::DataSink" = type { %"class.std::weak_ptr", %"class.std::shared_ptr" }
%"class.std::weak_ptr" = type { %"class.std::__weak_ptr" }
%"class.std::__weak_ptr" = type { ptr, %"class.std::__weak_count" }
%"class.std::__weak_count" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.grpc_core::channelz::PropertyList" = type { %"class.grpc_core::channelz::OtherPropertyValue", %"class.std::vector" }
%"class.grpc_core::channelz::OtherPropertyValue" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon.397 = type { i8 }
%"class.std::variant.355" = type { %"struct.std::__detail::__variant::_Variant_base.base.392", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base.392" = type { %"struct.std::__detail::__variant::_Move_assign_base.base.391" }
%"struct.std::__detail::__variant::_Move_assign_base.base.391" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base.390" }
%"struct.std::__detail::__variant::_Copy_assign_base.base.390" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base.389" }
%"struct.std::__detail::__variant::_Move_ctor_base.base.389" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base.388" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base.388" = type { %"struct.std::__detail::__variant::_Variant_storage.base.387" }
%"struct.std::__detail::__variant::_Variant_storage.base.387" = type <{ %"union.std::__detail::__variant::_Variadic_union.362", i8 }>
%"union.std::__detail::__variant::_Variadic_union.362" = type { %"union.std::__detail::__variant::_Variadic_union.364" }
%"union.std::__detail::__variant::_Variadic_union.364" = type { %"union.std::__detail::__variant::_Variadic_union.367", [16 x i8] }
%"union.std::__detail::__variant::_Variadic_union.367" = type { %"union.std::__detail::__variant::_Variadic_union.369" }
%"union.std::__detail::__variant::_Variadic_union.369" = type { %"union.std::__detail::__variant::_Variadic_union.371" }
%"union.std::__detail::__variant::_Variadic_union.371" = type { %"union.std::__detail::__variant::_Variadic_union.373" }
%"union.std::__detail::__variant::_Variadic_union.373" = type { %"union.std::__detail::__variant::_Variadic_union.375" }
%"union.std::__detail::__variant::_Variadic_union.375" = type { %"union.std::__detail::__variant::_Variadic_union.377" }
%"union.std::__detail::__variant::_Variadic_union.377" = type { %"struct.std::__detail::__variant::_Uninitialized.378", [8 x i8] }
%"struct.std::__detail::__variant::_Uninitialized.378" = type { %"class.grpc_core::Timestamp" }
%"class.std::optional.562" = type { %"struct.std::_Optional_base.563" }
%"struct.std::_Optional_base.563" = type { %"struct.std::_Optional_payload.565" }
%"struct.std::_Optional_payload.565" = type { %"struct.std::_Optional_payload.base.569", [7 x i8] }
%"struct.std::_Optional_payload.base.569" = type { %"struct.std::_Optional_payload_base.base.568" }
%"struct.std::_Optional_payload_base.base.568" = type { %"union.std::_Optional_payload_base<std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>::_Storage", i8 }
%"union.std::_Optional_payload_base<std::variant<std::basic_string_view<char>, std::__cxx11::basic_string<char>, long, unsigned long, double, bool, grpc_core::Duration, grpc_core::Timestamp, absl::lts_20250512::Status, absl::lts_20250512::Time, std::shared_ptr<grpc_core::channelz::OtherPropertyValue>>>::_Storage" = type { %"class.std::variant.355" }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr.77" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr.77" = type { %"struct.std::__uniq_ptr_data.78" }
%"struct.std::__uniq_ptr_data.78" = type { %"class.std::__uniq_ptr_impl.79" }
%"class.std::__uniq_ptr_impl.79" = type { %"class.std::tuple.80" }
%"class.std::tuple.80" = type { %"struct.std::_Tuple_impl.81" }
%"struct.std::_Tuple_impl.81" = type { %"struct.std::_Head_base.84" }
%"struct.std::_Head_base.84" = type { ptr }
%"class.grpc_core::promise_filter_detail::BaseCallData::CapturedBatch" = type { ptr }
%"class.grpc_core::DebugLocation" = type { i8 }
%"class.absl::lts_20250512::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data" = type { ptr }
%"class.absl::lts_20250512::log_internal::LogMessage::OstreamView" = type { %"class.std::basic_streambuf", ptr, %"class.absl::lts_20250512::Span.583", %"class.absl::lts_20250512::Span.583", %"class.absl::lts_20250512::Span.583" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.absl::lts_20250512::Span.583" = type { ptr, i64 }
%"class.grpc_core::promise_filter_detail::BaseCallData::Flusher" = type { %"class.absl::lts_20250512::InlinedVector", %"class.grpc_core::CallCombinerClosureList", ptr }
%"class.absl::lts_20250512::InlinedVector" = type { %"class.absl::lts_20250512::inlined_vector_internal::Storage" }
%"class.absl::lts_20250512::inlined_vector_internal::Storage" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple", %"union.absl::lts_20250512::inlined_vector_internal::Storage<grpc_transport_stream_op_batch *, 1, std::allocator<grpc_transport_stream_op_batch *>>::Data" }
%"class.absl::lts_20250512::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.90" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.90" = type { i64 }
%"union.absl::lts_20250512::inlined_vector_internal::Storage<grpc_transport_stream_op_batch *, 1, std::allocator<grpc_transport_stream_op_batch *>>::Data" = type { %"struct.absl::lts_20250512::inlined_vector_internal::Storage<grpc_transport_stream_op_batch *, 1, std::allocator<grpc_transport_stream_op_batch *>>::Allocated" }
%"struct.absl::lts_20250512::inlined_vector_internal::Storage<grpc_transport_stream_op_batch *, 1, std::allocator<grpc_transport_stream_op_batch *>>::Allocated" = type { ptr, i64 }
%"class.grpc_core::CallCombinerClosureList" = type { %"class.absl::lts_20250512::InlinedVector.91" }
%"class.absl::lts_20250512::InlinedVector.91" = type { %"class.absl::lts_20250512::inlined_vector_internal::Storage.92" }
%"class.absl::lts_20250512::inlined_vector_internal::Storage.92" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple.93", %"union.absl::lts_20250512::inlined_vector_internal::Storage<grpc_core::CallCombinerClosureList::CallCombinerClosure, 6, std::allocator<grpc_core::CallCombinerClosureList::CallCombinerClosure>>::Data" }
%"class.absl::lts_20250512::container_internal::CompressedTuple.93" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl.94" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl.94" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.90" }
%"union.absl::lts_20250512::inlined_vector_internal::Storage<grpc_core::CallCombinerClosureList::CallCombinerClosure, 6, std::allocator<grpc_core::CallCombinerClosureList::CallCombinerClosure>>::Data" = type { %"struct.absl::lts_20250512::inlined_vector_internal::Storage<grpc_core::CallCombinerClosureList::CallCombinerClosure, 6, std::allocator<grpc_core::CallCombinerClosureList::CallCombinerClosure>>::Allocated", [128 x i8] }
%"struct.absl::lts_20250512::inlined_vector_internal::Storage<grpc_core::CallCombinerClosureList::CallCombinerClosure, 6, std::allocator<grpc_core::CallCombinerClosureList::CallCombinerClosure>>::Allocated" = type { ptr, i64 }
%"class.grpc_core::metadata_detail::GetStringValueHelper" = type { ptr, ptr }
%"class.std::optional.162" = type { %"struct.std::_Optional_base.163" }
%"struct.std::_Optional_base.163" = type { %"struct.std::_Optional_payload.165" }
%"struct.std::_Optional_payload.165" = type { %"struct.std::_Optional_payload_base.base.167", [7 x i8] }
%"struct.std::_Optional_payload_base.base.167" = type <{ %"union.std::_Optional_payload_base<std::basic_string_view<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::basic_string_view<char>>::_Storage" = type { %"class.std::basic_string_view" }
%"class.grpc_core::metadata_detail::DebugStringBuilder" = type { %"class.std::__cxx11::basic_string" }
%class.anon.592 = type { ptr }
%"class.std::optional.51" = type { %"struct.std::_Optional_base.52" }
%"struct.std::_Optional_base.52" = type { %"struct.std::_Optional_payload.54" }
%"struct.std::_Optional_payload.54" = type { %"struct.std::_Optional_payload.base.66", [7 x i8] }
%"struct.std::_Optional_payload.base.66" = type { %"struct.std::_Optional_payload_base.base.65" }
%"struct.std::_Optional_payload_base.base.65" = type <{ %"union.std::_Optional_payload_base<std::unique_ptr<grpc_core::Message, grpc_core::Arena::PooledDeleter>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::unique_ptr<grpc_core::Message, grpc_core::Arena::PooledDeleter>>::_Storage" = type { %"class.std::unique_ptr.57" }
%"class.std::unique_ptr.57" = type { %"struct.std::__uniq_ptr_data.58" }
%"struct.std::__uniq_ptr_data.58" = type { %"class.std::__uniq_ptr_impl.59" }
%"class.std::__uniq_ptr_impl.59" = type { %"class.std::tuple.60" }
%"class.std::tuple.60" = type { %"struct.std::_Tuple_impl.61" }
%"struct.std::_Tuple_impl.61" = type { %"struct.std::_Tuple_impl.62", %"struct.std::_Head_base.64" }
%"struct.std::_Tuple_impl.62" = type { %"struct.std::_Head_base.63" }
%"struct.std::_Head_base.63" = type { %"class.grpc_core::Arena::PooledDeleter" }
%"class.grpc_core::Arena::PooledDeleter" = type { i8 }
%"struct.std::_Head_base.64" = type { ptr }
%"class.grpc_core::Poll.419" = type { i8, [7 x i8], %union.anon.420 }
%union.anon.420 = type { %"class.std::optional.51" }
%"class.grpc_core::NextResult" = type <{ %"class.grpc_core::RefCountedPtr.24", i8, [7 x i8] }>
%"class.grpc_core::RefCountedPtr.24" = type { ptr }
%"class.grpc_core::promise_detail::PromiseLike.38" = type { %"class.grpc_core::If" }
%"class.grpc_core::If" = type { i8, %union.anon.39 }
%union.anon.39 = type { %"class.grpc_core::promise_detail::PromiseLike.40" }
%"class.grpc_core::promise_detail::PromiseLike.40" = type { %"class.grpc_core::Map" }
%"class.grpc_core::Map" = type { %"class.grpc_core::promise_detail::PromiseLike.base", %"class.grpc_core::promise_detail::WrappedFn" }
%"class.grpc_core::promise_detail::PromiseLike.base" = type { %"class.grpc_core::InterceptorList<std::unique_ptr<grpc_core::Message, grpc_core::Arena::PooledDeleter>>::RunPromise.base" }
%"class.grpc_core::InterceptorList<std::unique_ptr<grpc_core::Message, grpc_core::Arena::PooledDeleter>>::RunPromise.base" = type <{ %union.anon.42, i8 }>
%union.anon.42 = type { %"struct.grpc_core::InterceptorList<std::unique_ptr<grpc_core::Message, grpc_core::Arena::PooledDeleter>>::RunPromise::AsyncResolution" }
%"struct.grpc_core::InterceptorList<std::unique_ptr<grpc_core::Message, grpc_core::Arena::PooledDeleter>>::RunPromise::AsyncResolution" = type { ptr, ptr, %"class.std::unique_ptr.43" }
%"class.std::unique_ptr.43" = type { %"struct.std::__uniq_ptr_data.44" }
%"struct.std::__uniq_ptr_data.44" = type { %"class.std::__uniq_ptr_impl.45" }
%"class.std::__uniq_ptr_impl.45" = type { %"class.std::tuple.46" }
%"class.std::tuple.46" = type { %"struct.std::_Tuple_impl.47" }
%"struct.std::_Tuple_impl.47" = type { %"struct.std::_Tuple_impl.48", %"struct.std::_Head_base.50" }
%"struct.std::_Tuple_impl.48" = type { %"struct.std::_Head_base.49" }
%"struct.std::_Head_base.49" = type { %"class.grpc_core::Arena::ArrayPooledDeleter" }
%"class.grpc_core::Arena::ArrayPooledDeleter" = type { i8 }
%"struct.std::_Head_base.50" = type { ptr }
%"class.grpc_core::promise_detail::WrappedFn" = type { %class.anon.69 }
%class.anon.69 = type { %"class.grpc_core::RefCountedPtr.24" }
%"class.grpc_core::Poll.185" = type { i8, [7 x i8], %union.anon.186 }
%union.anon.186 = type { %"class.grpc_core::NextResult" }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::allocator" = type { i8 }
%"class.grpc_core::pipe_detail::Push" = type { %"class.grpc_core::RefCountedPtr.24", %"class.std::variant" }
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type { %"union.std::__detail::__variant::_Variadic_union", i8 }
%"union.std::__detail::__variant::_Variadic_union" = type { %"struct.std::__detail::__variant::_Uninitialized" }
%"struct.std::__detail::__variant::_Uninitialized" = type { %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [16 x i8] }
%"class.grpc_core::promise_detail::Seq" = type { %"struct.grpc_core::promise_detail::SeqState" }
%"struct.grpc_core::promise_detail::SeqState" = type <{ %union.anon.36, i8, [7 x i8] }>
%union.anon.36 = type { %"class.grpc_core::promise_detail::PromiseLike.38" }
%"class.grpc_core::Poll" = type { i8, %union.anon.184 }
%union.anon.184 = type { i8 }
%class.anon.197 = type { ptr }
%class.anon.198 = type { ptr }
%"class.grpc_core::ClientInitialMetadataOutstandingToken" = type { ptr }
%"class.grpc_core::promise_filter_detail::ClientCallData::PollContext" = type <{ %"class.grpc_core::ManualConstructor.275", ptr, ptr, i8, i8, [6 x i8] }>
%"class.grpc_core::ManualConstructor.275" = type { [8 x i8] }
%"class.grpc_core::ArenaPromise" = type { %"struct.grpc_core::arena_promise_detail::VtableAndArg" }
%"struct.grpc_core::arena_promise_detail::VtableAndArg" = type { ptr, [8 x i8], %"struct.grpc_core::arena_promise_detail::ArgType" }
%"struct.grpc_core::arena_promise_detail::ArgType" = type { [8 x i8], [8 x i8] }
%"class.std::unique_ptr.177" = type { %"struct.std::__uniq_ptr_data.178" }
%"struct.std::__uniq_ptr_data.178" = type { %"class.std::__uniq_ptr_impl.179" }
%"class.std::__uniq_ptr_impl.179" = type { %"class.std::tuple.180" }
%"class.std::tuple.180" = type { %"struct.std::_Tuple_impl.181" }
%"struct.std::_Tuple_impl.181" = type { %"struct.std::_Tuple_impl.62", %"struct.std::_Head_base.182" }
%"struct.std::_Head_base.182" = type { ptr }
%"class.std::optional.252" = type { %"struct.std::_Optional_base.253" }
%"struct.std::_Optional_base.253" = type { %"struct.std::_Optional_payload.255" }
%"struct.std::_Optional_payload.255" = type { %"struct.std::_Optional_payload.base.259", [7 x i8] }
%"struct.std::_Optional_payload.base.259" = type { %"struct.std::_Optional_payload_base.base.258" }
%"struct.std::_Optional_payload_base.base.258" = type <{ %"union.std::_Optional_payload_base<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::_Storage" = type { %"class.std::unique_ptr.177" }
%"class.grpc_core::Poll.548" = type { i8, [7 x i8], %union.anon.549 }
%union.anon.549 = type { %"class.std::optional.252" }
%"class.grpc_core::NextResult.267" = type <{ %"class.grpc_core::RefCountedPtr.76", i8, [7 x i8] }>
%"class.grpc_core::RefCountedPtr.76" = type { ptr }
%"class.grpc_core::promise_detail::PromiseLike.245" = type { %"class.grpc_core::If.246" }
%"class.grpc_core::If.246" = type { i8, %union.anon.247 }
%union.anon.247 = type { %"class.grpc_core::promise_detail::PromiseLike.248" }
%"class.grpc_core::promise_detail::PromiseLike.248" = type { %"class.grpc_core::Map.249" }
%"class.grpc_core::Map.249" = type { %"class.grpc_core::promise_detail::PromiseLike.base.262", %"class.grpc_core::promise_detail::WrappedFn.263" }
%"class.grpc_core::promise_detail::PromiseLike.base.262" = type { %"class.grpc_core::InterceptorList<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::RunPromise.base" }
%"class.grpc_core::InterceptorList<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::RunPromise.base" = type <{ %union.anon.251, i8 }>
%union.anon.251 = type { %"struct.grpc_core::InterceptorList<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::RunPromise::AsyncResolution" }
%"struct.grpc_core::InterceptorList<std::unique_ptr<grpc_metadata_batch, grpc_core::Arena::PooledDeleter>>::RunPromise::AsyncResolution" = type { ptr, ptr, %"class.std::unique_ptr.43" }
%"class.grpc_core::promise_detail::WrappedFn.263" = type { %class.anon.264 }
%class.anon.264 = type { %"class.grpc_core::RefCountedPtr.76" }
%"class.grpc_core::promise_detail::Seq.238" = type { %"struct.grpc_core::promise_detail::SeqState.239" }
%"struct.grpc_core::promise_detail::SeqState.239" = type <{ %union.anon.240, i8, [7 x i8] }>
%union.anon.240 = type { %"class.grpc_core::promise_detail::PromiseLike.245" }
%"class.grpc_core::Poll.316" = type { i8, [7 x i8], %union.anon.317 }
%union.anon.317 = type { %"class.grpc_core::NextResult.267" }
%"class.grpc_core::Poll.285" = type { i8, %union.anon.286 }
%union.anon.286 = type { %"class.std::unique_ptr.177" }
%"struct.grpc_core::CallArgs" = type { %"class.std::unique_ptr.177", %"class.grpc_core::ClientInitialMetadataOutstandingToken", ptr, ptr, ptr, ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"union.grpc_slice::grpc_slice_data" = type { %"struct.grpc_slice::grpc_slice_data::grpc_slice_refcounted", [8 x i8] }
%"struct.grpc_slice::grpc_slice_data::grpc_slice_refcounted" = type { i64, ptr }
%struct.grpc_slice = type { ptr, %"union.grpc_slice::grpc_slice_data" }
%class.anon.295 = type { ptr }
%class.anon.296 = type { ptr }
%"class.grpc_core::promise_filter_detail::ServerCallData::PollContext" = type <{ %"class.grpc_core::ManualConstructor.275", ptr, ptr, i8, i8, [6 x i8] }>
%"class.grpc_core::Activity::ScopedActivity" = type { ptr }
%"class.std::unique_ptr.320" = type { %"struct.std::__uniq_ptr_data.321" }
%"struct.std::__uniq_ptr_data.321" = type { %"class.std::__uniq_ptr_impl.322" }
%"class.std::__uniq_ptr_impl.322" = type { %"class.std::tuple.323" }
%"class.std::tuple.323" = type { %"struct.std::_Tuple_impl.324" }
%"struct.std::_Tuple_impl.324" = type { %"struct.std::_Head_base.327" }
%"struct.std::_Head_base.327" = type { ptr }
%"class.absl::lts_20250512::log_internal::CheckOpMessageBuilder" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.anon.71 = type { %"class.grpc_core::NextResult" }
%"class.grpc_core::promise_detail::OncePromiseFactory.423" = type { %class.anon.421 }
%class.anon.421 = type { %"class.grpc_core::RefCountedPtr.24", %"class.std::optional.51" }
%"class.grpc_core::promise_detail::PromiseLike.70" = type { %class.anon.71 }
%"class.grpc_core::InterceptorList<std::unique_ptr<grpc_core::Message, grpc_core::Arena::PooledDeleter>>::RunPromise" = type <{ %union.anon.42, i8, [7 x i8] }>
%class.anon.506 = type { ptr }
%"class.grpc_core::promise_detail::OncePromiseFactory.552" = type { %class.anon.550 }
%class.anon.550 = type { %"class.grpc_core::RefCountedPtr.76", %"class.std::optional.252" }
%"class.grpc_core::Slice" = type { %"class.grpc_core::slice_detail::BaseSlice" }
%"class.grpc_core::slice_detail::BaseSlice" = type { %struct.grpc_slice }
%"class.grpc_core::CompressionAlgorithmSet" = type { %"class.grpc_core::BitSet" }
%"class.grpc_core::BitSet" = type { [1 x i8] }
%class.anon.618 = type { %"class.grpc_core::channelz::DataSink", ptr }
%"class.std::unique_ptr.619" = type { %"struct.std::__uniq_ptr_data.620" }
%"struct.std::__uniq_ptr_data.620" = type { %"class.std::__uniq_ptr_impl.621" }
%"class.std::__uniq_ptr_impl.621" = type { %"class.std::tuple.622" }
%"class.std::tuple.622" = type { %"struct.std::_Tuple_impl.623" }
%"struct.std::_Tuple_impl.623" = type { %"struct.std::_Head_base.626" }
%"struct.std::_Head_base.626" = type { ptr }
%"class.std::unique_ptr.627" = type { %"struct.std::__uniq_ptr_data.628" }
%"struct.std::__uniq_ptr_data.628" = type { %"class.std::__uniq_ptr_impl.629" }
%"class.std::__uniq_ptr_impl.629" = type { %"class.std::tuple.630" }
%"class.std::tuple.630" = type { %"struct.std::_Tuple_impl.631" }
%"struct.std::_Tuple_impl.631" = type { %"struct.std::_Head_base.634" }
%"struct.std::_Head_base.634" = type { ptr }
%"class.std::shared_ptr.635" = type { %"class.std::__shared_ptr.636" }
%"class.std::__shared_ptr.636" = type { ptr, %"class.std::__shared_count" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.grpc_core::StaticSlice" = type { %"class.grpc_core::slice_detail::BaseSlice" }
%class.anon.711 = type { ptr }
%class.anon.791 = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }
%"struct.std::pair.754" = type { %"class.std::__cxx11::basic_string", %"class.grpc_core::experimental::Json" }
%"class.grpc_core::experimental::Json" = type { %"class.std::variant.756" }
%"class.std::variant.756" = type { %"struct.std::__detail::__variant::_Variant_base.base.781", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base.781" = type { %"struct.std::__detail::__variant::_Move_assign_base.base.780" }
%"struct.std::__detail::__variant::_Move_assign_base.base.780" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base.779" }
%"struct.std::__detail::__variant::_Copy_assign_base.base.779" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base.778" }
%"struct.std::__detail::__variant::_Move_ctor_base.base.778" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base.777" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base.777" = type { %"struct.std::__detail::__variant::_Variant_storage.base.776" }
%"struct.std::__detail::__variant::_Variant_storage.base.776" = type { %"union.std::__detail::__variant::_Variadic_union.763", i8 }
%"union.std::__detail::__variant::_Variadic_union.763" = type { %"union.std::__detail::__variant::_Variadic_union.765" }
%"union.std::__detail::__variant::_Variadic_union.765" = type { %"union.std::__detail::__variant::_Variadic_union.766" }
%"union.std::__detail::__variant::_Variadic_union.766" = type { %"union.std::__detail::__variant::_Variadic_union.769" }
%"union.std::__detail::__variant::_Variadic_union.769" = type { %"union.std::__detail::__variant::_Variadic_union.770" }
%"union.std::__detail::__variant::_Variadic_union.770" = type { %"struct.std::__detail::__variant::_Uninitialized.771" }
%"struct.std::__detail::__variant::_Uninitialized.771" = type { %"struct.__gnu_cxx::__aligned_membuf.772" }
%"struct.__gnu_cxx::__aligned_membuf.772" = type { [48 x i8] }
%class.anon.801 = type { ptr }
%class.anon.807 = type { ptr }

$_ZN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEED2Ev = comdat any

$_ZNSt10unique_ptrIN9grpc_core21promise_filter_detail12BaseCallData15WeakWakerHandleENS0_16OrphanableDeleteEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN9grpc_core10OrphanableD2Ev = comdat any

$_ZN4absl12lts_202505126StatusD2Ev = comdat any

$_ZN9grpc_core8channelz12PropertyList3SetINS_9TimestampEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_ = comdat any

$_ZN9grpc_core8channelz12PropertyList3SetIS1_EERS1_St17basic_string_viewIcSt11char_traitsIcEET_ = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData11SendMessage18ChannelzPropertiesEv = comdat any

$_ZN9grpc_core8channelz12PropertyListD2Ev = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData14ReceiveMessage18ChannelzPropertiesEv = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData7Flusher6ResumeEP30grpc_transport_stream_op_batch = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData7Flusher8CompleteEP30grpc_transport_stream_op_batch = comdat any

$_ZN9grpc_core23CallCombinerClosureList11RunClosuresEPNS_12CallCombinerE = comdat any

$_ZN9grpc_core23CallCombinerClosureList26RunClosuresWithoutYieldingEPNS_12CallCombinerE = comdat any

$_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_ = comdat any

$_ZN4absl12lts_2025051212log_internal10LogMessagelsINS0_6StatusEEERS2_RKT_ = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData7Flusher10AddClosureEP12grpc_closureN4absl12lts_202505126StatusEPKc = comdat any

$_ZNK9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE11DebugStringB5cxx11Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN9grpc_core10PipeSenderISt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEE5CloseEv = comdat any

$_ZN9grpc_core5Arena10MakePooledINS_7MessageEJEEESt10unique_ptrIT_NS_12arena_detail7IfArrayIS4_NS0_13PooledDeleterENS0_18ArrayPooledDeleterEE6ResultEEDpOT0_ = comdat any

$_ZNSt8optionalIN9grpc_core11pipe_detail4PushISt10unique_ptrINS0_7MessageENS0_5Arena13PooledDeleterEEEEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_ = comdat any

$_ZN9grpc_core11pipe_detail4PushISt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEED2Ev = comdat any

$_ZNSt10unique_ptrIN9grpc_core7MessageENS0_5Arena13PooledDeleterEED2Ev = comdat any

$_ZN9grpc_core14promise_detail3SeqINS_11pipe_detail4NextISt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEEJZNS_12PipeReceiverIS8_E4NextEvEUlSt8optionalIS8_EE_EED2Ev = comdat any

$_ZN9grpc_core11pipe_detail4PushISt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEclEv = comdat any

$_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev = comdat any

$_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev = comdat any

$_ZN9grpc_core8Activity14ScopedActivityD2Ev = comdat any

$_ZN9grpc_core21promise_filter_detail14ClientCallData11PollContextC2EPS1_PNS0_12BaseCallData7FlusherE = comdat any

$_ZN9grpc_core21promise_filter_detail14ClientCallData11PollContext3RunEv = comdat any

$_ZN9grpc_core21promise_filter_detail14ClientCallData11PollContextD2Ev = comdat any

$_ZN9grpc_core8CallArgsD2Ev = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData11SendMessage7GotPipeINS_12PipeReceiverISt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEEEEvPT_ = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData14ReceiveMessage7GotPipeINS_10PipeSenderISt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEEEEvPT_ = comdat any

$_ZN9grpc_core5SliceD2Ev = comdat any

$_ZN9grpc_core21promise_filter_detail14ServerCallData11PollContextC2EPS1_PNS0_12BaseCallData7FlusherENS_13DebugLocationE = comdat any

$_ZN9grpc_core21promise_filter_detail14ServerCallData11PollContextD2Ev = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData11SendMessage7GotPipeINS_10PipeSenderISt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEEEEvPT_ = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData14ReceiveMessage7GotPipeINS_12PipeReceiverISt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEEEEvPT_ = comdat any

$_ZN9grpc_core14promise_detail3SeqINS_11pipe_detail4NextISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEJZNS_12PipeReceiverIS8_E4NextEvEUlSt8optionalIS8_EE_EED2Ev = comdat any

$_ZN9grpc_core11pipe_detail4PushISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEclEv = comdat any

$_ZNK9grpc_core8Activity18CurrentParticipantEv = comdat any

$_ZNK9grpc_core21promise_filter_detail12BaseCallData16ActivityDebugTagB5cxx11Et = comdat any

$_ZThn8_NK9grpc_core21promise_filter_detail12BaseCallData16ActivityDebugTagB5cxx11Et = comdat any

$_ZN9grpc_core8channelz10DataSource9GetZTraceESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNK9grpc_core21promise_filter_detail14ClientCallData20ClientOrServerStringEv = comdat any

$_ZNK9grpc_core21promise_filter_detail14ServerCallData20ClientOrServerStringEv = comdat any

$_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = comdat any

$_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = comdat any

$_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE = comdat any

$_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv = comdat any

$_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = comdat any

$_ZN9grpc_core12arena_detail19DestroyArenaContextINS_8channelz8CallNodeEEEvPv = comdat any

$_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_4CallEE3id_E = comdat any

$_ZN9grpc_core12arena_detail19DestroyArenaContextINS_4CallEEEvPv = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData15WeakWakerHandle6OrphanEv = comdat any

$_ZThn8_N9grpc_core21promise_filter_detail12BaseCallData15WeakWakerHandle6OrphanEv = comdat any

$_ZN9grpc_core21promise_filter_detail12BaseCallData15WeakWakerHandleD2Ev = comdat any

$_ZThn8_N9grpc_core21promise_filter_detail12BaseCallData15WeakWakerHandleD1Ev = comdat any

$_ZN12closure_impl15closure_wrapperEPvN4absl12lts_202505126StatusE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvT_SO_ = comdat any

$_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev = comdat any

end_hunk_0
begin_hunk_1_@_ZN9grpc_core21promise_filter_detail14ClientCallData20PollTrailingMetadataEv:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !654
  call void @_ZN9grpc_core21promise_filter_detail12BaseCallData13CapturedBatch10ResumeWithEPNS1_7FlusherE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.be)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !602
  switch i32 %i.bg, label %bb.aj [
    i32 0, label %bb.u
    i32 1, label %bb.u
    i32 2, label %bb.u
    i32 3, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit
    i32 5, label %bb.v
    i32 4, label %_ZN9grpc_core21promise_filter_detail14ClientCallData11StateStringENS1_17RecvTrailingStateE.exit
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t
  store i8 0, ptr %0, align 8, !tbaa !748
  br label %bb.ak

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !647
  store i8 1, ptr %0, align 8, !tbaa !748
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bj, align 8, !tbaa !395
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.cast68 = ptrtoint ptr %i.bi to i64
  store i64 %.cast68, ptr %i.bk, align 8, !tbaa !579
  br label %bb.ak

bb.v:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !647 ; 3 uses
  call void @_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetadataEvEENS2_INS_10TeMetadataEvEENS2_INS_26GrpcAcceptEncodingMetadataEvEENS2_INS_22GrpcStreamNetworkStateEvEENS2_INS_18GrpcStatusFromWireEvEENS2_INS_20GrpcCallWasCancelledEvEENS2_INS_12WaitForReadyEvEENS2_INS_18IsTransparentRetryEvEENS2_INS_16GrpcTrailersOnlyEvEENS2_INS_10GrpcTarPitEvEEEE12ClearAllImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15ELm16ELm17ELm18ELm19ELm20ELm21ELm22ELm23ELm24ELm25ELm26ELm27ELm28ELm29ELm30ELm31ELm32ELm33ELm34ELm35ELm36ELm37EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(664) %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 640
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !729 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 648 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !731 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, %i.bo
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE5ClearEv.ex, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v, %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i.i.i ], [ %i.bo, %bb.v ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !374 ; 4 uses
  %i.bt = icmp ugt ptr %i.bs, inttoptr (i64 1 to ptr)
  br i1 %i.bt, label %bb.w, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bu = atomicrmw sub ptr %i.bs, i64 1 acq_rel, align 8
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.x, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !732
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.y, !inline_history !734

bb.y:                                             ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i.i.i:     ; preds = %bb.x, %bb.w, %.lr.ph.i.i.i.i.i.i
  %i.ca = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !374 ; 4 uses
  %i.cb = icmp ugt ptr %i.ca, inttoptr (i64 1 to ptr)
  br i1 %i.cb, label %bb.z, label %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i.i.i
  %i.cc = atomicrmw sub ptr %i.ca, i64 1 acq_rel, align 8
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.aa, label %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !732
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i.i.i unwind label %bb.ab, !inline_history !734

bb.ab:                                            ; preds = %bb.aa
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #41
  unreachable

_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.bq
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN9grpc_core5SliceES2_ES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !735

_ZSt8_DestroyIPSt4pairIN9grpc_core5SliceES2_ES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIN9grpc_core5SliceES2_EEvPT_.exit.i.i.i.i.i.i
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !731
  br label %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE5ClearEv.ex

_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE5ClearEv.ex: ; preds = %bb.v, %_ZSt8_DestroyIPSt4pairIN9grpc_core5SliceES2_ES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.cj = load ptr, ptr %i.bl, align 8, !tbaa !647
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cl = load i64, ptr %i.ck, align 16, !tbaa !135 ; 3 uses
  store i64 %i.cl, ptr %9, align 8, !tbaa !135
  %i.cm = trunc i64 %i.cl to i1
  br i1 %i.cm, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE5ClearEv.ex
  %i.cn = inttoptr i64 %i.cl to ptr
  %i.co = atomicrmw add ptr %i.cn, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE5ClearEv.ex, %bb.ac
  invoke void @_ZN9grpc_core21promise_filter_detail14ClientCallData18SetStatusFromErrorEP19grpc_metadata_batchN4absl12lts_202505126StatusE(ptr noundef nonnull align 16 dereferenceable(272) %1, ptr noundef %i.cj, ptr noundef nonnull align 8 %9)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.cp = load i64, ptr %9, align 8, !tbaa !135   ; 2 uses
  %i.cq = trunc i64 %i.cp to i1
  br i1 %i.cq, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit59, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = inttoptr i64 %i.cp to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cr)
          to label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit59 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #41
  unreachable

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit59: ; preds = %bb.ad, %bb.ae
  %i.cu = load ptr, ptr %i.bl, align 8, !tbaa !647
  store i8 1, ptr %0, align 8, !tbaa !748
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cv, align 8, !tbaa !395
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.cast = ptrtoint ptr %i.cu to i64
  store i64 %.cast, ptr %i.cw, align 8, !tbaa !579
  br label %bb.ak

bb.ag:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #40
  br label %bb.al

_ZN9grpc_core21promise_filter_detail14ClientCallData11StateStringENS1_17RecvTrailingStateE.exit: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !818
  store ptr @.str.84, ptr %2, align 8, !tbaa !134, !noalias !818
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.cy, align 8, !tbaa !340, !noalias !818
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.31, i64 17, ptr nonnull %2, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !818
  %i.cz = load ptr, ptr %10, align 8, !tbaa !195
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !192
  invoke void @_ZN9grpc_core5CrashESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE(i64 %i.db, ptr %i.cz, ptr nonnull @.str.3, i32 1859) #44
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %_ZN9grpc_core21promise_filter_detail14ClientCallData11StateStringENS1_17RecvTrailingStateE.exit
  unreachable

bb.ai:                                            ; preds = %_ZN9grpc_core21promise_filter_detail14ClientCallData11StateStringENS1_17RecvTrailingStateE.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %10, align 8, !tbaa !195  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ai
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !134
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.al

bb.aj:                                            ; preds = %bb.t
  call void @gpr_unreachable_code(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.3, i32 noundef 1862) #44
  unreachable

bb.ak:                                            ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit59, %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit, %bb.u
  ret void

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn36 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.cx, %bb.ag ]
  resume { ptr, i32 } %.pn36
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core21promise_filter_detail14ClientCallData18SetStatusFromErrorEP19grpc_metadata_batchN4absl12lts_202505126StatusE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(272) %0, ptr noundef %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca %"union.grpc_slice::grpc_slice_data", align 8 ; 4 uses
  %.sroa.6.i.i.i = alloca %"union.grpc_slice::grpc_slice_data", align 8 ; 4 uses
  %3 = alloca %struct.grpc_slice, align 8         ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %.sroa.9 = alloca %"union.grpc_slice::grpc_slice_data", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 2, ptr %i.b, align 4, !tbaa !821
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !189
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !192
  store i8 0, ptr %i.c, align 8, !tbaa !134
  %i.e = load i64, ptr %2, align 8, !tbaa !135    ; 3 uses
  store i64 %i.e, ptr %6, align 8, !tbaa !135
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.e to ptr
  %i.h = atomicrmw add ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 16, !tbaa !58
  invoke void @_Z21grpc_error_get_statusN4absl12lts_202505126StatusEN9grpc_core9TimestampEP16grpc_status_codePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_5http214Http2ErrorCodeEPPKc(ptr noundef nonnull align 8 %6, i64 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.b, ptr noundef nonnull %5, ptr noundef null, ptr noundef null)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.j = load i64, ptr %6, align 8, !tbaa !135    ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.j to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !22
  %storemerge.i.i.i.i = or i16 %i.p, 256
  store i16 %storemerge.i.i.i.i, ptr %i.o, align 2, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 620
  %storemerge.i.i.i = load i32, ptr %i.b, align 4, !tbaa !821
  store i32 %storemerge.i.i.i, ptr %i.q, align 4, !tbaa !823
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.r, ptr %7, align 8, !tbaa !189
  %i.s = load ptr, ptr %5, align 8, !tbaa !195    ; 2 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !192  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.t, ptr %i.a, align 8, !tbaa !58
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.v, ptr %7, align 8, !tbaa !195
  %i.w = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.w, ptr %i.r, align 8, !tbaa !134
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.f
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.r, %bb.f ] ; 2 uses
  switch i64 %i.t, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.s, align 1, !tbaa !134
  store i8 %i.y, ptr %i.x, align 1, !tbaa !134
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !192
  %i.ab = load ptr, ptr %7, align 8, !tbaa !195
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !825
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !189, !noalias !825
  %i.ae = load ptr, ptr %7, align 8, !tbaa !195, !noalias !825 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !192, !noalias !825 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.ai, i1 false), !noalias !825
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  store ptr %i.ae, ptr %4, align 8, !tbaa !195, !noalias !825
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !134, !noalias !825
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !134, !noalias !825
  %.pre.i = load i64, ptr %i.aa, align 8, !tbaa !192, !noalias !825
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.ak = phi i64 [ %i.ag, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !192, !noalias !825
  store ptr %i.r, ptr %7, align 8, !tbaa !195, !noalias !825
  store i64 0, ptr %i.aa, align 8, !tbaa !192, !noalias !825
  store i8 0, ptr %i.r, align 8, !tbaa !134, !noalias !825
  invoke void @_Z26grpc_slice_from_cpp_stringNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %3, ptr noundef nonnull align 8 %4)
          to label %bb.k unwind label %bb.l, !noalias !825

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !828 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false), !tbaa.struct !829
  %i.am = load ptr, ptr %4, align 8, !tbaa !195, !noalias !825 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !134, !noalias !825
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #42, !noalias !825
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !195, !noalias !825 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ad
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %bb.l
  %i.at = load i64, ptr %i.ad, align 8, !tbaa !134, !noalias !825
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #42, !noalias !825
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !825
  %i.av = load ptr, ptr %7, align 8, !tbaa !195   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.ay = load i16, ptr %1, align 4, !tbaa !22    ; 2 uses
  %storemerge.i.i.i.i14 = or i16 %i.ay, 32
  store i16 %storemerge.i.i.i.i14, ptr %1, align 4, !tbaa !22
  %i.az = and i16 %i.ay, 32
  %.not.i.i.i = icmp eq i16 %i.az, 0
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %.not.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.011.0.copyload.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !828 ; 4 uses
  store ptr %.sroa.0.0.copyload, ptr %i.ax, align 8, !tbaa !828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !tbaa.struct !829
  %i.ba = icmp ugt ptr %.sroa.011.0.copyload.i.i.i, inttoptr (i64 1 to ptr)
  br i1 %i.ba, label %bb.n, label %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bb = atomicrmw sub ptr %.sroa.011.0.copyload.i.i.i, i64 1 acq_rel, align 8
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.o, label %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !732
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.0.copyload.i.i.i)
          to label %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i unwind label %bb.p, !inline_history !734

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable

_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %_ZN9grpc_core5SliceD2Ev.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false), !tbaa.struct !829
  store ptr %.sroa.0.0.copyload, ptr %i.ax, align 8, !tbaa !828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false), !tbaa.struct !829
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %_ZN9grpc_core5SliceD2Ev.exit

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %bb.q, %_ZN9grpc_core15metadata_detail5ValueINS_19GrpcMessageMetadataEvED2Ev.exit.i.i.i
  %.pre = load ptr, ptr %7, align 8, !tbaa !195   ; 2 uses
  %i.bh = icmp eq ptr %.pre, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !134
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bj) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core5SliceD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 5 uses
  %i.bl = load i16, ptr %i.o, align 2, !tbaa !22  ; 2 uses
  %storemerge.i.i.i.i16 = or i16 %i.bl, 8
  store i16 %storemerge.i.i.i.i16, ptr %i.o, align 2, !tbaa !22
  %i.bm = and i16 %i.bl, 8
  %.not.i.i.i17 = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i17, label %bb.r, label %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE18GetOrCrea

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i8 0, i64 40, i1 false)
  br label %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE18GetOrCrea

_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE18GetOrCrea: ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  invoke void @_ZN9grpc_core14StatusToStringB5cxx11ERKN4absl12lts_202505126StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE18GetOrCrea
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !58, !noalias !830 ; 2 uses
  %i.bo = trunc i64 %i.bn to i1                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !830
  %.sink.i.i.i = select i1 %i.bo, i64 %i.bq, i64 1
  %.sink1.i.i.i = lshr i64 %i.bn, 1               ; 2 uses
  %.not.i.i = icmp eq i64 %.sink1.i.i.i, %.sink.i.i.i
  br i1 %.not.i.i, label %bb.v, label %bb.t, !prof !31

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !830
  %.sink2.i.i.i = select i1 %i.bo, ptr %i.bs, ptr %i.br
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %.sink2.i.i.i, i64 %.sink1.i.i.i ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !189
  %i.bv = load ptr, ptr %8, align 8, !tbaa !195   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !192 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false)
  br label %_ZN4absl12lts_2025051213InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.t
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !195
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !134
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !134
  br label %_ZN4absl12lts_2025051213InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.thread

_ZN4absl12lts_2025051213InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.thread: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !192
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !192
  store ptr %i.bw, ptr %8, align 8, !tbaa !195
  store i64 0, ptr %i.cd, align 8, !tbaa !192
  %i.cg = load i64, ptr %i.bk, align 8, !tbaa !58
  %i.ch = add i64 %i.cg, 2
  store i64 %i.ch, ptr %i.bk, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.v:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS8_EE15EmplaceBackSlowIJS8_EEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN4absl12lts_2025051213InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit unwind label %bb.z ; 0 uses

_ZN4absl12lts_2025051213InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit: ; preds = %bb.v
  %.pre39 = load ptr, ptr %8, align 8, !tbaa !195 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %.pre39, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZN4absl12lts_2025051213InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !134
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %.pre39, i64 noundef %i.cm) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZN4absl12lts_2025051213InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit, %_ZN4absl12lts_2025051213InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.cn = load ptr, ptr %5, align 8, !tbaa !195   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !134
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  ret void

bb.w:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #40
  br label %bb.aa

bb.x:                                             ; preds = %.noexc.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ct = load i64, ptr %i.r, align 8, !tbaa !134
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.cu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.aa

bb.y:                                             ; preds = %_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEE18GetOrCrea
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.z:                                             ; preds = %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %8, align 8, !tbaa !195   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.z
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !134
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.y
  %.pn11 = phi { ptr, i32 } [ %i.cv, %bb.y ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.cw, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.w
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.cr, %bb.w ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.dc = load ptr, ptr %5, align 8, !tbaa !195   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.c
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.aa
  %i.de = load i64, ptr %i.c, align 8, !tbaa !134
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core21promise_filter_detail14ClientCallData25RecvTrailingMetadataReadyEN4absl12lts_202505126StatusE(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc_core::promise_filter_detail::BaseCallData::Flusher", align 8 ; 10 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN9grpc_core21promise_filter_detail12BaseCallData7FlusherC1EPS1_(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core13channel_traceE, i64 8) monotonic, align 8, !range !127, !noundef !128
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, !prof !31

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.3, i32 noundef 1872) #45
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
end_hunk_1
