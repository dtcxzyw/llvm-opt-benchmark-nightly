Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/xchar-test?download=true
inline.NumInlined: 12086
inline.NumDeleted: 3130
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 143
begin_hunk_0
@.str.357 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI30xchar_test_is_formattable_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI30xchar_test_is_formattable_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI30xchar_test_is_formattable_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI30xchar_test_is_formattable_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI30xchar_test_is_formattable_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI30xchar_test_is_formattable_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI30xchar_test_is_formattable_TestEE = linkonce_odr hidden constant [71 x i8] c"N7testing8internal15TestFactoryImplI30xchar_test_is_formattable_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI35xchar_test_compile_time_string_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI35xchar_test_compile_time_string_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI35xchar_test_compile_time_string_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI35xchar_test_compile_time_string_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI35xchar_test_compile_time_string_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI35xchar_test_compile_time_string_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI35xchar_test_compile_time_string_TestEE = linkonce_odr hidden constant [76 x i8] c"N7testing8internal15TestFactoryImplI35xchar_test_compile_time_string_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI25xchar_test_format_to_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI25xchar_test_format_to_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI25xchar_test_format_to_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI25xchar_test_format_to_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI25xchar_test_format_to_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI25xchar_test_format_to_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI25xchar_test_format_to_TestEE = linkonce_odr hidden constant [66 x i8] c"N7testing8internal15TestFactoryImplI25xchar_test_format_to_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI45xchar_test_compile_time_string_format_to_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI45xchar_test_compile_time_string_format_to_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI45xchar_test_compile_time_string_format_to_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI45xchar_test_compile_time_string_format_to_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI45xchar_test_compile_time_string_format_to_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI45xchar_test_compile_time_string_format_to_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI45xchar_test_compile_time_string_format_to_TestEE = linkonce_odr hidden constant [86 x i8] c"N7testing8internal15TestFactoryImplI45xchar_test_compile_time_string_format_to_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI26xchar_test_vformat_to_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI26xchar_test_vformat_to_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI26xchar_test_vformat_to_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI26xchar_test_vformat_to_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI26xchar_test_vformat_to_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI26xchar_test_vformat_to_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI26xchar_test_vformat_to_TestEE = linkonce_odr hidden constant [67 x i8] c"N7testing8internal15TestFactoryImplI26xchar_test_vformat_to_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI25xchar_test_format_as_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI25xchar_test_format_as_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI25xchar_test_format_as_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI25xchar_test_format_as_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI25xchar_test_format_as_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI25xchar_test_format_as_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI25xchar_test_format_as_TestEE = linkonce_odr hidden constant [66 x i8] c"N7testing8internal15TestFactoryImplI25xchar_test_format_as_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI33format_test_wide_format_to_n_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI33format_test_wide_format_to_n_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI33format_test_wide_format_to_n_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI33format_test_wide_format_to_n_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI33format_test_wide_format_to_n_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI33format_test_wide_format_to_n_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI33format_test_wide_format_to_n_TestEE = linkonce_odr hidden constant [74 x i8] c"N7testing8internal15TestFactoryImplI33format_test_wide_format_to_n_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI41format_test_wide_format_to_n_runtime_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI41format_test_wide_format_to_n_runtime_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI41format_test_wide_format_to_n_runtime_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI41format_test_wide_format_to_n_runtime_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI41format_test_wide_format_to_n_runtime_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI41format_test_wide_format_to_n_runtime_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI41format_test_wide_format_to_n_runtime_TestEE = linkonce_odr hidden constant [82 x i8] c"N7testing8internal15TestFactoryImplI41format_test_wide_format_to_n_runtime_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI29xchar_test_named_arg_udl_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI29xchar_test_named_arg_udl_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI29xchar_test_named_arg_udl_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI29xchar_test_named_arg_udl_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI29xchar_test_named_arg_udl_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI29xchar_test_named_arg_udl_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI29xchar_test_named_arg_udl_TestEE = linkonce_odr hidden constant [70 x i8] c"N7testing8internal15TestFactoryImplI29xchar_test_named_arg_udl_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI21xchar_test_print_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI21xchar_test_print_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI21xchar_test_print_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI21xchar_test_print_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI21xchar_test_print_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI21xchar_test_print_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI21xchar_test_print_TestEE = linkonce_odr hidden constant [62 x i8] c"N7testing8internal15TestFactoryImplI21xchar_test_print_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI20xchar_test_join_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20xchar_test_join_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20xchar_test_join_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20xchar_test_join_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20xchar_test_join_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20xchar_test_join_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20xchar_test_join_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20xchar_test_join_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI26xchar_test_join_bytes_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI26xchar_test_join_bytes_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI26xchar_test_join_bytes_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI26xchar_test_join_bytes_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI26xchar_test_join_bytes_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI26xchar_test_join_bytes_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI26xchar_test_join_bytes_TestEE = linkonce_odr hidden constant [67 x i8] c"N7testing8internal15TestFactoryImplI26xchar_test_join_bytes_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI20xchar_test_enum_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI20xchar_test_enum_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI20xchar_test_enum_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI20xchar_test_enum_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI20xchar_test_enum_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI20xchar_test_enum_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI20xchar_test_enum_TestEE = linkonce_odr hidden constant [61 x i8] c"N7testing8internal15TestFactoryImplI20xchar_test_enum_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI24xchar_test_streamed_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI24xchar_test_streamed_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI24xchar_test_streamed_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI24xchar_test_streamed_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI24xchar_test_streamed_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI24xchar_test_streamed_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI24xchar_test_streamed_TestEE = linkonce_odr hidden constant [65 x i8] c"N7testing8internal15TestFactoryImplI24xchar_test_streamed_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI34xchar_test_sign_not_truncated_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI34xchar_test_sign_not_truncated_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI34xchar_test_sign_not_truncated_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI34xchar_test_sign_not_truncated_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI34xchar_test_sign_not_truncated_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI34xchar_test_sign_not_truncated_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI34xchar_test_sign_not_truncated_TestEE = linkonce_odr hidden constant [75 x i8] c"N7testing8internal15TestFactoryImplI34xchar_test_sign_not_truncated_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI22xchar_test_chrono_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI22xchar_test_chrono_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI22xchar_test_chrono_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI22xchar_test_chrono_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI22xchar_test_chrono_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI22xchar_test_chrono_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI22xchar_test_chrono_TestEE = linkonce_odr hidden constant [63 x i8] c"N7testing8internal15TestFactoryImplI22xchar_test_chrono_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI21xchar_test_color_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI21xchar_test_color_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI21xchar_test_color_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI21xchar_test_color_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI21xchar_test_color_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI21xchar_test_color_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI21xchar_test_color_TestEE = linkonce_odr hidden constant [62 x i8] c"N7testing8internal15TestFactoryImplI21xchar_test_color_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI23xchar_test_ostream_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23xchar_test_ostream_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23xchar_test_ostream_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23xchar_test_ostream_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23xchar_test_ostream_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23xchar_test_ostream_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23xchar_test_ostream_TestEE = linkonce_odr hidden constant [64 x i8] c"N7testing8internal15TestFactoryImplI23xchar_test_ostream_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI26xchar_test_format_map_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI26xchar_test_format_map_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI26xchar_test_format_map_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI26xchar_test_format_map_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI26xchar_test_format_map_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI26xchar_test_format_map_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI26xchar_test_format_map_TestEE = linkonce_odr hidden constant [67 x i8] c"N7testing8internal15TestFactoryImplI26xchar_test_format_map_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI29xchar_test_escape_string_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI29xchar_test_escape_string_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI29xchar_test_escape_string_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI29xchar_test_escape_string_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI29xchar_test_escape_string_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI29xchar_test_escape_string_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI29xchar_test_escape_string_TestEE = linkonce_odr hidden constant [70 x i8] c"N7testing8internal15TestFactoryImplI29xchar_test_escape_string_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI26xchar_test_to_wstring_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI26xchar_test_to_wstring_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI26xchar_test_to_wstring_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI26xchar_test_to_wstring_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI26xchar_test_to_wstring_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI26xchar_test_to_wstring_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI26xchar_test_to_wstring_TestEE = linkonce_odr hidden constant [67 x i8] c"N7testing8internal15TestFactoryImplI26xchar_test_to_wstring_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI33locale_test_localized_double_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI33locale_test_localized_double_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI33locale_test_localized_double_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI33locale_test_localized_double_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI33locale_test_localized_double_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI33locale_test_localized_double_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI33locale_test_localized_double_TestEE = linkonce_odr hidden constant [74 x i8] c"N7testing8internal15TestFactoryImplI33locale_test_localized_double_TestEE\00", comdat, align 1
@_ZTV8numpunctIcE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI8numpunctIcE, ptr @_ZNSt7__cxx118numpunctIcED2Ev, ptr @_ZN8numpunctIcED0Ev, ptr @_ZNK8numpunctIcE16do_decimal_pointEv, ptr @_ZNK8numpunctIcE16do_thousands_sepEv, ptr @_ZNK8numpunctIcE11do_groupingB5cxx11Ev, ptr @_ZNKSt7__cxx118numpunctIcE11do_truenameEv, ptr @_ZNKSt7__cxx118numpunctIcE12do_falsenameEv] }, comdat, align 8
@_ZTI8numpunctIcE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8numpunctIcE, ptr @_ZTINSt7__cxx118numpunctIcEE }, comdat, align 8
@_ZTS8numpunctIcE = linkonce_odr hidden constant [13 x i8] c"8numpunctIcE\00", comdat, align 1
@_ZTINSt7__cxx118numpunctIcEE = external constant ptr
@_ZTVNSt7__cxx118numpunctIcEE = external constant { [9 x ptr] }, align 8
@_ZTVN7testing8internal15TestFactoryImplI23locale_test_format_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23locale_test_format_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23locale_test_format_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23locale_test_format_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23locale_test_format_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23locale_test_format_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23locale_test_format_TestEE = linkonce_odr hidden constant [64 x i8] c"N7testing8internal15TestFactoryImplI23locale_test_format_TestEE\00", comdat, align 1
@.str.359 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTV11no_groupingIcE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI11no_groupingIcE, ptr @_ZNSt7__cxx118numpunctIcED2Ev, ptr @_ZN11no_groupingIcED0Ev, ptr @_ZNK11no_groupingIcE16do_decimal_pointEv, ptr @_ZNK11no_groupingIcE16do_thousands_sepEv, ptr @_ZNK11no_groupingIcE11do_groupingB5cxx11Ev, ptr @_ZNKSt7__cxx118numpunctIcE11do_truenameEv, ptr @_ZNKSt7__cxx118numpunctIcE12do_falsenameEv] }, comdat, align 8
@_ZTI11no_groupingIcE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11no_groupingIcE, ptr @_ZTINSt7__cxx118numpunctIcEE }, comdat, align 8
@_ZTS11no_groupingIcE = linkonce_odr hidden constant [17 x i8] c"11no_groupingIcE\00", comdat, align 1
@_ZTV16special_groupingIcE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI16special_groupingIcE, ptr @_ZNSt7__cxx118numpunctIcED2Ev, ptr @_ZN16special_groupingIcED0Ev, ptr @_ZNK16special_groupingIcE16do_decimal_pointEv, ptr @_ZNK16special_groupingIcE16do_thousands_sepEv, ptr @_ZNK16special_groupingIcE11do_groupingB5cxx11Ev, ptr @_ZNKSt7__cxx118numpunctIcE11do_truenameEv, ptr @_ZNKSt7__cxx118numpunctIcE12do_falsenameEv] }, comdat, align 8
@_ZTI16special_groupingIcE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16special_groupingIcE, ptr @_ZTINSt7__cxx118numpunctIcEE }, comdat, align 8
@_ZTS16special_groupingIcE = linkonce_odr hidden constant [22 x i8] c"16special_groupingIcE\00", comdat, align 1
@_ZTV14small_groupingIcE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI14small_groupingIcE, ptr @_ZNSt7__cxx118numpunctIcED2Ev, ptr @_ZN14small_groupingIcED0Ev, ptr @_ZNK14small_groupingIcE16do_decimal_pointEv, ptr @_ZNK14small_groupingIcE16do_thousands_sepEv, ptr @_ZNK14small_groupingIcE11do_groupingB5cxx11Ev, ptr @_ZNKSt7__cxx118numpunctIcE11do_truenameEv, ptr @_ZNKSt7__cxx118numpunctIcE12do_falsenameEv] }, comdat, align 8
@_ZTI14small_groupingIcE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14small_groupingIcE, ptr @_ZTINSt7__cxx118numpunctIcEE }, comdat, align 8
@_ZTS14small_groupingIcE = linkonce_odr hidden constant [20 x i8] c"14small_groupingIcE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI37locale_test_format_default_align_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37locale_test_format_default_align_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37locale_test_format_default_align_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37locale_test_format_default_align_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37locale_test_format_default_align_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37locale_test_format_default_align_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37locale_test_format_default_align_TestEE = linkonce_odr hidden constant [78 x i8] c"N7testing8internal15TestFactoryImplI37locale_test_format_default_align_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28locale_test_format_plus_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28locale_test_format_plus_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28locale_test_format_plus_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28locale_test_format_plus_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28locale_test_format_plus_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28locale_test_format_plus_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28locale_test_format_plus_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28locale_test_format_plus_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI24locale_test_wformat_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI24locale_test_wformat_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI24locale_test_wformat_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI24locale_test_wformat_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI24locale_test_wformat_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI24locale_test_wformat_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI24locale_test_wformat_TestEE = linkonce_odr hidden constant [65 x i8] c"N7testing8internal15TestFactoryImplI24locale_test_wformat_TestEE\00", comdat, align 1
@_ZTV8numpunctIwE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI8numpunctIwE, ptr @_ZNSt7__cxx118numpunctIwED2Ev, ptr @_ZN8numpunctIwED0Ev, ptr @_ZNK8numpunctIwE16do_decimal_pointEv, ptr @_ZNK8numpunctIwE16do_thousands_sepEv, ptr @_ZNK8numpunctIwE11do_groupingB5cxx11Ev, ptr @_ZNKSt7__cxx118numpunctIwE11do_truenameEv, ptr @_ZNKSt7__cxx118numpunctIwE12do_falsenameEv] }, comdat, align 8
@_ZTI8numpunctIwE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8numpunctIwE, ptr @_ZTINSt7__cxx118numpunctIwEE }, comdat, align 8
@_ZTS8numpunctIwE = linkonce_odr hidden constant [13 x i8] c"8numpunctIwE\00", comdat, align 1
@_ZTINSt7__cxx118numpunctIwEE = external constant ptr
@_ZTVNSt7__cxx118numpunctIwEE = external constant { [9 x ptr] }, align 8
@_ZTV11no_groupingIwE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI11no_groupingIwE, ptr @_ZNSt7__cxx118numpunctIwED2Ev, ptr @_ZN11no_groupingIwED0Ev, ptr @_ZNK11no_groupingIwE16do_decimal_pointEv, ptr @_ZNK11no_groupingIwE16do_thousands_sepEv, ptr @_ZNK11no_groupingIwE11do_groupingB5cxx11Ev, ptr @_ZNKSt7__cxx118numpunctIwE11do_truenameEv, ptr @_ZNKSt7__cxx118numpunctIwE12do_falsenameEv] }, comdat, align 8
@_ZTI11no_groupingIwE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11no_groupingIwE, ptr @_ZTINSt7__cxx118numpunctIwEE }, comdat, align 8
@_ZTS11no_groupingIwE = linkonce_odr hidden constant [17 x i8] c"11no_groupingIwE\00", comdat, align 1
@_ZTV16special_groupingIwE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI16special_groupingIwE, ptr @_ZNSt7__cxx118numpunctIwED2Ev, ptr @_ZN16special_groupingIwED0Ev, ptr @_ZNK16special_groupingIwE16do_decimal_pointEv, ptr @_ZNK16special_groupingIwE16do_thousands_sepEv, ptr @_ZNK16special_groupingIwE11do_groupingB5cxx11Ev, ptr @_ZNKSt7__cxx118numpunctIwE11do_truenameEv, ptr @_ZNKSt7__cxx118numpunctIwE12do_falsenameEv] }, comdat, align 8
@_ZTI16special_groupingIwE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16special_groupingIwE, ptr @_ZTINSt7__cxx118numpunctIwEE }, comdat, align 8
@_ZTS16special_groupingIwE = linkonce_odr hidden constant [22 x i8] c"16special_groupingIwE\00", comdat, align 1
@_ZTV14small_groupingIwE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI14small_groupingIwE, ptr @_ZNSt7__cxx118numpunctIwED2Ev, ptr @_ZN14small_groupingIwED0Ev, ptr @_ZNK14small_groupingIwE16do_decimal_pointEv, ptr @_ZNK14small_groupingIwE16do_thousands_sepEv, ptr @_ZNK14small_groupingIwE11do_groupingB5cxx11Ev, ptr @_ZNKSt7__cxx118numpunctIwE11do_truenameEv, ptr @_ZNKSt7__cxx118numpunctIwE12do_falsenameEv] }, comdat, align 8
@_ZTI14small_groupingIwE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14small_groupingIwE, ptr @_ZTINSt7__cxx118numpunctIwEE }, comdat, align 8
@_ZTS14small_groupingIwE = linkonce_odr hidden constant [20 x i8] c"14small_groupingIwE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI30locale_test_int_formatter_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI30locale_test_int_formatter_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI30locale_test_int_formatter_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI30locale_test_int_formatter_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI30locale_test_int_formatter_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI30locale_test_int_formatter_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI30locale_test_int_formatter_TestEE = linkonce_odr hidden constant [71 x i8] c"N7testing8internal15TestFactoryImplI30locale_test_int_formatter_TestEE\00", comdat, align 1
@.str.362 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.363 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.364 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.365 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.366 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.367 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.368 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.369 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZZN3fmt3v126detail9digits2_iEmE4data = linkonce_odr hidden local_unnamed_addr constant [257 x i8] c"00010203  0405060707080910  1112131414151617  18192021  222324  25262728  2930313232333435  3637383939404142  43444546  474849  50515253  5455565757585960  6162636464656667  68697071  727374  75767778  7980818282838485  8687888989909192  93949596  979899  \00", comdat, align 2
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@.str.373 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.374 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.375 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.376 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.377 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.378 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.379 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI31locale_test_chrono_weekday_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI31locale_test_chrono_weekday_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI31locale_test_chrono_weekday_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI31locale_test_chrono_weekday_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI31locale_test_chrono_weekday_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI31locale_test_chrono_weekday_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI31locale_test_chrono_weekday_TestEE = linkonce_odr hidden constant [72 x i8] c"N7testing8internal15TestFactoryImplI31locale_test_chrono_weekday_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI21locale_test_sign_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI21locale_test_sign_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI21locale_test_sign_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI21locale_test_sign_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI21locale_test_sign_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI21locale_test_sign_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI21locale_test_sign_TestEE = linkonce_odr hidden constant [62 x i8] c"N7testing8internal15TestFactoryImplI21locale_test_sign_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI33std_test_xchar_format_bitset_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI33std_test_xchar_format_bitset_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI33std_test_xchar_format_bitset_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI33std_test_xchar_format_bitset_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI33std_test_xchar_format_bitset_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI33std_test_xchar_format_bitset_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI33std_test_xchar_format_bitset_TestEE = linkonce_odr hidden constant [74 x i8] c"N7testing8internal15TestFactoryImplI33std_test_xchar_format_bitset_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI27std_test_xchar_complex_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI27std_test_xchar_complex_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI27std_test_xchar_complex_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI27std_test_xchar_complex_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI27std_test_xchar_complex_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI27std_test_xchar_complex_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI27std_test_xchar_complex_TestEE = linkonce_odr hidden constant [68 x i8] c"N7testing8internal15TestFactoryImplI27std_test_xchar_complex_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI28std_test_xchar_optional_TestEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28std_test_xchar_optional_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28std_test_xchar_optional_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28std_test_xchar_optional_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28std_test_xchar_optional_TestEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28std_test_xchar_optional_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28std_test_xchar_optional_TestEE = linkonce_odr hidden constant [69 x i8] c"N7testing8internal15TestFactoryImplI28std_test_xchar_optional_TestEE\00", comdat, align 1
@.str.380 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.381 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTIc = external constant ptr
@_ZN7testing8internal12TypeIdHelperI23has_to_string_view_testIcEE6dummy_E = linkonce_odr hidden global i8 0, comdat, align 1
@.str.382 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/fmt/fmt/test/gtest/./gtest/gtest.h\00", align 1
@.str.383 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.384 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.385 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream.187", align 8
@.str.386 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIcEEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIcEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIcEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIcEE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIcEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIcEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIcEEE = linkonce_odr hidden constant [91 x i8] c"N7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIcEEE\00", comdat, align 1
@_ZTV47has_to_string_view_test_has_to_string_view_TestIcE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI47has_to_string_view_test_has_to_string_view_TestIcE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN47has_to_string_view_test_has_to_string_view_TestIcED0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN47has_to_string_view_test_has_to_string_view_TestIcE8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, comdat, align 8
@_ZTI47has_to_string_view_test_has_to_string_view_TestIcE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS47has_to_string_view_test_has_to_string_view_TestIcE, ptr @_ZTI23has_to_string_view_testIcE }, comdat, align 8
@_ZTS47has_to_string_view_test_has_to_string_view_TestIcE = linkonce_odr hidden constant [53 x i8] c"47has_to_string_view_test_has_to_string_view_TestIcE\00", comdat, align 1
@_ZTI23has_to_string_view_testIcE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23has_to_string_view_testIcE, ptr @_ZTIN7testing4TestE }, comdat, align 8
@_ZTS23has_to_string_view_testIcE = linkonce_odr hidden constant [29 x i8] c"23has_to_string_view_testIcE\00", comdat, align 1
@_ZTIw = external constant ptr
@_ZN7testing8internal12TypeIdHelperI23has_to_string_view_testIwEE6dummy_E = linkonce_odr hidden global i8 0, comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIwEEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIwEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIwEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIwEE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIwEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIwEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIwEEE = linkonce_odr hidden constant [91 x i8] c"N7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIwEEE\00", comdat, align 1
@_ZTV47has_to_string_view_test_has_to_string_view_TestIwE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI47has_to_string_view_test_has_to_string_view_TestIwE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN47has_to_string_view_test_has_to_string_view_TestIwED0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN47has_to_string_view_test_has_to_string_view_TestIwE8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, comdat, align 8
@_ZTI47has_to_string_view_test_has_to_string_view_TestIwE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS47has_to_string_view_test_has_to_string_view_TestIwE, ptr @_ZTI23has_to_string_view_testIwE }, comdat, align 8
@_ZTS47has_to_string_view_test_has_to_string_view_TestIwE = linkonce_odr hidden constant [53 x i8] c"47has_to_string_view_test_has_to_string_view_TestIwE\00", comdat, align 1
@_ZTI23has_to_string_view_testIwE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23has_to_string_view_testIwE, ptr @_ZTIN7testing4TestE }, comdat, align 8
@_ZTS23has_to_string_view_testIwE = linkonce_odr hidden constant [29 x i8] c"23has_to_string_view_testIwE\00", comdat, align 1
@_ZTIDs = external constant ptr
@_ZN7testing8internal12TypeIdHelperI23has_to_string_view_testIDsEE6dummy_E = linkonce_odr hidden global i8 0, comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDsEEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDsEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDsEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDsEE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDsEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDsEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDsEEE = linkonce_odr hidden constant [92 x i8] c"N7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDsEEE\00", comdat, align 1
@_ZTV47has_to_string_view_test_has_to_string_view_TestIDsE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI47has_to_string_view_test_has_to_string_view_TestIDsE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN47has_to_string_view_test_has_to_string_view_TestIDsED0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN47has_to_string_view_test_has_to_string_view_TestIDsE8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, comdat, align 8
@_ZTI47has_to_string_view_test_has_to_string_view_TestIDsE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS47has_to_string_view_test_has_to_string_view_TestIDsE, ptr @_ZTI23has_to_string_view_testIDsE }, comdat, align 8
@_ZTS47has_to_string_view_test_has_to_string_view_TestIDsE = linkonce_odr hidden constant [54 x i8] c"47has_to_string_view_test_has_to_string_view_TestIDsE\00", comdat, align 1
@_ZTI23has_to_string_view_testIDsE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23has_to_string_view_testIDsE, ptr @_ZTIN7testing4TestE }, comdat, align 8
@_ZTS23has_to_string_view_testIDsE = linkonce_odr hidden constant [30 x i8] c"23has_to_string_view_testIDsE\00", comdat, align 1
@_ZTIDi = external constant ptr
@_ZN7testing8internal12TypeIdHelperI23has_to_string_view_testIDiEE6dummy_E = linkonce_odr hidden global i8 0, comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDiEEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDiEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDiEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDiEE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDiEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDiEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDiEEE = linkonce_odr hidden constant [92 x i8] c"N7testing8internal15TestFactoryImplI47has_to_string_view_test_has_to_string_view_TestIDiEEE\00", comdat, align 1
@_ZTV47has_to_string_view_test_has_to_string_view_TestIDiE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI47has_to_string_view_test_has_to_string_view_TestIDiE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN47has_to_string_view_test_has_to_string_view_TestIDiED0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN47has_to_string_view_test_has_to_string_view_TestIDiE8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, comdat, align 8
@_ZTI47has_to_string_view_test_has_to_string_view_TestIDiE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS47has_to_string_view_test_has_to_string_view_TestIDiE, ptr @_ZTI23has_to_string_view_testIDiE }, comdat, align 8
@_ZTS47has_to_string_view_test_has_to_string_view_TestIDiE = linkonce_odr hidden constant [54 x i8] c"47has_to_string_view_test_has_to_string_view_TestIDiE\00", comdat, align 1
@_ZTI23has_to_string_view_testIDiE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23has_to_string_view_testIDiE, ptr @_ZTIN7testing4TestE }, comdat, align 8
@_ZTS23has_to_string_view_testIDiE = linkonce_odr hidden constant [30 x i8] c"23has_to_string_view_testIDiE\00", comdat, align 1
@.str.396 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.397 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.398 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.399 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@_ZNSt7__cxx118numpunctIwE2idE = external global %"class.std::locale::id", align 8
@__const._ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.400 = private unnamed_addr constant [3 x i8] c"e+\00", align 1
@.str.401 = private unnamed_addr constant [3 x i8] c"e-\00", align 1
@.str.402 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.403 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.404 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.405 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.408 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.409 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@.str.412 = private unnamed_addr constant [9 x i16] [i16 -26215, i16 -32113, i16 -32703, i16 -32762, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 0], align 2
@.str.413 = private unnamed_addr constant [9 x i16] [i16 -26214, i16 23593, i16 -30408, i16 -29255, i16 -22586, i16 4295, i16 430, i16 43, i16 0], align 2
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.415 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.416 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.418 = private unnamed_addr constant [20 x i8] c"duplicate named arg\00", align 1
@.str.420 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTVN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEEE = linkonce_odr hidden constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEEE, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEED2Ev, ptr @_ZN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEED0Ev, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE5imbueERKSt6locale, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE6setbufEPwl, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE4syncEv, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE9showmanycEv, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE6xsgetnEPwl, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE9underflowEv, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, ptr @_ZNSt15basic_streambufIwSt11char_traitsIwEE9pbackfailEj, ptr @_ZN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEE6xsputnEPKwl, ptr @_ZN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEE8overflowEj] }, comdat, align 8
@_ZTIN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEEE, ptr @_ZTISt15basic_streambufIwSt11char_traitsIwEE }, comdat, align 8
@_ZTSN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEEE = linkonce_odr hidden constant [70 x i8] c"N3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEEE\00", comdat, align 1
@_ZTISt15basic_streambufIwSt11char_traitsIwEE = external constant ptr
@_ZTVSt15basic_streambufIwSt11char_traitsIwEE = external constant { [16 x ptr] }, align 8
@_ZTVSt13basic_ostreamIwSt11char_traitsIwEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZN3fmt3v126detail14string_literalIcJLc37ELc70ELc32ELc37ELc84EEE5valueE = linkonce_odr hidden constant [5 x i8] c"%F %T", comdat, align 1
@.str.422 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@.str.423 = private unnamed_addr constant [10 x i8] c"no format\00", align 1
@.str.424 = private unnamed_addr constant [12 x i8] c"no timezone\00", align 1
@_ZZN3fmt3v126detail18get_classic_localeEvE6locale = linkonce_odr hidden local_unnamed_addr global ptr null, comdat, align 8
@_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale = linkonce_odr hidden global i64 0, comdat, align 8
@.str.425 = private unnamed_addr constant [22 x i8] c"failed to format time\00", align 1
@_ZTVN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEEE = linkonce_odr hidden constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEEE, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev, ptr @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEED0Ev, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE5imbueERKSt6locale, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPcl, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE4syncEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE9showmanycEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6xsgetnEPcl, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE9underflowEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE9pbackfailEi, ptr @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE6xsputnEPKcl, ptr @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE8overflowEi] }, comdat, align 8
@_ZTIN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEEE, ptr @_ZTISt15basic_streambufIcSt11char_traitsIcEE }, comdat, align 8
@_ZTSN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEEE = linkonce_odr hidden constant [70 x i8] c"N3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEEE\00", comdat, align 1
@_ZTISt15basic_streambufIcSt11char_traitsIcEE = external constant ptr
@_ZTVSo = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZNSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE = external global %"class.std::locale::id", align 8
@_ZNSt7codecvtIDic11__mbstate_tE2idE = external global %"class.std::locale::id", align 8
@_ZZN3fmt3v126detail18tm_wday_short_nameEiE15short_name_list = linkonce_odr hidden local_unnamed_addr constant [7 x ptr] [ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432], comdat, align 16
@.str.426 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.427 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.428 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.429 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.430 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.431 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.432 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@.str.433 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@_ZZN3fmt3v126detail17tm_wday_full_nameEiE14full_name_list = linkonce_odr hidden local_unnamed_addr constant [7 x ptr] [ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440], comdat, align 16
@.str.434 = private unnamed_addr constant [7 x i8] c"Sunday\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"Monday\00", align 1
@.str.436 = private unnamed_addr constant [8 x i8] c"Tuesday\00", align 1
@.str.437 = private unnamed_addr constant [10 x i8] c"Wednesday\00", align 1
@.str.438 = private unnamed_addr constant [9 x i8] c"Thursday\00", align 1
@.str.439 = private unnamed_addr constant [7 x i8] c"Friday\00", align 1
@.str.440 = private unnamed_addr constant [9 x i8] c"Saturday\00", align 1
@.str.441 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@_ZZN3fmt3v126detail17tm_mon_short_nameEiE15short_name_list = linkonce_odr hidden local_unnamed_addr constant [12 x ptr] [ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @.str.450, ptr @.str.451, ptr @.str.452, ptr @.str.453], comdat, align 16
@.str.442 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.443 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.444 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.445 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.446 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.447 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.448 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.449 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.450 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.451 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.452 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.453 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@_ZZN3fmt3v126detail16tm_mon_full_nameEiE14full_name_list = linkonce_odr hidden local_unnamed_addr constant [12 x ptr] [ptr @.str.454, ptr @.str.455, ptr @.str.456, ptr @.str.457, ptr @.str.446, ptr @.str.458, ptr @.str.459, ptr @.str.460, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464], comdat, align 16
@.str.454 = private unnamed_addr constant [8 x i8] c"January\00", align 1
@.str.455 = private unnamed_addr constant [9 x i8] c"February\00", align 1
@.str.456 = private unnamed_addr constant [6 x i8] c"March\00", align 1
@.str.457 = private unnamed_addr constant [6 x i8] c"April\00", align 1
@.str.458 = private unnamed_addr constant [5 x i8] c"June\00", align 1
@.str.459 = private unnamed_addr constant [5 x i8] c"July\00", align 1
@.str.460 = private unnamed_addr constant [7 x i8] c"August\00", align 1
@.str.461 = private unnamed_addr constant [10 x i8] c"September\00", align 1
@.str.462 = private unnamed_addr constant [8 x i8] c"October\00", align 1
@.str.463 = private unnamed_addr constant [9 x i8] c"November\00", align 1
@.str.464 = private unnamed_addr constant [9 x i8] c"December\00", align 1
@.str.465 = private unnamed_addr constant [23 x i8] c"cannot format duration\00", align 1
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.466 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.467 = private unnamed_addr constant [8 x i8] c"no date\00", align 1
@.str.468 = private unnamed_addr constant [45 x i8] c"precision not allowed for this argument type\00", align 1
@.str.470 = private unnamed_addr constant [29 x i8] c"chrono value is out of range\00", align 1
@_ZNSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE2idE = external global %"class.std::locale::id", align 8
@_ZN3fmt3v126detail14string_literalIwJLw37ELw70ELw32ELw37ELw84EEE5valueE = linkonce_odr hidden constant [5 x i32] [i32 37, i32 70, i32 32, i32 37, i32 84], comdat, align 16
@_ZNSt7codecvtIwc11__mbstate_tE2idE = external global %"class.std::locale::id", align 8
@.str.471 = private unnamed_addr constant [26 x i8] c"time_t value out of range\00", align 1
@_ZZN3fmt3v126detail3utcEvE2tz = linkonce_odr hidden global [4 x i8] c"UTC\00", comdat, align 1
@.str.473 = private unnamed_addr constant [8 x i8] c"\1B[38;2;\00", align 1
@.str.474 = private unnamed_addr constant [8 x i8] c"\1B[48;2;\00", align 1
@.str.477 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIwSt11char_traitsIwESaIwEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEEE = external constant { [16 x ptr] }, align 8
@.str.478 = private unnamed_addr constant [4 x i32] [i32 123, i32 125, i32 10, i32 0], align 4
@_ZN3fmt3v126detail14string_literalIwJLw44ELw32EEE5valueE = linkonce_odr hidden constant [2 x i32] [i32 44, i32 32], comdat, align 4
@_ZN3fmt3v126detail14string_literalIwJLw58ELw32EEE5valueE = linkonce_odr hidden constant [2 x i32] [i32 58, i32 32], comdat, align 4
@_ZN3fmt3v126detail14string_literalIwJLw91EEE5valueE = linkonce_odr hidden constant [1 x i32] [i32 91], comdat, align 4
@_ZN3fmt3v126detail14string_literalIwJLw93EEE5valueE = linkonce_odr hidden constant [1 x i32] [i32 93], comdat, align 4
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.480 = private unnamed_addr constant [11 x i8] c"Value of: \00", align 1
@.str.481 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.482 = private unnamed_addr constant [11 x i8] c"Expected: \00", align 1
@.str.483 = private unnamed_addr constant [97 x i8] c"\0A  The matcher failed on the initial attempt; but passed when rerun to generate the explanation.\00", align 1
@.str.484 = private unnamed_addr constant [12 x i8] c"\0A  Actual: \00", align 1
@_ZTVN7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE, ptr @_ZN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEED2Ev, ptr @_ZN7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEED0Ev, ptr @_ZNK7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE10DescribeToEPSo, ptr @_ZNK7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE18DescribeNegationToEPSo, ptr @_ZNK7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE15MatchAndExplainESC_PNS_19MatchResultListenerE] }, comdat, align 8
@_ZTIN7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE, ptr @_ZTIN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE }, comdat, align 8
@_ZTSN7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant [115 x i8] c"N7testing8internal19ContainsMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE\00", comdat, align 1
@_ZTIN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE, ptr @_ZTIN7testing16MatcherInterfaceIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE }, comdat, align 8
@_ZTSN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant [117 x i8] c"N7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE\00", comdat, align 1
@_ZTIN7testing16MatcherInterfaceIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing16MatcherInterfaceIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE, ptr @_ZTIN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing16MatcherInterfaceIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE = linkonce_odr hidden constant [103 x i8] c"N7testing16MatcherInterfaceIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE\00", comdat, align 1
@_ZTIN7testing25MatcherDescriberInterfaceE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing25MatcherDescriberInterfaceE = linkonce_odr hidden constant [38 x i8] c"N7testing25MatcherDescriberInterfaceE\00", comdat, align 1
@_ZTVN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE, ptr @_ZN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEED2Ev, ptr @_ZN7testing8internal21QuantifierMatcherImplIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEED0Ev, ptr @__cxa_pure_virtual, ptr @_ZNK7testing25MatcherDescriberInterface18DescribeNegationToEPSo, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED2Ev, ptr @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE }, comdat, align 8
@_ZTSN7testing7MatcherIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE = linkonce_odr hidden constant [75 x i8] c"N7testing7MatcherIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE\00", comdat, align 1
@_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE = linkonce_odr hidden constant [89 x i8] c"N7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE\00", comdat, align 1
@_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE9GetVTableINSA_11ValuePolicyINS0_9EqMatcherIS7_EELb0EEEEEPKNSA_6VTableEvE7kVTableB5cxx11 = linkonce_odr hidden constant %"struct.testing::internal::MatcherBase<const std::__cxx11::basic_string<wchar_t> &>::VTable" { ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE19MatchAndExplainImplINSA_11ValuePolicyINS0_9EqMatcherIS7_EELb0EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKSA_S9_PNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12DescribeImplINSA_11ValuePolicyINS0_9EqMatcherIS7_EELb0EEEEEvRKSA_PSob, ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE16GetDescriberImplINSA_11ValuePolicyINS0_9EqMatcherIS7_EELb0EEEEEPKNS_25MatcherDescriberInterfaceERKSA_, ptr @_ZN7testing8internal13SharedPayloadINS0_9EqMatcherINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7DestroyEPNS0_17SharedPayloadBaseE }, comdat, align 8
@.str.485 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.486 = private unnamed_addr constant [15 x i8] c"isn't equal to\00", align 1
@.str.487 = private unnamed_addr constant [12 x i8] c"is equal to\00", align 1
@.str.488 = private unnamed_addr constant [38 x i8] c"Condition vtable_ != nullptr failed. \00", align 1
@.str.489 = private unnamed_addr constant [6 x i8] c"not (\00", align 1
@.str.490 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.491 = private unnamed_addr constant [36 x i8] c"contains at least one element that \00", align 1
@.str.492 = private unnamed_addr constant [34 x i8] c"doesn't contain any element that \00", align 1
@.str.493 = private unnamed_addr constant [16 x i8] c"whose element #\00", align 1
@.str.494 = private unnamed_addr constant [9 x i8] c" matches\00", align 1
@.str.495 = private unnamed_addr constant [15 x i8] c" doesn't match\00", align 1
@.str.496 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZTVN7testing7MatcherIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE, ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEED2Ev, ptr @_ZN7testing7MatcherIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE }, comdat, align 8
@_ZTSN7testing7MatcherIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE = linkonce_odr hidden constant [93 x i8] c"N7testing7MatcherIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS7_EEEE\00", comdat, align 1
@_ZTIN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, comdat, align 8
@_ZTSN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant [107 x i8] c"N7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE\00", comdat, align 1
@_ZTVN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEEE, ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE9GetVTableINSD_11ValuePolicyIPKNS_16MatcherInterfaceISC_EELb1EEEEEPKNSD_6VTableEvE7kVTableB5cxx11 = linkonce_odr hidden constant %"struct.testing::internal::MatcherBase<const std::vector<std::__cxx11::basic_string<wchar_t>> &>::VTable" { ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE19MatchAndExplainImplINSD_11ValuePolicyIPKNS_16MatcherInterfaceISC_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSD_SC_PNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE12DescribeImplINSD_11ValuePolicyIPKNS_16MatcherInterfaceISC_EELb1EEEEEvRKSD_PSob, ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE16GetDescriberImplINSD_11ValuePolicyIPKNS_16MatcherInterfaceISC_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSD_, ptr @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaISA_EEEESt14default_deleteISG_EEE7DestroyEPNS0_17SharedPayloadBaseE }, comdat, align 8
@_ZTVN7testing8internal24DummyMatchResultListenerE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7testing8internal24DummyMatchResultListenerE, ptr @_ZN7testing19MatchResultListenerD2Ev, ptr @_ZN7testing8internal24DummyMatchResultListenerD0Ev] }, comdat, align 8
@_ZTIN7testing8internal24DummyMatchResultListenerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal24DummyMatchResultListenerE, ptr @_ZTIN7testing19MatchResultListenerE }, comdat, align 8
@_ZTSN7testing8internal24DummyMatchResultListenerE = linkonce_odr hidden constant [46 x i8] c"N7testing8internal24DummyMatchResultListenerE\00", comdat, align 1
@_ZTIN7testing19MatchResultListenerE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing19MatchResultListenerE }, comdat, align 8
@_ZTSN7testing19MatchResultListenerE = linkonce_odr hidden constant [32 x i8] c"N7testing19MatchResultListenerE\00", comdat, align 1
@_ZTVN7testing25StringMatchResultListenerE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7testing25StringMatchResultListenerE, ptr @_ZN7testing25StringMatchResultListenerD2Ev, ptr @_ZN7testing25StringMatchResultListenerD0Ev] }, comdat, align 8
@_ZTIN7testing25StringMatchResultListenerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing25StringMatchResultListenerE, ptr @_ZTIN7testing19MatchResultListenerE }, comdat, align 8
@_ZTSN7testing25StringMatchResultListenerE = linkonce_odr hidden constant [38 x i8] c"N7testing25StringMatchResultListenerE\00", comdat, align 1
@.str.497 = private unnamed_addr constant [11 x i8] c" (of type \00", align 1
@.str.498 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@_ZTISt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE, i32 0, i32 1, ptr @_ZTISt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE, i64 0 }, comdat, align 8
@_ZTSSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE = linkonce_odr dso_local constant [71 x i8] c"St6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE\00", comdat, align 1
@_ZTISt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE }, comdat, align 8
@_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE = linkonce_odr dso_local constant [78 x i8] c"St12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE\00", comdat, align 1
@.str.499 = private unnamed_addr constant [3 x i8] c"<(\00", align 1
@_ZN3fmt3v126detail14string_literalIwJLw110ELw111ELw110ELw101EEE5valueE = linkonce_odr hidden constant [4 x i32] [i32 110, i32 111, i32 110, i32 101], comdat, align 16
@_ZN3fmt3v126detail14string_literalIwJLw111ELw112ELw116ELw105ELw111ELw110ELw97ELw108ELw40EEE5valueE = linkonce_odr hidden constant [9 x i32] [i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 97, i32 108, i32 40], comdat, align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_xchar_test.cc, ptr null }]

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal21TypeParameterizedTestI23has_to_string_view_testNS0_11TemplateSelI47has_to_string_view_test_has_to_string_view_TestEENS0_5TypesIcJwDsDiEEEE8RegisterEPKcRKNS0_12CodeLocationESA_SA_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.c, ptr %10, align 8, !tbaa !129
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.359) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.e, ptr %i.b, align 8, !tbaa !131
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_11write_bytesIwLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !199 ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !200 ; 2 uses
  %i.au = sub i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi i64 [ %i.at, %bb.f ], [ %i.ak, %bb.e ]
  %i.ax = phi i64 [ %i.as, %bb.f ], [ %i.al, %bb.e ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 11 uses
  %i.ay = load ptr, ptr %.sroa.09.0, align 8, !tbaa !198 ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.ax ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ba = add i64 %.025.i.i.i, %i.ax
  %i.bb = shl i64 %i.ba, 2
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bb
  %scevgep35 = getelementptr i8, ptr %.02732.i.i.i, i64 %.025.i.i.i
  %bound0 = icmp ult ptr %i.az, %scevgep35
  %bound1 = icmp ult ptr %.02732.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.025.i.i.i, -8                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %wide.load = load <4 x i8>, ptr %i.bc, align 1, !tbaa !134, !alias.scope !1715
  %wide.load36 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !134, !alias.scope !1715
  %i.be = sext <4 x i8> %wide.load to <4 x i32>
  %i.bf = sext <4 x i8> %wide.load36 to <4 x i32>
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <4 x i32> %i.be, ptr %i.bg, align 4, !tbaa !192, !alias.scope !1716, !noalias !1715
  store <4 x i32> %i.bf, ptr %i.bh, align 4, !tbaa !192, !alias.scope !1716, !noalias !1715
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !1712

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader37

.lr.ph.i.i.i.preheader37:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader37, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader37 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader37 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !134
  %i.bl = sext i8 %i.bk to i32
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.030.i.i.i.prol
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !192
  %i.bn = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1713

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader37
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader37 ], [ %i.bn, %.lr.ph.i.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.g
  %i.bq = add i64 %.025.i.i.i, %i.ax              ; 2 uses
  store i64 %i.bq, ptr %i.ag, align 8, !tbaa !199
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIwLNS0_5alignE1ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !24

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.bu = sext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.030.i.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !192
  %i.bw = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !134
  %i.bz = sext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bw
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !192
  %i.cb = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !134
  %i.ce = sext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cb
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !192
  %i.cg = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !134
  %i.cj = sext i8 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cg
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !192
  %i.cl = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cl, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1714

_ZZN3fmt3v126detail11write_bytesIwLNS0_5alignE1ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIwLNS0_5alignE1ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.cm = tail call ptr @_ZN3fmt3v126detail4fillIwNS0_14basic_appenderIwEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIwLNS0_5alignE1ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.cm, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIwLNS0_5alignE1ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, float noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [11 x i32], align 16              ; 4 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.251, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast float %1 to i32                  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0                     ; 2 uses
  %.lobit = lshr i32 %i.b, 31                     ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %1)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.f = fcmp uno float %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.g, align 8
  %i.h = select i1 %i.f, ptr @.str.403, ptr @.str.405
  %.not.not.i = icmp sgt i32 %i.b, -1
  %i.i = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %.lobit, ptr %3, align 8, !tbaa !382
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !383
  %i.k = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_15write_nonfiniteIwS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.i, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.l = tail call i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #29 ; 4 uses
  store i64 %i.l, ptr %4, align 8
  %i.m = trunc i64 %i.l to i32                    ; 6 uses
  %i.n = or i32 %i.m, 1
  %i.o = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !131
  %i.t = and i64 %i.l, 4294967295
  %i.u = add i64 %i.s, %i.t
  %i.v = lshr i64 %i.u, 32                        ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 5 uses
  %i.x = lshr i64 %i.l, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = add nsw i32 %i.y, %i.w                   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = add i32 %i.z, 3
  %i.ac = icmp ult i32 %i.ab, 11
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 32768, ptr %5, align 4, !tbaa !273
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.ad, align 4, !tbaa !134
  %scevgep.i.i69 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i69, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ae, align 4, !tbaa !275
  %i.af = call ptr @_ZN3fmt3v126detail11write_fixedIwNS1_23fallback_digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.w, i32 noundef signext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.lobit, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %i.z, 1                    ; 2 uses
  %i.ah = sub nsw i32 1, %i.z
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.aa ; 4 uses
  %spec.select68 = select i1 %i.ag, ptr @.str.401, ptr @.str.400 ; 2 uses
  %.not = icmp ne i64 %i.v, 1                     ; 3 uses
  %i.ai = add nsw i32 %.lobit, %i.w
  %i.aj = zext i1 %.not to i32
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.am = select i1 %i.al, i32 5, i32 4
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !199 ; 2 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !200 ; 2 uses
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !176
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar), !inline_history !20
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !199 ; 2 uses
  %.pre14.i = load i64, ptr %i.as, align 8, !tbaa !200 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.ao              ; 3 uses
  %i.ax = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.ax, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i
  %i.ay = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i ], [ %i.at, %bb.d ]
  %i.az = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i ], [ %i.aq, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i ], [ %i.ar, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ap, align 8, !tbaa !199
  %i.ba = load ptr, ptr %0, align 8, !tbaa !198   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az ; 3 uses
  %.not67 = icmp eq ptr %i.ba, null
  br i1 %.not67, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 45, ptr %i.bb, align 4, !tbaa !192
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.061 = phi ptr [ %i.bc, %bb.f ], [ %i.bb, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bd = add nsw i32 %i.w, 1                     ; 3 uses
  %i.be = icmp ugt i32 %i.m, 99
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.024.i = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.m, %bb.h ] ; 2 uses
  %.02023.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %i.bd, %bb.h ]
  %i.bf = add i32 %.02023.i, -2                   ; 3 uses
  %i.bg = zext i32 %.024.i to i64
  %i.bh = mul i64 %i.bg, 5497558139               ; 2 uses
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.bi ; 2 uses
  %i.bk = lshr i64 %i.bh, 31
  %i.bl = and i64 %i.bk, 254
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !134
  %i.bo = sext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !192
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !134
  %i.bs = sext i8 %i.br to i32
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !192
  %i.bt = lshr i64 %i.bh, 39
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = icmp ugt i32 %.024.i, -939524097
  %i.bw = select i1 %i.bv, i32 33554432, i32 0
  %i.bx = or disjoint i32 %i.bw, %i.bu            ; 3 uses
  %i.by = icmp samesign ugt i32 %i.bx, 99
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.020.lcssa.i = phi i32 [ %i.bd, %bb.h ], [ %i.bf, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.m, %bb.h ], [ %i.bx, %.lr.ph.i ] ; 3 uses
  %i.bz = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ca = add i32 %.020.lcssa.i, -2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.cb
  %.lhs.trunc.i = trunc nuw nsw i32 %.0.lcssa.i to i8 ; 2 uses
  %i.cd = udiv i8 %.lhs.trunc.i, 10
  %i.ce = urem i8 %.lhs.trunc.i, 10
  %i.cf = insertelement <2 x i8> poison, i8 %i.cd, i64 0
  %i.cg = insertelement <2 x i8> %i.cf, i8 %i.ce, i64 1
  %i.ch = or disjoint <2 x i8> %i.cg, splat (i8 48)
  %i.ci = zext nneg <2 x i8> %i.ch to <2 x i32>
  store <2 x i32> %i.ci, ptr %i.cc, align 4, !tbaa !192
  br label %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.cj = or disjoint i32 %.0.lcssa.i, 48
  %i.ck = add i32 %.020.lcssa.i, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !192
  br label %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.cn = sext i32 %i.bd to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %.061, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.061, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !192
  store i32 %i.cq, ptr %.061, align 4, !tbaa !192
  store i32 46, ptr %i.cp, align 4, !tbaa !192
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cr = add i32 %i.m, 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.061, i64 4
  store i32 %i.cr, ptr %.061, align 4, !tbaa !192
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit
  %.162 = phi ptr [ %i.co, %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit ], [ %i.cs, %bb.k ] ; 4 uses
  %6 = load i8, ptr %spec.select68, align 1, !tbaa !134
  %7 = sext i8 %6 to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %.162, i64 4
  store i32 %7, ptr %.162, align 4, !tbaa !192
  %8 = getelementptr inbounds nuw i8, ptr %spec.select68, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !134
  %10 = sext i8 %9 to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.162, i64 8 ; 2 uses
  store i32 %10, ptr %i.ct, align 4, !tbaa !192
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cv = udiv i32 %spec.select, 100
  %i.cw = add nuw nsw i32 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %.162, i64 12
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !192
  %i.cy = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.cx, %bb.m ], [ %i.cu, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.cy, %bb.m ], [ %spec.select, %bb.l ] ; 2 uses
  %i.cz = udiv i32 %.1, 10
  %i.da = add nuw nsw i32 %i.cz, 48
  %i.db = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.da, ptr %.2, align 4, !tbaa !192
  %i.dc = urem i32 %.1, 10
  %i.dd = or disjoint i32 %i.dc, 48
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !192
  br label %bb.s

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.ao            ; 2 uses
  %i.de = icmp ugt i64 %.pre, %i.ay
  br i1 %i.de, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi101 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !176
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi101), !inline_history !30
  br label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %i.dh = load i64, ptr %i.ap, align 8, !tbaa !199 ; 2 uses
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %i.dj = load i64, ptr %i.as, align 8, !tbaa !200
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.p, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !176
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.di), !inline_history !22
  %.pre.i.i = load i64, ptr %i.ap, align 8, !tbaa !199 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

_ZN3fmt3v1214basic_appenderIwEaSEw.exit:          ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.di, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dn = phi i64 [ %i.dh, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.do = load ptr, ptr %0, align 8, !tbaa !198
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !199
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dn
  store i32 45, ptr %i.dp, align 4, !tbaa !192
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %i.dq = select i1 %.not, i32 46, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.dr = call noundef ptr @_ZN3fmt3v126detail17write_significandIwjTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_(ptr noundef nonnull %i.a, i32 noundef %i.m, i32 noundef %i.w, i32 noundef 1, i32 noundef signext %i.dq)
  %i.ds = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPwNS0_14basic_appenderIwEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !199 ; 2 uses
  %i.dv = add i64 %i.du, 1                        ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !200
  %i.dy = icmp ugt i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.r, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit75

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !176
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dv), !inline_history !22
  %.pre.i.i73 = load i64, ptr %i.dt, align 8, !tbaa !199 ; 2 uses
  %.pre2.i.i74 = add i64 %.pre.i.i73, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit75

_ZN3fmt3v1214basic_appenderIwEaSEw.exit75:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i72 = phi i64 [ %i.dv, %bb.q ], [ %.pre2.i.i74, %bb.r ]
  %i.eb = phi i64 [ %i.du, %bb.q ], [ %.pre.i.i73, %bb.r ]
  %i.ec = load ptr, ptr %i.ds, align 8, !tbaa !198
  store i64 %.pre-phi.i.i72, ptr %i.dt, align 8, !tbaa !199
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.eb
  store i32 101, ptr %i.ed, align 4, !tbaa !192
  %i.ee = call ptr @_ZN3fmt3v126detail14write_exponentIwNS0_14basic_appenderIwEEEET0_iS5_(i32 noundef %i.aa, ptr nonnull %i.ds)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit75, %bb.c
  %.sroa.058.2 = phi ptr [ %i.af, %bb.c ], [ %i.ee, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit75 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.058.3 = phi ptr [ %i.k, %_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.058.2, %bb.s ]
  ret ptr %.sroa.058.3
}

; Function Attrs: nounwind
declare i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIwNS1_23fallback_digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i32 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.252, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.253, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.254, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !174
  store i32 %3, ptr %i.b, align 4, !tbaa !192
  store i32 %5, ptr %i.c, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !386  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !174
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !275
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !174
  %i.u = load i32, ptr %4, align 4, !tbaa !273    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !174
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.c, ptr %8, align 8, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !388
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !390
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !358
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !178
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !233
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !320
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.376, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !134
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail17write_significandIwjTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_:bb.a

_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit: ; preds = %bb.c, %bb.d
  %i.aj = sext i32 %2 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aj
  br label %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit41

bb.e:                                             ; preds = %bb.a
  %i.al = sext i32 %2 to i64
  %i.am = getelementptr [4 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 4      ; 4 uses
  %i.ao = sub nsw i32 %2, %3                      ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.aq = lshr i32 %i.ao, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.029.lcssa = phi i32 [ %1, %bb.e ], [ %i.ba, %.lr.ph ] ; 3 uses
  %.028.lcssa = phi ptr [ %i.an, %bb.e ], [ %i.as, %.lr.ph ] ; 2 uses
  %i.ar = and i32 %i.ao, 1
  %.not32 = icmp eq i32 %i.ar, 0
  br i1 %.not32, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.049 = phi i32 [ %i.bb, %.lr.ph ], [ %i.aq, %.lr.ph.preheader ] ; 2 uses
  %.02848 = phi ptr [ %i.as, %.lr.ph ], [ %i.an, %.lr.ph.preheader ]
  %.02947 = phi i32 [ %i.ba, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.02848, i64 -8 ; 3 uses
  %i.at = urem i32 %.02947, 100
  %.lhs.trunc = trunc nuw nsw i32 %i.at to i8     ; 2 uses
  %i.au = udiv i8 %.lhs.trunc, 10
  %i.av = urem i8 %.lhs.trunc, 10
  %i.aw = insertelement <2 x i8> poison, i8 %i.au, i64 0
  %i.ax = insertelement <2 x i8> %i.aw, i8 %i.av, i64 1
  %i.ay = or disjoint <2 x i8> %i.ax, splat (i8 48)
  %i.az = zext nneg <2 x i8> %i.ay to <2 x i32>
  store <2 x i32> %i.az, ptr %i.as, align 4, !tbaa !192
  %i.ba = udiv i32 %.02947, 100                   ; 2 uses
  %i.bb = add nsw i32 %.049, -1
  %i.bc = icmp samesign ugt i32 %.049, 1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !1756

bb.f:                                             ; preds = %._crit_edge
  %i.bd = urem i32 %.029.lcssa, 10
  %i.be = or disjoint i32 %i.bd, 48
  %i.bf = getelementptr inbounds i8, ptr %.028.lcssa, i64 -4 ; 2 uses
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !192
  %i.bg = udiv i32 %.029.lcssa, 10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.130 = phi i32 [ %i.bg, %bb.f ], [ %.029.lcssa, %._crit_edge ] ; 3 uses
  %.1 = phi ptr [ %i.bf, %bb.f ], [ %.028.lcssa, %._crit_edge ]
  %i.bh = getelementptr inbounds i8, ptr %.1, i64 -4 ; 2 uses
  store i32 %4, ptr %i.bh, align 4, !tbaa !192
  %i.bi = sext i32 %3 to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj ; 3 uses
  %i.bl = icmp ugt i32 %.130, 99
  br i1 %i.bl, label %.lr.ph.i38, label %._crit_edge.i33

.lr.ph.i38:                                       ; preds = %bb.g, %.lr.ph.i38
  %.024.i39 = phi i32 [ %i.ce, %.lr.ph.i38 ], [ %.130, %bb.g ] ; 2 uses
  %.02023.i40 = phi i32 [ %i.bm, %.lr.ph.i38 ], [ %3, %bb.g ]
  %i.bm = add i32 %.02023.i40, -2                 ; 3 uses
  %i.bn = zext i32 %.024.i39 to i64
  %i.bo = mul i64 %i.bn, 5497558139               ; 2 uses
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bp ; 2 uses
  %i.br = lshr i64 %i.bo, 31
  %i.bs = and i64 %i.br, 254
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !134
  %i.bv = sext i8 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !192
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !134
  %i.bz = sext i8 %i.by to i32
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !192
  %i.ca = lshr i64 %i.bo, 39
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = icmp ugt i32 %.024.i39, -939524097
  %i.cd = select i1 %i.cc, i32 33554432, i32 0
  %i.ce = or disjoint i32 %i.cd, %i.cb            ; 3 uses
  %i.cf = icmp samesign ugt i32 %i.ce, 99
  br i1 %i.cf, label %.lr.ph.i38, label %._crit_edge.i33, !llvm.loop !21

._crit_edge.i33:                                  ; preds = %.lr.ph.i38, %bb.g
  %.020.lcssa.i34 = phi i32 [ %3, %bb.g ], [ %i.bm, %.lr.ph.i38 ] ; 2 uses
  %.0.lcssa.i35 = phi i32 [ %.130, %bb.g ], [ %i.ce, %.lr.ph.i38 ] ; 3 uses
  %i.cg = icmp samesign ugt i32 %.0.lcssa.i35, 9
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i33
  %i.ch = add i32 %.020.lcssa.i34, -2
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ci
  %.lhs.trunc.i37 = trunc nuw nsw i32 %.0.lcssa.i35 to i8 ; 2 uses
  %i.ck = udiv i8 %.lhs.trunc.i37, 10
  %i.cl = urem i8 %.lhs.trunc.i37, 10
  %i.cm = insertelement <2 x i8> poison, i8 %i.ck, i64 0
  %i.cn = insertelement <2 x i8> %i.cm, i8 %i.cl, i64 1
  %i.co = or disjoint <2 x i8> %i.cn, splat (i8 48)
  %i.cp = zext nneg <2 x i8> %i.co to <2 x i32>
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !192
  br label %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit41

bb.i:                                             ; preds = %._crit_edge.i33
  %i.cq = or disjoint i32 %.0.lcssa.i35, 48
  %i.cr = add i32 %.020.lcssa.i34, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cs
  store i32 %i.cq, ptr %i.ct, align 4, !tbaa !192
  br label %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit41

_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit41: ; preds = %bb.i, %bb.h, %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit
  %.027 = phi ptr [ %i.ak, %_ZN3fmt3v126detail17do_format_decimalIwjEEPT_S4_T0_i.exit ], [ %i.an, %bb.h ], [ %i.an, %bb.i ]
  ret ptr %.027
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, double noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [21 x i32], align 16              ; 4 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.251, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp.255", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast double %1 to i64                 ; 4 uses
  %i.c = icmp slt i64 %i.b, 0                     ; 2 uses
  %.lobit = lshr i64 %i.b, 63
  %i.d = trunc nuw nsw i64 %.lobit to i32         ; 3 uses
  %i.e = and i64 %i.b, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.g = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.h, align 8
  %i.i = select i1 %i.g, ptr @.str.403, ptr @.str.405
  %.not.not.i = icmp sgt i64 %i.b, -1
  %i.j = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %i.d, ptr %3, align 8, !tbaa !382
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !383
  %i.l = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_15write_nonfiniteIwS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.j, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.m = tail call { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #29 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0        ; 8 uses
  store i64 %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = extractvalue { i64, i32 } %i.m, 1        ; 2 uses
  store i32 %i.p, ptr %i.o, align 8
  %i.q = or i64 %i.n, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !134   ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !131
  %i.z = icmp ult i64 %i.n, %i.y
  %.neg.i.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.neg.i.i, %i.v             ; 6 uses
  %i.ab = add nsw i32 %i.aa, %i.p                 ; 4 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = add i32 %i.ab, 3
  %i.ae = icmp ult i32 %i.ad, 20
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 32768, ptr %5, align 4, !tbaa !273
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.af, align 4, !tbaa !134
  %scevgep.i.i69 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i69, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ag, align 4, !tbaa !275
  %i.ah = call ptr @_ZN3fmt3v126detail11write_fixedIwNS1_23fallback_digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.aa, i32 noundef signext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.d, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp slt i32 %i.ab, 1                   ; 2 uses
  %i.aj = sub nsw i32 1, %i.ab
  %spec.select = select i1 %i.ai, i32 %i.aj, i32 %i.ac ; 4 uses
  %spec.select68 = select i1 %i.ai, ptr @.str.401, ptr @.str.400 ; 2 uses
  %.not = icmp ne i32 %i.aa, 1                    ; 3 uses
  %i.ak = add nsw i32 %i.aa, %i.d
  %i.al = zext i1 %.not to i32
  %i.am = add nsw i32 %i.ak, %i.al
  %i.an = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.ao = select i1 %i.an, i32 5, i32 4
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !199 ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !200 ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !176
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.at), !inline_history !20
  %.pre.i = load i64, ptr %i.ar, align 8, !tbaa !199 ; 2 uses
  %.pre14.i = load i64, ptr %i.au, align 8, !tbaa !200 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.aq              ; 3 uses
  %i.az = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.az, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i
  %i.ba = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i ], [ %i.av, %bb.d ]
  %i.bb = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i ], [ %i.as, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i ], [ %i.at, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ar, align 8, !tbaa !199
  %i.bc = load ptr, ptr %0, align 8, !tbaa !198   ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb ; 3 uses
  %.not67 = icmp eq ptr %i.bc, null
  br i1 %.not67, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 45, ptr %i.bd, align 4, !tbaa !192
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.061 = phi ptr [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bf = add nsw i32 %i.aa, 1                    ; 3 uses
  %i.bg = icmp ugt i64 %i.n, 99
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.026.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bf, %bb.h ]
  %.01825.i = phi i64 [ %i.br, %.lr.ph.i ], [ %i.n, %bb.h ] ; 3 uses
  %i.bh = add i32 %.026.i, -2                     ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.bi
  %i.bk = urem i64 %.01825.i, 100
  %.lhs.trunc.i = trunc nuw nsw i64 %i.bk to i8   ; 2 uses
  %i.bl = udiv i8 %.lhs.trunc.i, 10
  %i.bm = urem i8 %.lhs.trunc.i, 10
  %i.bn = insertelement <2 x i8> poison, i8 %i.bl, i64 0
  %i.bo = insertelement <2 x i8> %i.bn, i8 %i.bm, i64 1
  %i.bp = or disjoint <2 x i8> %i.bo, splat (i8 48)
  %i.bq = zext nneg <2 x i8> %i.bp to <2 x i32>
  store <2 x i32> %i.bq, ptr %i.bj, align 4, !tbaa !192
  %i.br = udiv i64 %.01825.i, 100                 ; 2 uses
  %i.bs = icmp ugt i64 %.01825.i, 9999
  br i1 %i.bs, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.018.lcssa.i = phi i64 [ %i.n, %bb.h ], [ %i.br, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.bf, %bb.h ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %i.bt = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.bu = add i32 %.0.lcssa.i, -2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.bv
  %.lhs.trunc21.i = trunc nuw i64 %.018.lcssa.i to i8 ; 2 uses
  %i.bx = udiv i8 %.lhs.trunc21.i, 10
  %i.by = urem i8 %.lhs.trunc21.i, 10
  %i.bz = insertelement <2 x i8> poison, i8 %i.bx, i64 0
  %i.ca = insertelement <2 x i8> %i.bz, i8 %i.by, i64 1
  %i.cb = or disjoint <2 x i8> %i.ca, splat (i8 48)
  %i.cc = zext nneg <2 x i8> %i.cb to <2 x i32>
  store <2 x i32> %i.cc, ptr %i.bw, align 4, !tbaa !192
  br label %_ZN3fmt3v126detail17do_format_decimalIwmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.cd = trunc nuw nsw i64 %.018.lcssa.i to i32
  %i.ce = or disjoint i32 %i.cd, 48
  %i.cf = add i32 %.0.lcssa.i, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.cg
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !192
  br label %_ZN3fmt3v126detail17do_format_decimalIwmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIwmEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.ci = zext nneg i32 %i.bf to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.061, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !192
  store i32 %i.cl, ptr %.061, align 4, !tbaa !192
  store i32 46, ptr %i.ck, align 4, !tbaa !192
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cm = trunc i64 %i.n to i32
  %i.cn = add i32 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %.061, i64 4
  store i32 %i.cn, ptr %.061, align 4, !tbaa !192
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIwmEEPT_S4_T0_i.exit
  %.162 = phi ptr [ %i.cj, %_ZN3fmt3v126detail17do_format_decimalIwmEEPT_S4_T0_i.exit ], [ %i.co, %bb.k ] ; 4 uses
  %6 = load i8, ptr %spec.select68, align 1, !tbaa !134
  %7 = sext i8 %6 to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %.162, i64 4
  store i32 %7, ptr %.162, align 4, !tbaa !192
  %8 = getelementptr inbounds nuw i8, ptr %spec.select68, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !134
  %10 = sext i8 %9 to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %.162, i64 8 ; 2 uses
  store i32 %10, ptr %i.cp, align 4, !tbaa !192
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cr = udiv i32 %spec.select, 100
  %i.cs = add nuw nsw i32 %i.cr, 48
  %i.ct = getelementptr inbounds nuw i8, ptr %.162, i64 12
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !192
  %i.cu = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.ct, %bb.m ], [ %i.cq, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.cu, %bb.m ], [ %spec.select, %bb.l ] ; 2 uses
  %i.cv = udiv i32 %.1, 10
  %i.cw = add nuw nsw i32 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.cw, ptr %.2, align 4, !tbaa !192
  %i.cy = urem i32 %.1, 10
  %i.cz = or disjoint i32 %i.cy, 48
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !192
  br label %bb.s

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.aq            ; 2 uses
  %i.da = icmp ugt i64 %.pre, %i.ba
  br i1 %i.da, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi101 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !176
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi101), !inline_history !30
  br label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !199 ; 2 uses
  %i.de = add i64 %i.dd, 1                        ; 3 uses
  %i.df = load i64, ptr %i.au, align 8, !tbaa !200
  %i.dg = icmp ugt i64 %i.de, %i.df
  br i1 %i.dg, label %bb.p, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !176
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.de), !inline_history !22
  %.pre.i.i = load i64, ptr %i.ar, align 8, !tbaa !199 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

_ZN3fmt3v1214basic_appenderIwEaSEw.exit:          ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.de, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dj = phi i64 [ %i.dd, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.dk = load ptr, ptr %0, align 8, !tbaa !198
  store i64 %.pre-phi.i.i, ptr %i.ar, align 8, !tbaa !199
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  store i32 45, ptr %i.dl, align 4, !tbaa !192
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %i.dm = select i1 %.not, i32 46, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.dn = call noundef ptr @_ZN3fmt3v126detail17write_significandIwmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_(ptr noundef nonnull %i.a, i64 noundef %i.n, i32 noundef %i.aa, i32 noundef 1, i32 noundef signext %i.dm)
  %i.do = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPwNS0_14basic_appenderIwEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %i.dn, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !199 ; 2 uses
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !200
  %i.du = icmp ugt i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.r, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit75

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !176
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i64 noundef %i.dr), !inline_history !22
  %.pre.i.i73 = load i64, ptr %i.dp, align 8, !tbaa !199 ; 2 uses
  %.pre2.i.i74 = add i64 %.pre.i.i73, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit75

_ZN3fmt3v1214basic_appenderIwEaSEw.exit75:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i72 = phi i64 [ %i.dr, %bb.q ], [ %.pre2.i.i74, %bb.r ]
  %i.dx = phi i64 [ %i.dq, %bb.q ], [ %.pre.i.i73, %bb.r ]
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !198
  store i64 %.pre-phi.i.i72, ptr %i.dp, align 8, !tbaa !199
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dx
  store i32 101, ptr %i.dz, align 4, !tbaa !192
  %i.ea = call ptr @_ZN3fmt3v126detail14write_exponentIwNS0_14basic_appenderIwEEEET0_iS5_(i32 noundef %i.ac, ptr nonnull %i.do)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit75, %bb.c
  %.sroa.058.2 = phi ptr [ %i.ah, %bb.c ], [ %i.ea, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit75 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.058.3 = phi ptr [ %i.l, %_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.058.2, %bb.s ]
  ret ptr %.sroa.058.3
}

; Function Attrs: nounwind
declare { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIwNS1_23fallback_digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.256, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.257, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.258, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !174
  store i32 %3, ptr %i.b, align 4, !tbaa !192
  store i32 %5, ptr %i.c, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !396  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !174
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !275
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !174
  %i.u = load i32, ptr %4, align 4, !tbaa !273    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !174
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.c, ptr %8, align 8, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !398
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !390
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !358
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !178
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !233
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !320
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.376, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !134
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12write_paddedIDsLNS0_5alignE1ENS0_14basic_appenderIDsEERZNS1_11write_bytesIDsLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %.025.i.i.i, 16
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %.025.i.i.i, 12
  %n.vec = and i64 %.025.i.i.i, -16               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %wide.load = load <8 x i8>, ptr %i.bd, align 1, !tbaa !134, !alias.scope !2212
  %wide.load37 = load <8 x i8>, ptr %i.be, align 1, !tbaa !134, !alias.scope !2212
  %i.bf = sext <8 x i8> %wide.load to <8 x i16>
  %i.bg = sext <8 x i8> %wide.load37 to <8 x i16>
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <8 x i16> %i.bf, ptr %i.bh, align 2, !tbaa !217, !alias.scope !2213, !noalias !2212
  store <8 x i16> %i.bg, ptr %i.bi, align 2, !tbaa !217, !alias.scope !2213, !noalias !2212
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !2208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !463

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !134, !alias.scope !2212
  %i.bl = sext <4 x i8> %wide.load40 to <4 x i16>
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %index39
  store <4 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !217, !alias.scope !2213, !noalias !2212
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2209

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %.025.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bs, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !134
  %i.bq = sext i8 %i.bp to i16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.030.i.i.i.prol
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !217
  %i.bs = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2210

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.prol ]
  %i.bt = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bv = add i64 %.025.i.i.i, %i.ax              ; 2 uses
  store i64 %i.bv, ptr %i.ag, align 8, !tbaa !453
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIDsLNS0_5alignE1ENS0_14basic_appenderIDsEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !63

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !134
  %i.bz = sext i8 %i.by to i16
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.030.i.i.i
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !217
  %i.cb = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !134
  %i.ce = sext i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.cb
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !217
  %i.cg = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !134
  %i.cj = sext i8 %i.ci to i16
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.cg
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !217
  %i.cl = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !134
  %i.co = sext i8 %i.cn to i16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.cl
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !217
  %i.cq = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cq, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2211

_ZZN3fmt3v126detail11write_bytesIDsLNS0_5alignE1ENS0_14basic_appenderIDsEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIDsLNS0_5alignE1ENS0_14basic_appenderIDsEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.cr = tail call ptr @_ZN3fmt3v126detail4fillIDsNS0_14basic_appenderIDsEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIDsLNS0_5alignE1ENS0_14basic_appenderIDsEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.cr, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIDsLNS0_5alignE1ENS0_14basic_appenderIDsEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIDsNS0_14basic_appenderIDsEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, float noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [11 x i16], align 16              ; 4 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.342, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast float %1 to i32                  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0                     ; 2 uses
  %.lobit = lshr i32 %i.b, 31                     ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %1)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %_ZN3fmt3v126detail15write_nonfiniteIDsNS0_14basic_appenderIDsEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIDsNS0_14basic_appenderIDsEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.f = fcmp uno float %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.g, align 8
  %i.h = select i1 %i.f, ptr @.str.403, ptr @.str.405
  %.not.not.i = icmp sgt i32 %i.b, -1
  %i.i = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %.lobit, ptr %3, align 8, !tbaa !487
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !488
  %i.k = call ptr @_ZN3fmt3v126detail12write_paddedIDsLNS0_5alignE1ENS0_14basic_appenderIDsEERZNS1_15write_nonfiniteIDsS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.i, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.l = tail call i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #29 ; 5 uses
  store i64 %i.l, ptr %4, align 8
  %i.m = trunc i64 %i.l to i32                    ; 5 uses
  %i.n = or i32 %i.m, 1
  %i.o = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !131
  %i.t = and i64 %i.l, 4294967295
  %i.u = add i64 %i.s, %i.t
  %i.v = lshr i64 %i.u, 32                        ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 5 uses
  %i.x = lshr i64 %i.l, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = add nsw i32 %i.y, %i.w                   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = add i32 %i.z, 3
  %i.ac = icmp ult i32 %i.ab, 11
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 32768, ptr %5, align 4, !tbaa !273
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.ad, align 4, !tbaa !134
  %scevgep.i.i69 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i69, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ae, align 4, !tbaa !275
  %i.af = call ptr @_ZN3fmt3v126detail11write_fixedIDsNS1_23fallback_digit_groupingIDsEENS0_14basic_appenderIDsEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.w, i16 noundef zeroext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.lobit, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %i.z, 1                    ; 2 uses
  %i.ah = sub nsw i32 1, %i.z
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.aa ; 4 uses
  %spec.select68 = select i1 %i.ag, ptr @.str.401, ptr @.str.400 ; 2 uses
  %.not = icmp ne i64 %i.v, 1                     ; 3 uses
  %i.ai = add nsw i32 %.lobit, %i.w
  %i.aj = zext i1 %.not to i32
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.am = select i1 %i.al, i32 5, i32 4
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !453 ; 2 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !448 ; 2 uses
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !446
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar), !inline_history !60
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !453 ; 2 uses
  %.pre14.i = load i64, ptr %i.as, align 8, !tbaa !448 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.ao              ; 3 uses
  %i.ax = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.ax, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i
  %i.ay = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i ], [ %i.at, %bb.d ]
  %i.az = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i ], [ %i.aq, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i ], [ %i.ar, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ap, align 8, !tbaa !453
  %i.ba = load ptr, ptr %0, align 8, !tbaa !447   ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.az ; 3 uses
  %.not67 = icmp eq ptr %i.ba, null
  br i1 %.not67, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i16 45, ptr %i.bb, align 2, !tbaa !217
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.061 = phi ptr [ %i.bc, %bb.f ], [ %i.bb, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bd = add nsw i32 %i.w, 1                     ; 3 uses
  %i.be = icmp ugt i32 %i.m, 99
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.024.i = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.m, %bb.h ] ; 2 uses
  %.02023.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %i.bd, %bb.h ]
  %i.bf = add i32 %.02023.i, -2                   ; 3 uses
  %i.bg = zext i32 %.024.i to i64
  %i.bh = mul i64 %i.bg, 5497558139               ; 2 uses
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.061, i64 %i.bi ; 2 uses
  %i.bk = lshr i64 %i.bh, 31
  %i.bl = and i64 %i.bk, 254
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !134
  %i.bo = sext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i16 %i.bo, ptr %i.bj, align 2, !tbaa !217
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !134
  %i.bs = sext i8 %i.br to i16
  store i16 %i.bs, ptr %i.bp, align 2, !tbaa !217
  %i.bt = lshr i64 %i.bh, 39
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = icmp ugt i32 %.024.i, -939524097
  %i.bw = select i1 %i.bv, i32 33554432, i32 0
  %i.bx = or disjoint i32 %i.bw, %i.bu            ; 3 uses
  %i.by = icmp samesign ugt i32 %i.bx, 99
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !61

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.020.lcssa.i = phi i32 [ %i.bd, %bb.h ], [ %i.bf, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.m, %bb.h ], [ %i.bx, %.lr.ph.i ] ; 3 uses
  %i.bz = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ca = add i32 %.020.lcssa.i, -2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.061, i64 %i.cb
  %.lhs.trunc.i = trunc nuw nsw i32 %.0.lcssa.i to i8 ; 2 uses
  %i.cd = udiv i8 %.lhs.trunc.i, 10
  %i.ce = urem i8 %.lhs.trunc.i, 10
  %i.cf = insertelement <2 x i8> poison, i8 %i.cd, i64 0
  %i.cg = insertelement <2 x i8> %i.cf, i8 %i.ce, i64 1
  %i.ch = or disjoint <2 x i8> %i.cg, splat (i8 48)
  %i.ci = zext nneg <2 x i8> %i.ch to <2 x i16>
  store <2 x i16> %i.ci, ptr %i.cc, align 2, !tbaa !217
  br label %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.cj = trunc nuw nsw i32 %.0.lcssa.i to i16
  %i.ck = or disjoint i16 %i.cj, 48
  %i.cl = add i32 %.020.lcssa.i, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.061, i64 %i.cm
  store i16 %i.ck, ptr %i.cn, align 2, !tbaa !217
  br label %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.co = sext i32 %i.bd to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %.061, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.061, i64 2 ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !217
  store i16 %i.cr, ptr %.061, align 2, !tbaa !217
  store i16 46, ptr %i.cq, align 2, !tbaa !217
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cs = trunc i64 %i.l to i16
  %i.ct = add i16 %i.cs, 48
  %i.cu = getelementptr inbounds nuw i8, ptr %.061, i64 2
  store i16 %i.ct, ptr %.061, align 2, !tbaa !217
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit
  %.162 = phi ptr [ %i.cp, %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit ], [ %i.cu, %bb.k ] ; 4 uses
  %6 = load i8, ptr %spec.select68, align 1, !tbaa !134
  %7 = sext i8 %6 to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %.162, i64 2
  store i16 %7, ptr %.162, align 2, !tbaa !217
  %8 = getelementptr inbounds nuw i8, ptr %spec.select68, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !134
  %10 = sext i8 %9 to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %.162, i64 4 ; 2 uses
  store i16 %10, ptr %i.cv, align 2, !tbaa !217
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = udiv i32 %spec.select, 100
  %i.cy = trunc i32 %i.cx to i16
  %i.cz = add i16 %i.cy, 48
  %i.da = getelementptr inbounds nuw i8, ptr %.162, i64 6
  store i16 %i.cz, ptr %i.cw, align 2, !tbaa !217
  %i.db = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.da, %bb.m ], [ %i.cw, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.db, %bb.m ], [ %spec.select, %bb.l ] ; 2 uses
  %i.dc = udiv i32 %.1, 10
  %i.dd = trunc i32 %i.dc to i16
  %i.de = add i16 %i.dd, 48
  %i.df = getelementptr inbounds nuw i8, ptr %.2, i64 2
  store i16 %i.de, ptr %.2, align 2, !tbaa !217
  %i.dg = urem i32 %.1, 10
  %i.dh = trunc nuw nsw i32 %i.dg to i16
  %i.di = or disjoint i16 %i.dh, 48
  store i16 %i.di, ptr %i.df, align 2, !tbaa !217
  br label %bb.s

_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.ao            ; 2 uses
  %i.dj = icmp ugt i64 %.pre, %i.ay
  br i1 %i.dj, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi101 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !446
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi101), !inline_history !66
  br label %_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit
  %i.dm = load i64, ptr %i.ap, align 8, !tbaa !453 ; 2 uses
  %i.dn = add i64 %i.dm, 1                        ; 3 uses
  %i.do = load i64, ptr %i.as, align 8, !tbaa !448
  %i.dp = icmp ugt i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.p, label %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit

bb.p:                                             ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !446
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dn), !inline_history !62
  %.pre.i.i = load i64, ptr %i.ap, align 8, !tbaa !453 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit

_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit:        ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.dn, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.ds = phi i64 [ %i.dm, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !447
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !453
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.ds
  store i16 45, ptr %i.du, align 2, !tbaa !217
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit, %_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit
  %i.dv = select i1 %.not, i16 46, i16 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.dw = call noundef ptr @_ZN3fmt3v126detail17write_significandIDsjTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_(ptr noundef nonnull %i.a, i32 noundef %i.m, i32 noundef %i.w, i32 noundef 1, i16 noundef zeroext %i.dv)
  %i.dx = call ptr @_ZN3fmt3v126detail13copy_noinlineIDsPDsNS0_14basic_appenderIDsEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %i.dw, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !453 ; 2 uses
  %i.ea = add i64 %i.dz, 1                        ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !448
  %i.ed = icmp ugt i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.r, label %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75

bb.r:                                             ; preds = %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !446
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i64 noundef %i.ea), !inline_history !62
  %.pre.i.i73 = load i64, ptr %i.dy, align 8, !tbaa !453 ; 2 uses
  %.pre2.i.i74 = add i64 %.pre.i.i73, 1
  br label %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75

_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75:      ; preds = %bb.q, %bb.r
  %.pre-phi.i.i72 = phi i64 [ %i.ea, %bb.q ], [ %.pre2.i.i74, %bb.r ]
  %i.eg = phi i64 [ %i.dz, %bb.q ], [ %.pre.i.i73, %bb.r ]
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !447
  store i64 %.pre-phi.i.i72, ptr %i.dy, align 8, !tbaa !453
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.eg
  store i16 101, ptr %i.ei, align 2, !tbaa !217
  %i.ej = call ptr @_ZN3fmt3v126detail14write_exponentIDsNS0_14basic_appenderIDsEEEET0_iS5_(i32 noundef %i.aa, ptr nonnull %i.dx)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75, %bb.c
  %.sroa.058.2 = phi ptr [ %i.af, %bb.c ], [ %i.ej, %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN3fmt3v126detail15write_nonfiniteIDsNS0_14basic_appenderIDsEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.058.3 = phi ptr [ %i.k, %_ZN3fmt3v126detail15write_nonfiniteIDsNS0_14basic_appenderIDsEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.058.2, %bb.s ]
  ret ptr %.sroa.058.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIDsNS1_23fallback_digit_groupingIDsEENS0_14basic_appenderIDsEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping.343", align 1 ; 3 uses
  %8 = alloca %class.anon.345, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping.343", align 1 ; 3 uses
  %10 = alloca %class.anon.346, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.347, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !174
  store i16 %3, ptr %i.b, align 2, !tbaa !217
  store i32 %5, ptr %i.c, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !386  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !174
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !275
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !174
  %i.u = load i32, ptr %4, align 4, !tbaa !273    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !174
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.c, ptr %8, align 8, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !388
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !490
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !358
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !211
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !233
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !320
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.376, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !134
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail17write_significandIDsjTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_:bb.a
  %i.ak = sext i32 %2 to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ak
  br label %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit41

bb.e:                                             ; preds = %bb.a
  %i.am = sext i32 %2 to i64
  %i.an = getelementptr [2 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 2      ; 4 uses
  %i.ap = sub nsw i32 %2, %3                      ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ar = lshr i32 %i.ap, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.029.lcssa = phi i32 [ %1, %bb.e ], [ %i.bb, %.lr.ph ] ; 3 uses
  %.028.lcssa = phi ptr [ %i.ao, %bb.e ], [ %i.at, %.lr.ph ] ; 2 uses
  %i.as = and i32 %i.ap, 1
  %.not32 = icmp eq i32 %i.as, 0
  br i1 %.not32, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.049 = phi i32 [ %i.bc, %.lr.ph ], [ %i.ar, %.lr.ph.preheader ] ; 2 uses
  %.02848 = phi ptr [ %i.at, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ]
  %.02947 = phi i32 [ %i.bb, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.02848, i64 -4 ; 3 uses
  %i.au = urem i32 %.02947, 100
  %.lhs.trunc = trunc nuw nsw i32 %i.au to i8     ; 2 uses
  %i.av = udiv i8 %.lhs.trunc, 10
  %i.aw = urem i8 %.lhs.trunc, 10
  %i.ax = insertelement <2 x i8> poison, i8 %i.av, i64 0
  %i.ay = insertelement <2 x i8> %i.ax, i8 %i.aw, i64 1
  %i.az = or disjoint <2 x i8> %i.ay, splat (i8 48)
  %i.ba = zext nneg <2 x i8> %i.az to <2 x i16>
  store <2 x i16> %i.ba, ptr %i.at, align 2, !tbaa !217
  %i.bb = udiv i32 %.02947, 100                   ; 2 uses
  %i.bc = add nsw i32 %.049, -1
  %i.bd = icmp samesign ugt i32 %.049, 1
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !2255

bb.f:                                             ; preds = %._crit_edge
  %i.be = urem i32 %.029.lcssa, 10
  %i.bf = trunc nuw nsw i32 %i.be to i16
  %i.bg = or disjoint i16 %i.bf, 48
  %i.bh = getelementptr inbounds i8, ptr %.028.lcssa, i64 -2 ; 2 uses
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !217
  %i.bi = udiv i32 %.029.lcssa, 10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.130 = phi i32 [ %i.bi, %bb.f ], [ %.029.lcssa, %._crit_edge ] ; 3 uses
  %.1 = phi ptr [ %i.bh, %bb.f ], [ %.028.lcssa, %._crit_edge ]
  %i.bj = getelementptr inbounds i8, ptr %.1, i64 -2 ; 2 uses
  store i16 %4, ptr %i.bj, align 2, !tbaa !217
  %i.bk = sext i32 %3 to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bl ; 3 uses
  %i.bn = icmp ugt i32 %.130, 99
  br i1 %i.bn, label %.lr.ph.i38, label %._crit_edge.i33

.lr.ph.i38:                                       ; preds = %bb.g, %.lr.ph.i38
  %.024.i39 = phi i32 [ %i.cg, %.lr.ph.i38 ], [ %.130, %bb.g ] ; 2 uses
  %.02023.i40 = phi i32 [ %i.bo, %.lr.ph.i38 ], [ %3, %bb.g ]
  %i.bo = add i32 %.02023.i40, -2                 ; 3 uses
  %i.bp = zext i32 %.024.i39 to i64
  %i.bq = mul i64 %i.bp, 5497558139               ; 2 uses
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.br ; 2 uses
  %i.bt = lshr i64 %i.bq, 31
  %i.bu = and i64 %i.bt, 254
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !134
  %i.bx = sext i8 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i16 %i.bx, ptr %i.bs, align 2, !tbaa !217
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !134
  %i.cb = sext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.by, align 2, !tbaa !217
  %i.cc = lshr i64 %i.bq, 39
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = icmp ugt i32 %.024.i39, -939524097
  %i.cf = select i1 %i.ce, i32 33554432, i32 0
  %i.cg = or disjoint i32 %i.cf, %i.cd            ; 3 uses
  %i.ch = icmp samesign ugt i32 %i.cg, 99
  br i1 %i.ch, label %.lr.ph.i38, label %._crit_edge.i33, !llvm.loop !61

._crit_edge.i33:                                  ; preds = %.lr.ph.i38, %bb.g
  %.020.lcssa.i34 = phi i32 [ %3, %bb.g ], [ %i.bo, %.lr.ph.i38 ] ; 2 uses
  %.0.lcssa.i35 = phi i32 [ %.130, %bb.g ], [ %i.cg, %.lr.ph.i38 ] ; 3 uses
  %i.ci = icmp samesign ugt i32 %.0.lcssa.i35, 9
  br i1 %i.ci, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i33
  %i.cj = add i32 %.020.lcssa.i34, -2
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ck
  %.lhs.trunc.i37 = trunc nuw nsw i32 %.0.lcssa.i35 to i8 ; 2 uses
  %i.cm = udiv i8 %.lhs.trunc.i37, 10
  %i.cn = urem i8 %.lhs.trunc.i37, 10
  %i.co = insertelement <2 x i8> poison, i8 %i.cm, i64 0
  %i.cp = insertelement <2 x i8> %i.co, i8 %i.cn, i64 1
  %i.cq = or disjoint <2 x i8> %i.cp, splat (i8 48)
  %i.cr = zext nneg <2 x i8> %i.cq to <2 x i16>
  store <2 x i16> %i.cr, ptr %i.cl, align 2, !tbaa !217
  br label %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit41

bb.i:                                             ; preds = %._crit_edge.i33
  %i.cs = trunc nuw nsw i32 %.0.lcssa.i35 to i16
  %i.ct = or disjoint i16 %i.cs, 48
  %i.cu = add i32 %.020.lcssa.i34, -1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.cv
  store i16 %i.ct, ptr %i.cw, align 2, !tbaa !217
  br label %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit41

_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit41: ; preds = %bb.i, %bb.h, %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit
  %.027 = phi ptr [ %i.al, %_ZN3fmt3v126detail17do_format_decimalIDsjEEPT_S4_T0_i.exit ], [ %i.ao, %bb.h ], [ %i.ao, %bb.i ]
  ret ptr %.027
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIDsNS0_14basic_appenderIDsEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, double noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [21 x i16], align 16              ; 4 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.342, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp.255", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast double %1 to i64                 ; 4 uses
  %i.c = icmp slt i64 %i.b, 0                     ; 2 uses
  %.lobit = lshr i64 %i.b, 63
  %i.d = trunc nuw nsw i64 %.lobit to i32         ; 3 uses
  %i.e = and i64 %i.b, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %_ZN3fmt3v126detail15write_nonfiniteIDsNS0_14basic_appenderIDsEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIDsNS0_14basic_appenderIDsEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.g = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.h, align 8
  %i.i = select i1 %i.g, ptr @.str.403, ptr @.str.405
  %.not.not.i = icmp sgt i64 %i.b, -1
  %i.j = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %i.d, ptr %3, align 8, !tbaa !487
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !488
  %i.l = call ptr @_ZN3fmt3v126detail12write_paddedIDsLNS0_5alignE1ENS0_14basic_appenderIDsEERZNS1_15write_nonfiniteIDsS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.j, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.m = tail call { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #29 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0        ; 8 uses
  store i64 %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = extractvalue { i64, i32 } %i.m, 1        ; 2 uses
  store i32 %i.p, ptr %i.o, align 8
  %i.q = or i64 %i.n, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !134   ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !131
  %i.z = icmp ult i64 %i.n, %i.y
  %.neg.i.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.neg.i.i, %i.v             ; 6 uses
  %i.ab = add nsw i32 %i.aa, %i.p                 ; 4 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = add i32 %i.ab, 3
  %i.ae = icmp ult i32 %i.ad, 20
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 32768, ptr %5, align 4, !tbaa !273
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.af, align 4, !tbaa !134
  %scevgep.i.i69 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i69, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ag, align 4, !tbaa !275
  %i.ah = call ptr @_ZN3fmt3v126detail11write_fixedIDsNS1_23fallback_digit_groupingIDsEENS0_14basic_appenderIDsEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.aa, i16 noundef zeroext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.d, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp slt i32 %i.ab, 1                   ; 2 uses
  %i.aj = sub nsw i32 1, %i.ab
  %spec.select = select i1 %i.ai, i32 %i.aj, i32 %i.ac ; 4 uses
  %spec.select68 = select i1 %i.ai, ptr @.str.401, ptr @.str.400 ; 2 uses
  %.not = icmp ne i32 %i.aa, 1                    ; 3 uses
  %i.ak = add nsw i32 %i.aa, %i.d
  %i.al = zext i1 %.not to i32
  %i.am = add nsw i32 %i.ak, %i.al
  %i.an = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.ao = select i1 %i.an, i32 5, i32 4
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !453 ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !448 ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !446
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.at), !inline_history !60
  %.pre.i = load i64, ptr %i.ar, align 8, !tbaa !453 ; 2 uses
  %.pre14.i = load i64, ptr %i.au, align 8, !tbaa !448 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.aq              ; 3 uses
  %i.az = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.az, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i
  %i.ba = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i ], [ %i.av, %bb.d ]
  %i.bb = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i ], [ %i.as, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i ], [ %i.at, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ar, align 8, !tbaa !453
  %i.bc = load ptr, ptr %0, align 8, !tbaa !447   ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.bb ; 3 uses
  %.not67 = icmp eq ptr %i.bc, null
  br i1 %.not67, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i16 45, ptr %i.bd, align 2, !tbaa !217
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.061 = phi ptr [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bf = add nsw i32 %i.aa, 1                    ; 3 uses
  %i.bg = icmp ugt i64 %i.n, 99
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.026.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bf, %bb.h ]
  %.01825.i = phi i64 [ %i.br, %.lr.ph.i ], [ %i.n, %bb.h ] ; 3 uses
  %i.bh = add i32 %.026.i, -2                     ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.061, i64 %i.bi
  %i.bk = urem i64 %.01825.i, 100
  %.lhs.trunc.i = trunc nuw nsw i64 %i.bk to i8   ; 2 uses
  %i.bl = udiv i8 %.lhs.trunc.i, 10
  %i.bm = urem i8 %.lhs.trunc.i, 10
  %i.bn = insertelement <2 x i8> poison, i8 %i.bl, i64 0
  %i.bo = insertelement <2 x i8> %i.bn, i8 %i.bm, i64 1
  %i.bp = or disjoint <2 x i8> %i.bo, splat (i8 48)
  %i.bq = zext nneg <2 x i8> %i.bp to <2 x i16>
  store <2 x i16> %i.bq, ptr %i.bj, align 2, !tbaa !217
  %i.br = udiv i64 %.01825.i, 100                 ; 2 uses
  %i.bs = icmp ugt i64 %.01825.i, 9999
  br i1 %i.bs, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !64

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.018.lcssa.i = phi i64 [ %i.n, %bb.h ], [ %i.br, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.bf, %bb.h ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %i.bt = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.bu = add i32 %.0.lcssa.i, -2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.061, i64 %i.bv
  %.lhs.trunc21.i = trunc nuw i64 %.018.lcssa.i to i8 ; 2 uses
  %i.bx = udiv i8 %.lhs.trunc21.i, 10
  %i.by = urem i8 %.lhs.trunc21.i, 10
  %i.bz = insertelement <2 x i8> poison, i8 %i.bx, i64 0
  %i.ca = insertelement <2 x i8> %i.bz, i8 %i.by, i64 1
  %i.cb = or disjoint <2 x i8> %i.ca, splat (i8 48)
  %i.cc = zext nneg <2 x i8> %i.cb to <2 x i16>
  store <2 x i16> %i.cc, ptr %i.bw, align 2, !tbaa !217
  br label %_ZN3fmt3v126detail17do_format_decimalIDsmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.cd = trunc nuw nsw i64 %.018.lcssa.i to i16
  %i.ce = or disjoint i16 %i.cd, 48
  %i.cf = add i32 %.0.lcssa.i, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.061, i64 %i.cg
  store i16 %i.ce, ptr %i.ch, align 2, !tbaa !217
  br label %_ZN3fmt3v126detail17do_format_decimalIDsmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIDsmEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.ci = zext nneg i32 %i.bf to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.061, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.061, i64 2 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !217
  store i16 %i.cl, ptr %.061, align 2, !tbaa !217
  store i16 46, ptr %i.ck, align 2, !tbaa !217
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cm = trunc i64 %i.n to i16
  %i.cn = add i16 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %.061, i64 2
  store i16 %i.cn, ptr %.061, align 2, !tbaa !217
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIDsmEEPT_S4_T0_i.exit
  %.162 = phi ptr [ %i.cj, %_ZN3fmt3v126detail17do_format_decimalIDsmEEPT_S4_T0_i.exit ], [ %i.co, %bb.k ] ; 4 uses
  %6 = load i8, ptr %spec.select68, align 1, !tbaa !134
  %7 = sext i8 %6 to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %.162, i64 2
  store i16 %7, ptr %.162, align 2, !tbaa !217
  %8 = getelementptr inbounds nuw i8, ptr %spec.select68, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !134
  %10 = sext i8 %9 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.162, i64 4 ; 2 uses
  store i16 %10, ptr %i.cp, align 2, !tbaa !217
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cr = udiv i32 %spec.select, 100
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = add i16 %i.cs, 48
  %i.cu = getelementptr inbounds nuw i8, ptr %.162, i64 6
  store i16 %i.ct, ptr %i.cq, align 2, !tbaa !217
  %i.cv = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.cu, %bb.m ], [ %i.cq, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.cv, %bb.m ], [ %spec.select, %bb.l ] ; 2 uses
  %i.cw = udiv i32 %.1, 10
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = add i16 %i.cx, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %.2, i64 2
  store i16 %i.cy, ptr %.2, align 2, !tbaa !217
  %i.da = urem i32 %.1, 10
  %i.db = trunc nuw nsw i32 %i.da to i16
  %i.dc = or disjoint i16 %i.db, 48
  store i16 %i.dc, ptr %i.cz, align 2, !tbaa !217
  br label %bb.s

_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.aq            ; 2 uses
  %i.dd = icmp ugt i64 %.pre, %i.ba
  br i1 %i.dd, label %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi101 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIDsE11try_reserveEm.exit.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !446
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi101), !inline_history !66
  br label %_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIDsEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit
  %i.dg = load i64, ptr %i.ar, align 8, !tbaa !453 ; 2 uses
  %i.dh = add i64 %i.dg, 1                        ; 3 uses
  %i.di = load i64, ptr %i.au, align 8, !tbaa !448
  %i.dj = icmp ugt i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.p, label %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !446
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dh), !inline_history !62
  %.pre.i.i = load i64, ptr %i.ar, align 8, !tbaa !453 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit

_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit:        ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.dh, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dm = phi i64 [ %i.dg, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.dn = load ptr, ptr %0, align 8, !tbaa !447
  store i64 %.pre-phi.i.i, ptr %i.ar, align 8, !tbaa !453
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.dm
  store i16 45, ptr %i.do, align 2, !tbaa !217
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit, %_ZN3fmt3v126detail7reserveIDsEENS0_14basic_appenderIT_EES5_m.exit
  %i.dp = select i1 %.not, i16 46, i16 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.dq = call noundef ptr @_ZN3fmt3v126detail17write_significandIDsmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_(ptr noundef nonnull %i.a, i64 noundef %i.n, i32 noundef %i.aa, i32 noundef 1, i16 noundef zeroext %i.dp)
  %i.dr = call ptr @_ZN3fmt3v126detail13copy_noinlineIDsPDsNS0_14basic_appenderIDsEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %i.dq, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !453 ; 2 uses
  %i.du = add i64 %i.dt, 1                        ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !448
  %i.dx = icmp ugt i64 %i.du, %i.dw
  br i1 %i.dx, label %bb.r, label %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !446
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 noundef %i.du), !inline_history !62
  %.pre.i.i73 = load i64, ptr %i.ds, align 8, !tbaa !453 ; 2 uses
  %.pre2.i.i74 = add i64 %.pre.i.i73, 1
  br label %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75

_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75:      ; preds = %bb.q, %bb.r
  %.pre-phi.i.i72 = phi i64 [ %i.du, %bb.q ], [ %.pre2.i.i74, %bb.r ]
  %i.ea = phi i64 [ %i.dt, %bb.q ], [ %.pre.i.i73, %bb.r ]
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !447
  store i64 %.pre-phi.i.i72, ptr %i.ds, align 8, !tbaa !453
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.ea
  store i16 101, ptr %i.ec, align 2, !tbaa !217
  %i.ed = call ptr @_ZN3fmt3v126detail14write_exponentIDsNS0_14basic_appenderIDsEEEET0_iS5_(i32 noundef %i.ac, ptr nonnull %i.dr)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75, %bb.c
  %.sroa.058.2 = phi ptr [ %i.ah, %bb.c ], [ %i.ed, %_ZN3fmt3v1214basic_appenderIDsEaSEDs.exit75 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN3fmt3v126detail15write_nonfiniteIDsNS0_14basic_appenderIDsEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.058.3 = phi ptr [ %i.l, %_ZN3fmt3v126detail15write_nonfiniteIDsNS0_14basic_appenderIDsEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.058.2, %bb.s ]
  ret ptr %.sroa.058.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIDsNS1_23fallback_digit_groupingIDsEENS0_14basic_appenderIDsEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping.343", align 1 ; 3 uses
  %8 = alloca %class.anon.348, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping.343", align 1 ; 3 uses
  %10 = alloca %class.anon.349, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.350, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !174
  store i16 %3, ptr %i.b, align 2, !tbaa !217
  store i32 %5, ptr %i.c, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !396  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !174
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !275
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !174
  %i.u = load i32, ptr %4, align 4, !tbaa !273    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !174
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.c, ptr %8, align 8, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !398
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !490
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !358
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !211
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !233
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !320
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.376, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !134
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail12write_paddedIDiLNS0_5alignE1ENS0_14basic_appenderIDiEERZNS1_11write_bytesIDiLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !527 ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !522 ; 2 uses
  %i.au = sub i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi i64 [ %i.at, %bb.f ], [ %i.ak, %bb.e ]
  %i.ax = phi i64 [ %i.as, %bb.f ], [ %i.al, %bb.e ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 11 uses
  %i.ay = load ptr, ptr %.sroa.09.0, align 8, !tbaa !521 ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.ax ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ba = add i64 %.025.i.i.i, %i.ax
  %i.bb = shl i64 %i.ba, 2
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bb
  %scevgep35 = getelementptr i8, ptr %.02732.i.i.i, i64 %.025.i.i.i
  %bound0 = icmp ult ptr %i.az, %scevgep35
  %bound1 = icmp ult ptr %.02732.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.025.i.i.i, -8                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %wide.load = load <4 x i8>, ptr %i.bc, align 1, !tbaa !134, !alias.scope !2553
  %wide.load36 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !134, !alias.scope !2553
  %i.be = sext <4 x i8> %wide.load to <4 x i32>
  %i.bf = sext <4 x i8> %wide.load36 to <4 x i32>
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <4 x i32> %i.be, ptr %i.bg, align 4, !tbaa !229, !alias.scope !2554, !noalias !2553
  store <4 x i32> %i.bf, ptr %i.bh, align 4, !tbaa !229, !alias.scope !2554, !noalias !2553
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !2550

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader37

.lr.ph.i.i.i.preheader37:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader37, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader37 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader37 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !134
  %i.bl = sext i8 %i.bk to i32
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.030.i.i.i.prol
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !229
  %i.bn = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2551

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader37
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader37 ], [ %i.bn, %.lr.ph.i.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.g
  %i.bq = add i64 %.025.i.i.i, %i.ax              ; 2 uses
  store i64 %i.bq, ptr %i.ag, align 8, !tbaa !527
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIDiLNS0_5alignE1ENS0_14basic_appenderIDiEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !85

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.bu = sext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.030.i.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !229
  %i.bw = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !134
  %i.bz = sext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bw
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !229
  %i.cb = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !134
  %i.ce = sext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cb
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !229
  %i.cg = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !134
  %i.cj = sext i8 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cg
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !229
  %i.cl = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cl, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2552

_ZZN3fmt3v126detail11write_bytesIDiLNS0_5alignE1ENS0_14basic_appenderIDiEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIDiLNS0_5alignE1ENS0_14basic_appenderIDiEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.cm = tail call ptr @_ZN3fmt3v126detail4fillIDiNS0_14basic_appenderIDiEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIDiLNS0_5alignE1ENS0_14basic_appenderIDiEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.cm, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIDiLNS0_5alignE1ENS0_14basic_appenderIDiEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIDiNS0_14basic_appenderIDiEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, float noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [11 x i32], align 16              ; 4 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.417, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast float %1 to i32                  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0                     ; 2 uses
  %.lobit = lshr i32 %i.b, 31                     ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %1)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %_ZN3fmt3v126detail15write_nonfiniteIDiNS0_14basic_appenderIDiEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIDiNS0_14basic_appenderIDiEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.f = fcmp uno float %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.g, align 8
  %i.h = select i1 %i.f, ptr @.str.403, ptr @.str.405
  %.not.not.i = icmp sgt i32 %i.b, -1
  %i.i = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %.lobit, ptr %3, align 8, !tbaa !560
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !561
  %i.k = call ptr @_ZN3fmt3v126detail12write_paddedIDiLNS0_5alignE1ENS0_14basic_appenderIDiEERZNS1_15write_nonfiniteIDiS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.i, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.l = tail call i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #29 ; 4 uses
  store i64 %i.l, ptr %4, align 8
  %i.m = trunc i64 %i.l to i32                    ; 6 uses
  %i.n = or i32 %i.m, 1
  %i.o = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !131
  %i.t = and i64 %i.l, 4294967295
  %i.u = add i64 %i.s, %i.t
  %i.v = lshr i64 %i.u, 32                        ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 5 uses
  %i.x = lshr i64 %i.l, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = add nsw i32 %i.y, %i.w                   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = add i32 %i.z, 3
  %i.ac = icmp ult i32 %i.ab, 11
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 32768, ptr %5, align 4, !tbaa !273
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.ad, align 4, !tbaa !134
  %scevgep.i.i69 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i69, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ae, align 4, !tbaa !275
  %i.af = call ptr @_ZN3fmt3v126detail11write_fixedIDiNS1_23fallback_digit_groupingIDiEENS0_14basic_appenderIDiEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.w, i32 noundef zeroext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.lobit, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %i.z, 1                    ; 2 uses
  %i.ah = sub nsw i32 1, %i.z
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.aa ; 4 uses
  %spec.select68 = select i1 %i.ag, ptr @.str.401, ptr @.str.400 ; 2 uses
  %.not = icmp ne i64 %i.v, 1                     ; 3 uses
  %i.ai = add nsw i32 %.lobit, %i.w
  %i.aj = zext i1 %.not to i32
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.am = select i1 %i.al, i32 5, i32 4
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !527 ; 2 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !522 ; 2 uses
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !520
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar), !inline_history !82
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !527 ; 2 uses
  %.pre14.i = load i64, ptr %i.as, align 8, !tbaa !522 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.ao              ; 3 uses
  %i.ax = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.ax, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i
  %i.ay = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i ], [ %i.at, %bb.d ]
  %i.az = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i ], [ %i.aq, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i ], [ %i.ar, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ap, align 8, !tbaa !527
  %i.ba = load ptr, ptr %0, align 8, !tbaa !521   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az ; 3 uses
  %.not67 = icmp eq ptr %i.ba, null
  br i1 %.not67, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 45, ptr %i.bb, align 4, !tbaa !229
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.061 = phi ptr [ %i.bc, %bb.f ], [ %i.bb, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bd = add nsw i32 %i.w, 1                     ; 3 uses
  %i.be = icmp ugt i32 %i.m, 99
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.024.i = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.m, %bb.h ] ; 2 uses
  %.02023.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %i.bd, %bb.h ]
  %i.bf = add i32 %.02023.i, -2                   ; 3 uses
  %i.bg = zext i32 %.024.i to i64
  %i.bh = mul i64 %i.bg, 5497558139               ; 2 uses
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.bi ; 2 uses
  %i.bk = lshr i64 %i.bh, 31
  %i.bl = and i64 %i.bk, 254
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !134
  %i.bo = sext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !229
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !134
  %i.bs = sext i8 %i.br to i32
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !229
  %i.bt = lshr i64 %i.bh, 39
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = icmp ugt i32 %.024.i, -939524097
  %i.bw = select i1 %i.bv, i32 33554432, i32 0
  %i.bx = or disjoint i32 %i.bw, %i.bu            ; 3 uses
  %i.by = icmp samesign ugt i32 %i.bx, 99
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !83

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.020.lcssa.i = phi i32 [ %i.bd, %bb.h ], [ %i.bf, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.m, %bb.h ], [ %i.bx, %.lr.ph.i ] ; 3 uses
  %i.bz = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ca = add i32 %.020.lcssa.i, -2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.cb
  %.lhs.trunc.i = trunc nuw nsw i32 %.0.lcssa.i to i8 ; 2 uses
  %i.cd = udiv i8 %.lhs.trunc.i, 10
  %i.ce = urem i8 %.lhs.trunc.i, 10
  %i.cf = insertelement <2 x i8> poison, i8 %i.cd, i64 0
  %i.cg = insertelement <2 x i8> %i.cf, i8 %i.ce, i64 1
  %i.ch = or disjoint <2 x i8> %i.cg, splat (i8 48)
  %i.ci = zext nneg <2 x i8> %i.ch to <2 x i32>
  store <2 x i32> %i.ci, ptr %i.cc, align 4, !tbaa !229
  br label %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.cj = or disjoint i32 %.0.lcssa.i, 48
  %i.ck = add i32 %.020.lcssa.i, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !229
  br label %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.cn = sext i32 %i.bd to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %.061, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.061, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !229
  store i32 %i.cq, ptr %.061, align 4, !tbaa !229
  store i32 46, ptr %i.cp, align 4, !tbaa !229
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cr = add i32 %i.m, 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.061, i64 4
  store i32 %i.cr, ptr %.061, align 4, !tbaa !229
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit
  %.162 = phi ptr [ %i.co, %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit ], [ %i.cs, %bb.k ] ; 4 uses
  %6 = load i8, ptr %spec.select68, align 1, !tbaa !134
  %7 = sext i8 %6 to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %.162, i64 4
  store i32 %7, ptr %.162, align 4, !tbaa !229
  %8 = getelementptr inbounds nuw i8, ptr %spec.select68, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !134
  %10 = sext i8 %9 to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.162, i64 8 ; 2 uses
  store i32 %10, ptr %i.ct, align 4, !tbaa !229
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cv = udiv i32 %spec.select, 100
  %i.cw = add nuw nsw i32 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %.162, i64 12
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !229
  %i.cy = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.cx, %bb.m ], [ %i.cu, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.cy, %bb.m ], [ %spec.select, %bb.l ] ; 2 uses
  %i.cz = udiv i32 %.1, 10
  %i.da = add nuw nsw i32 %i.cz, 48
  %i.db = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.da, ptr %.2, align 4, !tbaa !229
  %i.dc = urem i32 %.1, 10
  %i.dd = or disjoint i32 %i.dc, 48
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !229
  br label %bb.s

_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.ao            ; 2 uses
  %i.de = icmp ugt i64 %.pre, %i.ay
  br i1 %i.de, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi101 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !520
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi101), !inline_history !88
  br label %_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit
  %i.dh = load i64, ptr %i.ap, align 8, !tbaa !527 ; 2 uses
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %i.dj = load i64, ptr %i.as, align 8, !tbaa !522
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.p, label %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !520
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.di), !inline_history !84
  %.pre.i.i = load i64, ptr %i.ap, align 8, !tbaa !527 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit

_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit:        ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.di, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dn = phi i64 [ %i.dh, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.do = load ptr, ptr %0, align 8, !tbaa !521
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !527
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dn
  store i32 45, ptr %i.dp, align 4, !tbaa !229
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit, %_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit
  %i.dq = select i1 %.not, i32 46, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.dr = call noundef ptr @_ZN3fmt3v126detail17write_significandIDijTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_(ptr noundef nonnull %i.a, i32 noundef %i.m, i32 noundef %i.w, i32 noundef 1, i32 noundef zeroext %i.dq)
  %i.ds = call ptr @_ZN3fmt3v126detail13copy_noinlineIDiPDiNS0_14basic_appenderIDiEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !527 ; 2 uses
  %i.dv = add i64 %i.du, 1                        ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !522
  %i.dy = icmp ugt i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.r, label %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !520
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dv), !inline_history !84
  %.pre.i.i73 = load i64, ptr %i.dt, align 8, !tbaa !527 ; 2 uses
  %.pre2.i.i74 = add i64 %.pre.i.i73, 1
  br label %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75

_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75:      ; preds = %bb.q, %bb.r
  %.pre-phi.i.i72 = phi i64 [ %i.dv, %bb.q ], [ %.pre2.i.i74, %bb.r ]
  %i.eb = phi i64 [ %i.du, %bb.q ], [ %.pre.i.i73, %bb.r ]
  %i.ec = load ptr, ptr %i.ds, align 8, !tbaa !521
  store i64 %.pre-phi.i.i72, ptr %i.dt, align 8, !tbaa !527
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.eb
  store i32 101, ptr %i.ed, align 4, !tbaa !229
  %i.ee = call ptr @_ZN3fmt3v126detail14write_exponentIDiNS0_14basic_appenderIDiEEEET0_iS5_(i32 noundef %i.aa, ptr nonnull %i.ds)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75, %bb.c
  %.sroa.058.2 = phi ptr [ %i.af, %bb.c ], [ %i.ee, %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN3fmt3v126detail15write_nonfiniteIDiNS0_14basic_appenderIDiEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.058.3 = phi ptr [ %i.k, %_ZN3fmt3v126detail15write_nonfiniteIDiNS0_14basic_appenderIDiEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.058.2, %bb.s ]
  ret ptr %.sroa.058.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIDiNS1_23fallback_digit_groupingIDiEENS0_14basic_appenderIDiEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i32 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping.418", align 1 ; 3 uses
  %8 = alloca %class.anon.420, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping.418", align 1 ; 3 uses
  %10 = alloca %class.anon.421, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.422, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !174
  store i32 %3, ptr %i.b, align 4, !tbaa !229
  store i32 %5, ptr %i.c, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !386  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !174
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !275
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !174
  %i.u = load i32, ptr %4, align 4, !tbaa !273    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !174
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.c, ptr %8, align 8, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !388
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !563
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !358
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !223
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !233
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !320
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.376, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !134
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail17write_significandIDijTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_:bb.a

_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit: ; preds = %bb.c, %bb.d
  %i.aj = sext i32 %2 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aj
  br label %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit41

bb.e:                                             ; preds = %bb.a
  %i.al = sext i32 %2 to i64
  %i.am = getelementptr [4 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 4      ; 4 uses
  %i.ao = sub nsw i32 %2, %3                      ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.aq = lshr i32 %i.ao, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.029.lcssa = phi i32 [ %1, %bb.e ], [ %i.ba, %.lr.ph ] ; 3 uses
  %.028.lcssa = phi ptr [ %i.an, %bb.e ], [ %i.as, %.lr.ph ] ; 2 uses
  %i.ar = and i32 %i.ao, 1
  %.not32 = icmp eq i32 %i.ar, 0
  br i1 %.not32, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.049 = phi i32 [ %i.bb, %.lr.ph ], [ %i.aq, %.lr.ph.preheader ] ; 2 uses
  %.02848 = phi ptr [ %i.as, %.lr.ph ], [ %i.an, %.lr.ph.preheader ]
  %.02947 = phi i32 [ %i.ba, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.02848, i64 -8 ; 3 uses
  %i.at = urem i32 %.02947, 100
  %.lhs.trunc = trunc nuw nsw i32 %i.at to i8     ; 2 uses
  %i.au = udiv i8 %.lhs.trunc, 10
  %i.av = urem i8 %.lhs.trunc, 10
  %i.aw = insertelement <2 x i8> poison, i8 %i.au, i64 0
  %i.ax = insertelement <2 x i8> %i.aw, i8 %i.av, i64 1
  %i.ay = or disjoint <2 x i8> %i.ax, splat (i8 48)
  %i.az = zext nneg <2 x i8> %i.ay to <2 x i32>
  store <2 x i32> %i.az, ptr %i.as, align 4, !tbaa !229
  %i.ba = udiv i32 %.02947, 100                   ; 2 uses
  %i.bb = add nsw i32 %.049, -1
  %i.bc = icmp samesign ugt i32 %.049, 1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !2594

bb.f:                                             ; preds = %._crit_edge
  %i.bd = urem i32 %.029.lcssa, 10
  %i.be = or disjoint i32 %i.bd, 48
  %i.bf = getelementptr inbounds i8, ptr %.028.lcssa, i64 -4 ; 2 uses
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !229
  %i.bg = udiv i32 %.029.lcssa, 10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.130 = phi i32 [ %i.bg, %bb.f ], [ %.029.lcssa, %._crit_edge ] ; 3 uses
  %.1 = phi ptr [ %i.bf, %bb.f ], [ %.028.lcssa, %._crit_edge ]
  %i.bh = getelementptr inbounds i8, ptr %.1, i64 -4 ; 2 uses
  store i32 %4, ptr %i.bh, align 4, !tbaa !229
  %i.bi = sext i32 %3 to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj ; 3 uses
  %i.bl = icmp ugt i32 %.130, 99
  br i1 %i.bl, label %.lr.ph.i38, label %._crit_edge.i33

.lr.ph.i38:                                       ; preds = %bb.g, %.lr.ph.i38
  %.024.i39 = phi i32 [ %i.ce, %.lr.ph.i38 ], [ %.130, %bb.g ] ; 2 uses
  %.02023.i40 = phi i32 [ %i.bm, %.lr.ph.i38 ], [ %3, %bb.g ]
  %i.bm = add i32 %.02023.i40, -2                 ; 3 uses
  %i.bn = zext i32 %.024.i39 to i64
  %i.bo = mul i64 %i.bn, 5497558139               ; 2 uses
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bp ; 2 uses
  %i.br = lshr i64 %i.bo, 31
  %i.bs = and i64 %i.br, 254
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !134
  %i.bv = sext i8 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !229
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !134
  %i.bz = sext i8 %i.by to i32
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !229
  %i.ca = lshr i64 %i.bo, 39
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = icmp ugt i32 %.024.i39, -939524097
  %i.cd = select i1 %i.cc, i32 33554432, i32 0
  %i.ce = or disjoint i32 %i.cd, %i.cb            ; 3 uses
  %i.cf = icmp samesign ugt i32 %i.ce, 99
  br i1 %i.cf, label %.lr.ph.i38, label %._crit_edge.i33, !llvm.loop !83

._crit_edge.i33:                                  ; preds = %.lr.ph.i38, %bb.g
  %.020.lcssa.i34 = phi i32 [ %3, %bb.g ], [ %i.bm, %.lr.ph.i38 ] ; 2 uses
  %.0.lcssa.i35 = phi i32 [ %.130, %bb.g ], [ %i.ce, %.lr.ph.i38 ] ; 3 uses
  %i.cg = icmp samesign ugt i32 %.0.lcssa.i35, 9
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i33
  %i.ch = add i32 %.020.lcssa.i34, -2
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ci
  %.lhs.trunc.i37 = trunc nuw nsw i32 %.0.lcssa.i35 to i8 ; 2 uses
  %i.ck = udiv i8 %.lhs.trunc.i37, 10
  %i.cl = urem i8 %.lhs.trunc.i37, 10
  %i.cm = insertelement <2 x i8> poison, i8 %i.ck, i64 0
  %i.cn = insertelement <2 x i8> %i.cm, i8 %i.cl, i64 1
  %i.co = or disjoint <2 x i8> %i.cn, splat (i8 48)
  %i.cp = zext nneg <2 x i8> %i.co to <2 x i32>
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !229
  br label %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit41

bb.i:                                             ; preds = %._crit_edge.i33
  %i.cq = or disjoint i32 %.0.lcssa.i35, 48
  %i.cr = add i32 %.020.lcssa.i34, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cs
  store i32 %i.cq, ptr %i.ct, align 4, !tbaa !229
  br label %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit41

_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit41: ; preds = %bb.i, %bb.h, %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit
  %.027 = phi ptr [ %i.ak, %_ZN3fmt3v126detail17do_format_decimalIDijEEPT_S4_T0_i.exit ], [ %i.an, %bb.h ], [ %i.an, %bb.i ]
  ret ptr %.027
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIDiNS0_14basic_appenderIDiEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, double noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [21 x i32], align 16              ; 4 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.417, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp.255", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast double %1 to i64                 ; 4 uses
  %i.c = icmp slt i64 %i.b, 0                     ; 2 uses
  %.lobit = lshr i64 %i.b, 63
  %i.d = trunc nuw nsw i64 %.lobit to i32         ; 3 uses
  %i.e = and i64 %i.b, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %_ZN3fmt3v126detail15write_nonfiniteIDiNS0_14basic_appenderIDiEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIDiNS0_14basic_appenderIDiEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.g = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.h, align 8
  %i.i = select i1 %i.g, ptr @.str.403, ptr @.str.405
  %.not.not.i = icmp sgt i64 %i.b, -1
  %i.j = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %i.d, ptr %3, align 8, !tbaa !560
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !561
  %i.l = call ptr @_ZN3fmt3v126detail12write_paddedIDiLNS0_5alignE1ENS0_14basic_appenderIDiEERZNS1_15write_nonfiniteIDiS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.j, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.m = tail call { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #29 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0        ; 8 uses
  store i64 %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = extractvalue { i64, i32 } %i.m, 1        ; 2 uses
  store i32 %i.p, ptr %i.o, align 8
  %i.q = or i64 %i.n, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !134   ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !131
  %i.z = icmp ult i64 %i.n, %i.y
  %.neg.i.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.neg.i.i, %i.v             ; 6 uses
  %i.ab = add nsw i32 %i.aa, %i.p                 ; 4 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = add i32 %i.ab, 3
  %i.ae = icmp ult i32 %i.ad, 20
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 32768, ptr %5, align 4, !tbaa !273
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.af, align 4, !tbaa !134
  %scevgep.i.i69 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i69, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ag, align 4, !tbaa !275
  %i.ah = call ptr @_ZN3fmt3v126detail11write_fixedIDiNS1_23fallback_digit_groupingIDiEENS0_14basic_appenderIDiEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.aa, i32 noundef zeroext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.d, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp slt i32 %i.ab, 1                   ; 2 uses
  %i.aj = sub nsw i32 1, %i.ab
  %spec.select = select i1 %i.ai, i32 %i.aj, i32 %i.ac ; 4 uses
  %spec.select68 = select i1 %i.ai, ptr @.str.401, ptr @.str.400 ; 2 uses
  %.not = icmp ne i32 %i.aa, 1                    ; 3 uses
  %i.ak = add nsw i32 %i.aa, %i.d
  %i.al = zext i1 %.not to i32
  %i.am = add nsw i32 %i.ak, %i.al
  %i.an = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.ao = select i1 %i.an, i32 5, i32 4
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !527 ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !522 ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !520
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.at), !inline_history !82
  %.pre.i = load i64, ptr %i.ar, align 8, !tbaa !527 ; 2 uses
  %.pre14.i = load i64, ptr %i.au, align 8, !tbaa !522 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.aq              ; 3 uses
  %i.az = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.az, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i
  %i.ba = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i ], [ %i.av, %bb.d ]
  %i.bb = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i ], [ %i.as, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i ], [ %i.at, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ar, align 8, !tbaa !527
  %i.bc = load ptr, ptr %0, align 8, !tbaa !521   ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb ; 3 uses
  %.not67 = icmp eq ptr %i.bc, null
  br i1 %.not67, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 45, ptr %i.bd, align 4, !tbaa !229
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.061 = phi ptr [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bf = add nsw i32 %i.aa, 1                    ; 3 uses
  %i.bg = icmp ugt i64 %i.n, 99
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.026.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bf, %bb.h ]
  %.01825.i = phi i64 [ %i.br, %.lr.ph.i ], [ %i.n, %bb.h ] ; 3 uses
  %i.bh = add i32 %.026.i, -2                     ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.bi
  %i.bk = urem i64 %.01825.i, 100
  %.lhs.trunc.i = trunc nuw nsw i64 %i.bk to i8   ; 2 uses
  %i.bl = udiv i8 %.lhs.trunc.i, 10
  %i.bm = urem i8 %.lhs.trunc.i, 10
  %i.bn = insertelement <2 x i8> poison, i8 %i.bl, i64 0
  %i.bo = insertelement <2 x i8> %i.bn, i8 %i.bm, i64 1
  %i.bp = or disjoint <2 x i8> %i.bo, splat (i8 48)
  %i.bq = zext nneg <2 x i8> %i.bp to <2 x i32>
  store <2 x i32> %i.bq, ptr %i.bj, align 4, !tbaa !229
  %i.br = udiv i64 %.01825.i, 100                 ; 2 uses
  %i.bs = icmp ugt i64 %.01825.i, 9999
  br i1 %i.bs, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.018.lcssa.i = phi i64 [ %i.n, %bb.h ], [ %i.br, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.bf, %bb.h ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %i.bt = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.bu = add i32 %.0.lcssa.i, -2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.bv
  %.lhs.trunc21.i = trunc nuw i64 %.018.lcssa.i to i8 ; 2 uses
  %i.bx = udiv i8 %.lhs.trunc21.i, 10
  %i.by = urem i8 %.lhs.trunc21.i, 10
  %i.bz = insertelement <2 x i8> poison, i8 %i.bx, i64 0
  %i.ca = insertelement <2 x i8> %i.bz, i8 %i.by, i64 1
  %i.cb = or disjoint <2 x i8> %i.ca, splat (i8 48)
  %i.cc = zext nneg <2 x i8> %i.cb to <2 x i32>
  store <2 x i32> %i.cc, ptr %i.bw, align 4, !tbaa !229
  br label %_ZN3fmt3v126detail17do_format_decimalIDimEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.cd = trunc nuw nsw i64 %.018.lcssa.i to i32
  %i.ce = or disjoint i32 %i.cd, 48
  %i.cf = add i32 %.0.lcssa.i, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.cg
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !229
  br label %_ZN3fmt3v126detail17do_format_decimalIDimEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIDimEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.ci = zext nneg i32 %i.bf to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.061, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.061, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !229
  store i32 %i.cl, ptr %.061, align 4, !tbaa !229
  store i32 46, ptr %i.ck, align 4, !tbaa !229
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cm = trunc i64 %i.n to i32
  %i.cn = add i32 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %.061, i64 4
  store i32 %i.cn, ptr %.061, align 4, !tbaa !229
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIDimEEPT_S4_T0_i.exit
  %.162 = phi ptr [ %i.cj, %_ZN3fmt3v126detail17do_format_decimalIDimEEPT_S4_T0_i.exit ], [ %i.co, %bb.k ] ; 4 uses
  %6 = load i8, ptr %spec.select68, align 1, !tbaa !134
  %7 = sext i8 %6 to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %.162, i64 4
  store i32 %7, ptr %.162, align 4, !tbaa !229
  %8 = getelementptr inbounds nuw i8, ptr %spec.select68, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !134
  %10 = sext i8 %9 to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %.162, i64 8 ; 2 uses
  store i32 %10, ptr %i.cp, align 4, !tbaa !229
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cr = udiv i32 %spec.select, 100
  %i.cs = add nuw nsw i32 %i.cr, 48
  %i.ct = getelementptr inbounds nuw i8, ptr %.162, i64 12
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !229
  %i.cu = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.ct, %bb.m ], [ %i.cq, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.cu, %bb.m ], [ %spec.select, %bb.l ] ; 2 uses
  %i.cv = udiv i32 %.1, 10
  %i.cw = add nuw nsw i32 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.cw, ptr %.2, align 4, !tbaa !229
  %i.cy = urem i32 %.1, 10
  %i.cz = or disjoint i32 %i.cy, 48
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !229
  br label %bb.s

_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.aq            ; 2 uses
  %i.da = icmp ugt i64 %.pre, %i.ba
  br i1 %i.da, label %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi101 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIDiE11try_reserveEm.exit.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !520
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi101), !inline_history !88
  br label %_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIDiEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !527 ; 2 uses
  %i.de = add i64 %i.dd, 1                        ; 3 uses
  %i.df = load i64, ptr %i.au, align 8, !tbaa !522
  %i.dg = icmp ugt i64 %i.de, %i.df
  br i1 %i.dg, label %bb.p, label %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !520
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.de), !inline_history !84
  %.pre.i.i = load i64, ptr %i.ar, align 8, !tbaa !527 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit

_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit:        ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.de, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dj = phi i64 [ %i.dd, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.dk = load ptr, ptr %0, align 8, !tbaa !521
  store i64 %.pre-phi.i.i, ptr %i.ar, align 8, !tbaa !527
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  store i32 45, ptr %i.dl, align 4, !tbaa !229
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit, %_ZN3fmt3v126detail7reserveIDiEENS0_14basic_appenderIT_EES5_m.exit
  %i.dm = select i1 %.not, i32 46, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.dn = call noundef ptr @_ZN3fmt3v126detail17write_significandIDimTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_(ptr noundef nonnull %i.a, i64 noundef %i.n, i32 noundef %i.aa, i32 noundef 1, i32 noundef zeroext %i.dm)
  %i.do = call ptr @_ZN3fmt3v126detail13copy_noinlineIDiPDiNS0_14basic_appenderIDiEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %i.dn, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !527 ; 2 uses
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !522
  %i.du = icmp ugt i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.r, label %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !520
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i64 noundef %i.dr), !inline_history !84
  %.pre.i.i73 = load i64, ptr %i.dp, align 8, !tbaa !527 ; 2 uses
  %.pre2.i.i74 = add i64 %.pre.i.i73, 1
  br label %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75

_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75:      ; preds = %bb.q, %bb.r
  %.pre-phi.i.i72 = phi i64 [ %i.dr, %bb.q ], [ %.pre2.i.i74, %bb.r ]
  %i.dx = phi i64 [ %i.dq, %bb.q ], [ %.pre.i.i73, %bb.r ]
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !521
  store i64 %.pre-phi.i.i72, ptr %i.dp, align 8, !tbaa !527
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dx
  store i32 101, ptr %i.dz, align 4, !tbaa !229
  %i.ea = call ptr @_ZN3fmt3v126detail14write_exponentIDiNS0_14basic_appenderIDiEEEET0_iS5_(i32 noundef %i.ac, ptr nonnull %i.do)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75, %bb.c
  %.sroa.058.2 = phi ptr [ %i.ah, %bb.c ], [ %i.ea, %_ZN3fmt3v1214basic_appenderIDiEaSEDi.exit75 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN3fmt3v126detail15write_nonfiniteIDiNS0_14basic_appenderIDiEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.058.3 = phi ptr [ %i.l, %_ZN3fmt3v126detail15write_nonfiniteIDiNS0_14basic_appenderIDiEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.058.2, %bb.s ]
  ret ptr %.sroa.058.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIDiNS1_23fallback_digit_groupingIDiEENS0_14basic_appenderIDiEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping.418", align 1 ; 3 uses
  %8 = alloca %class.anon.423, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping.418", align 1 ; 3 uses
  %10 = alloca %class.anon.424, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.425, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !174
  store i32 %3, ptr %i.b, align 4, !tbaa !229
  store i32 %5, ptr %i.c, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !396  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !174
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !275
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !174
  %i.u = load i32, ptr %4, align 4, !tbaa !273    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !174
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.c, ptr %8, align 8, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !398
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !563
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !358
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !223
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !233
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !320
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.376, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !134
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
end_hunk_6
