Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::beast::detail::error_codes" = type { %"class.boost::system::error_category.base", [4 x i8] }
%"class.boost::system::error_category.base" = type <{ ptr, i64, %union.anon.0, %"struct.std::atomic" }>
%union.anon.0 = type { ptr, [24 x i8] }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%"class.boost::beast::detail::error_conditions" = type { %"class.boost::system::error_category.base", [4 x i8] }
%"struct.boost::source_location" = type { ptr, ptr, i32, i32 }
%"class.boost::beast::http::detail::http_error_category" = type { %"class.boost::system::error_category.base", [4 x i8] }
%"struct.boost::beast::http::detail::field_table" = type <{ %"struct.std::array", [1367 x i8], i8 }>
%"struct.std::array" = type { [130 x %"class.boost::core::basic_string_view"] }
%"class.boost::core::basic_string_view" = type { ptr, i64 }
%struct.data = type { [8 x i32] }
%"class.boost::beast::websocket::detail::error_codes" = type { %"class.boost::system::error_category.base", [4 x i8] }
%"class.boost::beast::websocket::detail::error_conditions" = type { %"class.boost::system::error_category.base", [4 x i8] }
%struct.init = type { %"struct.boost::beast::zlib::detail::deflate_stream::lut_type" }
%"struct.boost::beast::zlib::detail::deflate_stream::lut_type" = type { [29 x i8], [30 x i8], [19 x i8], [19 x i8], [288 x %"struct.boost::beast::zlib::detail::deflate_stream::ct_data"], [30 x %"struct.boost::beast::zlib::detail::deflate_stream::ct_data"], [512 x i8], [256 x i8], [29 x i8], [30 x i16], %"struct.boost::beast::zlib::detail::deflate_stream::static_desc", %"struct.boost::beast::zlib::detail::deflate_stream::static_desc", %"struct.boost::beast::zlib::detail::deflate_stream::static_desc" }
%"struct.boost::beast::zlib::detail::deflate_stream::ct_data" = type { i16, i16 }
%"struct.boost::beast::zlib::detail::deflate_stream::static_desc" = type { ptr, ptr, i16, i16, i8 }
%"struct.std::array.88" = type { [19 x i8] }
%struct.fixed_codes = type { %"struct.boost::beast::zlib::detail::inflate_stream::codes", [512 x %"struct.boost::beast::zlib::detail::inflate_stream::code"], [32 x %"struct.boost::beast::zlib::detail::inflate_stream::code"] }
%"struct.boost::beast::zlib::detail::inflate_stream::codes" = type { ptr, ptr, i32, i32 }
%"struct.boost::beast::zlib::detail::inflate_stream::code" = type { i8, i8, i16 }
%"class.boost::asio::detail::service_id" = type { i8 }
%"class.boost::asio::execution_context::id" = type { i8 }
%"class.boost::beast::detail::chacha" = type <{ [16 x i32], [8 x i32], i64, i32, [4 x i8] }>
%"class.boost::beast::detail::pcg" = type { i64, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.boost::system::error_code" = type { %union.anon.1, i64 }
%union.anon.1 = type { %"struct.boost::system::error_code::data" }
%"struct.boost::system::error_code::data" = type { i32, ptr }
%"class.boost::system::system_error" = type { %"class.std::runtime_error", %"class.boost::system::error_code" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.2 }
%union.anon.2 = type { ptr }
%"class.boost::shared_ptr" = type { ptr, %"class.boost::detail::shared_count" }
%"class.boost::detail::shared_count" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<boost::beast::test::detail::stream_read_op_base>, std::allocator<std::unique_ptr<boost::beast::test::detail::stream_read_op_base>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<boost::beast::test::detail::stream_read_op_base>, std::allocator<std::unique_ptr<boost::beast::test::detail::stream_read_op_base>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<boost::beast::test::detail::stream_read_op_base>, std::allocator<std::unique_ptr<boost::beast::test::detail::stream_read_op_base>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<boost::beast::test::detail::stream_read_op_base>, std::allocator<std::unique_ptr<boost::beast::test::detail::stream_read_op_base>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::shared_ptr.13" = type { ptr, %"class.boost::detail::shared_count" }
%"struct.boost::asio::execution_context::service::key" = type { ptr, ptr }
%"class.boost::asio::execution::bad_executor" = type { %"class.std::exception" }
%"struct.boost::asio::execution::context_as_t" = type { i8 }
%"class.boost::asio::any_io_executor" = type { %"class.boost::asio::execution::any_executor" }
%"class.boost::asio::execution::any_executor" = type { %"class.boost::asio::execution::detail::any_executor_base", ptr }
%"class.boost::asio::execution::detail::any_executor_base" = type { %"struct.boost::asio::aligned_storage<24, 8>::type", ptr, ptr, ptr }
%"struct.boost::asio::aligned_storage<24, 8>::type" = type { [24 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.boost::beast::detail::buffers_pair" = type { [2 x %"class.boost::asio::const_buffer"] }
%"class.boost::asio::const_buffer" = type { ptr, i64 }
%"class.boost::beast::detail::buffers_pair.14" = type { [2 x %"class.boost::asio::mutable_buffer"] }
%"class.boost::asio::mutable_buffer" = type { ptr, i64 }
%"class.boost::optional" = type { %"struct.boost::optional_detail::constexpr_guarded_storage" }
%"struct.boost::optional_detail::constexpr_guarded_storage" = type { i8, %"union.boost::optional_detail::constexpr_union_storage_t" }
%"union.boost::optional_detail::constexpr_union_storage_t" = type { i64 }
%"class.boost::beast::detail::char_buffer" = type { i64, [4096 x i8] }
%"class.boost::beast::http::detail::basic_parsed_list" = type { %"class.boost::core::basic_string_view" }
%class.anon.35 = type { ptr }
%"class.boost::beast::http::detail::basic_parsed_list<boost::beast::http::detail::opt_token_list_policy>::const_iterator" = type <{ ptr, ptr, %"class.boost::core::basic_string_view", i8, [7 x i8] }>
%class.anon.40 = type { ptr }
%"struct.boost::beast::http::detail::iequals_predicate" = type { %"class.boost::core::basic_string_view", %"class.boost::core::basic_string_view" }
%"class.boost::beast::http::token_list" = type { %"class.boost::core::basic_string_view" }
%"struct.boost::beast::http::detail::param_iter" = type { ptr, ptr, ptr, %"struct.std::pair.23" }
%"struct.std::pair.23" = type { %"class.boost::core::basic_string_view", %"class.boost::core::basic_string_view" }
%"class.boost::beast::http::ext_list::const_iterator" = type { %"struct.std::pair.45", ptr, ptr, ptr }
%"struct.std::pair.45" = type { %"class.boost::core::basic_string_view", %"class.boost::beast::http::param_list" }
%"class.boost::beast::http::param_list" = type { %"class.boost::core::basic_string_view" }
%"class.std::invalid_argument" = type { %"class.std::logic_error" }
%"struct.boost::beast::detail::sha1_context" = type { i64, i64, [5 x i32], [64 x i8] }
%"class.boost::beast::http::param_list::const_iterator" = type { %"class.std::__cxx11::basic_string", %"struct.boost::beast::http::detail::param_iter" }
%"class.boost::static_strings::basic_static_string.52" = type <{ %"class.boost::static_strings::detail::static_string_base<512, char, std::char_traits<char>>::size::basic_static_string", %"class.boost::static_strings::detail::static_string_base<512, char, std::char_traits<char>>::data::basic_static_string", i8 }>
%"class.boost::static_strings::detail::static_string_base<512, char, std::char_traits<char>>::size::basic_static_string" = type { i16 }
%"class.boost::static_strings::detail::static_string_base<512, char, std::char_traits<char>>::data::basic_static_string" = type { [513 x i8] }
%"class.boost::static_strings::basic_static_string.53" = type { %"class.boost::static_strings::detail::static_string_base<11, char, std::char_traits<char>>::size::basic_static_string", %"class.boost::static_strings::detail::static_string_base<11, char, std::char_traits<char>>::data::basic_static_string" }
%"class.boost::static_strings::detail::static_string_base<11, char, std::char_traits<char>>::size::basic_static_string" = type { i8 }
%"class.boost::static_strings::detail::static_string_base<11, char, std::char_traits<char>>::data::basic_static_string" = type { [12 x i8] }
%"class.std::random_device" = type { %union.anon.93 }
%union.anon.93 = type { %"class.std::mersenne_twister_engine" }
%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }
%"class.std::seed_seq" = type { %"class.std::vector.95" }
%"class.std::vector.95" = type { %"struct.std::_Vector_base.96" }
%"struct.std::_Vector_base.96" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.61" = type { %"struct.std::_Vector_base.62" }
%"struct.std::_Vector_base.62" = type { %"struct.std::_Vector_base<boost::weak_ptr<boost::beast::websocket::detail::service::impl_type>, std::allocator<boost::weak_ptr<boost::beast::websocket::detail::service::impl_type>>>::_Vector_impl" }
%"struct.std::_Vector_base<boost::weak_ptr<boost::beast::websocket::detail::service::impl_type>, std::allocator<boost::weak_ptr<boost::beast::websocket::detail::service::impl_type>>>::_Vector_impl" = type { %"struct.std::_Vector_base<boost::weak_ptr<boost::beast::websocket::detail::service::impl_type>, std::allocator<boost::weak_ptr<boost::beast::websocket::detail::service::impl_type>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<boost::weak_ptr<boost::beast::websocket::detail::service::impl_type>, std::allocator<boost::weak_ptr<boost::beast::websocket::detail::service::impl_type>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::shared_ptr.68" = type { ptr, %"class.boost::detail::shared_count" }
%"class.boost::beast::websocket::detail::utf8_checker" = type <{ i64, ptr, [4 x i8], [4 x i8] }>
%"class.boost::optional.82" = type { %"struct.boost::optional_detail::constexpr_guarded_storage.83" }
%"struct.boost::optional_detail::constexpr_guarded_storage.83" = type { i8, %"union.boost::optional_detail::constexpr_union_storage_t.84" }
%"union.boost::optional_detail::constexpr_union_storage_t.84" = type { i32 }
%"struct.boost::beast::zlib::z_params" = type <{ ptr, i64, i64, ptr, i64, i64, i32, [4 x i8] }>
%"class.std::domain_error" = type { %"class.std::logic_error" }
%"struct.boost::beast::zlib::detail::ranges" = type { %"struct.boost::beast::zlib::detail::ranges::range", %"struct.boost::beast::zlib::detail::ranges::range.85" }
%"struct.boost::beast::zlib::detail::ranges::range" = type { ptr, ptr, ptr }
%"struct.boost::beast::zlib::detail::ranges::range.85" = type { ptr, ptr, ptr }
%class.anon.86 = type { ptr, ptr, ptr, ptr, ptr }
%"class.boost::exception_detail::refcount_ptr" = type { ptr }
%"class.boost::asio::execution_context::allocator" = type { ptr }

$_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei = comdat any

$_ZNK5boost6system6detail21system_error_category23default_error_conditionEi = comdat any

$__clang_call_terminate = comdat any

$_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei = comdat any

$_ZNK5boost6system14error_category23default_error_conditionEi = comdat any

$_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE = comdat any

$_ZN5boost6system12system_errorC2ERKNS0_10error_codeE = comdat any

$_ZN5boost4asio5error15system_categoryE = comdat any

$_ZN5boost4asio5error14netdb_categoryE = comdat any

$_ZN5boost4asio5error17addrinfo_categoryE = comdat any

$_ZN5boost4asio5error13misc_categoryE = comdat any

$_ZN5boost11make_sharedINS_5beast4test6detail19stream_service_implEJEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN5boost5beast4test6detail19stream_read_op_baseESt14default_deleteIS5_EESaIS8_EED2Ev = comdat any

$_ZN5boost11make_sharedINS_5beast4test6detail12stream_stateEJRNS_4asio15any_io_executorERNS_10shared_ptrINS3_19stream_service_implEEERPNS2_10fail_countEEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_ = comdat any

$_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev = comdat any

$_ZN5boost5beast6detail4sha110make_blockEPKhPj = comdat any

$_ZN5boost5beast6detail4sha19transformEPjS3_ = comdat any

$_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE = comdat any

$_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE = comdat any

$_ZN5boost6system10error_codeaSINS_5beast4http5errorEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_ = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE18default_body_limitESt17integral_constantIbLb1EE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE18default_body_limitESt17integral_constantIbLb0EE = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE8got_someEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE7is_doneEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE14is_header_doneEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE7upgradeEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE7chunkedEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE10keep_aliveEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE14content_lengthEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE24content_length_uncheckedEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE24content_length_remainingEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE8need_eofEv = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE10body_limitENS_8optionalImEE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE12header_limitEj = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE5eagerEv = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE5eagerEb = comdat any

$_ZNK5boost5beast4http12basic_parserILb1EE4skipEv = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE4skipEb = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE16parse_start_lineERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE12parse_fieldsERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb1EE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE10parse_bodyERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE17parse_body_to_eofERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE18parse_chunk_headerERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE16parse_chunk_bodyERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE7put_eofERNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE22inner_parse_start_lineERPKcS5_RNS_6system10error_codeESt17integral_constantIbLb1EE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE22inner_parse_start_lineERPKcS5_RNS_6system10error_codeESt17integral_constantIbLb0EE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE18inner_parse_fieldsERPKcS5_RNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb1EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb0EE = comdat any

$_ZN5boost5beast4http13validate_listINS1_6detail21opt_token_list_policyEEEbRKNS3_17basic_parsed_listIT_EE = comdat any

$_ZNK5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE5beginEv = comdat any

$_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE18default_body_limitESt17integral_constantIbLb1EE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE18default_body_limitESt17integral_constantIbLb0EE = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE8got_someEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE7is_doneEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE14is_header_doneEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE7upgradeEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE7chunkedEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE10keep_aliveEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE14content_lengthEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE24content_length_uncheckedEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE24content_length_remainingEv = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE8need_eofEv = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE10body_limitENS_8optionalImEE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE12header_limitEj = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE5eagerEv = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE5eagerEb = comdat any

$_ZNK5boost5beast4http12basic_parserILb0EE4skipEv = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE4skipEb = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE16parse_start_lineERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE12parse_fieldsERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb0EE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE10parse_bodyERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE17parse_body_to_eofERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE18parse_chunk_headerERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE16parse_chunk_bodyERPKcmRNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE7put_eofERNS_6system10error_codeE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE22inner_parse_start_lineERPKcS5_RNS_6system10error_codeESt17integral_constantIbLb1EE = comdat any

$_ZN5boost5beast4http12basic_parserILb0EE22inner_parse_start_lineERPKcS5_RNS_6system10error_codeESt17integral_constantIbLb0EE = comdat any
end_hunk_0
begin_hunk_1_@_ZN5boost5beast9websocket6detail18make_sec_ws_acceptERNS_14static_strings19basic_static_stringILm28EcSt11char_traitsIcEEENS_4core17basic_string_viewIcEE:bb.a
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !20  ; 2 uses
  %i.fn = lshr i8 %i.fm, 2
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.fq, ptr %i.fk, align 1, !tbaa !20
  %i.fs = shl i8 %i.fm, 4
  %i.ft = and i8 %i.fs, 48
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !20  ; 2 uses
  %i.fw = lshr i8 %i.fv, 4
  %i.fx = or disjoint i8 %i.fw, %i.ft
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !20
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.ga, ptr %i.fr, align 1, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !20  ; 2 uses
  %i.ge = lshr i8 %i.gd, 6
  %i.gf = shl i8 %i.fv, 2
  %i.gg = and i8 %i.gf, 60
  %i.gh = or disjoint i8 %i.ge, %i.gg
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.gk, ptr %i.gb, align 1, !tbaa !20
  %i.gm = and i8 %i.gd, 63
  %i.gn = zext nneg i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.gp, ptr %i.gl, align 1, !tbaa !20
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !20  ; 2 uses
  %i.gt = lshr i8 %i.gs, 2
  %i.gu = zext nneg i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.gw, ptr %i.gq, align 1, !tbaa !20
  %i.gy = shl i8 %i.gs, 4
  %i.gz = and i8 %i.gy, 48
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.hb = load i8, ptr %i.ha, align 2, !tbaa !20  ; 2 uses
  %i.hc = lshr i8 %i.hb, 4
  %i.hd = or disjoint i8 %i.hc, %i.gz
  %i.he = zext nneg i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !20
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.hg, ptr %i.gx, align 1, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !20  ; 2 uses
  %i.hk = lshr i8 %i.hj, 6
  %i.hl = shl i8 %i.hb, 2
  %i.hm = and i8 %i.hl, 60
  %i.hn = or disjoint i8 %i.hk, %i.hm
  %i.ho = zext nneg i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !20
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.hq, ptr %i.hh, align 1, !tbaa !20
  %i.hs = and i8 %i.hj, 63
  %i.ht = zext nneg i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !20
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.hv, ptr %i.hr, align 1, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !20  ; 2 uses
  %i.hz = lshr i8 %i.hy, 2
  %i.ia = zext nneg i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.ic, ptr %i.hw, align 1, !tbaa !20
  %i.ie = shl i8 %i.hy, 4
  %i.if = and i8 %i.ie, 48
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !20  ; 2 uses
  %i.ii = lshr i8 %i.ih, 4
  %i.ij = or disjoint i8 %i.ii, %i.if
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !20
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.im, ptr %i.id, align 1, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ip = load i8, ptr %i.io, align 2, !tbaa !20  ; 2 uses
  %i.iq = lshr i8 %i.ip, 6
  %i.ir = shl i8 %i.ih, 2
  %i.is = and i8 %i.ir, 60
  %i.it = or disjoint i8 %i.iq, %i.is
  %i.iu = zext nneg i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.iw, ptr %i.in, align 1, !tbaa !20
  %i.iy = and i8 %i.ip, 63
  %i.iz = zext nneg i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !20
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.jb, ptr %i.ix, align 1, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !20  ; 2 uses
  %i.jf = lshr i8 %i.je, 2
  %i.jg = zext nneg i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !20
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ji, ptr %i.jc, align 1, !tbaa !20
  %i.jk = shl i8 %i.je, 4
  %i.jl = and i8 %i.jk, 48
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.jn = load i8, ptr %i.jm, align 16, !tbaa !20 ; 2 uses
  %i.jo = lshr i8 %i.jn, 4
  %i.jp = or disjoint i8 %i.jo, %i.jl
  %i.jq = zext nneg i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !20
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.js, ptr %i.jj, align 1, !tbaa !20
  %i.ju = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !20  ; 2 uses
  %i.jw = lshr i8 %i.jv, 6
  %i.jx = shl i8 %i.jn, 2
  %i.jy = and i8 %i.jx, 60
  %i.jz = or disjoint i8 %i.jw, %i.jy
  %i.ka = zext nneg i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.kc, ptr %i.jt, align 1, !tbaa !20
  %i.ke = and i8 %i.jv, 63
  %i.kf = zext nneg i8 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !20
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.kh, ptr %i.kd, align 1, !tbaa !20
  %i.kj = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.kk = load i8, ptr %i.kj, align 2, !tbaa !20  ; 2 uses
  %i.kl = lshr i8 %i.kk, 2
  %i.km = zext nneg i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !20
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.ko, ptr %i.ki, align 1, !tbaa !20
  %i.kq = shl i8 %i.kk, 4
  %i.kr = and i8 %i.kq, 48
  %i.ks = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !20  ; 2 uses
  %i.ku = lshr i8 %i.kt, 4
  %i.kv = or disjoint i8 %i.ku, %i.kr
  %i.kw = zext nneg i8 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !20
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.ky, ptr %i.kp, align 1, !tbaa !20
  %i.la = shl i8 %i.kt, 2
  %i.lb = and i8 %i.la, 60
  %i.lc = zext nneg i8 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast6detail6base6412get_alphabetEvE3tab, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 4, !tbaa !20
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.le, ptr %i.kz, align 1, !tbaa !20
  store i8 61, ptr %i.lf, align 1, !tbaa !20
  %i.lg = load i8, ptr %0, align 1, !tbaa !842    ; 2 uses
  %i.lh = icmp ult i8 %i.lg, 28
  br i1 %i.lh, label %bb.j, label %_ZN5boost14static_strings19basic_static_stringILm28EcSt11char_traitsIcEE6resizeEm.exit15

bb.j:                                             ; preds = %bb.i
  %i.li = zext nneg i8 %i.lg to i64               ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.li
  %i.lk = sub nuw nsw i64 28, %i.li
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lj, i8 0, i64 %i.lk, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm28EcSt11char_traitsIcEE6resizeEm.exit15

_ZN5boost14static_strings19basic_static_stringILm28EcSt11char_traitsIcEE6resizeEm.exit15: ; preds = %bb.i, %bb.j
  store i8 28, ptr %0, align 1, !tbaa !842
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.ll, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #17 {
bb.a:
  store i32 %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(4) %1) local_unnamed_addr #31 {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !844  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !846    ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = load i32, ptr %1, align 1, !tbaa !20     ; 7 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.e to i8
  %.sroa.4.0.extract.shift = lshr i32 %i.e, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i32 %i.e, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  %i.f = lshr i32 %i.e, 24
  %i.g = lshr i32 %i.e, 16
  %i.h = lshr i32 %i.e, 8
  %i.i = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %i.j = insertelement <4 x i32> %i.i, i32 %i.h, i64 1
  %i.k = trunc i32 %i.g to i8
  %i.l = trunc nuw i32 %i.f to i8
  br i1 %i.d, label %.preheader22.preheader, label %._crit_edge

.preheader22.preheader:                           ; preds = %bb.a
  %i.m = trunc <4 x i32> %i.j to <4 x i8>
  %i.n = insertelement <4 x i8> %i.m, i8 %i.k, i64 2
  %i.o = insertelement <4 x i8> %i.n, i8 %i.l, i64 3
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %.02025 = phi ptr [ %i.r, %.preheader22 ], [ %i.c, %.preheader22.preheader ] ; 3 uses
  %.02124 = phi i64 [ %i.s, %.preheader22 ], [ %i.b, %.preheader22.preheader ]
  %i.p = load <4 x i8>, ptr %.02025, align 1, !tbaa !20
  %i.q = xor <4 x i8> %i.p, %i.o
  store <4 x i8> %i.q, ptr %.02025, align 1, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %.02025, i64 4 ; 2 uses
  %i.s = add i64 %.02124, -4                      ; 3 uses
  %i.t = icmp ugt i64 %i.s, 3
  br i1 %i.t, label %.preheader22, label %._crit_edge, !llvm.loop !847

._crit_edge:                                      ; preds = %.preheader22, %bb.a
  %.021.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.s, %.preheader22 ] ; 7 uses
  %.020.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.r, %.preheader22 ] ; 4 uses
  %.not = icmp eq i64 %.021.lcssa, 0
  br i1 %.not, label %bb.c, label %.preheader

bb.b:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.u = load i32, ptr %1, align 1, !tbaa !20
  store i32 %i.u, ptr %.sroa.0.i, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %.021.lcssa
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  store i8 %i.w, ptr %1, align 1, !tbaa !20
  %i.x = add nuw nsw i64 %.021.lcssa, 1
  %i.y = and i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !20
  %i.ac = xor i64 %.021.lcssa, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !20
  %i.ag = add nuw nsw i64 %.021.lcssa, 3
  %i.ah = and i64 %i.ag, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.c

.preheader:                                       ; preds = %._crit_edge
  %i.al = load i8, ptr %.020.lcssa, align 1, !tbaa !20
  %i.am = xor i8 %i.al, %.sroa.0.0.extract.trunc
  store i8 %i.am, ptr %.020.lcssa, align 1, !tbaa !20
  %exitcond.not = icmp eq i64 %.021.lcssa, 1
  br i1 %exitcond.not, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.020.lcssa, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %i.ap = xor i8 %i.ao, %.sroa.4.0.extract.trunc
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !20
  %exitcond.not.1 = icmp eq i64 %.021.lcssa, 2
  br i1 %exitcond.not.1, label %bb.b, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.020.lcssa, i64 2 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = xor i8 %i.ar, %.sroa.5.0.extract.trunc
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !20
  br label %bb.b

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN5boost5beast9websocket6detail10parse_bitsENS_4core17basic_string_viewIcEE(ptr nofree readonly captures(address) %0, i64 %1) local_unnamed_addr #26 {
bb.a:
  %i.a = add i64 %1, -3
  %or.cond34 = icmp ult i64 %i.a, -2
  br i1 %or.cond34, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !20
  %i.c = add i8 %i.b, -58
  %or.cond35 = icmp ult i8 %i.c, -9
  br i1 %or.cond35, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not = icmp samesign eq i64 %1, 1
  br i1 %.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20    ; 2 uses
  %i.f = add i8 %i.e, -48
  %or.cond.1 = icmp ult i8 %i.f, 10
  %i.g = zext nneg i8 %i.e to i32
  %i.h = mul nuw nsw i32 %i.o, 10
  %i.i = add nsw i32 %i.h, -48
  %i.j = add nsw i32 %i.i, %i.g                   ; 2 uses
  %i.k = icmp uge i32 %i.j, %i.o
  %.1.1 = select i1 %or.cond.1, i1 %i.k, i1 false
  %spec.select = select i1 %.1.1, i32 %i.j, i32 -1
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.l = load i8, ptr %0, align 1, !tbaa !20      ; 2 uses
  %i.m = add i8 %i.l, -48
  %or.cond = icmp ult i8 %i.m, 10
  %i.n = zext nneg i8 %i.l to i32
  %i.o = add nsw i32 %i.n, -48                    ; 3 uses
  br i1 %or.cond, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.1, %bb.c, %.lr.ph, %bb.b, %bb.a
  %.5 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %i.o, %bb.c ], [ -1, %.lr.ph ], [ %spec.select, %.lr.ph.1 ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast9websocket6detail13pmd_read_implERNS2_9pmd_offerERKNS0_4http8ext_listE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 1), (4, 14)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::http::detail::param_iter", align 8 ; 8 uses
  %3 = alloca %"struct.boost::beast::http::detail::param_iter", align 8 ; 8 uses
  %4 = alloca %"class.boost::beast::http::param_list::const_iterator", align 8 ; 27 uses
  %5 = alloca %"class.boost::beast::http::param_list::const_iterator", align 8 ; 16 uses
  store i8 0, ptr %0, align 4, !tbaa !848
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !527, !noalias !850 ; 5 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !783, !noalias !850 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 30 uses
  %i.j = add nuw i64 %i.h, %i.f                   ; 4 uses
  %.not8.i.i583 = icmp samesign eq i64 %i.h, 0
  br i1 %.not8.i.i583, label %_ZN5boost5beast4http8ext_list14const_iterator9incrementEv.exit174, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a, %bb.g
  %i.k = phi ptr [ %i.at, %bb.g ], [ %i.e, %bb.a ] ; 3 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.j
  %i.m = sub i64 0, %i.l
  %scevgep381 = getelementptr i8, ptr %scevgep, i64 %i.m
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.b
  %i.n = phi ptr [ %i.p, %bb.b ], [ %i.k, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  switch i8 %i.o, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i, label %.lr.ph.i.i, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i: ; preds = %bb.b, %.lr.ph.i.i
  %.promoted28.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %scevgep381, %bb.b ] ; 10 uses
  %i.q = icmp eq ptr %.promoted28.i, %i.i
  br i1 %i.q, label %_ZN5boost5beast4http8ext_list14const_iterator9incrementEv.exit174, label %bb.c

bb.c:                                             ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i
  %i.r = load i8, ptr %.promoted28.i, align 1, !tbaa !20 ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %.not.i158 = icmp eq i8 %i.u, 0
  br i1 %.not.i158, label %bb.g, label %.preheader.i159.preheader

.preheader.i159.preheader:                        ; preds = %bb.c
  %scevgep383 = getelementptr i8, ptr %.promoted28.i, i64 %i.j
  %.promoted28.i.lcssa382384 = ptrtoaddr ptr %.promoted28.i to i64
  %i.v = sub i64 0, %.promoted28.i.lcssa382384
  %scevgep385 = getelementptr i8, ptr %scevgep383, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %.promoted28.i, i64 1 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.thread.i, label %.lr.ph585

.preheader.i159:                                  ; preds = %.lr.ph585
  %i.y = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %.thread.i, label %.lr.ph585, !llvm.loop !811

.thread.i:                                        ; preds = %.preheader.i159, %.preheader.i159.preheader
  %i.aa = ptrtoint ptr %i.i to i64
  %i.ab = ptrtoint ptr %.promoted28.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %_ZN5boost5beast4http8ext_list14const_iterator9incrementEv.exit174

.lr.ph585:                                        ; preds = %.preheader.i159.preheader, %.preheader.i159
  %i.ad = phi ptr [ %i.y, %.preheader.i159 ], [ %i.w, %.preheader.i159.preheader ] ; 6 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %.not10.i = icmp eq i8 %i.ah, 0
  br i1 %.not10.i, label %bb.d, label %.preheader.i159, !llvm.loop !811

bb.d:                                             ; preds = %.lr.ph585
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  store ptr %i.ad, ptr %3, align 8, !tbaa !391
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !390
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.ak, align 8, !tbaa !386
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  call void @_ZN5boost5beast4http6detail10param_iter9incrementEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !390 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !391   ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.f, label %bb.e, !llvm.loop !812

bb.f:                                             ; preds = %bb.e
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %.promoted28.i to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = sub i64 %i.ar, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %_ZN5boost5beast4http8ext_list14const_iterator9incrementEv.exit174

bb.g:                                             ; preds = %bb.c
  %.not9.i = icmp ne i8 %i.r, 44
  %i.at = getelementptr inbounds nuw i8, ptr %.promoted28.i, i64 1 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.at, %i.i
  %or.cond606 = select i1 %.not9.i, i1 true, i1 %.not8.i.i
  br i1 %or.cond606, label %_ZN5boost5beast4http8ext_list14const_iterator9incrementEv.exit174, label %.lr.ph.i.i.preheader, !llvm.loop !813

_ZN5boost5beast4http8ext_list14const_iterator9incrementEv.exit174: ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i, %bb.g, %bb.a, %.thread.i, %bb.f
  %.sroa.10216.1 = phi i64 [ %i.aq, %bb.f ], [ %i.ac, %.thread.i ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i ]
  %.sroa.20.1 = phi i64 [ %i.as, %bb.f ], [ 0, %.thread.i ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i ]
  %.sroa.24.1 = phi ptr [ %i.am, %bb.f ], [ %scevgep385, %.thread.i ], [ %i.i, %bb.a ], [ %i.i, %bb.g ], [ %i.i, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i ] ; 2 uses
  %.sroa.42.1 = phi ptr [ %i.e, %bb.f ], [ %i.e, %.thread.i ], [ %i.i, %bb.a ], [ %i.i, %bb.g ], [ %i.i, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %i.ad, %bb.f ], [ null, %.thread.i ], [ null, %bb.a ], [ null, %bb.g ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i ]
  %.sroa.0215.1 = phi ptr [ %.promoted28.i, %bb.f ], [ %.promoted28.i, %.thread.i ], [ null, %bb.a ], [ null, %bb.g ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i ]
  %i.au = icmp eq ptr %i.i, %.sroa.24.1
  %i.av = icmp eq ptr %i.i, %.sroa.42.1
end_hunk_1
