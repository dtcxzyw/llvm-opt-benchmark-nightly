Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41207
inline.NumDeleted: 6299
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0
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

$_ZN6duckdb17InternalExceptionC2IJRmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S7_DpT_ = comdat any

$_ZNK6duckdb8string_t9GetStringB5cxx11Ev = comdat any

$_ZN6duckdb19ConversionExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_ = comdat any

$_ZN6duckdb17DecodeBase64BytesILb0EEEjRKNS_8string_tEPKhm = comdat any

$_ZN6duckdb17DecodeBase64BytesILb1EEEjRKNS_8string_tEPKhm = comdat any

$_ZN6duckdb12optional_idxC2Em = comdat any

$_ZN6duckdb15ConflictManager15GetConflictDataEm = comdat any

$_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZN6duckdb15ConflictManager12ConflictData5ResetEv = comdat any

$_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm = comdat any

$_ZN6duckdb11VectorCacheD2Ev = comdat any

$_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm = comdat any

$_ZN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEixEm = comdat any

$_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm = comdat any

$_ZNK6duckdb6vectorImLb1ESaImEEixEm = comdat any

$_ZN6duckdb15SelectionVectorC2Em = comdat any

$_ZN6duckdb15SelectionVectorD2Ev = comdat any

$_ZN6duckdb6vectorImLb1ESaImEEixEm = comdat any

$_ZN6duckdb19ConversionExceptionC2IJRiS2_S2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN6duckdb24TemplatedDecimalToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh = comdat any

$_ZN6duckdb24TemplatedDecimalToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh = comdat any

$_ZN6duckdb24TemplatedDecimalToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZN6duckdb19UnifiedVectorFormatD2Ev = comdat any

$_ZNK6duckdb10unique_ptrINS_11HyperLogLogESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZNK6duckdb10unique_ptrINS_5HLLV1ESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZN6duckdb5HLLV17FromNewERKNS_11HyperLogLogE = comdat any

$_ZNSt10unique_ptrIN6duckdb5HLLV1ESt14default_deleteIS1_EED2Ev = comdat any

$_ZNK6duckdb10unique_ptrINS_11HyperLogLogESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZN6duckdb19IntervalTryAdditionIlEEvRT_lll = comdat any

$_ZN6duckdb19IntervalTryAdditionIiEEvRT_lll = comdat any

$_ZN6duckdb20IntervalToStringCast6FormatENS_10interval_tEPc = comdat any

$_ZN6duckdb20ListSegmentFunctionsD2Ev = comdat any

$_ZN6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EE4backEv = comdat any

$_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEC2ERKSB_ = comdat any

$_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev = comdat any

$_ZN6duckdb11make_bufferINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_ = comdat any

$_ZNK6duckdb10shared_ptrINS_13SelectionDataELb1EEptEv = comdat any

$_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev = comdat any

$_ZN6duckdb19OutOfRangeExceptionC2IJRmRKmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNK6duckdb10unique_ptrINS_15CastFunctionSetESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZNSt10unique_ptrIN6duckdb15CastFunctionSetESt14default_deleteIS1_EED2Ev = comdat any

$_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm = comdat any

$_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev = comdat any

$_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_ = comdat any

$_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv = comdat any

$_ZN6duckdb21TemplatedValidityMaskImED2Ev = comdat any

$_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm = comdat any

$_ZN6duckdb6StringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN6duckdb15make_shared_ptrINS_15StringValueInfoEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_10shared_ptrIT_Lb1EEEDpOT0_ = comdat any

$_ZN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EEaSINS_15StringValueInfoETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE = comdat any

$_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev = comdat any

$_ZN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EED2Ev = comdat any

$_ZN6duckdb11LogicalTypeaSEOS0_ = comdat any

$_ZN6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev = comdat any

$_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm = comdat any

$_ZNSt13unordered_setIN6duckdb5ValueENS0_17ValueHashFunctionENS0_13ValueEqualityESaIS1_EED2Ev = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE7reserveEm = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev = comdat any

$_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_ = comdat any

$_ZN6duckdb16BinarySerializer9SerializeINS_11LogicalTypeEEEvRKT_RNS_11WriteStreamENS_20SerializationOptionsE = comdat any

$_ZNK6duckdb5Value16GetValueInternalIaEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalIsEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalIiEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalIlEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_9hugeint_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalIhEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalItEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalIjEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalImEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_10uhugeint_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalIfEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalIdEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_6date_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_7dtime_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_10dtime_ns_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_11timestamp_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_15timestamp_sec_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_14timestamp_ms_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_14timestamp_ns_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_14timestamp_tz_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_10dtime_tz_tEEET_v = comdat any

$_ZNK6duckdb5Value16GetValueInternalINS_10interval_tEEET_v = comdat any

$_ZN6duckdb6VectorD2Ev = comdat any

$_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev = comdat any

$_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZNK6duckdb10shared_ptrINS_14ExtraValueInfoELb1EEptEv = comdat any

$_ZN6duckdb14ExtraValueInfo3GetINS_15StringValueInfoEEERT_v = comdat any

$_ZN6duckdb12DeserializerD2Ev = comdat any

$_ZN6duckdb14ExtraValueInfo3GetINS_15NestedValueInfoEEERT_v = comdat any

$_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_ = comdat any

$_ZN6duckdb15CastFunctionSetD2Ev = comdat any

$_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_ = comdat any

$_ZN6duckdb10Serializer13WritePropertyINS_10interval_tEEEvtPKcRKT_ = comdat any

$_ZN6duckdb10Serializer13WritePropertyINS_19GeometryStorageTypeEEEvtPKcRKT_ = comdat any

$_ZN6duckdb12Deserializer3GetIRKNS_11LogicalTypeEEET_v = comdat any

$_ZN6duckdb12Deserializer12ReadPropertyINS_10interval_tEEET_tPKc = comdat any

$_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc = comdat any

$_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_19GeometryStorageTypeEEET_tPKcS3_ = comdat any

$_ZN6duckdb6vectorIjLb1ESaIjEEixEm = comdat any

$_ZN6duckdb6vectorIjLb1ESaIjEE4backEv = comdat any

$_ZN6duckdb11make_bufferINS_12VectorBufferEJmEEENS_10shared_ptrIT_Lb1EEEDpOT0_ = comdat any

$_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev = comdat any

$_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev = comdat any

$_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv = comdat any

$_ZN6duckdb19OutOfRangeExceptionC2IJRmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS8_DpOT_ = comdat any

$_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv = comdat any

$__clang_call_terminate = comdat any

$_ZSt4swapIN6duckdb12ValidityMaskEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_ = comdat any

$_ZSt4swapIN6duckdb15SelectionVectorEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_ = comdat any

$_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev = comdat any

$_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_ = comdat any

$_ZN6duckdb9make_uniqINS_18VectorStructBufferEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_ = comdat any

$_ZNK6duckdb10unique_ptrINS_18VectorStructBufferESt14default_deleteIS1_ELb1EEptEv = comdat any

$_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2INS_18VectorStructBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEEPS6_ = comdat any

$_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv = comdat any

$_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2INS_17VectorArrayBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEEPS6_ = comdat any

$_ZN6duckdb17InternalExceptionC2IJRKNS_11LogicalTypeES4_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN6duckdb15make_shared_ptrINS_17VectorChildBufferEJNS_6VectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_ = comdat any

end_hunk_0
begin_hunk_1_@_ZN6duckdb7Hugeint7TryCastIfEEbNS_9hugeint_tERT_:bb.a
  %i.a = xor i64 %0, -1
  %i.b = uitofp i64 %i.a to double
  %i.c = fsub double -1.000000e+00, %i.b
  br label %_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = uitofp i64 %0 to double
  %i.e = sitofp i64 %1 to double
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double f0x43F0000000000000, double %i.d)
  br label %_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_.exit

_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi double [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %i.g = fptrunc double %storemerge.i.i to float
  store float %i.g, ptr %2, align 4, !tbaa !475
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2) local_unnamed_addr #19 align 2 {
bb.a:
  %cond.i = icmp eq i64 %1, -1
  br i1 %cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = xor i64 %0, -1
  %i.b = uitofp i64 %i.a to double
  %i.c = fsub double -1.000000e+00, %i.b
  br label %_ZN6duckdb20CastBigintToFloatingIdEEbNS_9hugeint_tERT_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = uitofp i64 %0 to double
  %i.e = sitofp i64 %1 to double
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double f0x43F0000000000000, double %i.d)
  br label %_ZN6duckdb20CastBigintToFloatingIdEEbNS_9hugeint_tERT_.exit

_ZN6duckdb20CastBigintToFloatingIdEEbNS_9hugeint_tERT_.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi double [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store double %storemerge.i, ptr %2, align 8, !tbaa !477
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIeEEbNS_9hugeint_tERT_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 10)) %2) local_unnamed_addr #19 align 2 {
bb.a:
  %cond.i = icmp eq i64 %1, -1
  br i1 %cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = xor i64 %0, -1
  %i.b = uitofp i64 %i.a to x86_fp80
  %i.c = fsub x86_fp80 -1.000000e+00, %i.b
  br label %_ZN6duckdb20CastBigintToFloatingIeEEbNS_9hugeint_tERT_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = uitofp i64 %0 to x86_fp80
  %i.e = sitofp i64 %1 to x86_fp80
  %i.f = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.e, x86_fp80 f0x403F8000000000000000, x86_fp80 %i.d)
  br label %_ZN6duckdb20CastBigintToFloatingIeEEbNS_9hugeint_tERT_.exit

_ZN6duckdb20CastBigintToFloatingIeEEbNS_9hugeint_tERT_.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi x86_fp80 [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store x86_fp80 %storemerge.i, ptr %2, align 16, !tbaa !1637
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIaEEbT_RNS_9hugeint_tE(i8 noundef signext %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = sext i8 %0 to i64
  %i.b = ashr i8 %0, 7
  %i.c = sext i8 %i.b to i64
  store i64 %i.a, ptr %1, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIPKcEEbT_RNS_9hugeint_tE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0 = alloca %struct.anon, align 8         ; 8 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #51 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  store i32 %i.b, ptr %.sroa.0, align 8, !tbaa !273
  %i.c = icmp ult i32 %i.b, 13
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.4..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx16, i8 0, i64 12, i1 false)
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.a, 15
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.4..sroa_idx, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.pre = load ptr, ptr %.sroa.0.8..sroa_idx, align 8, !tbaa !273
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 1
  %.sroa.0.4..sroa_idx15 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.f, ptr %.sroa.0.4..sroa_idx15, align 4
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload = phi ptr [ null, %bb.b ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.pre, %bb.c ], [ %0, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload = load i64, ptr %.sroa.0, align 8
  %i.g = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tENS_9hugeint_tEEEbT_RT0_b(i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload, ptr %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 %i.g
}

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tENS_9hugeint_tEEEbT_RT0_b(i64, ptr, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIsEEbT_RNS_9hugeint_tE(i16 noundef signext %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = ashr i16 %0, 15
  %i.b = insertelement <2 x i16> poison, i16 %0, i64 0
  %i.c = insertelement <2 x i16> %i.b, i16 %i.a, i64 1
  %i.d = sext <2 x i16> %i.c to <2 x i64>
  store <2 x i64> %i.d, ptr %1, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIiEEbT_RNS_9hugeint_tE(i32 noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %.lobit.neg.i = ashr i32 %0, 31
  %i.b = sext i32 %.lobit.neg.i to i64
  store i64 %i.a, ptr %1, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIlEEbT_RNS_9hugeint_tE(i64 noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %.lobit.neg.i = ashr i64 %0, 63
  store i64 %0, ptr %1, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.lobit.neg.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIhEEbT_RNS_9hugeint_tE(i8 noundef zeroext %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = zext i8 %0 to i64
  store i64 %i.a, ptr %1, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertItEEbT_RNS_9hugeint_tE(i16 noundef zeroext %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = zext i16 %0 to i64
  store i64 %i.a, ptr %1, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIjEEbT_RNS_9hugeint_tE(i32 noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = zext i32 %0 to i64
  store i64 %i.a, ptr %1, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertImEEbT_RNS_9hugeint_tE(i64 noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #19 align 2 {
bb.a:
  store i64 %0, ptr %1, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertINS_9hugeint_tEEEbT_RS2_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #19 align 2 {
bb.a:
  store i64 %0, ptr %2, align 8, !tbaa !245
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !245
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIfEEbT_RNS_9hugeint_tE(float noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fpext float %0 to double                 ; 3 uses
  %2 = tail call double @llvm.fabs.f64(double %i.a) ; 2 uses
  %3 = fcmp one double %2, +inf
  %or.cond.i.i = fcmp ult double %2, f0x47E0000000000000
  %or.cond15.i.i = and i1 %3, %or.cond.i.i        ; 2 uses
  br i1 %or.cond15.i.i, label %4, label %_ZN6duckdb7Hugeint10TryConvertIdEEbT_RNS_9hugeint_tE.exit

4:                                                ; preds = %bb.a
  %5 = fcmp olt float %0, 0.000000e+00            ; 2 uses
  %6 = fneg double %i.a
  %.013.i.i = select i1 %5, double %6, double %i.a ; 2 uses
  %7 = frem double %.013.i.i, f0x43F0000000000000
  %8 = fptoui double %7 to i64                    ; 3 uses
  store i64 %8, ptr %1, align 8, !tbaa !293
  %9 = fmul nnan double %.013.i.i, f0x3BF0000000000000
  %10 = fptosi double %9 to i64                   ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %10, ptr %11, align 8, !tbaa !292
  br i1 %5, label %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit.i.i, label %_ZN6duckdb7Hugeint10TryConvertIdEEbT_RNS_9hugeint_tE.exit

_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit.i.i: ; preds = %4
  %12 = sub i64 0, %8
  %13 = xor i64 %10, -1
  %14 = icmp eq i64 %8, 0
  %15 = zext i1 %14 to i64
  %16 = add nsw i64 %15, %13
  store i64 %12, ptr %1, align 8, !tbaa !245
  store i64 %16, ptr %11, align 8, !tbaa !245
  br label %_ZN6duckdb7Hugeint10TryConvertIdEEbT_RNS_9hugeint_tE.exit

_ZN6duckdb7Hugeint10TryConvertIdEEbT_RNS_9hugeint_tE.exit: ; preds = %bb.a, %4, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit.i.i
  ret i1 %or.cond15.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIdEEbT_RNS_9hugeint_tE(double noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %4 = fcmp one double %3, +inf
  %or.cond.i = fcmp ult double %3, f0x47E0000000000000
  %or.cond15.i = and i1 %4, %or.cond.i            ; 2 uses
  br i1 %or.cond15.i, label %5, label %_ZN6duckdb23ConvertFloatingToBigintIdEEbT_RNS_9hugeint_tE.exit

5:                                                ; preds = %2
  %6 = fcmp olt double %0, 0.000000e+00           ; 2 uses
  %7 = fneg double %0
  %.013.i = select i1 %6, double %7, double %0    ; 2 uses
  %8 = frem double %.013.i, f0x43F0000000000000
  %9 = fptoui double %8 to i64                    ; 3 uses
  store i64 %9, ptr %1, align 8, !tbaa !293
  %10 = fmul nnan double %.013.i, f0x3BF0000000000000
  %11 = fptosi double %10 to i64                  ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %11, ptr %12, align 8, !tbaa !292
  br i1 %6, label %bb.a, label %_ZN6duckdb23ConvertFloatingToBigintIdEEbT_RNS_9hugeint_tE.exit

bb.a:                                             ; preds = %5
  %13 = sub i64 0, %9
  %14 = xor i64 %11, -1
  %15 = icmp eq i64 %9, 0
  %16 = zext i1 %15 to i64
  %17 = add nsw i64 %16, %14
  store i64 %13, ptr %1, align 8, !tbaa !245
  store i64 %17, ptr %12, align 8, !tbaa !245
  br label %_ZN6duckdb23ConvertFloatingToBigintIdEEbT_RNS_9hugeint_tE.exit

_ZN6duckdb23ConvertFloatingToBigintIdEEbT_RNS_9hugeint_tE.exit: ; preds = %2, %5, %bb.a
  ret i1 %or.cond15.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIeEEbT_RNS_9hugeint_tE(x86_fp80 noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %0)
  %or.cond.i = fcmp ult x86_fp80 %3, f0x407E8000000000000000 ; 2 uses
  br i1 %or.cond.i, label %4, label %_ZN6duckdb23ConvertFloatingToBigintIeEEbT_RNS_9hugeint_tE.exit

4:                                                ; preds = %2
  %5 = fcmp olt x86_fp80 %0, 0.000000e+00         ; 2 uses
  %6 = fneg x86_fp80 %0
  %spec.select.i = select i1 %5, x86_fp80 %6, x86_fp80 %0 ; 2 uses
  %7 = fptrunc x86_fp80 %spec.select.i to double
  %8 = tail call double @fmod(double noundef %7, double noundef f0x43F0000000000000) #46, !tbaa !165
  %9 = fptoui double %8 to i64                    ; 3 uses
  store i64 %9, ptr %1, align 8, !tbaa !293
  %10 = fdiv x86_fp80 %spec.select.i, f0x403EFFFFFFFFFFFFFFFF
  %11 = fptosi x86_fp80 %10 to i64                ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %11, ptr %12, align 8, !tbaa !292
  br i1 %5, label %bb.a, label %_ZN6duckdb23ConvertFloatingToBigintIeEEbT_RNS_9hugeint_tE.exit

bb.a:                                             ; preds = %4
  %13 = sub i64 0, %9
  %14 = xor i64 %11, -1
  %15 = icmp eq i64 %9, 0
  %16 = zext i1 %15 to i64
  %17 = add nsw i64 %16, %14
  store i64 %13, ptr %1, align 8, !tbaa !245
  store i64 %17, ptr %12, align 8, !tbaa !245
  br label %_ZN6duckdb23ConvertFloatingToBigintIeEEbT_RNS_9hugeint_tE.exit

_ZN6duckdb23ConvertFloatingToBigintIeEEbT_RNS_9hugeint_tE.exit: ; preds = %2, %4, %bb.a
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb9hugeint_tC2El(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.lobit.neg.i.i.i = ashr i64 %1, 63
  store i64 %1, ptr %0, align 8, !tbaa !293
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.neg.i.i.i, ptr %i.a, align 8, !tbaa !292
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb9hugeint_tneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !293
  %i.b = load i64, ptr %1, align 8, !tbaa !293
  %i.c = icmp ne i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !292
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !292
  %i.h = icmp ne i64 %i.e, %i.g
  %.not3.i = select i1 %i.c, i1 true, i1 %i.h
  ret i1 %.not3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb9hugeint_tleERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !292  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !292  ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  %i.f = icmp eq i64 %i.b, %i.d
  %i.g = load i64, ptr %0, align 8, !tbaa !293
  %i.h = load i64, ptr %1, align 8, !tbaa !293
  %i.i = icmp ule i64 %i.g, %i.h
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  %i.k = select i1 %i.e, i1 true, i1 %i.j
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tmLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !245 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !245 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !245 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !245 ; 4 uses
  %i.a = icmp slt i64 %.sroa.22.0.copyload, 0
  %i.b = icmp slt i64 %.sroa.2.0.copyload, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 0, %.sroa.01.0.copyload
  %i.d = xor i64 %.sroa.22.0.copyload, -1
  %i.e = icmp eq i64 %.sroa.01.0.copyload, 0
  %i.f = zext i1 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.415.0.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.22.0.copyload, %bb.a ]
  %.sroa.013.0.i = phi i64 [ %i.c, %bb.b ], [ %.sroa.01.0.copyload, %bb.a ]
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 0, %.sroa.0.0.copyload
  %i.i = xor i64 %.sroa.2.0.copyload, -1
  %i.j = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.2.0.copyload, %bb.c ]
  %.sroa.0.0.i = phi i64 [ %i.h, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ]
  %i.m = zext i64 %.sroa.013.0.i to i128
  %i.n = zext nneg i64 %.sroa.415.0.i to i128
  %i.o = shl nuw nsw i128 %i.n, 64
  %i.p = or disjoint i128 %i.o, %i.m
  %i.q = zext i64 %.sroa.0.0.i to i128
  %i.r = zext nneg i64 %.sroa.4.0.i to i128
  %i.s = shl nuw nsw i128 %i.r, 64
  %i.t = or disjoint i128 %i.s, %i.q
  %i.u = mul i128 %i.t, %i.p                      ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64               ; 2 uses
  %i.x = trunc i128 %i.u to i64                   ; 3 uses
  %.lobit10.i = xor i64 %.sroa.2.0.copyload, %.sroa.22.0.copyload
  %.not.i = icmp sgt i64 %.lobit10.i, -1
  br i1 %.not.i, label %_ZN6duckdb7Hugeint8MultiplyILb0EEENS_9hugeint_tES2_S2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = sub i64 0, %i.x
  %i.z = xor i64 %i.w, -1
  %i.aa = icmp eq i64 %i.x, 0
  %i.ab = zext i1 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, %i.z
  br label %_ZN6duckdb7Hugeint8MultiplyILb0EEENS_9hugeint_tES2_S2_.exit

_ZN6duckdb7Hugeint8MultiplyILb0EEENS_9hugeint_tES2_S2_.exit: ; preds = %bb.e, %bb.f
  %.sroa.419.0.i = phi i64 [ %i.w, %bb.e ], [ %i.ac, %bb.f ]
  %.sroa.017.0.i = phi i64 [ %i.x, %bb.e ], [ %i.y, %bb.f ]
  store i64 %.sroa.017.0.i, ptr %0, align 8, !tbaa !245
  store i64 %.sroa.419.0.i, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !245
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tdvERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !245
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !245
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_trmERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !245
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !245
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %.fca.0.load.i = load i64, ptr %2, align 8
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tngEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !245 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !245
  %i.a = sub i64 0, %.sroa.0.0.copyload
  %i.b = xor i64 %.sroa.2.0.copyload, -1
  %i.c = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nsw i64 %i.d, %i.b
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.e, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_trsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !293    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !292
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !296
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !292  ; 2 uses
  %.lobit11 = ashr i64 %i.g, 63
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
end_hunk_1
